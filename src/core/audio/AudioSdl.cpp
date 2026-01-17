/*
 * AudioSdl.cpp - device-class that performs PCM-output via SDL
 *
 * Copyright (c) 2004-2009 Tobias Doerffel <tobydox/at/users.sourceforge.net>
 *
 * This file is part of LMMS - https://lmms.io
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program (see COPYING); if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA.
 *
 */

#include "AudioSdl.h"

#ifdef LMMS_HAVE_SDL

#include <QLabel>
#include <QLineEdit>

#include "Engine.h"
#include "ConfigManager.h"
#include "gui_templates.h"
#include "Mixer.h"


AudioSdl::AudioSdl( bool & _success_ful, Mixer*  _mixer ) :
	AudioDevice( DEFAULT_CHANNELS, _mixer ),
	m_outBuf( new surroundSampleFrame[mixer()->framesPerPeriod()] ),
	m_convertedBufPos( 0 ),
	m_convertEndian( false )
{
	_success_ful = false;

	m_convertedBufSize = mixer()->framesPerPeriod() * channels()
						* sizeof( int_sample_t );
	m_convertedBuf = new Uint8[m_convertedBufSize];


	if( !SDL_Init( SDL_INIT_AUDIO ) )
	{
		qCritical( "Couldn't initialize SDL: %s\n", SDL_GetError() );
		return;
	}

	m_audioSpec.freq = sampleRate();
	m_audioSpec.format = SDL_AUDIO_S16;	// we want it in byte-order
						// of system, so we don't have
						// to convert the buffers
	m_audioSpec.channels = channels();

	//m_audioHandle.samples = qMax( 1024, mixer()->framesPerPeriod()*2 );

	// open the audio device
	m_audioStream = SDL_OpenAudioDeviceStream(SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, &m_audioSpec, sdlAudioCallback, this);
	if( !m_audioStream )
	{
		qCritical( "Couldn't open SDL-audio: %s\n", SDL_GetError() );
		return;
	}
	//m_convertEndian = ( m_audioHandle.format != actual.format );

	_success_ful = true;
}




AudioSdl::~AudioSdl()
{
	stopProcessing();

	SDL_DestroyAudioStream(m_audioStream);
	SDL_Quit();
	delete[] m_convertedBuf;
	delete[] m_outBuf;
}




void AudioSdl::startProcessing()
{
	m_stopped = false;

	SDL_ResumeAudioStreamDevice(m_audioStream);
}




void AudioSdl::stopProcessing()
{
	
	if( !SDL_AudioStreamDevicePaused(m_audioStream) )
	{
		SDL_LockAudioStream(m_audioStream);
		m_stopped = true;
		SDL_PauseAudioStreamDevice(m_audioStream);
		SDL_UnlockAudioStream(m_audioStream);
	}
}




void AudioSdl::applyQualitySettings()
{
	if( 0 )//hqAudio() )
	{
		SDL_DestroyAudioStream(m_audioStream);

		setSampleRate( Engine::mixer()->processingSampleRate() );

		m_audioSpec.freq = sampleRate();

		// open the audio device, forcing the desired format
		m_audioStream = SDL_OpenAudioDeviceStream( SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, &m_audioSpec, sdlAudioCallback, this );
		if( !m_audioStream )
		{
			qCritical( "Couldn't open SDL-audio: %s\n", SDL_GetError() );
		}
	}

	AudioDevice::applyQualitySettings();
}




void AudioSdl::sdlAudioCallback(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount)
{
	AudioSdl * _this = static_cast<AudioSdl *>( userdata );

	_this->sdlAudioCallback( stream, additional_amount, total_amount );
}




void AudioSdl::sdlAudioCallback( SDL_AudioStream *stream, int additional_amount, int total_amount)
{
	if( m_stopped )
	{
		
		//memset( _buf, 0, _len );
		return;
	}

	while( total_amount )
	{
		if( m_convertedBufPos == 0 )
		{
			// frames depend on the sample rate
			const fpp_t frames = getNextBuffer( m_outBuf );
			if( !frames )
			{
				m_stopped = true;
				//memset( _buf, 0, _len );
				return;
			}
			m_convertedBufSize = frames * channels()
						* sizeof( int_sample_t );

			convertToS16( m_outBuf, frames,
						mixer()->masterGain(),
						(int_sample_t *)m_convertedBuf
					);
		}
		const int min_len = qMin( total_amount, m_convertedBufSize
							- m_convertedBufPos );
		SDL_PutAudioStreamData(stream, m_convertedBuf + m_convertedBufPos, min_len);
		total_amount -= min_len;
		m_convertedBufPos += min_len;
		m_convertedBufPos %= m_convertedBufSize;
	}
}




AudioSdl::setupWidget::setupWidget( QWidget * _parent ) :
	AudioDeviceSetupWidget( AudioSdl::name(), _parent )
{
	QString dev = ConfigManager::inst()->value( "audiosdl", "device" );
	m_device = new QLineEdit( dev, this );
	m_device->setGeometry( 10, 20, 160, 20 );

	QLabel * dev_lbl = new QLabel( tr( "DEVICE" ), this );
	dev_lbl->setFont( pointSize<7>( dev_lbl->font() ) );
	dev_lbl->setGeometry( 10, 40, 160, 10 );

}




AudioSdl::setupWidget::~setupWidget()
{
}




void AudioSdl::setupWidget::saveSettings()
{
	ConfigManager::inst()->setValue( "audiosdl", "device",
							m_device->text() );
}


#endif


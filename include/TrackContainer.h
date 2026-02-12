/*
 * TrackContainer.h - base-class for all track-containers like Song-Editor,
 *                    BB-Editor...
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

#ifndef TRACK_CONTAINER_H
#define TRACK_CONTAINER_H

#include <QtCore/QReadWriteLock>

#include "Track.h"
#include "JournallingObject.h"
#include "ComboBoxModel.h"


class AutomationPattern;
class InstrumentTrack;
class TrackContainerView;


class EXPORT TrackContainer : public Model, public JournallingObject
{
	Q_OBJECT
	mapPropertyFromModel(int,currentBB,setCurrentBB,m_bbComboBoxModel);
public:
	typedef QVector<Track *> TrackList;

	TrackContainer();
	virtual ~TrackContainer();

	virtual void saveSettings( QDomDocument & _doc, QDomElement & _parent );

	virtual void loadSettings( const QDomElement & _this );

	// BB related
	bool BBplay( MidiTime _start, const fpp_t _frames,
						const f_cnt_t _frame_base, int _tco_num = -1 );
	tact_t lengthOfBB( int _bb ) const;
	tact_t lengthOfCurrentBB() const { return lengthOfBB( currentBB() ); }

	int numBBs() const;
	
	void removeBB( int _bb );
	void swapBB( int _bb1, int _bb2 );
	public slots:
		void updateComboBox();
		void currentBBChanged();
	//
public:

	virtual AutomationPattern * tempoAutomationPattern()
	{
		return NULL;
	}

	int countTracks( Track::TrackTypes _tt = Track::NumTrackTypes ) const;


	void addTrack( Track * _track );
	void removeTrack( Track * _track );

	virtual void updateAfterTrackAdd();

	void clearAllTracks();

	const TrackList & tracks() const
	{
		return m_tracks;
	}

	bool isEmpty() const;

	static const QString classNodeName()
	{
		return "trackcontainer";
	}

	virtual AutomatedValueMap automatedValuesAt(MidiTime time, int tcoNum = -1) const;

signals:
	void trackAdded( Track * _track );

protected:
	static AutomatedValueMap automatedValuesFromTracks(const TrackList &tracks, MidiTime timeStart, int tcoNum = -1);

	mutable QReadWriteLock m_tracksMutex;

private:
	TrackList m_tracks;
	ComboBoxModel m_bbComboBoxModel;

	friend class TrackContainerView;
	friend class Track;
	friend class BBEditor;
} ;


class DummyTrackContainer : public TrackContainer
{
public:
	DummyTrackContainer();

	virtual ~DummyTrackContainer()
	{
	}

	virtual QString nodeName() const
	{
		return "DummyTrackContainer";
	}

	InstrumentTrack * dummyInstrumentTrack()
	{
		return m_dummyInstrumentTrack;
	}


private:
	InstrumentTrack * m_dummyInstrumentTrack;

} ;


#endif

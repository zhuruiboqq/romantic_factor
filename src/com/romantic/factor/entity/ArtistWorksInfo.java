package com.romantic.factor.entity;

import com.romantic.factor.base.entity.BaseEntryInfo;

public class ArtistWorksInfo extends BaseEntryInfo {
	private ArtistInfo artist;
	private AttachmentImageInfo work;

	public ArtistInfo getArtist() {
		return artist;
	}

	public void setArtist(ArtistInfo artist) {
		this.artist = artist;
	}

	public AttachmentImageInfo getWork() {
		return work;
	}

	public void setWork(AttachmentImageInfo work) {
		this.work = work;
	}

}
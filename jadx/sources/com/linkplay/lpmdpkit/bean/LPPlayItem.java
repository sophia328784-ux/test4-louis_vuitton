package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPPlayItem implements Serializable {
    private String albumId;
    private String albumName;
    private String artistId;
    private String createTime;
    private int itemType;
    private int playCount;
    private int stepType;
    private String trackArtist;
    private long trackDuration;
    private String trackId;
    private String trackImage;
    private String trackName;
    private int trackSize;
    private String trackUrl;

    public static class ItemStepType implements Serializable {
        public static final int ITEM_STEP_TYPE_MORE = 1;
        public static final int ITEM_STEP_TYPE_NEXT = 2;
        public static final int ITEM_STEP_TYPE_NULL = 0;
    }

    public String getAlbumId() {
        return this.albumId;
    }

    public String getAlbumName() {
        return this.albumName;
    }

    public String getArtistId() {
        return this.artistId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getItemType() {
        return this.itemType;
    }

    public int getPlayCount() {
        return this.playCount;
    }

    public int getStepType() {
        return this.stepType;
    }

    public String getTrackArtist() {
        return this.trackArtist;
    }

    public long getTrackDuration() {
        return this.trackDuration;
    }

    public String getTrackId() {
        return this.trackId;
    }

    public String getTrackImage() {
        return this.trackImage;
    }

    public String getTrackName() {
        return this.trackName;
    }

    public int getTrackSize() {
        return this.trackSize;
    }

    public String getTrackUrl() {
        return this.trackUrl;
    }

    public void setAlbumId(String str) {
        this.albumId = str;
    }

    public void setAlbumName(String str) {
        this.albumName = str;
    }

    public void setArtistId(String str) {
        this.artistId = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setItemType(int i2) {
        this.itemType = i2;
    }

    public void setPlayCount(int i2) {
        this.playCount = i2;
    }

    public void setStepType(int i2) {
        this.stepType = i2;
    }

    public void setTrackArtist(String str) {
        this.trackArtist = str;
    }

    public void setTrackDuration(long j2) {
        this.trackDuration = j2;
    }

    public void setTrackId(String str) {
        this.trackId = str;
    }

    public void setTrackImage(String str) {
        this.trackImage = str;
    }

    public void setTrackName(String str) {
        this.trackName = str;
    }

    public void setTrackSize(int i2) {
        this.trackSize = i2;
    }

    public void setTrackUrl(String str) {
        this.trackUrl = str;
    }
}

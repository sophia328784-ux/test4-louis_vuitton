package com.linkplay.mediainfo;

import android.text.TextUtils;
import com.linkplay.core.model.GuiBehavior;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPMediaInfo implements Serializable, Cloneable {
    public GuiBehavior behavior;
    private int controlHex;
    private String creator = "";
    private String artist = "";
    private String album = "";
    private String title = "";
    private String song_id = "";
    private String album_id = "";
    private String artist_id = "";
    private String singer_id = "";
    private String trackSource = "";
    private String mediaType = "";
    private String playUri = "";
    private String albumArtURI = "";
    private int bitrate = 0;
    private String subid = "";
    private String subTitle = "";
    private String typeDescription = "";
    private int quality = 0;
    private String actualQuality = "";
    private String trackMetaData = "";
    private long duration = 1;
    private long totalTime = 0;
    private long tickTime = 0;
    private int skiplimit = 0;
    public String freemium = "";
    public String rate_hz = "";
    public String format_s = "";
    public String bitrate_s = "";
    public String coding_f = "";
    public String atmos = "";
    public String isLive = "";

    private void copyMediaInfo(LPMediaInfo lPMediaInfo) {
        this.creator = lPMediaInfo.creator;
        this.artist = lPMediaInfo.artist;
        this.album = lPMediaInfo.album;
        this.title = lPMediaInfo.title;
        this.song_id = lPMediaInfo.song_id;
        this.album_id = lPMediaInfo.album_id;
        this.artist_id = lPMediaInfo.artist_id;
        this.singer_id = lPMediaInfo.singer_id;
        this.trackSource = lPMediaInfo.trackSource;
        this.mediaType = lPMediaInfo.mediaType;
        this.playUri = lPMediaInfo.playUri;
        this.albumArtURI = lPMediaInfo.albumArtURI;
        this.bitrate = lPMediaInfo.bitrate;
        this.subid = lPMediaInfo.subid;
        this.subTitle = lPMediaInfo.subTitle;
        this.typeDescription = lPMediaInfo.typeDescription;
        this.quality = lPMediaInfo.quality;
        this.actualQuality = lPMediaInfo.actualQuality;
        this.trackMetaData = getTrackMetaData();
        this.totalTime = lPMediaInfo.totalTime;
        this.duration = lPMediaInfo.duration;
        this.tickTime = lPMediaInfo.tickTime;
        this.skiplimit = lPMediaInfo.skiplimit;
        this.controlHex = lPMediaInfo.controlHex;
        this.freemium = lPMediaInfo.freemium;
        this.bitrate_s = lPMediaInfo.bitrate_s;
        this.format_s = lPMediaInfo.format_s;
        this.rate_hz = lPMediaInfo.rate_hz;
        this.atmos = lPMediaInfo.atmos;
        this.coding_f = lPMediaInfo.coding_f;
        this.behavior = lPMediaInfo.behavior;
        this.isLive = lPMediaInfo.isLive;
    }

    private void parseMetaData(String str) {
        LPMediaInfo lPMediaInfoConvertQplayMeta2AlbumInfo;
        String str2 = this.trackMetaData;
        if (!str2.equals(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            this.trackMetaData = str;
            try {
                boolean zEquals = getMediaType().equals("QPLAY");
                String str3 = this.trackMetaData;
                lPMediaInfoConvertQplayMeta2AlbumInfo = zEquals ? LPMediaInfoParser.convertQplayMeta2AlbumInfo(str3) : LPMediaInfoParser.convert2MediaInfo(str3);
            } catch (Exception e2) {
                e2.printStackTrace();
                lPMediaInfoConvertQplayMeta2AlbumInfo = null;
            }
            if (lPMediaInfoConvertQplayMeta2AlbumInfo != null) {
                String str4 = this.title + this.artist;
                String str5 = lPMediaInfoConvertQplayMeta2AlbumInfo.title + lPMediaInfoConvertQplayMeta2AlbumInfo.artist;
                lPMediaInfoConvertQplayMeta2AlbumInfo.setTotalTime(this.totalTime);
                lPMediaInfoConvertQplayMeta2AlbumInfo.setTickTime(this.tickTime);
                lPMediaInfoConvertQplayMeta2AlbumInfo.setTrackSource(getTrackSource());
                lPMediaInfoConvertQplayMeta2AlbumInfo.setMediaType(getMediaType());
                copyMediaInfo(lPMediaInfoConvertQplayMeta2AlbumInfo);
                if (str4.equals(str5)) {
                    return;
                }
                this.tickTime = 0L;
                this.totalTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LPMediaInfo m42clone() {
        try {
            return (LPMediaInfo) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getActualQuality() {
        return this.actualQuality;
    }

    public String getAlbum() {
        return this.album;
    }

    public String getAlbumArtURI() {
        return this.albumArtURI;
    }

    public String getAlbum_id() {
        return this.album_id;
    }

    public String getArtist() {
        return this.artist;
    }

    public String getArtist_id() {
        return this.artist_id;
    }

    public String getAtmos() {
        return this.atmos;
    }

    public int getBitrate() {
        return this.bitrate;
    }

    public String getBitrate_s() {
        return this.bitrate_s;
    }

    public String getCoding_f() {
        return this.coding_f;
    }

    public int getControlHex() {
        return this.controlHex;
    }

    public String getCreator() {
        return this.creator;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getFormat_s() {
        return this.format_s;
    }

    public String getFreemium() {
        return this.freemium;
    }

    public String getIsLive() {
        return this.isLive;
    }

    public String getMediaType() {
        return this.mediaType;
    }

    public String getPlayUri() {
        return this.playUri;
    }

    public int getQuality() {
        return this.quality;
    }

    public String getRate_hz() {
        return this.rate_hz;
    }

    public String getSinger_id() {
        return this.singer_id;
    }

    public int getSkiplimit() {
        return this.skiplimit;
    }

    public String getSong_id() {
        return this.song_id;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getSubid() {
        return this.subid;
    }

    public long getTickTime() {
        return this.tickTime;
    }

    public String getTitle() {
        return this.title;
    }

    public long getTotalTime() {
        return this.totalTime;
    }

    public String getTrackMetaData() {
        return this.trackMetaData;
    }

    public String getTrackSource() {
        return this.trackSource;
    }

    public String getTypeDescription() {
        return this.typeDescription;
    }

    public void setActualQuality(String str) {
        this.actualQuality = str;
    }

    public void setAlbum(String str) {
        this.album = str;
    }

    public void setAlbumArtURI(String str) {
        this.albumArtURI = str;
    }

    public void setAlbum_id(String str) {
        this.album_id = str;
    }

    public void setArtist(String str) {
        this.artist = str;
    }

    public void setArtist_id(String str) {
        this.artist_id = str;
    }

    public void setAtmos(String str) {
        this.atmos = str;
    }

    public void setBitrate(int i2) {
        this.bitrate = i2;
    }

    public void setBitrate_s(String str) {
        this.bitrate_s = str;
    }

    public void setCoding_f(String str) {
        this.coding_f = str;
    }

    public void setControlHex(int i2) {
        this.controlHex = i2;
    }

    public void setCreator(String str) {
        this.creator = str;
    }

    public void setDuration(long j2) {
        this.duration = j2;
    }

    public void setFormat_s(String str) {
        this.format_s = str;
    }

    public void setFreemium(String str) {
        this.freemium = str;
    }

    public void setIsLive(String str) {
        this.isLive = str;
    }

    public void setMediaType(String str) {
        this.mediaType = str;
    }

    public void setPlayUri(String str) {
        this.playUri = str;
    }

    public void setQuality(int i2) {
        this.quality = i2;
    }

    public void setRate_hz(String str) {
        this.rate_hz = str;
    }

    public void setSinger_id(String str) {
        this.singer_id = str;
    }

    public void setSkiplimit(int i2) {
        this.skiplimit = i2;
    }

    public void setSong_id(String str) {
        this.song_id = str;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setSubid(String str) {
        this.subid = str;
    }

    public void setTickTime(long j2) {
        this.tickTime = j2;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTotalTime(long j2) {
        this.totalTime = j2;
    }

    public void setTrackMetaData(String str) {
        parseMetaData(str);
    }

    public void setTrackSource(String str) {
        this.trackSource = str;
    }

    public void setTypeDescription(String str) {
        this.typeDescription = str;
    }
}

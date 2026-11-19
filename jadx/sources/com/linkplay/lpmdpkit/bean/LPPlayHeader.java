package com.linkplay.lpmdpkit.bean;

import android.text.TextUtils;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPPlayHeader implements Serializable {
    private String creator;
    private int currentPage;
    private String describe;
    private String headId;
    private String headTitle;
    private int headType;
    private String imageUrl;
    private int loopMode = 3;
    private String mediaSource;
    private String mediaType;
    private int perPage;
    private String quality;
    private String searchUrl;
    private int totalPage;
    private String totalTracks;

    public static class LPHeaderType implements Serializable {
        public static final int LP_HEADER_TYPE_ALBUM = 2;
        public static final int LP_HEADER_TYPE_ARTIST = 3;
        public static final int LP_HEADER_TYPE_COLLECTION = 0;
        public static final int LP_HEADER_TYPE_EPISODE = 8;
        public static final int LP_HEADER_TYPE_PLAYLIST = 1;
        public static final int LP_HEADER_TYPE_PODCAST = 6;
        public static final int LP_HEADER_TYPE_SHOW = 7;
        public static final int LP_HEADER_TYPE_SONG = 5;
        public static final int LP_HEADER_TYPE_STATION = 4;
    }

    public static class LPLoopModeType implements Serializable {
        public static final int LP_LOOPMODE_NOBACK = 3;
        public static final int LP_LOOPMODE_PLAYHEADER_SEARCHURL = 2;
        public static final int LP_LOOPMODE_PLAYITEM_PLAYLIST = 0;
        public static final int LP_LOOPMODE_PLAYITEM_TRACKURL = 1;
    }

    public static class LPPlayMediaType implements Serializable {
        public static final String LP_AIRPLAY = "AIRPLAY";
        public static final String LP_ALEXA = "ALEXA";
        public static final String LP_ALEXA_AUDIBLE = "ALEXA_AUDIBLE";
        public static final String LP_ALEXA_PANDORA = "ALEXA_PANDORA";
        public static final String LP_ALI_RPC = "ALI-RPC";
        public static final String LP_BLUETOOTH = "BLUETOOTH";
        public static final String LP_CO_AXIAL = "CO_AXIAL";
        public static final String LP_EXTERNAL_USB = "EXTERNAL_USB";
        public static final String LP_FM = "FM";
        public static final String LP_LINE_2IN = "SECORD_LINEIN";
        public static final String LP_LINE_IN = "LINE-IN";
        public static final String LP_NONE = "NONE";
        public static final String LP_OPTICAL = "OPTICAL";
        public static final String LP_QPLAY = "QPLAY";
        public static final String LP_RADIO_NETWORK = "RADIO-NETWORK";
        public static final String LP_RCA = "RCA";
        public static final String LP_SONGLIST_LOCAL = "SONGLIST-LOCAL";
        public static final String LP_SONGLIST_LOCAL_TF = "SONGLIST-LOCAL_TF";
        public static final String LP_SONGLIST_NETWORK = "SONGLIST-NETWORK";
        public static final String LP_SPOTIFY = "SPOTIFY";
        public static final String LP_STATION_NETWORK = "STATION-NETWORK";
        public static final String LP_THIRD_DLNA = "THIRD-DLNA";
        public static final String LP_UDISK = "UDISK";
        public static final String LP_UNKNOWN = "UNKNOWN";
        public static final String SPOTIFY_SHOW = "spotify:show";
        public static final String LP_EXTERNAL_TFCARD = "EXTERNAL_TFCARD";
        public static final String SPOTIFY_EPISODE = "spotify:episode";
        private static String[] values = {"NONE", "RADIO-NETWORK", "STATION-NETWORK", "SONGLIST-NETWORK", "SONGLIST-LOCAL", "THIRD-DLNA", "AIRPLAY", "QPLAY", "UNKNOWN", "LINE-IN", "SECORD_LINEIN", "FM", "BLUETOOTH", "EXTERNAL_USB", LP_EXTERNAL_TFCARD, "OPTICAL", "UDISK", "SPOTIFY", "ALEXA", "RCA", "CO_AXIAL", "ALEXA_PANDORA", "SONGLIST-LOCAL_TF", "ALEXA_AUDIBLE", "ALI-RPC", "spotify:show", SPOTIFY_EPISODE};

        public static String byOrdinal(String str) {
            if (TextUtils.isEmpty(str)) {
                return "NONE";
            }
            for (String str2 : values) {
                if (str2.equals(str)) {
                    return str2;
                }
            }
            return "NONE";
        }
    }

    public String getCreator() {
        return this.creator;
    }

    public int getCurrentPage() {
        return this.currentPage;
    }

    public String getDescribe() {
        return this.describe;
    }

    public String getHeadId() {
        return this.headId;
    }

    public String getHeadTitle() {
        return this.headTitle;
    }

    public int getHeadType() {
        return this.headType;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public int getLoopMode() {
        return this.loopMode;
    }

    public String getMediaSource() {
        return this.mediaSource;
    }

    public String getMediaType() {
        return this.mediaType;
    }

    public int getPerPage() {
        return this.perPage;
    }

    public String getQuality() {
        return this.quality;
    }

    public String getSearchUrl() {
        return this.searchUrl;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public String getTotalTracks() {
        return this.totalTracks;
    }

    public void setCreator(String str) {
        this.creator = str;
    }

    public void setCurrentPage(int i2) {
        this.currentPage = i2;
    }

    public void setDescribe(String str) {
        this.describe = str;
    }

    public void setHeadId(String str) {
        this.headId = str;
    }

    public void setHeadTitle(String str) {
        this.headTitle = str;
    }

    public void setHeadType(int i2) {
        this.headType = i2;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setLoopMode(int i2) {
        this.loopMode = i2;
    }

    public void setMediaSource(String str) {
        this.mediaSource = str;
    }

    public void setMediaType(String str) {
        this.mediaType = str;
    }

    public void setPerPage(int i2) {
        this.perPage = i2;
    }

    public void setQuality(String str) {
        this.quality = str;
    }

    public void setSearchUrl(String str) {
        this.searchUrl = str;
    }

    public void setTotalPage(int i2) {
        this.totalPage = i2;
    }

    public void setTotalTracks(String str) {
        this.totalTracks = str;
    }
}

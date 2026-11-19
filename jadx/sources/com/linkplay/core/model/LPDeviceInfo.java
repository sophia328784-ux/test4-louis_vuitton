package com.linkplay.core.model;

import com.linkplay.core.status.LPPlayChannel;
import com.linkplay.core.status.LPPlayMode;
import com.linkplay.core.status.LPPlayStatus;
import com.linkplay.core.status.LPSpotifyPlayMode;
import com.linkplay.medialib.ContentTree;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceInfo implements Serializable {
    private String playMedium = "SONGLIST-LOCAL";
    private LPPlayStatus playStatus = LPPlayStatus.LP_PLAY_STATUS_NO_MEDIA_PRESENT;
    private LPPlayMode playMode = LPPlayMode.LP_DEFAULT;
    private LPSpotifyPlayMode spotifyPlayMode = LPSpotifyPlayMode.LP_SPOTIFY_DEFAULT;
    private LPPlayChannel playChannel = LPPlayChannel.LP_CHANNEL_STEREO;
    private String playType = "";
    private String lastStamp = ContentTree.ROOT_ID;

    public LPPlayChannel getPlayChannel() {
        return this.playChannel;
    }

    public String getPlayMedium() {
        return this.playMedium;
    }

    public LPPlayMode getPlayMode() {
        return this.playMode;
    }

    public LPPlayStatus getPlayStatus() {
        return this.playStatus;
    }

    public String getPlayType() {
        return this.playType;
    }

    public LPSpotifyPlayMode getSpotifyPlayMode() {
        return this.spotifyPlayMode;
    }

    public synchronized void setPlayChannel(LPPlayChannel lPPlayChannel, String str) {
        try {
            int i2 = Integer.parseInt(str);
            int i3 = Integer.parseInt(this.lastStamp);
            if (Math.abs(i3 - i2) > 60000) {
                this.lastStamp = ContentTree.ROOT_ID;
                i3 = Integer.parseInt(ContentTree.ROOT_ID);
            }
            if (this.playChannel != lPPlayChannel && (i2 >= i3 || i2 == 0)) {
                this.lastStamp = str;
                this.playChannel = lPPlayChannel;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setPlayMedium(String str) {
        this.playMedium = str;
    }

    public void setPlayMode(LPPlayMode lPPlayMode) {
        this.playMode = lPPlayMode;
    }

    public void setPlayStatus(LPPlayStatus lPPlayStatus) {
        this.playStatus = lPPlayStatus;
    }

    public void setPlayType(String str) {
        this.playType = str;
    }

    public void setSpotifyPlayMode(LPSpotifyPlayMode lPSpotifyPlayMode) {
        this.spotifyPlayMode = lPSpotifyPlayMode;
    }

    public void setPlayChannel(LPPlayChannel lPPlayChannel) {
        this.playChannel = lPPlayChannel;
    }
}

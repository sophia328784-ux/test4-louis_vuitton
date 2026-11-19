package com.linkplay.core.device;

import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.core.status.LPPlayMode;
import com.linkplay.core.status.LPSpotifyPlayMode;
import com.linkplay.lpmdpkit.bean.LPPlayMediaData;
import com.linkplay.mediainfo.LPMediaInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface ILPDevicePlayer {
    void browseQueue(String str, LPDevicePlayerListener lPDevicePlayerListener);

    void deleteWithIndex(int i2, LPDevicePlayerListener lPDevicePlayerListener);

    void next(LPDevicePlayerListener lPDevicePlayerListener);

    void nextPlay(LPPlayMediaData lPPlayMediaData, LPMediaInfo lPMediaInfo, LPDevicePlayerListener lPDevicePlayerListener);

    void pause(LPDevicePlayerListener lPDevicePlayerListener);

    void play(LPDevicePlayerListener lPDevicePlayerListener);

    void playAudio(LPPlayMediaData lPPlayMediaData, LPDevicePlayerListener lPDevicePlayerListener);

    void playCurrentPlayListWithIndex(int i2, LPDevicePlayerListener lPDevicePlayerListener);

    void playUSBSongsWithIndex(int i2, LPDevicePlayerListener lPDevicePlayerListener);

    void previous(LPDevicePlayerListener lPDevicePlayerListener);

    void queryCurrentPlaylist(LPDevicePlayerListener lPDevicePlayerListener);

    void setChannel(int i2, LPDevicePlayerListener lPDevicePlayerListener);

    void setPlayMode(LPPlayMode lPPlayMode, LPDevicePlayerListener lPDevicePlayerListener);

    void setProgress(int i2, LPDevicePlayerListener lPDevicePlayerListener);

    void setSpotifyPlayMode(LPSpotifyPlayMode lPSpotifyPlayMode, LPDevicePlayerListener lPDevicePlayerListener);

    void setVolume(int i2, LPDevicePlayerListener lPDevicePlayerListener);

    void stop(LPDevicePlayerListener lPDevicePlayerListener);
}

package com.linkplay.core.device;

import com.linkplay.core.listener.LPDevicePlayerListener;

/* JADX INFO: loaded from: classes2.dex */
public interface LPDeviceSpotifySettings {
    boolean isFreeSpotifyAccount();

    boolean isShowSpotifySeekButton();

    boolean spotifyNextEnable();

    boolean spotifyPrevEnable();

    void spotifySeekBackward(LPDevicePlayerListener lPDevicePlayerListener);

    boolean spotifySeekEnable();

    void spotifySeekForward(LPDevicePlayerListener lPDevicePlayerListener);
}

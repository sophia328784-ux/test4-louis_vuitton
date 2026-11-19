package com.linkplay.core.status;

import android.text.TextUtils;
import com.android.wiimu.model.IWiimuPlayStatus;

/* JADX INFO: loaded from: classes2.dex */
public enum LPPlayStatus {
    LP_PLAY_STATUS_PLAYING(IWiimuPlayStatus.Playing),
    LP_PLAY_STATUS_STOPPED(IWiimuPlayStatus.Stopped),
    LP_PLAY_STATUS_PAUSED_PLAYBACK(IWiimuPlayStatus.Paused_playback),
    LP_PLAY_STATUS_TRANSITIONING(IWiimuPlayStatus.Transitioning),
    LP_PLAY_STATUS_NO_MEDIA_PRESENT(IWiimuPlayStatus.No_media_present);

    private String status;

    LPPlayStatus(String str) {
        this.status = str;
    }

    public static LPPlayStatus byOrdinal(String str) {
        if (TextUtils.isEmpty(str)) {
            return LP_PLAY_STATUS_NO_MEDIA_PRESENT;
        }
        for (LPPlayStatus lPPlayStatus : values()) {
            if (lPPlayStatus.status.equals(str)) {
                return lPPlayStatus;
            }
        }
        return LP_PLAY_STATUS_NO_MEDIA_PRESENT;
    }

    public String getStatus() {
        return this.status;
    }
}

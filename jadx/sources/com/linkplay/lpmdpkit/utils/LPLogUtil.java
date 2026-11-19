package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.callback.LPPrintLogCallback;

/* JADX INFO: loaded from: classes2.dex */
public class LPLogUtil {
    public static final String LP_MDP_KIT = "LPMDPKit";
    public static final String LP_MS_AMAZON_MUSIC = "LPMSAmazonMusic";
    public static final String LP_MS_AMAZON_MUSIC_UI = "LPMSAmazonMusicUI";
    public static final String LP_MS_CALM_RADIO = "LPMSCalmRadio";
    public static final String LP_MS_CALM_RADIO_UI = "LPMSCalmRadioUI";
    public static final String LP_MS_COMMON_UI = "lpmscommonui";
    public static final String LP_MS_DB_KIT = "LPMSDBKit";
    public static final String LP_MS_DEEZER = "LPMSDeezer";
    public static final String LP_MS_DEEZER_UI = "LPMSDeezerUI";
    public static final String LP_MS_MEDIA_LIBRARY = "LPMSMediaLibrary";
    public static final String LP_MS_NAS = "LPMSNAS";
    public static final String LP_MS_SOUND_CLOUD = "LPMSSoundCloud";
    public static final String LP_MS_SOUND_CLOUD_UI = "LPMSSoundCloudUI";
    public static final String LP_MS_SOUND_MACHINE = "LPMSSoundMachine";
    public static final String LP_MS_SOUND_MACHINE_UI = "LPMSSoundMachineUI";
    public static final String LP_MS_SPOTIFY = "LPMSSpotify";
    public static final String LP_MS_SPOTIFY_UI = "LPMSSpotifyUI";
    public static final String LP_MS_TIDAL = "LPMSTidal";
    public static final String LP_MS_TIDAL_UI = "LPMSTidalUI";
    public static final String LP_MS_TUNEIN = "LPMSTuneIn";
    public static final String LP_MS_TUNEIN_UI = "LPMSTuneInUI";
    public static final String LP_MUSIC_KIT = "LPMusicKit";
    public static final String LP_RADIO = "LinkplayRadio";
    public static final String LP_RADIO_UI = "LinkplayRadioUI";
    private static LPPrintLogCallback printLogCallback;

    public static void d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        LPPrintLogCallback lPPrintLogCallback = printLogCallback;
        if (lPPrintLogCallback != null) {
            lPPrintLogCallback.d(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        LPPrintLogCallback lPPrintLogCallback = printLogCallback;
        if (lPPrintLogCallback != null) {
            lPPrintLogCallback.e(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        LPPrintLogCallback lPPrintLogCallback = printLogCallback;
        if (lPPrintLogCallback != null) {
            lPPrintLogCallback.i(str, str2);
        }
    }

    public static void init(LPPrintLogCallback lPPrintLogCallback) {
        printLogCallback = lPPrintLogCallback;
    }

    public static void v(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        LPPrintLogCallback lPPrintLogCallback = printLogCallback;
        if (lPPrintLogCallback != null) {
            lPPrintLogCallback.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        LPPrintLogCallback lPPrintLogCallback = printLogCallback;
        if (lPPrintLogCallback != null) {
            lPPrintLogCallback.w(str, str2);
        }
    }
}

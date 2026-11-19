package com.linkplay.core.utils;

import android.text.TextUtils;
import com.linkplay.core.device.LPDevice;

/* JADX INFO: loaded from: classes2.dex */
public class ToolsUtil {
    public static boolean isNumDigits(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < '0' || cCharAt > '9') {
                return false;
            }
        }
        return true;
    }

    public static boolean isSpotifyTrackSource(LPDevice lPDevice) {
        if (lPDevice == null) {
            return false;
        }
        try {
            return Integer.parseInt(lPDevice.getDeviceStatus().getUpnpVersion()) >= 1005;
        } catch (NumberFormatException unused) {
        }
    }
}

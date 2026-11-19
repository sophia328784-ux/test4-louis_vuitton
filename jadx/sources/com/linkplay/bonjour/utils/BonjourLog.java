package com.linkplay.bonjour.utils;

/* JADX INFO: loaded from: classes2.dex */
public class BonjourLog {
    private static BonjourLogCallback logCallback;

    public interface BonjourLogCallback {
        void log(String str, String str2);
    }

    public static void i(String str, String str2) {
        BonjourLogCallback bonjourLogCallback = logCallback;
        if (bonjourLogCallback != null) {
            bonjourLogCallback.log(str, str2);
        }
    }

    public static void setLogCallback(BonjourLogCallback bonjourLogCallback) {
        logCallback = bonjourLogCallback;
    }
}

package com.sensorsdata.analytics.android.sdk;

/* JADX INFO: loaded from: classes3.dex */
public class SALog {
    private static final int CHUNK_SIZE = 4000;
    private static boolean debug;
    private static boolean disableSDK;
    private static boolean enableLog;

    public static void d(String str, String str2) {
        if (!debug || disableSDK) {
            return;
        }
        info(str, str2, null);
    }

    public static void i(String str, String str2, Object... objArr) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, String.format(str2, objArr), null);
    }

    public static void info(String str, String str2, Throwable th) {
        if (str2 != null) {
            try {
                byte[] bytes = str2.getBytes();
                int length = bytes.length;
                if (length <= CHUNK_SIZE) {
                    return;
                }
                int i2 = 0;
                while (i2 < length - 4000) {
                    int iLastIndexOfLF = lastIndexOfLF(bytes, i2);
                    int i3 = iLastIndexOfLF - i2;
                    new String(bytes, i2, i3);
                    if (i3 < CHUNK_SIZE) {
                        iLastIndexOfLF++;
                    }
                    i2 = iLastIndexOfLF;
                }
                if (length > i2) {
                    new String(bytes, i2, length - i2);
                }
            } catch (Exception e2) {
                printStackTrace(e2);
            }
        }
    }

    public static boolean isDebug() {
        return debug;
    }

    public static boolean isLogEnabled() {
        return enableLog;
    }

    private static int lastIndexOfLF(byte[] bArr, int i2) {
        int iMin = Math.min(i2 + CHUNK_SIZE, bArr.length - 1);
        for (int i3 = iMin; i3 > iMin - 4000; i3--) {
            if (bArr[i3] == 10) {
                return i3;
            }
        }
        return iMin;
    }

    public static void printStackTrace(Exception exc) {
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public static void setDisableSDK(boolean z) {
        disableSDK = z;
    }

    public static void setEnableLog(boolean z) {
        enableLog = z;
    }

    public static void d(String str, String str2, Throwable th) {
        if (!debug || disableSDK) {
            return;
        }
        info(str, str2, th);
    }

    public static void i(String str, Throwable th) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, "", th);
    }

    public static void i(String str, String str2, Throwable th) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, str2, th);
    }

    public static void i(String str, String str2) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, str2, null);
    }
}

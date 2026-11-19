package com.networkbench.agent.impl;

import android.content.Context;
import com.networkbench.agent.impl.plugin.c.b;
import com.networkbench.agent.impl.plugin.c.g;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.c;

/* JADX INFO: loaded from: classes2.dex */
public class NBSLogger {
    private static final int DEFAULT_TYPE = 10;
    private static final String TAG = "NBSLogger";
    private static g instance;

    public static void customLogInvokeStackTrace(int i2) {
        try {
            if (i2 < 0) {
                Logger.debug(TAG, "nIncIndex is small than 0, skip");
                return;
            }
            g.f37990a = i2;
            if (isInit()) {
                instance.a(i2);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error customLogInvokeStackTrace", th);
        }
    }

    public static void emergencyStop() {
        instance = null;
    }

    private static void flush() {
        try {
            if (isInit()) {
                instance.b();
            }
        } catch (Throwable th) {
            Logger.error(TAG, "flush log to file error", th);
        }
    }

    public static g getLogTraceWrapper() {
        return instance;
    }

    public static void initLogTrack(Context context, b bVar) {
        try {
            if (instance == null) {
                synchronized (NBSLogger.class) {
                    instance = new g("com.networkbench.agent.impl.logtrack.Logan", new c(context), bVar);
                }
            }
        } catch (Throwable th) {
            Logger.error(TAG, "initLogTrack error", th);
        }
    }

    public static boolean isInit() {
        return instance != null;
    }

    public static void logDebug(String str, String str2) {
        try {
            if (isInit()) {
                instance.a(str, str2, 10);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "debug log error", th);
        }
    }

    public static void logError(String str, String str2) {
        try {
            if (isInit()) {
                instance.d(str, str2, 10);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error log error", th);
        }
    }

    public static void logInfo(String str, String str2) {
        try {
            if (isInit()) {
                instance.b(str, str2, 10);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "info log error", th);
        }
    }

    public static void logWaring(String str, String str2) {
        try {
            if (isInit()) {
                instance.c(str, str2, 10);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "warning log error", th);
        }
    }
}

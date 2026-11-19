package com.batch.android.e;

import android.util.Log;
import com.batch.android.LoggerDelegate;
import com.batch.android.LoggerLevel;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23184a = "Batch";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f23185b = "BatchInternal";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static LoggerDelegate f23186c;
    public static LoggerLevel d = LoggerLevel.INFO;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f23187e = a();

    public static void a(String str, String str2) {
        if (a(LoggerLevel.ERROR)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.error(f23184a, str2, null);
            }
        }
    }

    public static void b(String str, String str2) {
        if (a(LoggerLevel.INFO)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.info(f23184a, str2, null);
            }
        }
    }

    public static void c(String str, String str2) {
        if (a(LoggerLevel.INTERNAL)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.debug(f23185b, str2, null);
            }
        }
    }

    public static void d(String str, String str2) {
        if (a(LoggerLevel.VERBOSE)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.verbose(f23184a, str2, null);
            }
        }
    }

    public static void e(String str, String str2) {
        if (a(LoggerLevel.WARNING)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.warn(f23184a, str2, null);
            }
        }
    }

    public static boolean a(LoggerLevel loggerLevel) {
        return f23187e || d.canLog(loggerLevel);
    }

    public static void b(String str, Throwable th) {
        b(null, str, th);
    }

    public static void c(String str, Throwable th) {
        c(null, str, th);
    }

    public static void d(String str, Throwable th) {
        d(null, str, th);
    }

    public static void e(String str, Throwable th) {
        e(null, str, th);
    }

    public static void a(String str, String str2, Throwable th) {
        if (a(LoggerLevel.ERROR)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.error(f23184a, str2, th);
            }
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (a(LoggerLevel.INFO)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.info(f23184a, str2, th);
            }
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (a(LoggerLevel.INTERNAL)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.debug(f23185b, str2, th);
            }
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (a(LoggerLevel.VERBOSE)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.verbose(f23184a, str2, th);
            }
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (a(LoggerLevel.WARNING)) {
            if (str != null) {
                str2 = tr.h(str, " - ", str2);
            }
            LoggerDelegate loggerDelegate = f23186c;
            if (loggerDelegate != null) {
                loggerDelegate.warn(f23184a, str2, th);
            }
        }
    }

    public static void a(String str, Throwable th) {
        a(null, str, th);
    }

    public static void b(String str) {
        b((String) null, str);
    }

    public static void c(String str) {
        c((String) null, str);
    }

    public static void d(String str) {
        d((String) null, str);
    }

    public static void e(String str) {
        e((String) null, str);
    }

    private static boolean a() {
        return Log.isLoggable(f23185b, 3);
    }

    public static void a(String str) {
        a((String) null, str);
    }
}

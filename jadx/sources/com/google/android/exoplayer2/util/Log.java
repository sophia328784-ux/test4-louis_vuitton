package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class Log {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f28442a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f28443b = Logger.f28444a;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface LogLevel {
    }

    public interface Logger {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Logger f28444a = new AnonymousClass1();

        /* JADX INFO: renamed from: com.google.android.exoplayer2.util.Log$Logger$1, reason: invalid class name */
        public class AnonymousClass1 implements Logger {
        }
    }

    public static void a(Throwable th) {
        String strReplace;
        synchronized (f28442a) {
            Throwable cause = th;
            while (true) {
                if (cause == null) {
                    strReplace = android.util.Log.getStackTraceString(th).trim().replace("\t", "    ");
                    break;
                }
                try {
                    if (cause instanceof UnknownHostException) {
                        strReplace = "UnknownHostException (no network)";
                        break;
                    }
                    cause = cause.getCause();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (!TextUtils.isEmpty(strReplace)) {
            strReplace.replace("\n", "\n  ");
        }
        synchronized (f28442a) {
        }
    }
}

package androidx.media3.common.util;

import android.text.TextUtils;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public abstract class Log {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f14170a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f14171b = Logger.f14172a;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface LogLevel {
    }

    public interface Logger {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Logger f14172a = new AnonymousClass1();

        /* JADX INFO: renamed from: androidx.media3.common.util.Log$Logger$1, reason: invalid class name */
        public class AnonymousClass1 implements Logger {
        }
    }

    public static void a(String str, Throwable th) {
        String strReplace;
        String str2;
        if (th == null) {
            str2 = null;
        } else {
            synchronized (f14170a) {
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
            str2 = strReplace;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        str2.replace("\n", "\n  ");
    }

    public static void b(String str) {
        synchronized (f14170a) {
            a(str, null);
        }
    }

    public static void c(String str, Exception exc) {
        synchronized (f14170a) {
            a(str, exc);
        }
    }

    public static void d(String str) {
        synchronized (f14170a) {
            a(str, null);
        }
    }

    public static void e(String str, Throwable th) {
        synchronized (f14170a) {
            a(str, th);
        }
    }

    public static void f(String str) {
        synchronized (f14170a) {
            a(str, null);
        }
    }

    public static void g(String str) {
        synchronized (f14170a) {
            a(str, null);
        }
    }

    public static void h(String str, Throwable th) {
        synchronized (f14170a) {
            a(str, th);
        }
    }
}

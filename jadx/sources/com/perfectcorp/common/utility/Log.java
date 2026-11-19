package com.perfectcorp.common.utility;

import com.perfectcorp.common.io.IO;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import defpackage.fc;
import java.io.Closeable;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Log {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile int f39427a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile c f39428b = c.f39433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CopyOnWriteArrayList f39429c = new CopyOnWriteArrayList();

    public static class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f39430b = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Thread.UncaughtExceptionHandler f39431a = Thread.getDefaultUncaughtExceptionHandler();

        static {
            new a();
        }

        public a() {
            Thread.setDefaultUncaughtExceptionHandler(this);
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f39431a;
            try {
                for (b bVar : Log.f39429c) {
                    try {
                        if (bVar instanceof Thread.UncaughtExceptionHandler) {
                            ((Thread.UncaughtExceptionHandler) bVar).uncaughtException(thread, th);
                        }
                    } catch (Throwable unused) {
                    }
                    if (bVar instanceof Closeable) {
                        IO.b((Closeable) bVar);
                    }
                }
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            } catch (Throwable th2) {
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
                throw th2;
            }
        }
    }

    public interface b {
        int a(int i2, String str, String str2);

        int a(String str, String str2, Throwable th);
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f39432a = new m();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f39433b = new n();
    }

    public static void a(com.perfectcorp.common.logger.a aVar) {
        f39429c.add(aVar);
        int i2 = a.f39430b;
    }

    public static void b(String str) {
        g(3, "MakeupCam", str);
    }

    public static void c(String str, String str2, Throwable th) {
        g(3, str, str2 + '\n' + f(th));
    }

    public static void d(String str, String str2) {
        g(6, str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        g(6, str, str2 + '\n' + f(th));
    }

    public static String f(Throwable th) {
        return th instanceof UnknownHostException ? Strings.b(th.getMessage()) : android.util.Log.getStackTraceString(th);
    }

    public static int g(int i2, String str, String str2) {
        Iterator it = f39429c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(i2, str, str2);
        }
        if (i2 < f39427a) {
            return 0;
        }
        return f39428b.a(i2, str, str2);
    }

    public static void h(String str) {
        g(5, "MakeupCam", str);
    }

    public static void i(String str, String str2, Throwable th) {
        g(5, str, str2 + '\n' + f(th));
    }

    public static int j(String str, String str2, Throwable th) {
        if (th == null) {
            th = new AssertionError(fc.i("WTF tag:", str, " msg:", str2));
        }
        Iterator it = f39429c.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(str, str2, th);
        }
        return f39428b.a(str, str2, th);
    }
}

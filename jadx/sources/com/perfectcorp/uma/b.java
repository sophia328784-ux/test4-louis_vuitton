package com.perfectcorp.uma;

import android.content.Context;
import android.util.Log;
import com.linkplay.medialib.FinalDataUtil;
import defpackage.md;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f43195a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Context f43196b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile p f43197c = null;
    public static boolean d = false;

    public static class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f43198b = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Thread.UncaughtExceptionHandler f43199a = Thread.getDefaultUncaughtExceptionHandler();

        static {
            new a();
        }

        public a() {
            Thread.setDefaultUncaughtExceptionHandler(this);
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            try {
                synchronized (b.f43195a) {
                    if (b.f43197c != null) {
                        p pVar = b.f43197c;
                        q qVar = p.x0;
                        if (pVar != qVar) {
                            b.f43197c.a("uncaughtException");
                            b.f43197c = qVar;
                        }
                    }
                }
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f43199a;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            } catch (Throwable th2) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f43199a;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.uma.b$b, reason: collision with other inner class name */
    public static class C0229b extends IllegalArgumentException {
    }

    @Deprecated
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static m f43200a = m.v0;

        public static void a(String str, String str2) {
            f43200a.a(3, str, str2);
        }

        public static void b(String str, String str2, Throwable th) {
            f43200a.a(6, str, str2 + '\n' + Log.getStackTraceString(th));
        }

        public static void c(String str, String str2) {
            f43200a.a(4, str, str2);
        }

        public static void d(String str, String str2) {
            f43200a.a(6, str, str2);
        }
    }

    public static void a() {
        int i2 = a.f43198b;
        synchronized (f43195a) {
            try {
                p pVar = f43197c;
                if (pVar == null) {
                    throw new IllegalStateException("UMA.init() must be called first.");
                }
                pVar.a_();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void b(Context context, String str, String str2) {
        if (context == null) {
            md.n("context must not be null.");
            return;
        }
        if (str == null) {
            md.n("serverURL must not be null.");
            return;
        }
        if (!str.startsWith(FinalDataUtil.HTTP_HEAD) && !str.startsWith("https://")) {
            md.n("serverURL should be a http:// or https:// URL.");
            return;
        }
        if (str2 == null || str2.isEmpty()) {
            md.n("appKey must not be null or empty.");
            return;
        }
        synchronized (f43195a) {
            try {
                if (f43197c != null) {
                    if (d) {
                        throw new IllegalStateException("init() was called. It must not be called multiple times.");
                    }
                    d.f43200a.a(5, "UMA", "init() was called. It must not be called multiple times.");
                } else {
                    Context applicationContext = context.getApplicationContext();
                    f43196b = applicationContext;
                    k kVar = new k(applicationContext);
                    j jVar = new j();
                    com.perfectcorp.uma.countly.d.f43216i.a().b(applicationContext.getApplicationContext(), kVar);
                    f43197c = new c(jVar, applicationContext, str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(String str, Map map) {
        p pVar = f43197c;
        if (pVar == null) {
            md.k("UMA.init() must be called first.");
            return;
        }
        if (str == null || str.isEmpty()) {
            md.n("key must not be null or empty.");
            return;
        }
        try {
            int iA = t.a(str, map);
            if (iA <= 5000) {
                pVar.a(str, map, 1, 0.0d);
                return;
            }
            throw new C0229b("The estimated size is " + iA + " that is greater than 5000. key:" + str.substring(0, Math.min(str.length(), 40)));
        } catch (C0229b e2) {
            if (d) {
                throw e2;
            }
            d.b("UMA", "", e2);
            HashMap map2 = new HashMap();
            String stackTraceString = Log.getStackTraceString(e2);
            if (stackTraceString.length() > 2048) {
                stackTraceString = stackTraceString.substring(0, 2048).concat(" (truncated)");
            }
            map2.put("stack_trace", stackTraceString);
            c("_UMA_EventTooLargeException", map2);
        }
    }

    public static void d() {
        synchronized (f43195a) {
            try {
                p pVar = f43197c;
                if (pVar == null) {
                    throw new IllegalStateException("UMA.init() must be called first.");
                }
                pVar.b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void e() {
        synchronized (f43195a) {
            try {
                p pVar = f43197c;
                if (pVar == null) {
                    throw new IllegalStateException("UMA.init() must be called first.");
                }
                pVar.c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

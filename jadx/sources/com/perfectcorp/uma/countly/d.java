package com.perfectcorp.uma.countly;

import android.content.Context;
import android.text.TextUtils;
import com.perfectcorp.common.debug.NotAnError;
import com.perfectcorp.common.utility.Log;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class d {
    public static final ExecutorService g = Executors.newSingleThreadExecutor(new e());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b.a f43215h = new b.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f43216i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile int f43217j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile boolean f43218k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.perfectcorp.uma.countly.b f43219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ScheduledExecutorService f43220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p f43221c;
    public s d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f43222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f43223f;

    public static final class a extends com.perfectcorp.uma.i {
        public final d a() {
            return C0230d.f43226a;
        }
    }

    public interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f43225a = new a();

        public static class a implements c {
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.uma.countly.d$d, reason: collision with other inner class name */
    public static class C0230d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f43226a;

        static {
            d dVar = new d();
            dVar.f43219a = new com.perfectcorp.uma.countly.b();
            ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new f());
            dVar.f43220b = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
            scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new g(dVar), 86400L, 86400L, TimeUnit.SECONDS);
            f43226a = dVar;
        }
    }

    static {
        c.a aVar = c.f43225a;
        f43218k = true;
    }

    public final synchronized void a() {
        com.perfectcorp.uma.b.d.f43200a.a(2, "Countly", "onStart activityCount:" + this.f43223f);
        if (this.d == null) {
            throw new IllegalStateException("init must be called before onStart");
        }
        int i2 = this.f43223f + 1;
        this.f43223f = i2;
        if (i2 == 1) {
            this.f43222e = System.nanoTime();
            g.submit(new j(this));
        }
    }

    public final synchronized void b(Context context, com.perfectcorp.uma.internal.b bVar) {
        if (this.d == null) {
            this.f43221c = new p(context);
            this.f43219a.c(context);
            com.perfectcorp.uma.countly.b bVar2 = this.f43219a;
            p pVar = this.f43221c;
            bVar2.f43208a = pVar;
            bVar2.f43211e = bVar;
            this.d = new s(pVar);
        }
    }

    public final synchronized void c(String str) {
        if (this.f43223f > 0) {
            this.f43223f = 0;
            String str2 = "&crash=1";
            if (!TextUtils.isEmpty(str)) {
                try {
                    str2 = "&crash=1&crash_reason=" + URLEncoder.encode(str, "UTF-8");
                } catch (UnsupportedEncodingException unused) {
                }
            }
            try {
                this.f43219a.b(h(), str2);
            } catch (Throwable th) {
                com.perfectcorp.uma.b.d.b("Countly", "onTerminate(): endSession failed.", th);
            }
            this.f43222e = 0L;
        }
    }

    public final synchronized void d(String str, String str2) {
        boolean z = false;
        if (str != null) {
            if (str.length() > 0) {
                try {
                    new URL(str);
                    z = true;
                } catch (MalformedURLException unused) {
                }
            }
        }
        if (!z) {
            throw new IllegalArgumentException("valid serverURL is required");
        }
        if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("valid appKey is required");
        }
        com.perfectcorp.uma.countly.b bVar = this.f43219a;
        if (bVar == null) {
            throw new IllegalStateException("connectionQueue_ is null, need to invoke init first");
        }
        if ("http://undefined".equals(bVar.g) && "undefined".equals(this.f43219a.f43213h)) {
            this.f43219a.g = str;
            this.f43219a.f43213h = str2;
        } else if (!this.f43219a.g.equals(str) || !this.f43219a.f43213h.equals(str2)) {
            throw new IllegalStateException("ConnectionQueue cannot be reinitialized with different values");
        }
    }

    public final synchronized void e(String str, Map map, int i2, double d) throws Throwable {
        try {
            try {
                if (this.d == null) {
                    throw new IllegalStateException("init must be called before recordEvent");
                }
                if (str == null || str.length() == 0) {
                    throw new IllegalArgumentException("valid key is required");
                }
                g.submit(new h(this, str, map, i2, d));
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized void f() {
        com.perfectcorp.uma.b.d.f43200a.a(2, "Countly", "onStop activityCount:" + this.f43223f);
        if (this.d == null) {
            throw new IllegalStateException("init must be called before onStop");
        }
        int i2 = this.f43223f;
        if (i2 == 0) {
            throw new IllegalStateException("must call onStart before onStop");
        }
        int i3 = i2 - 1;
        this.f43223f = i3;
        if (i3 == 0) {
            g.submit(new l(this, h(), null));
            this.f43222e = 0L;
        }
    }

    public final void g() {
        Log.c("Countly", "[flushEvents] start", new NotAnError());
        g.submit(new i(this));
    }

    public final int h() {
        long jNanoTime = System.nanoTime();
        long j2 = jNanoTime - this.f43222e;
        this.f43222e = jNanoTime;
        return (int) ((j2 + 500000000) / 1000000000);
    }

    public interface b {
        void a();

        void a(String str, int i2);

        public static class a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final CopyOnWriteArrayList f43224a = new CopyOnWriteArrayList();

            @Override // com.perfectcorp.uma.countly.d.b
            public final void a() {
                Iterator it = this.f43224a.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a();
                }
            }

            @Override // com.perfectcorp.uma.countly.d.b
            public final void a(String str, int i2) {
                Iterator it = this.f43224a.iterator();
                while (it.hasNext()) {
                    ((b) it.next()).a(str, i2);
                }
            }
        }
    }
}

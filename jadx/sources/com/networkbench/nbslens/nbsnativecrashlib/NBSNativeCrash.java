package com.networkbench.nbslens.nbsnativecrashlib;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import defpackage.v7;

/* JADX INFO: loaded from: classes2.dex */
public final class NBSNativeCrash {
    private static String appId = null;
    private static String appVersion = null;
    private static boolean initialized = false;
    private static String logDir;
    private static i logger = new d();
    public static String nativeLibDir = null;

    public class a extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            throw new RuntimeException("test java exception");
        }
    }

    private NBSNativeCrash() {
    }

    public static String a() {
        return appId;
    }

    public static String b() {
        return appVersion;
    }

    public static i c() {
        return logger;
    }

    public static String getLogDir() {
        return logDir;
    }

    public static synchronized int init(Context context, b bVar) {
        try {
            if (initialized) {
                return 0;
            }
            initialized = true;
            if (context == null) {
                return -1;
            }
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext != null ? applicationContext : context;
            b bVar2 = bVar == null ? new b() : bVar;
            i iVar = bVar2.d;
            if (iVar != null) {
                logger = iVar;
            }
            String packageName = context2.getPackageName();
            appId = packageName;
            if (TextUtils.isEmpty(packageName)) {
                appId = "unknown";
            }
            if (TextUtils.isEmpty(bVar2.f38716a)) {
                bVar2.f38716a = n.a(context2);
            }
            appVersion = bVar2.f38716a;
            nativeLibDir = context2.getApplicationInfo().nativeLibraryDir;
            if (TextUtils.isEmpty(bVar2.f38717b)) {
                bVar2.f38717b = context2.getFilesDir() + "/tombstones";
            }
            logDir = bVar2.f38717b;
            int iMyPid = Process.myPid();
            if (bVar2.f38721h || bVar2.H) {
                String strA = n.a(context2, iMyPid);
                if (bVar2.H && (TextUtils.isEmpty(strA) || !strA.equals(packageName))) {
                    bVar2.H = false;
                }
            }
            f.b().a(bVar2.f38717b, bVar2.f38723j, bVar2.v, bVar2.K, bVar2.f38720f, bVar2.g, bVar2.f38718c);
            int iA = (bVar2.t || bVar2.H) ? NativeHandler.b().a(context2, bVar2.f38719e, appId, bVar2.f38716a, bVar2.f38717b, bVar2.t, bVar2.u, bVar2.w, bVar2.x, bVar2.y, bVar2.z, bVar2.A, bVar2.B, bVar2.C, bVar2.D, bVar2.E, bVar2.F, bVar2.G, bVar2.H, bVar2.I, bVar2.J, bVar2.L, bVar2.M, bVar2.N, bVar2.O, bVar2.P, bVar2.Q, bVar2.R) : 0;
            f.b().d();
            return iA;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void testJavaCrash(boolean z) throws RuntimeException {
        if (!z) {
            v7.h("test java exception");
            return;
        }
        a aVar = new a();
        aVar.setName("xcrash_test_java_thread");
        aVar.start();
    }

    public static void testNativeCrash(boolean z) {
        NativeHandler.b().a(z);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f38716a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f38717b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f38718c = 5000;
        public i d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public h f38719e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f38720f = 0;
        public int g = 128;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f38721h = true;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f38722i = true;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f38723j = 10;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f38724k = 50;
        public int l = 50;
        public int m = 200;
        public boolean n = true;
        public boolean o = true;
        public boolean p = true;
        public int q = 0;
        public String[] r = null;
        public g s = null;
        public boolean t = true;
        public boolean u = true;
        public int v = 10;
        public int w = 50;
        public int x = 50;
        public int y = 200;
        public boolean z = true;
        public boolean A = true;
        public boolean B = true;
        public boolean C = true;
        public boolean D = true;
        public int E = 0;
        public String[] F = null;
        public g G = null;
        public boolean H = true;
        public boolean I = true;
        public boolean J = true;
        public int K = 10;
        public int L = 50;
        public int M = 50;
        public int N = 200;
        public boolean O = true;
        public boolean P = true;
        public g Q = null;
        public g R = null;

        public b a(int i2) {
            if (i2 < 1) {
                i2 = 1;
            }
            this.K = i2;
            return this;
        }

        public b b() {
            this.f38721h = false;
            return this;
        }

        public b c() {
            this.t = false;
            return this;
        }

        public b d() {
            this.H = true;
            return this;
        }

        public b e(int i2) {
            if (i2 < 0) {
                i2 = 0;
            }
            this.q = i2;
            return this;
        }

        public b f(int i2) {
            if (i2 < 1) {
                i2 = 1;
            }
            this.f38723j = i2;
            return this;
        }

        public b g(int i2) {
            this.l = i2;
            return this;
        }

        public b h(boolean z) {
            this.f38722i = z;
            return this;
        }

        public b i(int i2) {
            this.f38724k = i2;
            return this;
        }

        public b j(int i2) {
            if (i2 < 0) {
                i2 = 0;
            }
            this.f38718c = i2;
            return this;
        }

        public b k(int i2) {
            if (i2 < 0) {
                i2 = 0;
            }
            this.E = i2;
            return this;
        }

        public b l(int i2) {
            if (i2 < 1) {
                i2 = 1;
            }
            this.v = i2;
            return this;
        }

        public b m(int i2) {
            this.x = i2;
            return this;
        }

        public b n(boolean z) {
            this.u = z;
            return this;
        }

        public b o(int i2) {
            this.w = i2;
            return this;
        }

        public b p(int i2) {
            if (i2 < 0) {
                i2 = 0;
            }
            this.f38720f = i2;
            return this;
        }

        public b q(int i2) {
            if (i2 < 0) {
                i2 = 0;
            }
            this.g = i2;
            return this;
        }

        public b g(boolean z) {
            this.o = z;
            return this;
        }

        public b h(int i2) {
            this.m = i2;
            return this;
        }

        public b i(boolean z) {
            this.D = z;
            return this;
        }

        public b m(boolean z) {
            this.C = z;
            return this;
        }

        public b n(int i2) {
            this.y = i2;
            return this;
        }

        public b b(String str) {
            this.f38717b = str;
            return this;
        }

        public b c(g gVar) {
            this.s = gVar;
            return this;
        }

        public b d(g gVar) {
            this.G = gVar;
            return this;
        }

        public b b(String[] strArr) {
            this.F = strArr;
            return this;
        }

        public b c(int i2) {
            this.N = i2;
            return this;
        }

        public b d(boolean z) {
            this.I = z;
            return this;
        }

        public b b(int i2) {
            this.M = i2;
            return this;
        }

        public b c(boolean z) {
            this.P = z;
            return this;
        }

        public b d(int i2) {
            this.L = i2;
            return this;
        }

        public b e(boolean z) {
            this.p = z;
            return this;
        }

        public b j(boolean z) {
            this.z = z;
            return this;
        }

        public b k(boolean z) {
            this.B = z;
            return this;
        }

        public b a(i iVar) {
            this.d = iVar;
            return this;
        }

        public b b(boolean z) {
            this.O = z;
            return this;
        }

        public b e() {
            this.f38721h = true;
            return this;
        }

        public b f(boolean z) {
            this.n = z;
            return this;
        }

        public b l(boolean z) {
            this.A = z;
            return this;
        }

        public b a(h hVar) {
            this.f38719e = hVar;
            return this;
        }

        public b b(g gVar) {
            this.R = gVar;
            return this;
        }

        public b f() {
            this.t = true;
            return this;
        }

        public b a(String[] strArr) {
            this.r = strArr;
            return this;
        }

        public b a() {
            this.H = false;
            return this;
        }

        public b a(boolean z) {
            this.J = z;
            return this;
        }

        public b a(String str) {
            this.f38716a = str;
            return this;
        }

        public b a(g gVar) {
            this.Q = gVar;
            return this;
        }
    }

    public static int init(Context context) {
        return init(context, null);
    }
}

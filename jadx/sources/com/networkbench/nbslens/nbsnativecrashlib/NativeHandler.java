package com.networkbench.nbslens.nbsnativecrashlib;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.networkbench.agent.impl.crash.NativeCrashInterface;
import com.networkbench.com.google.gson.JsonArray;
import java.io.File;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class NativeHandler {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final NativeHandler f38725j = new NativeHandler();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f38727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f38728c;
    private g d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f38729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f38730f;
    private g g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private g f38731h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f38726a = 25000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f38732i = false;

    private NativeHandler() {
    }

    private static void a(String str, boolean z, List<Map.Entry<Thread, StackTraceElement[]>> list) {
        try {
            Map<String, String> mapA = m.a(str);
            if (n.g()) {
                for (Map.Entry<String, String> entry : mapA.entrySet()) {
                    NBSNativeCrash.c().c("NBSAgent", "key:" + ((Object) entry.getKey()) + ", value:" + ((Object) entry.getValue()));
                }
            }
            j jVar = new j(mapA, z, list);
            JsonArray jsonArrayG = jVar.g();
            JsonArray jsonArrayA = jVar.a(jsonArrayG);
            if (n.g()) {
                NBSNativeCrash.c().c("NBSAgent", "store info:" + jsonArrayA.toString());
            }
            NativeCrashInterface.saveFeature();
            try {
                NativeCrashInterface.storeUUID(jVar.h());
                NativeCrashInterface.answerAnomalousCallBack(1, jVar.e(), jsonArrayG, jVar.d());
            } catch (Throwable unused) {
            }
            NativeCrashInterface.storeCrashInfo(System.currentTimeMillis() + "", jsonArrayA.toString());
        } catch (Throwable th) {
            NBSNativeCrash.c().a("NBSAgent", "error saveInfo:", th);
        }
    }

    public static NativeHandler b() {
        return f38725j;
    }

    private static void crashCallback(String str, String str2, boolean z, boolean z2, String str3) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (n.g()) {
                NBSNativeCrash.c().c("NBSAgent", "logPath:" + str + ", emergency:" + str2 + ", dumpJavaStacktrace:" + z + ", isMainThread:" + z2 + ", threadName:" + str3);
            }
            if (!TextUtils.isEmpty(str)) {
                if (z) {
                    String strA = a(z2, str3);
                    if (n.g()) {
                        NBSNativeCrash.c().c("NBSAgent", "in java stacktrace:" + strA);
                    }
                    if (!TextUtils.isEmpty(strA)) {
                        l.a(str, m.K, strA);
                    }
                }
                NBSNativeCrash.c().c("NBSAgent", "cost 5:" + (System.currentTimeMillis() - jCurrentTimeMillis));
                a(str, z2, a());
                NBSNativeCrash.c().c("NBSAgent", "cost 6:" + (System.currentTimeMillis() - jCurrentTimeMillis));
            }
            g gVar = b().d;
            if (gVar != null) {
                try {
                    gVar.a(str, str2);
                } catch (Exception e2) {
                    NBSNativeCrash.c().c("NBSAgent", "NativeHandler native crash callback.onCrash failed", e2);
                }
            }
            if (b().f38728c) {
                return;
            }
            a.b().a();
        } catch (Throwable th) {
            NBSNativeCrash.c().a("NBSAgent", "error crashCallback:", th);
        }
    }

    private static native int nativeInit(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z, boolean z2, int i3, int i4, int i5, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i6, String[] strArr, boolean z8, boolean z9, int i7, int i8, int i9, boolean z10, boolean z11);

    private static native void nativeTestCrash(int i2);

    private static void traceCallback(String str, String str2) {
        NBSNativeCrash.c().c("NBSAgent", "trace slow callback time: " + System.currentTimeMillis());
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l.a(str, m.I, n.f());
        l.a(str, m.M, a.b().c() ? "yes" : "no");
        if (b().f38730f && !n.a(b().f38727b, b().f38726a)) {
            f.b().d(new File(str));
            return;
        }
        if (f.b().e()) {
            String strConcat = str.substring(0, str.length() - 15).concat(n.n);
            File file = new File(str);
            if (!file.renameTo(new File(strConcat))) {
                f.b().d(file);
                return;
            }
            g gVar = b().g;
            if (gVar != null) {
                try {
                    gVar.a(strConcat, str2);
                } catch (Exception e2) {
                    NBSNativeCrash.c().c("NBSAgent", "NativeHandler ANR callback.onCrash failed", e2);
                }
            }
        }
    }

    private static void traceCallbackBeforeDump() {
        NBSNativeCrash.c().c("NBSAgent", "trace fast callback time: " + System.currentTimeMillis());
        g gVar = b().f38731h;
        if (gVar != null) {
            try {
                gVar.a(null, null);
            } catch (Exception e2) {
                NBSNativeCrash.c().c("NBSAgent", "NativeHandler ANR callback.onCrash failed", e2);
            }
        }
    }

    public void c() {
    }

    public void a(boolean z) {
        if (this.f38732i) {
            nativeTestCrash(z ? 1 : 0);
        }
    }

    private static String a(boolean z, String str) {
        StackTraceElement[] stackTraceElementArrA;
        try {
            if (z) {
                stackTraceElementArrA = a("main");
            } else {
                stackTraceElementArrA = (str == null || str.length() <= 0) ? null : a(str);
            }
            if (stackTraceElementArrA != null) {
                StringBuilder sb = new StringBuilder();
                for (StackTraceElement stackTraceElement : stackTraceElementArrA) {
                    sb.append("    at ");
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
                return sb.toString();
            }
            return "";
        } catch (Exception e2) {
            NBSNativeCrash.c().a("NBSAgent", "NativeHandler getStacktraceByThreadName failed", e2);
            return "";
        }
    }

    private static StackTraceElement[] a(String str) {
        if (str.equals("main")) {
            return Looper.getMainLooper().getThread().getStackTrace();
        }
        ThreadGroup threadGroup = Thread.currentThread().getThreadGroup();
        int iActiveCount = threadGroup.activeCount();
        Thread[] threadArr = new Thread[(iActiveCount / 2) + iActiveCount];
        int iEnumerate = threadGroup.enumerate(threadArr);
        for (int i2 = 0; i2 < iEnumerate; i2++) {
            if (threadArr[i2].getName().equals(str)) {
                return threadArr[i2].getStackTrace();
            }
        }
        return null;
    }

    private static List<Map.Entry<Thread, StackTraceElement[]>> a() {
        return NativeCrashInterface.getAllStackTraces();
    }

    public int a(Context context, h hVar, String str, String str2, String str3, boolean z, boolean z2, int i2, int i3, int i4, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i5, String[] strArr, g gVar, boolean z8, boolean z9, boolean z10, int i6, int i7, int i8, boolean z11, boolean z12, g gVar2, g gVar3) {
        if (hVar == null) {
            try {
                System.loadLibrary("nbscrash");
            } catch (Throwable th) {
                NBSNativeCrash.c().a("NBSAgent", "NativeHandler System.loadLibrary failed", th);
                return -2;
            }
        } else {
            try {
                hVar.a("nbscrash");
            } catch (Throwable th2) {
                NBSNativeCrash.c().a("NBSAgent", "NativeHandler ILibLoader.loadLibrary failed", th2);
                return -2;
            }
        }
        this.f38727b = context;
        this.f38728c = z2;
        this.d = gVar;
        this.f38729e = z8;
        this.f38730f = z10;
        this.g = gVar2;
        this.f38731h = gVar3;
        this.f38726a = z9 ? 25000L : 45000L;
        try {
            if (nativeInit(Build.VERSION.SDK_INT, Build.VERSION.RELEASE, n.a(), Build.MANUFACTURER, Build.BRAND, n.d(), Build.FINGERPRINT, str, str2, context.getApplicationInfo().nativeLibraryDir, str3, z, z2, i2, i3, i4, z3, z4, z5, z6, z7, i5, strArr, z8, z9, i6, i7, i8, z11, z12) != 0) {
                NBSNativeCrash.c().a("NBSAgent", "NativeHandler init failed");
                return -3;
            }
            this.f38732i = true;
            return 0;
        } catch (Throwable th3) {
            NBSNativeCrash.c().a("NBSAgent", "NativeHandler init failed", th3);
            return -3;
        }
    }
}

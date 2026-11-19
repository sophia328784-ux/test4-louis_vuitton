package com.cyberfend.cyfsecurity;

import NKB.GsJ.KVH;
import ZjTIAZ.ASYMBN;
import ZjTIAZ.CNATAC;
import ZjTIAZ.DQwsTh;
import ZjTIAZ.DUcPEg;
import ZjTIAZ.DeHqqG;
import ZjTIAZ.GWINqE;
import ZjTIAZ.Gvcplk;
import ZjTIAZ.JOGAgw;
import ZjTIAZ.NUprz;
import ZjTIAZ.QYXNEc;
import ZjTIAZ.RXtEM;
import ZjTIAZ.UfEmur;
import ZjTIAZ.WpDaqA;
import ZjTIAZ.XBnaCg;
import ZjTIAZ.XNPXeV;
import ZjTIAZ.ZptgnD;
import ZjTIAZ.ZxDSl;
import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Patterns;
import android.view.ViewGroup;
import com.linkplay.medialib.ContentTree;
import defpackage.cj;
import defpackage.d21;
import defpackage.v7;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class CYFMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f25345a = 2914;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CYFManager f25346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f25347c;
    public static boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f25348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int[] f25349f;
    public static boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final AtomicBoolean f25350h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final AtomicBoolean f25351i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ScheduledExecutorService f25352j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ScheduledExecutorService f25353k;
    public static volatile ScheduledFuture l;
    public static volatile boolean m;

    static {
        CNATAC.a("M|S~\\\\FT~C");
        CNATAC.a("GK|GZSCIkX[[\u0015w\\YDKB\foo\u007f\u0010rfh\u0004sCU[Quu<)0-\u000e\u0000");
        f25346b = new CYFManager();
        f25347c = false;
        d = false;
        f25348e = null;
        f25349f = null;
        g = false;
        f25350h = new AtomicBoolean(false);
        f25351i = new AtomicBoolean(false);
        f25352j = Executors.newSingleThreadScheduledExecutor();
        f25353k = Executors.newSingleThreadScheduledExecutor();
        m = false;
    }

    public static void a(final Application application, final String str, final String str2) {
        try {
            CYFManager cYFManager = f25346b;
            cYFManager.r();
            String str3 = f25348e;
            if (str3 != null && str3.length() > 0) {
                cYFManager.o = 18;
                JOGAgw.f204a.b(application, f25348e, new JOGAgw.InterfaceC0003JOGAgw() { // from class: com.cyberfend.cyfsecurity.CYFMonitor.4
                    public static String d = CNATAC.a("M|S~\\\\FT~C");

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public static String f25357e = CNATAC.a("mUglYApUc]");

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public static String f25358f = CNATAC.a("zJ~V]");
                    public static String g = CNATAC.a("GKcR_[K\u0000cTANL\u0016^V]OYZLB\u0015\u0010");

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public static String f25359h = CNATAC.a("|@aAJmIRt@");

                    @Override // ZjTIAZ.JOGAgw.InterfaceC0003JOGAgw
                    public final void a() {
                        CYFManager cYFManager2 = CYFMonitor.f25346b;
                        cYFManager2.s();
                        cYFManager2.o = 19;
                        CYFMonitor.g(application, str2, str, null, null);
                        CYFMonitor.g = false;
                    }

                    @Override // ZjTIAZ.JOGAgw.InterfaceC0003JOGAgw
                    public final void b() {
                        CYFMonitor.f25346b.o = 20;
                        CYFMonitor.g(application, str2, str, null, null);
                        CYFMonitor.g = false;
                    }

                    @Override // ZjTIAZ.JOGAgw.InterfaceC0003JOGAgw
                    public final void c(JSONObject jSONObject) {
                        String string;
                        String string2;
                        CYFMonitor.f25346b.s();
                        String string3 = null;
                        try {
                            string = jSONObject.getString(f25357e);
                            try {
                                string2 = jSONObject.getString(f25358f);
                                try {
                                    string3 = jSONObject.getString(f25359h);
                                } catch (JSONException unused) {
                                    CYFMonitor.f25346b.o = 22;
                                }
                            } catch (JSONException unused2) {
                                string2 = null;
                            }
                        } catch (JSONException unused3) {
                            string = null;
                            string2 = null;
                        }
                        CYFMonitor.f25346b.o = 21;
                        boolean z = (string == null || string.isEmpty() || string2 == null || string2.isEmpty()) ? false : true;
                        CYFMonitor.m = z;
                        CYFMonitor.g(application, str2, str, string, string2);
                        if (z && string3 != null && !string3.isEmpty() && CYFMonitor.f25349f == null) {
                            String[] strArrSplit = string3.split(",");
                            int iMin = Math.min(strArrSplit.length, 10);
                            CYFMonitor.f25349f = new int[iMin];
                            for (int i2 = 0; i2 < iMin; i2++) {
                                try {
                                    CYFMonitor.f25349f[i2] = Integer.parseInt(strArrSplit[i2].trim());
                                    CYFMonitor.f25352j.schedule(new Runnable(this) { // from class: com.cyberfend.cyfsecurity.CYFMonitor.4.1
                                        final /* synthetic */ KVH ZRQiWB;

                                        {
                                            this.ZRQiWB = this;
                                        }

                                        @Override // java.lang.Runnable
                                        public void run() {
                                            ZptgnD zptgnD;
                                            Application application2 = application;
                                            int i3 = CYFMonitor.f25345a;
                                            try {
                                                String str4 = null;
                                                if (CYFMonitor.m && (zptgnD = CYFMonitor.f25346b.f25342i) != null) {
                                                    if (((zptgnD.f332f == null || zptgnD.f332f.isEmpty()) ? null : zptgnD.f332f) != null) {
                                                        return;
                                                    }
                                                }
                                                CYFManager cYFManager2 = CYFMonitor.f25346b;
                                                ZptgnD zptgnD2 = cYFManager2.f25342i;
                                                if (zptgnD2 != null) {
                                                    if (zptgnD2.f332f != null && !zptgnD2.f332f.isEmpty()) {
                                                        str4 = zptgnD2.f332f;
                                                    }
                                                    if (str4 == null && CYFMonitor.d) {
                                                        cYFManager2.o = 23;
                                                        CYFMonitor.f25352j.execute(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFMonitor.5
                                                            static String JtwhEv;
                                                            static String QhGife;

                                                            static {
                                                                ugV(false);
                                                            }

                                                            public static /* synthetic */ void ugV(boolean z2) {
                                                                if (z2) {
                                                                    ugV(false);
                                                                }
                                                                QhGife = CNATAC.a("KWg\\A\u0012LLtP[U[Q\u0017MY\no\u007fn\u000eBQOCDAW\u001c\u0007");
                                                                JtwhEv = CNATAC.a("M|S~\\\\FT~C");
                                                            }

                                                            @Override // java.lang.Runnable
                                                            public void run() {
                                                                try {
                                                                    ZptgnD zptgnD3 = CYFMonitor.f25346b.f25342i;
                                                                    if (zptgnD3 != null) {
                                                                        zptgnD3.r();
                                                                    }
                                                                } catch (Exception e2) {
                                                                    GpYFMu.d(JtwhEv, cj.h(e2, QhGife, new StringBuilder()), new Throwable[0]);
                                                                }
                                                            }
                                                        });
                                                        CYFMonitor.b(application2, false);
                                                    }
                                                }
                                            } catch (Exception e2) {
                                                GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), d21.h(e2, "KWg\\A\u0012FN1RENgSCJP\u0010\u000b", new StringBuilder()), new Throwable[0]);
                                                GWINqE.b(e2);
                                            }
                                        }
                                    }, Math.max(0, CYFMonitor.f25349f[i2]), TimeUnit.SECONDS);
                                } catch (NumberFormatException unused4) {
                                    GpYFMu.g(d, g + strArrSplit[i2], new Throwable[0]);
                                }
                            }
                        }
                        CYFMonitor.g = false;
                        if (z) {
                            ASYMBN asymbnJ = ASYMBN.j();
                            ArrayList arrayList = asymbnJ.f98h;
                            try {
                                if (asymbnJ.f97f == CYFIntegrityChecker$DebugMode.NONE) {
                                    return;
                                }
                                arrayList.remove(CYFIntegrityChecker$IntegrityCheckState.CPR_CONFIG_FAILED);
                                arrayList.remove(CYFIntegrityChecker$IntegrityCheckState.INITIALIZATION_NO_NETWORK);
                                asymbnJ.a();
                            } catch (Exception unused5) {
                            }
                        }
                    }
                });
            } else {
                GpYFMu.g(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("QCpGPZ`RCTSNPE_{yx\u0011\fOO\\UtPO\u0004LU\u0007FMvw<rl?E]bgm96tygddx-~}\u007fbgf`"), new Throwable[0]);
                g = false;
                e(4);
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015PRLJBd^\u007fKIBDQKgut\u001d\b"), e2);
            f25346b.s();
            g = false;
            g(application, str2, str, null, null);
            e(5);
        }
    }

    public static void b(final Application application, final boolean z) {
        try {
            CYFManager cYFManager = f25346b;
            cYFManager.r();
            String str = f25348e;
            if (str == null || str.length() <= 0) {
                return;
            }
            g = true;
            int i2 = z ? 3 : 2;
            cYFManager.n = 13;
            JOGAgw.f204a.c(application, f25348e, i2, new JOGAgw.InterfaceC0003JOGAgw() { // from class: com.cyberfend.cyfsecurity.CYFMonitor.3

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static String f25354c = CNATAC.a("}@gEV@\\IuTFURXVT");
                public static String d = CNATAC.a("j@yRJ");

                @Override // ZjTIAZ.JOGAgw.InterfaceC0003JOGAgw
                public final void a() {
                    if (z) {
                        DQwsTh dQwsTh = DQwsTh.A;
                        Application application2 = application;
                        String str2 = CYFMonitor.f25348e;
                        dQwsTh.getClass();
                        if (application2 != null && str2 != null) {
                            dQwsTh.f136a = str2;
                            dQwsTh.l = Settings.Secure.getString(application2.getContentResolver(), "android_id");
                        }
                        dQwsTh.g(0, 1000L);
                    }
                    CYFManager cYFManager2 = CYFMonitor.f25346b;
                    cYFManager2.s();
                    cYFManager2.n = 2;
                    CYFMonitor.a(application, null, null);
                    ASYMBN.j().c(false);
                }

                @Override // ZjTIAZ.JOGAgw.InterfaceC0003JOGAgw
                public final void b() {
                    CYFMonitor.f25346b.n = 3;
                    XBnaCg.b();
                    ASYMBN.j().c(false);
                }

                @Override // ZjTIAZ.JOGAgw.InterfaceC0003JOGAgw
                public final void c(JSONObject jSONObject) {
                    String string;
                    XBnaCg.c();
                    CYFMonitor.f25346b.s();
                    if (z) {
                        DQwsTh dQwsTh = DQwsTh.A;
                        Application application2 = application;
                        String str2 = CYFMonitor.f25348e;
                        dQwsTh.getClass();
                        if (application2 != null && str2 != null) {
                            dQwsTh.f136a = str2;
                            dQwsTh.l = Settings.Secure.getString(application2.getContentResolver(), "android_id");
                        }
                        if (jSONObject == null) {
                            dQwsTh.g(0, 1000L);
                        } else {
                            dQwsTh.b(jSONObject, 0);
                        }
                    }
                    String string2 = null;
                    try {
                        string = jSONObject.getString(f25354c);
                        try {
                            string2 = jSONObject.getString(d);
                        } catch (JSONException unused) {
                            CYFMonitor.f25346b.n = 4;
                        }
                    } catch (JSONException unused2) {
                        string = null;
                    }
                    CYFMonitor.f25346b.n = 17;
                    CYFMonitor.a(application, string, string2);
                    ASYMBN.j().c(true);
                }
            });
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015PRLJBd^\u007fKIBDQK`ve\u001d\b"), e2);
            g = false;
            a(application, null, null);
        }
    }

    public static void c(Activity activity) {
        try {
            GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("]QtAG\u0012LO}]P_A_Y_\tYNB^A]\u0010ECWE"), new Throwable[0]);
            if (ZxDSl.f344b == 0) {
                ZxDSl.f344b = SystemClock.uptimeMillis();
            }
            if (ZxDSl.f343a == 0) {
                ZxDSl.f343a = System.currentTimeMillis();
            }
            CYFManager cYFManager = f25346b;
            cYFManager.y();
            cYFManager.z();
            if (CYFManager.p(activity.getWindow())) {
                return;
            }
            cYFManager.x(activity.getWindow());
            cYFManager.w(activity.getApplication().getBaseContext(), (ViewGroup) activity.findViewById(R.id.content));
            cYFManager.v(activity);
        } catch (Exception unused) {
            ASYMBN.j().f();
        }
    }

    public static void d() {
        if (!f25351i.compareAndSet(true, false)) {
            return;
        }
        f25350h.set(false);
        SystemClock.elapsedRealtime();
        CYFManager cYFManager = f25346b;
        if ((f25345a ^ 2914) == 0) {
            cYFManager.p = 3;
            return;
        }
        while (true) {
            int i2 = f25345a;
            int i3 = i2 + 39;
            if (i3 != 36) {
                if (i3 == 170) {
                    f25345a = (i2 >> 91) * 57;
                } else if (i3 != 237) {
                }
                f25345a = (f25345a + i2) % 49;
                break;
            }
            break;
        }
        while (true) {
            f25345a = ((f25345a ^ 1395) % 13) % 18;
        }
    }

    public static void e(int i2) {
        if (f25351i.compareAndSet(true, false)) {
            f25350h.set(false);
            SystemClock.elapsedRealtime();
            f25346b.p = i2;
        }
    }

    public static synchronized String f() {
        try {
        } catch (Throwable th) {
            GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("MW|GZQNL1TGNZD\u0017QG\nLIY}J^RMQ`DRF"), th);
            return CNATAC.a("j@sRF^[\r|^WUYS");
        }
        return f25346b.t();
    }

    public static void g(final Application application, String str, final String str2, final String str3, final String str4) {
        int i2;
        CYFManager cYFManager = f25346b;
        if (cYFManager.n == 2 && cYFManager.o == 19) {
            return;
        }
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    try {
                        i2 = Integer.parseInt(str.trim());
                    } catch (NumberFormatException unused) {
                        GpYFMu.g(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("GKcR_[K\u0000uTY]L\u0016AYE_N\f\n") + str + CNATAC.a(")\u0005\u2006\u0013WWIAd]AU[Q\u0017LF\nBA@KKY@VF\u0004LHN\\Q{wug\u007fkI_|="), new Throwable[0]);
                        i2 = 0;
                    }
                    if (i2 == -1) {
                        GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("JvV\u0013ZA\u000fDxBT^YSS\u0018KS\u000b_H\\YUS\u0002\u000b\t\u0014\u0006CMT{b53"), new Throwable[0]);
                        return;
                    }
                    if (i2 < 0) {
                        GpYFMu.g(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("@@rRG[YE1UPPTO\u0017\u0010") + i2 + CNATAC.a("'\u0005zG[W]\u0000eYTR\u0015\u001b\u0006\u0018LDHCX@[USGG\u0004‶\u0006R[Qt|<tsrET{r`p6~v`~bmaguquklj+"), new Throwable[0]);
                        i2 = 0;
                    }
                    if (i2 > 300000) {
                        GpYFMu.g(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("J@yRJ\u0012") + i2 + CNATAC.a("cV5VKQJEuB\u0015QTN\u0017\u0010") + 300000 + CNATAC.a("'\u001e5P_SBPx_R\u0012"), new Throwable[0]);
                        i2 = 300000;
                    }
                    if (i2 == 0) {
                        GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("GK|GZSCIkX[[\u0015rd{\tCFAHJFQUGO]\u0005\u000eCMT{b!-71"), new Throwable[0]);
                        f25346b.u(application, f25348e, str2, str3, str4);
                        return;
                    }
                    GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("]F}VWGCI\u007fV\u0015xfu\u0017QGC_ELBFJ@VJKK\u0006NF\u0018") + i2 + CNATAC.a(".Hf\u001d"), new Throwable[0]);
                    if (l != null && !l.isDone()) {
                        l.cancel(false);
                    }
                    l = f25353k.schedule(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFMonitor.2
                        static String JdWEOB;
                        static String JtwhEv;

                        static {
                            uxT(false);
                        }

                        public static /* synthetic */ void uxT(boolean z) {
                            if (z) {
                                uxT(false);
                            }
                            JtwhEv = CNATAC.a("M|S~\\\\FT~C");
                            JdWEOB = CNATAC.a("J@yRJWK\u0000Ubv\u001c\\X^L@KGEWO[YNL\u0003BDOKM\\ ;");
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CYFMonitor.f25346b.u(application, CYFMonitor.f25348e, str2, str3, str4);
                            } catch (Exception e2) {
                                GpYFMu.d(JtwhEv, cj.h(e2, JdWEOB, new StringBuilder()), new Throwable[0]);
                            }
                        }
                    }, i2, TimeUnit.MILLISECONDS);
                    return;
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), e2.getMessage(), new Throwable[0]);
                return;
            }
        }
        GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("GK|GZSCIkX[[\u0015rd{\t]BXE\u000eA_\u0001QFVSCU\u0005HhtjtzzD\u0010vvxto9"), new Throwable[0]);
        cYFManager.u(application, f25348e, str2, str3, str4);
    }

    public static void h(final Application application, String str) {
        StringBuilder sb;
        ASYMBN asymbn;
        boolean zMatches;
        boolean zA;
        String str2;
        String str3;
        final Boolean bool = Boolean.FALSE;
        CNATAC.a("M|S~\\\\FT~C");
        CNATAC.a("GK|GZSCIkX[[\u0015w\\YDKB\foo\u007f\u0010lMMMQIU");
        String str4 = DeHqqG.f157a;
        if (str == null) {
            str = null;
        } else {
            try {
                str = str.trim();
                if (!str.isEmpty() && !str.contains(DeHqqG.d)) {
                    if (str.startsWith(DeHqqG.g)) {
                        sb = new StringBuilder();
                        sb.append(DeHqqG.f163i);
                    } else {
                        sb = new StringBuilder();
                        sb.append(DeHqqG.f158b);
                    }
                    sb.append(str);
                    str = sb.toString();
                }
            } catch (Exception unused) {
            }
        }
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    String protocol = new URL(str).getProtocol();
                    if (CNATAC.a("fQaC").equalsIgnoreCase(protocol) || CNATAC.a("fQaC@").equalsIgnoreCase(protocol)) {
                        if (f25347c) {
                            return;
                        }
                        if (SensorDataBuilder.f25399b) {
                            GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("BJtW\u0013~FBcPGE\u0015pVQE_YI"), new Throwable[0]);
                            return;
                        }
                        XBnaCg.f298b = application;
                        CNATAC.a("M|S~\\\\FT~C");
                        CNATAC.a("OGzFG\u0012[O1RTPY\u0016taocEXHI]YU[`L@ELMJ");
                        ASYMBN asymbn2 = ASYMBN.f91j;
                        synchronized (ASYMBN.class) {
                            try {
                                if (ASYMBN.f91j == null) {
                                    ASYMBN.f91j = new ASYMBN(application);
                                }
                                asymbn = ASYMBN.f91j;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        ArrayList arrayList = asymbn.f98h;
                        try {
                            if (asymbn.f97f != CYFIntegrityChecker$DebugMode.NONE) {
                                asymbn.f93a = false;
                                asymbn.f94b = false;
                                asymbn.f95c = false;
                                asymbn.d = false;
                                asymbn.f96e = false;
                                arrayList.clear();
                                if (Looper.myLooper() != Looper.getMainLooper()) {
                                    arrayList.add(CYFIntegrityChecker$IntegrityCheckState.INITIALIZATION_BACKGROUND_THREAD);
                                    str2 = ASYMBN.i0;
                                    str3 = ASYMBN.T;
                                } else {
                                    try {
                                        if (str.trim().isEmpty()) {
                                            zMatches = false;
                                        } else {
                                            new URL(str);
                                            zMatches = Patterns.WEB_URL.matcher(str).matches();
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    if (zMatches) {
                                        try {
                                            zA = XBnaCg.a();
                                        } catch (Exception unused3) {
                                            zA = false;
                                        }
                                        if (zA) {
                                            int i2 = CYFIntegrityChecker$IntegrityCheckState.JAJ;
                                        } else {
                                            arrayList.add(CYFIntegrityChecker$IntegrityCheckState.INITIALIZATION_NO_NETWORK);
                                            str2 = ASYMBN.a0;
                                            str3 = ASYMBN.F;
                                        }
                                    } else {
                                        arrayList.add(CYFIntegrityChecker$IntegrityCheckState.INITIALIZATION_INVALID_URL);
                                        str2 = ASYMBN.p;
                                        str3 = ASYMBN.v;
                                    }
                                }
                                asymbn.k(str2, str3);
                            }
                        } catch (Exception unused4) {
                        }
                        CYFManager cYFManager = f25346b;
                        cYFManager.m = str;
                        cYFManager.n = 0;
                        cYFManager.o = 0;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("\\@rZ@FJRx_R\u001cTUCQ_C_U\rBFVDAZGIC\u0007KYvw~|}tS"), new Throwable[0]);
                        RXtEM rXtEM = RXtEM.f246j;
                        rXtEM.getClass();
                        if (application == null) {
                            GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("gK|GZSCIkT\u000f\u001cvYYLLR_\f]\\@FHFF@\u0005OT\bVowp"), new Throwable[0]);
                        } else {
                            rXtEM.f247a = application.getApplicationContext();
                            GpYFMu.e(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("GK|GZSCIkX[[\u0015UV[AO"), new Throwable[0]);
                            synchronized (rXtEM) {
                                try {
                                    try {
                                        SharedPreferences sharedPreferencesC = rXtEM.c();
                                        if (sharedPreferencesC != null) {
                                            rXtEM.f248b.set(sharedPreferencesC.getString(CNATAC.a("}@{@\\@pDpET"), null));
                                            rXtEM.f249c.set(sharedPreferencesC.getString(CNATAC.a("}VJ@ZUAA}"), null));
                                            String string = sharedPreferencesC.getString(CNATAC.a("mUglG]DE\u007f"), null);
                                            if (string == null || string.isEmpty() || ContentTree.ROOT_ID.equals(string)) {
                                                rXtEM.d.set(null);
                                            } else {
                                                rXtEM.d.set(string);
                                            }
                                            String string2 = sharedPreferencesC.getString(CNATAC.a("mUgl@[HNp]"), null);
                                            if (string2 == null || string2.isEmpty() || ContentTree.ROOT_ID.equals(string2)) {
                                                rXtEM.f250e.set(null);
                                            } else {
                                                rXtEM.f250e.set(string2);
                                            }
                                            String string3 = sharedPreferencesC.getString(CNATAC.a("zRclV\\LRhAAYQiGYPFDMI"), null);
                                            if (string3 == null || string3.isEmpty()) {
                                                rXtEM.f251f.set(null);
                                            } else {
                                                rXtEM.f251f.set(string3);
                                            }
                                            String string4 = sharedPreferencesC.getString(CNATAC.a("j@cZPWpIu"), null);
                                            if (string4 == null || string4.isEmpty() || ContentTree.ROOT_ID.equals(string4) || CNATAC.a("#\u0014").equals(string4)) {
                                                rXtEM.g.set(null);
                                            } else {
                                                rXtEM.g.set(string4);
                                            }
                                        }
                                    } catch (Exception e2) {
                                        GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("bJtWwS[A1TM_PFCQFD"), e2);
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                        CYFManager cYFManager2 = f25346b;
                        synchronized (cYFManager2) {
                            if (!CYFManager.y && application != null) {
                                try {
                                    DUcPEg dUcPEg = new DUcPEg();
                                    cYFManager2.f25343j = dUcPEg;
                                    dUcPEg.d(application);
                                    CYFManager.y = true;
                                    cYFManager2.b();
                                } catch (Exception e3) {
                                    GWINqE.b(e3);
                                    e3.getMessage();
                                    SDKInitFailure sDKInitFailure = SDKInitFailure.MOTION_SENSOR_FAILURE;
                                    cYFManager2.a();
                                    ASYMBN.j().f();
                                }
                            }
                        }
                        CYFManager cYFManager3 = f25346b;
                        synchronized (cYFManager3) {
                            if (!CYFManager.z) {
                                WpDaqA wpDaqA = new WpDaqA();
                                cYFManager3.g = wpDaqA;
                                application.registerActivityLifecycleCallbacks(wpDaqA);
                                CYFManager.z = true;
                                cYFManager3.b();
                            }
                        }
                        synchronized (cYFManager3) {
                            try {
                                if (!CYFManager.A && application != null) {
                                    cYFManager3.f25341h = new UfEmur(application);
                                    CYFManager.A = true;
                                    cYFManager3.b();
                                }
                            } catch (Exception e4) {
                                ASYMBN.j().f();
                                GWINqE.b(e4);
                                e4.getMessage();
                                SDKInitFailure sDKInitFailure2 = SDKInitFailure.MOTION_SENSOR_FAILURE;
                                cYFManager3.a();
                            }
                        }
                        synchronized (cYFManager3) {
                            if (cYFManager3.d == null) {
                                cYFManager3.d = new Gvcplk(application, cYFManager3);
                            }
                        }
                        synchronized (cYFManager3) {
                            if (cYFManager3.f25339e == null) {
                                cYFManager3.f25339e = new QYXNEc(application, cYFManager3);
                            }
                        }
                        XNPXeV.f307j.e();
                        application.registerActivityLifecycleCallbacks(new NUprz());
                        f25347c = true;
                        f25348e = str;
                        try {
                            f25352j.execute(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFMonitor.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    CYFMonitor.b(application, bool.booleanValue());
                                }
                            });
                        } catch (Exception e5) {
                            GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), d21.h(e5, "HD|_VV\u000fT~\u0011F_]SSMEO\u000bh~m\u000fVDV@L\u0005ROZ]{\u007f&=", new StringBuilder()), new Throwable[0]);
                            GWINqE.b(e5);
                        }
                        long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
                        GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("GK|GZSCIkT\u0018h\\[R\u0002\t") + jUptimeMillis2 + CNATAC.a("cV"), new Throwable[0]);
                        return;
                    }
                }
            } catch (MalformedURLException unused5) {
            }
        }
        GpYFMu.d(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("GK|G\u0013tNI}TQ\u001c\u0018\u0016~V_KGEI\u000ezbm"), new Throwable[0]);
        v7.h(CNATAC.a("ZMp\u0013f`c\u0000w^GQTB\u0017QZ\n\\^B@H\u001e\u0001oLV@\u0006CML{rpn>wTDb`.:9c}jbocn}!qjcnel(dgt\u0015RgeGVt\u001eVNM\u0015CHXJUwW3BRNPNEY\u0005TNB\u0014{IW},X\u007f`~qoyc\u007f4brI|v[=`t{+yzfloug9FU["));
    }
}

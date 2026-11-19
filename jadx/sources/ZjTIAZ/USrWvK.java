package ZjTIAZ;

import Sqa.MjE.FSp;
import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.networkbench.agent.impl.util.r;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import defpackage.cj;
import java.util.concurrent.atomic.AtomicBoolean;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class USrWvK {
    public static String A0 = null;
    public static String B0 = null;
    public static String C0 = null;
    public static String D0 = null;
    public static String M = null;
    public static String N = null;
    public static String O = null;
    public static String P = null;
    public static String Q = null;
    public static String R = null;
    public static String S = null;
    public static String T = null;
    public static String U = null;
    public static String V = null;
    public static String W = null;
    public static String X = null;
    public static String Y = null;
    public static String Z = null;
    public static String a0 = null;
    public static String b0 = null;
    public static String c0 = null;
    public static String d0 = null;
    public static String e0 = null;
    public static String f0 = null;
    public static String g0 = null;
    public static String h0 = null;
    public static String i0 = null;
    public static String j0 = null;
    public static String k0 = null;
    public static String l0 = null;
    public static String m0 = null;
    public static String n0 = null;
    public static String o0 = null;
    public static String p0 = null;
    public static String q0 = null;
    public static String r0 = null;
    public static String s0 = null;
    public static String t0 = null;
    public static String u0 = null;
    public static int v = 9517;
    public static String v0;
    public static String w0;
    public static String x0;
    public static String y0;
    public static String z0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f254c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f256f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f257h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DRxlEm f258i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public WebView f260k;
    public final ZDnQwv l;
    public final ZhhBOJ m;
    public Runnable u;
    public static String w = CNATAC.a("mD{PV^{I|TZIA\u0016RJ[EY\u0016\r");
    public static String x = CNATAC.a("oUezWWATxW\\YG");
    public static String y = CNATAC.a("DvWAZVHE");
    public static String z = CNATAC.a("oAqy@bNRp\\F\u001cPDEW[\u0010\u000b");
    public static String A = CNATAC.a("}\\fGV_yEcB\\S[");
    public static String B = CNATAC.a("LJa[\u0013x|\u0000x_AYGPV[LY\u000bBXBC");
    public static String C = CNATAC.a("fD{W_W{I|TZIA\u0016RJ[EY\u0016\r");
    public static String D = CNATAC.a("~@gU\\@BwtScUPAtTLKEY]\u000eJBSMQ\u001e\u0005");
    public static String E = CNATAC.a("{Qs\u001e\u000b");
    public static String F = CNATAC.a("oAq`P@FPe\u0019\u0012");
    public static String G = CNATAC.a("MD{]\\F\u000fL~PQ\u001c\u007fWAYzIYE]Z\u000f\u001d\u0001@LPM\u0006NFL\u007fiz|}zS\u0010saq5xbte");
    public static String H = CNATAC.a("cJqV_");
    public static String I = CNATAC.a("fQaC@");
    public static String J = CNATAC.a("i@apC@zR}\u0011PNGYE\u0002\t");
    public static String K = CNATAC.a("aV");
    public static String L = CNATAC.a("|P{\u001b\u001a\u0012FN1X[JTZ^\\\tY_MYK\u0015\u0010");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f252a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public XDqkTi f253b = XDqkTi.INIT;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Handler f259j = new Handler(Looper.getMainLooper());
    public final AtomicBoolean n = new AtomicBoolean(false);
    public final AtomicBoolean o = new AtomicBoolean(false);
    public final AtomicBoolean p = new AtomicBoolean(false);
    public final AtomicBoolean q = new AtomicBoolean(false);
    public final AtomicBoolean r = new AtomicBoolean(false);
    public final AtomicBoolean s = new AtomicBoolean(false);
    public final AtomicBoolean t = new AtomicBoolean(false);

    public interface DRxlEm {
        void a(ELXMqL eLXMqL);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class ELXMqL {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static int f261h = 5853;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static int f262i = 4101;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DwXtmN f263a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final etZCba f264b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f265c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String[] f266e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Integer f267f;
        public final Boolean g;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class DwXtmN {
            public static final DwXtmN COMPLETE;
            public static final DwXtmN ERROR;

            /* JADX INFO: Incorrect field signature: Lint; */
            private static final /* synthetic */ DwXtmN[] GnaWzB;
            public static final DwXtmN TIMEOUT;
            public static int _ZL = 2816;
            public static int gSd = 7508;

            /* JADX WARN: Code restructure failed: missing block: B:44:0x00ba, code lost:
            
                r0 = (ZjTIAZ.USrWvK.ELXMqL.DwXtmN._ZL * 125) >> 15;
             */
            static {
                /*
                    Method dump skipped, instruction units count: 206
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: ZjTIAZ.USrWvK.ELXMqL.DwXtmN.<clinit>():void");
            }

            public static DwXtmN valueOf(String str) {
                return (DwXtmN) Enum.valueOf(DwXtmN.class, str);
            }

            public static DwXtmN[] values() {
                return (DwXtmN[]) GnaWzB.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX INFO: loaded from: classes.dex */
        public static final class etZCba {
            public static final etZCba BMP;
            public static final etZCba CPR;
            private static final /* synthetic */ etZCba[] GnaWzB;
            public static int JVV = 8143;
            public static int lBx = 8561;

            static {
                etZCba etzcba = new etZCba(CNATAC.a("LhE"), 0);
                BMP = etzcba;
                CPR = new etZCba(CNATAC.a("MuG"), 1);
                if (lBx <= 8560) {
                    while (true) {
                        int i2 = lBx;
                        int i3 = i2 + 13;
                        if (i3 == 56) {
                            break;
                        }
                        if (i3 == 170) {
                            lBx = (i2 + i2) * 100;
                        } else if (i3 == 193) {
                            lBx = (i2 >> 66) * 90;
                            break;
                        } else if (i3 == 344) {
                            while (true) {
                                lBx = ((lBx + i2) ^ 4179) % 57;
                            }
                        }
                    }
                    lBx = (lBx ^ 4895) >> 46;
                }
                GnaWzB = new etZCba[]{etzcba, CPR};
            }

            public static etZCba valueOf(String str) {
                return (etZCba) Enum.valueOf(etZCba.class, str);
            }

            public static etZCba[] values() {
                return (etZCba[]) GnaWzB.clone();
            }
        }

        public ELXMqL(DwXtmN dwXtmN, etZCba etzcba, String str, String str2, String[] strArr, Integer num, Boolean bool) {
            int i2;
            int i3;
            int i4;
            int i5;
            if (f261h <= 5852) {
                while (true) {
                    int i6 = f261h;
                    int i7 = i6 + 13;
                    if (i7 == 60) {
                        f261h = ((i6 ^ 1754) + i6) % 13;
                    } else if (i7 != 250) {
                        if (i7 == 412) {
                            f261h = ((i6 ^ 4318) % 12) >> 62;
                        }
                    }
                    while (true) {
                        f261h = ((f261h >> 27) + i6) >> 116;
                    }
                }
            }
            this.f263a = dwXtmN;
            int i8 = f261h ^ 5853;
            if (i8 != 0) {
                while (true) {
                    int i9 = f261h;
                    if (i9 + 117 == 27) {
                        f261h = (i9 + i9) % 11;
                    }
                }
            } else {
                this.f264b = etzcba;
                if (i8 == 0) {
                    this.f265c = str;
                    if ((f262i ^ 4101) != 0) {
                        if (i8 != 0) {
                            do {
                                i4 = f261h;
                                i5 = i4 + 26;
                                if (i5 == 75) {
                                    while (true) {
                                        f261h = (f261h + i4) % 68;
                                    }
                                }
                            } while (i5 != 94);
                            f261h = (i4 ^ 1397) % 2;
                        }
                        while (true) {
                            i2 = f262i;
                            int i10 = i2 + 13;
                            if (i10 == 38) {
                                f262i = ((i2 >> 103) ^ 3985) % 19;
                            } else {
                                if (i10 == 160) {
                                    int i11 = i2 ^ 3429;
                                    if ((f261h ^ 5853) != 0) {
                                        while (true) {
                                            i3 = f261h;
                                            int i12 = i3 + 104;
                                            if (i12 == 67) {
                                                f261h = (i3 % 118) >> 112;
                                            } else if (i12 == 138) {
                                                break;
                                            }
                                        }
                                        f261h = (i3 % 107) + i3;
                                    }
                                    f262i = i11 + i2 + i2;
                                    break;
                                }
                                if (i10 == 326) {
                                    break;
                                } else if (i10 == 465) {
                                    while (true) {
                                        f262i = ((f262i * 79) ^ 3664) % 95;
                                    }
                                }
                            }
                        }
                        while (true) {
                            f262i = (f262i * 120) + i2;
                        }
                    }
                    this.d = str2;
                    this.f266e = strArr;
                    this.f267f = num;
                    this.g = bool;
                    return;
                }
                while (f261h + 13 != 32) {
                }
                while (true) {
                    f261h = (f261h >> 29) % 36;
                }
            }
        }
    }

    abstract /* synthetic */ class JDcbwb {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f268a;

        static {
            ELXMqL.etZCba.lBx = 8561;
            ELXMqL.etZCba.JVV = 8143;
            int[] iArr = new int[ELXMqL.etZCba.values().length];
            f268a = iArr;
            try {
                iArr[ELXMqL.etZCba.BMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f268a[ELXMqL.etZCba.CPR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class JEYfXp implements ZDnQwv.zDnQwv {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static String f269c = CNATAC.a("LhE\u0013PSCLsPVW\u0015SEJFX\u0011\f");
        public static String d = CNATAC.a("M|SdVPyItFgI[XRJ");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DRxlEm f270a;

        public JEYfXp(DRxlEm dRxlEm) {
            this.f270a = dRxlEm;
        }

        @Override // ZjTIAZ.ZDnQwv.zDnQwv
        public final void a() {
            USrWvK uSrWvK = USrWvK.this;
            try {
                if (!uSrWvK.n.get() && this.f270a != null && uSrWvK.o.compareAndSet(false, true)) {
                    uSrWvK.k(ELXMqL.DwXtmN.COMPLETE, ELXMqL.etZCba.BMP);
                    uSrWvK.o();
                }
            } catch (Exception e2) {
                GpYFMu.d(d, cj.h(e2, f269c, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
                ELXMqL.etZCba etzcba = ELXMqL.etZCba.BMP;
                int i2 = USrWvK.v;
                uSrWvK.h(etzcba, e2);
            }
        }
    }

    class JUdnss implements Runnable {
        public JUdnss() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebView webView;
            USrWvK uSrWvK = USrWvK.this;
            int i2 = USrWvK.v;
            uSrWvK.getClass();
            try {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    GpYFMu.d(USrWvK.W, USrWvK.p0, new Throwable[0]);
                    uSrWvK.j(new IllegalStateException(USrWvK.t0));
                    return;
                }
                if (uSrWvK.n.get()) {
                    return;
                }
                Context context = uSrWvK.f254c;
                try {
                    Context applicationContext = context instanceof Application ? context : context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    webView = new WebView(context);
                } catch (Exception e2) {
                    GpYFMu.d(USrWvK.W, cj.h(e2, USrWvK.f0, new StringBuilder()), new Throwable[0]);
                    GWINqE.b(e2);
                    webView = null;
                }
                uSrWvK.f260k = webView;
                if (webView == null) {
                    uSrWvK.j(new RuntimeException(USrWvK.a0));
                    return;
                }
                try {
                    webView.setWillNotDraw(true);
                } catch (Throwable unused) {
                }
                uSrWvK.n();
                uSrWvK.p();
                WebView webView2 = uSrWvK.f260k;
                String str = uSrWvK.d;
                String str2 = USrWvK.N;
                String str3 = USrWvK.Q;
                String str4 = USrWvK.E;
                JSHookAop.loadDataWithBaseURL(webView2, str, str2, str3, str4, null);
                webView2.loadDataWithBaseURL(str, str2, str3, str4, null);
            } catch (Exception e3) {
                GpYFMu.d(USrWvK.W, cj.h(e3, USrWvK.h0, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e3);
                uSrWvK.j(e3);
            }
        }
    }

    public class JfLEjM implements ZhhBOJ.zgXxaZ {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static String f272c = CNATAC.a("MuG\u0013PSCLsPVW\u0015SEJFX\u0011\f");
        public static String d = CNATAC.a("M|SdVPyItFgI[XRJ");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DRxlEm f273a;

        public JfLEjM(DRxlEm dRxlEm) {
            this.f273a = dRxlEm;
        }

        @Override // ZjTIAZ.ZhhBOJ.zgXxaZ
        public final void a() {
            USrWvK uSrWvK = USrWvK.this;
            try {
                if (!uSrWvK.n.get() && this.f273a != null && uSrWvK.p.compareAndSet(false, true)) {
                    uSrWvK.k(ELXMqL.DwXtmN.COMPLETE, ELXMqL.etZCba.CPR);
                    uSrWvK.o();
                }
            } catch (Exception e2) {
                GpYFMu.d(d, cj.h(e2, f272c, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
                ELXMqL.etZCba etzcba = ELXMqL.etZCba.CPR;
                int i2 = USrWvK.v;
                uSrWvK.h(etzcba, e2);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class Jvmxit extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return true;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class XDqkTi {
        public static final XDqkTi DESTROYED;
        public static final XDqkTi FINISHED;
        private static final /* synthetic */ XDqkTi[] GnaWzB;
        public static final XDqkTi INIT;
        public static final XDqkTi RUNNING;
        public static int XhT = 3074;
        public static int d_f = 2684;

        static {
            int i2;
            int i3;
            XDqkTi xDqkTi = new XDqkTi(CNATAC.a("Gk\\g"), 0);
            INIT = xDqkTi;
            XDqkTi xDqkTi2 = new XDqkTi(CNATAC.a("\\p[}z|h"), 1);
            RUNNING = xDqkTi2;
            FINISHED = new XDqkTi(CNATAC.a("Hl[z`zjd"), 2);
            DESTROYED = new XDqkTi(CNATAC.a("J`Fga}veU"), 3);
            if ((XhT ^ 3074) != 0) {
                do {
                    i2 = XhT;
                    i3 = i2 + 13;
                    if (i3 == 89) {
                        XhT = ((i2 ^ 2411) >> 126) + i2;
                    }
                } while (i3 != 255);
                while (true) {
                    XhT = (XhT + i2) ^ 3501;
                }
            }
            GnaWzB = new XDqkTi[]{xDqkTi, xDqkTi2, FINISHED, DESTROYED};
        }

        public static XDqkTi valueOf(String str) {
            return (XDqkTi) Enum.valueOf(XDqkTi.class, str);
        }

        public static XDqkTi[] values() {
            return (XDqkTi[]) GnaWzB.clone();
        }
    }

    class aVfcFH implements Runnable {
        static String EMGdRO;
        static String QzZcwQ;
        static String ZdtYDH;

        static {
            CIl(false);
        }

        public aVfcFH() {
        }

        public static /* synthetic */ void CIl(boolean z) {
            if (z) {
                CIl(false);
            }
            ZdtYDH = CNATAC.a("M|SdVPyItFgI[XRJ");
            EMGdRO = CNATAC.a("Y@weZWX\u0000eXXYQ\u0016XM]");
            QzZcwQ = CNATAC.a("ZLxV\\G[\u0000cD[RTT[]\tOY^B\\\u0015\u0010");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (USrWvK.this.n.get()) {
                    return;
                }
                GpYFMu.g(ZdtYDH, EMGdRO, new Throwable[0]);
                USrWvK.g(USrWvK.this);
            } catch (Exception e2) {
                GpYFMu.d(ZdtYDH, cj.h(e2, QzZcwQ, new StringBuilder()), new Throwable[0]);
            }
        }
    }

    class agXqxh implements Runnable {
        final /* synthetic */ FSp ZRQiWB;

        public agXqxh(USrWvK uSrWvK) {
            this.ZRQiWB = uSrWvK;
        }

        /* JADX INFO: Infinite loop detected, blocks: 11, insns: 0 */
        @Override // java.lang.Runnable
        public void run() {
            int i2;
            FSp fSp = this.ZRQiWB;
            int i3 = USrWvK.v;
            fSp.getClass();
            try {
                try {
                    WebView webView = fSp.f260k;
                    if (webView != null) {
                        webView.stopLoading();
                        try {
                            fSp.f260k.setWebChromeClient(null);
                        } catch (Exception unused) {
                        }
                        try {
                            fSp.f260k.setWebViewClient(new WebViewClient());
                        } catch (Exception unused2) {
                        }
                        try {
                            fSp.f260k.removeJavascriptInterface(USrWvK.y);
                        } catch (Exception unused3) {
                        }
                        try {
                            fSp.f260k.removeJavascriptInterface(USrWvK.m0);
                        } catch (Exception unused4) {
                        }
                        try {
                            WebView webView2 = fSp.f260k;
                            String str = USrWvK.i0;
                            JSHookAop.loadUrl(webView2, str);
                            webView2.loadUrl(str);
                        } catch (Exception unused5) {
                        }
                        try {
                            fSp.f260k.clearHistory();
                        } catch (Exception unused6) {
                        }
                        try {
                            fSp.f260k.clearCache(true);
                        } catch (Exception unused7) {
                        }
                        try {
                            fSp.f260k.clearFormData();
                        } catch (Exception unused8) {
                        }
                        try {
                            fSp.f260k.clearSslPreferences();
                        } catch (Exception unused9) {
                        }
                        try {
                            fSp.f260k.removeAllViews();
                        } catch (Exception unused10) {
                        }
                        try {
                            fSp.f260k.destroy();
                        } catch (Exception unused11) {
                        } finally {
                            fSp.f260k = null;
                        }
                    }
                    synchronized (fSp.f252a) {
                        fSp.f253b = XDqkTi.DESTROYED;
                    }
                    fSp.n.set(true);
                } catch (Exception e2) {
                    GpYFMu.d(USrWvK.W, USrWvK.D + e2.getMessage(), new Throwable[0]);
                    GWINqE.b(e2);
                    fSp.f260k = null;
                    synchronized (fSp.f252a) {
                        fSp.f253b = XDqkTi.DESTROYED;
                        fSp.n.set(true);
                        if ((USrWvK.v ^ 9517) == 0) {
                            return;
                        }
                        do {
                            int i4 = USrWvK.v;
                            i2 = i4 + 169;
                            if (i2 == 75) {
                                while (true) {
                                    USrWvK.v = ((USrWvK.v + i4) % 87) ^ 2369;
                                }
                            }
                        } while (i2 != 215);
                        while (true) {
                            USrWvK.v = (USrWvK.v % 73) % 38;
                        }
                    }
                }
            } catch (Throwable th) {
                synchronized (fSp.f252a) {
                    fSp.f253b = XDqkTi.DESTROYED;
                    fSp.n.set(true);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class uSrWvK extends WebViewClient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static String f275b = CNATAC.a("]vY\u0013V@]Oc\u000b\u0015");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static String f276c = CNATAC.a("]vY\u0013_]H\u0000wP\\P@DR\u0002\t");
        public static String d = CNATAC.a("aKGVPWFVtUpNGYE\u0002\t");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static String f277e = CNATAC.a("aKERTWiI\u007fXFTPR\u0017][XD^\u0017\u000e");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static String f278f = CNATAC.a(".Pg_\u000e");
        public static String g = CNATAC.a("aKGVPWFVtU}HAFrJ[EY\u0016\r");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static String f279h = CNATAC.a("\\@f\\F@LE1TGNZD\r\u0018");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static String f280i = CNATAC.a(".HtZ]t]A|T\b");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static String f281j = CNATAC.a("M|SdVPyItFgI[XRJ");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static String f282k = CNATAC.a("FqAc\u0013");
        public static String l = CNATAC.a("{K~]\\EA");

        public uSrWvK() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            WebView webView2;
            USrWvK uSrWvK = USrWvK.this;
            if (uSrWvK.n.get() || (webView2 = uSrWvK.f260k) == null || webView != webView2) {
                return;
            }
            try {
                super.onPageFinished(webView, str);
                USrWvK.f(uSrWvK, webView);
            } catch (Exception e2) {
                GpYFMu.d(f281j, cj.h(e2, f277e, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            USrWvK uSrWvK = USrWvK.this;
            if (uSrWvK.n.get() || uSrWvK.f260k == null || webResourceError == null || webResourceRequest == null) {
                return;
            }
            try {
                GpYFMu.g(f281j, f279h + ((Object) webResourceError.getDescription()) + f278f + webResourceRequest.getUrl() + f280i + webResourceRequest.isForMainFrame(), new Throwable[0]);
            } catch (Exception e2) {
                GpYFMu.d(f281j, cj.h(e2, d, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            USrWvK uSrWvK = USrWvK.this;
            if (uSrWvK.n.get() || uSrWvK.f260k == null || webResourceResponse == null || webResourceRequest == null) {
                return;
            }
            try {
                GpYFMu.g(f281j, f282k + webResourceResponse.getStatusCode() + " " + webResourceResponse.getReasonPhrase() + f278f + webResourceRequest.getUrl() + f280i + webResourceRequest.isForMainFrame(), new Throwable[0]);
            } catch (Exception e2) {
                GpYFMu.d(f281j, cj.h(e2, g, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            WebView webView2;
            if (sslErrorHandler != null) {
                sslErrorHandler.cancel();
            }
            USrWvK uSrWvK = USrWvK.this;
            if (uSrWvK.n.get() || (webView2 = uSrWvK.f260k) == null || webView != webView2) {
                return;
            }
            try {
                String str = f281j;
                StringBuilder sb = new StringBuilder();
                sb.append(f275b);
                sb.append(sslError != null ? Integer.valueOf(sslError.getPrimaryError()) : l);
                GpYFMu.d(str, sb.toString(), new Throwable[0]);
            } catch (Exception e2) {
                GpYFMu.d(f281j, cj.h(e2, f276c, new StringBuilder()), new Throwable[0]);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return true;
        }
    }

    static {
        CNATAC.a("mD{PV^\u000fEcCZN\u000f\u0016");
        M = CNATAC.a("zJ~V]");
        N = CNATAC.a("2\u0004q\\PFVPt\u0011]HXZ\t\u0004A^F@\u0013\u0012GU@F\u001d\u0018HCSI\u0018ys}omzT\r5f`s;/?76$dhok.=`l`|8;'{UX\u007f/\u0012\u000fyGZR\u0003");
        O = CNATAC.a("}@gEV@|IuTfURXVT");
        P = CNATAC.a("j@cZPWfD");
        Q = CNATAC.a("z@mG\u001cZ[M}");
        R = CNATAC.a("lDfVf@C\u0000\u007fDYP\u0015_Y\u0018EEJHgOYQrAQMUR");
        S = CNATAC.a("LDfV\u0013g}l1TXLAO");
        T = CNATAC.a("^ItGU]]M1TGNZD\u0017");
        U = CNATAC.a("'\u001f5");
        V = CNATAC.a("Dv5Z]XJCeXZR\u0015SEJFX\u0011\f");
        W = CNATAC.a("M|SdVPyItFgI[XRJ");
        X = CNATAC.a("mJ{UZUZRtfP^c_RO\tOY^B\\\u0015\u0010");
        Y = CNATAC.a("|P{\u001b\u001a\u0012JRc^G\u0006\u0015");
        Z = CNATAC.a("mMpPXsADR]P][CG\u0018LXYC_\u0014\u000f");
        a0 = CNATAC.a("Y@weZWX\u0000rCP]A_XV\tLJEAKK");
        b0 = CNATAC.a("oKqA\\[K");
        c0 = CNATAC.a("kH|GaW\\U}E\u0015YGDXJ\u0013\n");
        d0 = CNATAC.a("QVpP");
        e0 = CNATAC.a("4\u0005");
        f0 = CNATAC.a("mWpRGWxEsg\\YBeV^LFR\fH\\]_S\u0018\u0003");
        g0 = CNATAC.a("MJ{GVJ[\u0000\u007fDYP");
        h0 = CNATAC.a("mWpRGWnNurZRS_PM[O|IOxFUV\u0002FVWIU\u0012\u0018");
        i0 = CNATAC.a("oGzFG\bMLp_^");
        j0 = CNATAC.a("i@aq^BzR}\u0011PNGYE\u0002\t");
        k0 = CNATAC.a("JDaR\u0013WWTcPVH\\YY\u0018LXYC_\u000e\u0007");
        l0 = CNATAC.a("LhE\u0013Z\\[EcWT_P\u0016TJLK_EB@\u000fV@KOAA\u001c\u0007");
        m0 = CNATAC.a("MuGy`p]IuVP");
        n0 = CNATAC.a(":\u000b'\u001d\u0003");
        o0 = CNATAC.a("}A~eV@\\I~_");
        p0 = CNATAC.a("mWpRGWnNurZRS_PM[O|IOxFUV\u0002NQVR\u0007J]:x}qrzD\u0010}}4xw~v)~c~hok");
        q0 = CNATAC.a("LJa[\u0013Q@NbEGIVBR\\\t\u007fy`^\u000eF^WCOMA\u0006HZ\u0018h~vx}kET)3uwyel`dl,~m}yqv#mklbkmSSh");
        r0 = CNATAC.a("s\f=\u001a\b");
        s0 = CNATAC.a("fD{W_WfNxE\\]Y_MY]CDBkOF\\TPF\u0004@TUGJ ;");
        t0 = CNATAC.a("Y@weZWX\u0000|DFH\u0015TR\u0018JXNMYKK\u0010NL\u0003IDOI\bLriy|z");
        u0 = CNATAC.a("mIpR]g_\u0000tCGSG\f\u0017");
        v0 = CNATAC.a("GK|GZSCIkPAUZX\u0017^HCGY_K\u0015\u0010");
        w0 = CNATAC.a("}@aFCfFMt^@H\u0015SEJFX\u0011\f");
        x0 = CNATAC.a("}@adVPyItFvP\\SYLZ\nN^_A]\n\u0001");
        y0 = CNATAC.a("}A~lPZNL}T[[P\u0018]K");
        z0 = CNATAC.a("fD{W_W\u007fLpESSG[rJ[EY\fKOF\\TPF\u001e\u0005");
        A0 = CNATAC.a("j@cZPWgAcUB]GScAYO");
        B0 = CNATAC.a("LDfV\u0013g}l1\\@OA\u0016U]\tb\u007fx}}");
        C0 = CNATAC.a("MuG\u0013Z\\[EcWT_P\u0016TJLK_EB@\u000fV@KOAA\u001c\u0007");
        D0 = CNATAC.a("}QtAGFFMt");
        CNATAC.a("{K~]\\EA");
    }

    public USrWvK(Context context, String str, String str2, String str3, String str4, String str5, DRxlEm dRxlEm) {
        Application application;
        ZDnQwv zDnQwv;
        Application application2;
        this.f254c = context;
        ZhhBOJ zhhBOJ = null;
        this.d = (str == null || str.trim().isEmpty()) ? null : str;
        this.g = str2;
        this.f255e = (str3 == null || str3.trim().isEmpty()) ? null : str3;
        this.f256f = (str4 == null || str4.trim().isEmpty()) ? null : str4;
        this.f257h = str5;
        this.f258i = dRxlEm;
        if (context == null) {
            application = null;
        } else {
            try {
                application = context instanceof Application ? (Application) context : (Application) context.getApplicationContext();
            } catch (Exception unused) {
                application = null;
            }
        }
        if (application != null) {
            try {
                zDnQwv = new ZDnQwv(application, new JEYfXp(dRxlEm));
            } catch (Exception e2) {
                GpYFMu.d(W, cj.h(e2, l0, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
                h(ELXMqL.etZCba.BMP, e2);
                zDnQwv = null;
            }
        } else {
            zDnQwv = null;
        }
        this.l = zDnQwv;
        if (context == null) {
            application2 = null;
        } else {
            try {
                application2 = context instanceof Application ? (Application) context : (Application) context.getApplicationContext();
            } catch (Exception unused2) {
                application2 = null;
            }
        }
        if (application2 != null) {
            try {
                zhhBOJ = new ZhhBOJ(application2, new JfLEjM(dRxlEm));
            } catch (Exception e3) {
                GpYFMu.d(W, cj.h(e3, C0, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e3);
                h(ELXMqL.etZCba.CPR, e3);
            }
        }
        this.m = zhhBOJ;
    }

    public static void f(USrWvK uSrWvK2, WebView webView) {
        try {
            if (!uSrWvK2.n.get() && uSrWvK2.f260k != null && uSrWvK2.s.compareAndSet(false, true)) {
                if (uSrWvK2.d == null) {
                    GpYFMu.d(W, R, new Throwable[0]);
                    return;
                }
                if (uSrWvK2.l == null && uSrWvK2.m == null) {
                    GpYFMu.d(W, G, new Throwable[0]);
                    return;
                }
                String strL = uSrWvK2.l();
                String strC = uSrWvK2.c();
                if (strL == null && strC == null) {
                    GpYFMu.d(W, q0, new Throwable[0]);
                    return;
                }
                StringBuilder sb = new StringBuilder("(function(){\nfunction addScript(src, name) {\n  var script = document.createElement('script');\n  script.src = src;\n  script.onload = function() { console.log(name + ' script loaded successfully.'); };\n  script.onerror = function() { console.error(name + ' script failed to load.'); };\n  document.head.appendChild(script);\n}\n");
                if (strL != null && !strL.isEmpty()) {
                    sb.append(F);
                    sb.append(strL);
                    sb.append("', 'BMP');\n");
                }
                if (strC != null && !strC.isEmpty()) {
                    sb.append(F);
                    sb.append(strC);
                    sb.append("', 'CPR');\n");
                }
                sb.append(r0);
                webView.evaluateJavascript(sb.toString(), null);
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, V, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public static void g(USrWvK uSrWvK2) {
        AtomicBoolean atomicBoolean = uSrWvK2.r;
        String str = uSrWvK2.f256f;
        String str2 = uSrWvK2.f255e;
        AtomicBoolean atomicBoolean2 = uSrWvK2.p;
        AtomicBoolean atomicBoolean3 = uSrWvK2.q;
        AtomicBoolean atomicBoolean4 = uSrWvK2.o;
        try {
            if (uSrWvK2.t.compareAndSet(false, true)) {
                boolean z2 = !uSrWvK2.e() || atomicBoolean4.get() || atomicBoolean3.get();
                boolean z3 = !(str2 != null && str != null) || atomicBoolean2.get() || atomicBoolean.get();
                if (!z2 || !z3) {
                    if (!atomicBoolean4.get() && uSrWvK2.e()) {
                        atomicBoolean3.compareAndSet(false, true);
                        uSrWvK2.k(ELXMqL.DwXtmN.TIMEOUT, ELXMqL.etZCba.BMP);
                    }
                    if (!atomicBoolean2.get()) {
                        if ((str2 == null || str == null) ? false : true) {
                            atomicBoolean.compareAndSet(false, true);
                            uSrWvK2.k(ELXMqL.DwXtmN.TIMEOUT, ELXMqL.etZCba.CPR);
                        }
                    }
                }
                uSrWvK2.b();
                uSrWvK2.i();
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, C, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final void a(Uri.Builder builder) {
        ZDnQwv zDnQwv = this.l;
        try {
            String strSystemVersion = zDnQwv.systemVersion();
            if (strSystemVersion != null) {
                builder.appendQueryParameter(A, strSystemVersion);
            }
            String strModel = zDnQwv.model();
            if (strModel != null) {
                builder.appendQueryParameter(H, strModel);
            }
            String strHardWareType = zDnQwv.hardWareType();
            if (strHardWareType != null) {
                builder.appendQueryParameter(A0, strHardWareType);
            }
            String strAppIdentifier = zDnQwv.appIdentifier();
            if (strAppIdentifier != null) {
                builder.appendQueryParameter(x, strAppIdentifier);
            }
            String strAndroidId = zDnQwv.androidId();
            if (strAndroidId != null) {
                builder.appendQueryParameter(P, strAndroidId);
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, z, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final void b() {
        try {
            Runnable runnable = this.u;
            if (runnable != null) {
                this.f259j.removeCallbacks(runnable);
                this.u = null;
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, w, new StringBuilder()), new Throwable[0]);
        }
    }

    public final String c() {
        String str;
        String str2 = this.f255e;
        if (str2 != null && (str = this.f256f) != null) {
            try {
                Uri.Builder builderBuildUpon = Uri.parse(this.d + str2).buildUpon();
                builderBuildUpon.appendQueryParameter(K, b0);
                builderBuildUpon.appendQueryParameter(M, str);
                ZhhBOJ zhhBOJ = this.m;
                if (zhhBOJ != null) {
                    try {
                        builderBuildUpon.appendQueryParameter(P, zhhBOJ.androidId());
                    } catch (Throwable unused) {
                    }
                }
                builderBuildUpon.appendQueryParameter(o0, n0);
                return builderBuildUpon.toString();
            } catch (Exception e2) {
                GpYFMu.d(W, cj.h(e2, J, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
            }
        }
        return null;
    }

    public final boolean d() {
        Exception illegalArgumentException;
        if (this.f254c == null) {
            illegalArgumentException = new IllegalStateException(g0);
        } else {
            String str = this.d;
            if (str == null || str.trim().isEmpty()) {
                illegalArgumentException = new IllegalArgumentException(S);
            } else {
                try {
                    Uri uri = Uri.parse(str);
                    if (uri == null || uri.getScheme() == null || !uri.getScheme().equalsIgnoreCase(I)) {
                        j(new IllegalArgumentException(B0));
                        return false;
                    }
                    if (this.l != null || this.m != null) {
                        return true;
                    }
                    illegalArgumentException = new IllegalStateException(B);
                } catch (Exception e2) {
                    j(e2);
                    return false;
                }
            }
        }
        j(illegalArgumentException);
        return false;
    }

    public final boolean e() {
        return (this.d == null || this.g == null || this.l == null) ? false : true;
    }

    public final void h(ELXMqL.etZCba etzcba, Exception exc) {
        try {
            String message = exc.getMessage();
            GpYFMu.d(W, T + etzcba + e0 + message, new Throwable[0]);
            if ((etzcba == ELXMqL.etZCba.BMP ? this.q : this.r).compareAndSet(false, true)) {
                k(ELXMqL.DwXtmN.ERROR, etzcba);
                o();
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, z0, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final void i() {
        try {
            if (this.n.compareAndSet(false, true)) {
                b();
                synchronized (this.f252a) {
                    try {
                        if (this.f253b == XDqkTi.RUNNING) {
                            this.f253b = XDqkTi.FINISHED;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                agXqxh agxqxh = new agXqxh(this);
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    agxqxh.run();
                } else {
                    this.f259j.post(agxqxh);
                }
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, u0, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final void j(Exception exc) {
        try {
            GpYFMu.d(W, v0 + exc.getMessage(), new Throwable[0]);
            if (e() && this.q.compareAndSet(false, true) && !this.o.get()) {
                k(ELXMqL.DwXtmN.ERROR, ELXMqL.etZCba.BMP);
            }
            if (((this.f255e == null || this.f256f == null) ? false : true) && this.r.compareAndSet(false, true) && !this.p.get()) {
                k(ELXMqL.DwXtmN.ERROR, ELXMqL.etZCba.CPR);
            }
            b();
            i();
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, s0, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            b();
            i();
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x006c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v4 */
    public final void k(ELXMqL.DwXtmN dwXtmN, ELXMqL.etZCba etzcba) {
        Exception exc;
        ?? r4;
        String[] strArr;
        Object obj;
        ?? r5;
        Boolean bool;
        ?? r8;
        Object obj2;
        Boolean bool2;
        Integer num;
        Boolean bool3;
        String str;
        Integer num2;
        String str2;
        Integer num3;
        ZhhBOJ zhhBOJ;
        DRxlEm dRxlEm = this.f258i;
        if (dRxlEm != null) {
            try {
                if (this.n.get()) {
                    return;
                }
                String str3 = null;
                String str4 = null;
                try {
                    int i2 = JDcbwb.f268a[etzcba.ordinal()];
                    r4 = 1;
                    try {
                        if (i2 == 1) {
                            ZDnQwv zDnQwv = this.l;
                            if (zDnQwv != null) {
                                String str5 = zDnQwv.f322c;
                                String str6 = (str5 == null || str5.isEmpty()) ? null : str5;
                                if (dwXtmN == ELXMqL.DwXtmN.COMPLETE) {
                                    strArr = zDnQwv.f320a;
                                    try {
                                        Integer num4 = zDnQwv.f323e;
                                        try {
                                            bool2 = zDnQwv.f324f;
                                            num = num4;
                                        } catch (Exception e2) {
                                            exc = e2;
                                            r5 = str6;
                                            obj = num4;
                                            GpYFMu.d(W, k0 + etzcba + U + exc.getMessage(), new Throwable[0]);
                                            GWINqE.b(exc);
                                            bool = null;
                                            r8 = r5;
                                            obj2 = obj;
                                        }
                                    } catch (Exception e3) {
                                        exc = e3;
                                        obj = null;
                                        r5 = str6;
                                    }
                                } else {
                                    bool2 = null;
                                    strArr = null;
                                    num = null;
                                }
                                bool3 = bool2;
                                str = null;
                                str2 = str6;
                                num2 = num;
                                str4 = str2;
                                num3 = num2;
                            } else {
                                str = null;
                                bool3 = null;
                                strArr = null;
                                num3 = null;
                            }
                        } else if (i2 == 2 && (zhhBOJ = this.m) != null) {
                            String str7 = zhhBOJ.f326b;
                            String str8 = (str7 == null || str7.isEmpty()) ? null : str7;
                            str = this.f256f;
                            bool3 = null;
                            strArr = null;
                            num2 = null;
                            str2 = str8;
                            str4 = str2;
                            num3 = num2;
                        } else {
                            str = null;
                            bool3 = null;
                            strArr = null;
                            num3 = null;
                        }
                        bool = bool3;
                        r8 = str4;
                        str3 = str;
                        obj2 = num3;
                    } catch (Exception e4) {
                        exc = e4;
                        strArr = null;
                        obj = strArr;
                        r5 = r4;
                        GpYFMu.d(W, k0 + etzcba + U + exc.getMessage(), new Throwable[0]);
                        GWINqE.b(exc);
                        bool = null;
                        r8 = r5;
                        obj2 = obj;
                        dRxlEm.a(new ELXMqL(dwXtmN, etzcba, r8, str3, strArr, obj2, bool));
                    }
                } catch (Exception e5) {
                    exc = e5;
                    r4 = 0;
                    strArr = null;
                }
                dRxlEm.a(new ELXMqL(dwXtmN, etzcba, r8, str3, strArr, obj2, bool));
            } catch (Exception e6) {
                GpYFMu.d(W, cj.h(e6, c0, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e6);
            }
        }
    }

    public final String l() {
        try {
            Uri.Builder builderBuildUpon = Uri.parse(this.d).buildUpon();
            builderBuildUpon.appendPath(d0);
            builderBuildUpon.appendPath(y0);
            builderBuildUpon.appendQueryParameter(K, b0);
            String str = this.f257h;
            if (str != null) {
                builderBuildUpon.appendQueryParameter(D0, str);
            }
            if (this.l != null) {
                a(builderBuildUpon);
            }
            String str2 = this.g;
            if (str2 != null) {
                builderBuildUpon.appendQueryParameter(O, str2);
            }
            return builderBuildUpon.toString();
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, j0, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            return null;
        }
    }

    public final void m() {
        synchronized (this.f252a) {
            try {
                if (this.f253b != XDqkTi.INIT) {
                    GpYFMu.g(W, L + this.f253b, new Throwable[0]);
                    return;
                }
                this.f253b = XDqkTi.RUNNING;
                try {
                    if (!this.n.get() && d()) {
                        try {
                            aVfcFH avfcfh = new aVfcFH();
                            this.u = avfcfh;
                            this.f259j.postDelayed(avfcfh, r.x);
                        } catch (Exception e2) {
                            GpYFMu.d(W, cj.h(e2, w0, new StringBuilder()), new Throwable[0]);
                        }
                        JUdnss jUdnss = new JUdnss();
                        if (Looper.myLooper() == Looper.getMainLooper()) {
                            jUdnss.run();
                        } else {
                            this.f259j.post(jUdnss);
                        }
                    }
                } catch (Exception e3) {
                    GpYFMu.d(W, cj.h(e3, Y, new StringBuilder()), new Throwable[0]);
                    GWINqE.b(e3);
                    j(e3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n() throws Exception {
        WebView webView = this.f260k;
        if (webView == null) {
            return;
        }
        WebSettings settings = webView.getSettings();
        try {
            this.f260k.setAccessibilityDelegate(null);
            this.f260k.setLayerType(1, null);
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(2);
            settings.setAllowFileAccess(false);
            settings.setDomStorageEnabled(true);
            settings.setAllowContentAccess(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
            settings.setMixedContentMode(1);
            settings.setLoadsImagesAutomatically(false);
            settings.setBlockNetworkImage(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setSupportMultipleWindows(false);
            settings.setSaveFormData(false);
            try {
                settings.setMediaPlaybackRequiresUserGesture(true);
            } catch (Throwable unused) {
            }
            try {
                settings.setDatabaseEnabled(false);
            } catch (Throwable unused2) {
            }
            try {
                settings.setGeolocationEnabled(false);
            } catch (Throwable unused3) {
            }
            try {
                this.f260k.removeJavascriptInterface(y);
            } catch (Exception unused4) {
            }
            try {
                this.f260k.removeJavascriptInterface(m0);
            } catch (Exception unused5) {
            }
            ZDnQwv zDnQwv = this.l;
            if (zDnQwv != null) {
                this.f260k.addJavascriptInterface(zDnQwv, y);
            }
            ZhhBOJ zhhBOJ = this.m;
            if (zhhBOJ != null) {
                this.f260k.addJavascriptInterface(zhhBOJ, m0);
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, X, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            throw e2;
        }
    }

    public final void o() {
        try {
            boolean z2 = true;
            boolean z3 = !e() || this.o.get() || this.q.get();
            if (((this.f255e == null || this.f256f == null) ? false : true) && !this.p.get() && !this.r.get()) {
                z2 = false;
            }
            if (z3 && z2) {
                b();
                i();
            }
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, Z, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final void p() throws Exception {
        try {
            this.f260k.setWebChromeClient(new Jvmxit());
            this.f260k.setWebViewClient(new uSrWvK());
        } catch (Exception e2) {
            GpYFMu.d(W, cj.h(e2, x0, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            throw e2;
        }
    }
}

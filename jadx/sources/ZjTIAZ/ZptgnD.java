package ZjTIAZ;

import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.cyberfend.cyfsecurity.CYFManager;
import com.cyberfend.cyfsecurity.CYFMonitor;
import com.cyberfend.cyfsecurity.CYFWebViewService;
import com.linkplay.medialib.ContentTree;
import defpackage.cj;
import defpackage.d21;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class ZptgnD {
    public static int G = 2747;
    public static int H = 3904;
    public static final String I = ZptgnD.class.toString();
    public USrWvK A;
    public final Object B;
    public volatile String C;
    public volatile String D;
    public volatile String E;
    public volatile String F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Application f328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile String f329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile String f330c;
    public volatile String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile String f331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile String f332f;
    public volatile String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile String f333h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile String f334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile String f335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile String f336k;
    public volatile String[] l;
    public volatile boolean m = true;
    public volatile int n = 0;
    public final AtomicBoolean o = new AtomicBoolean(false);
    public final AtomicBoolean p = new AtomicBoolean(false);
    public final AtomicBoolean q = new AtomicBoolean(false);
    public final AtomicBoolean r = new AtomicBoolean(false);
    public final AtomicBoolean s = new AtomicBoolean(false);
    public final AtomicBoolean t;
    public final AtomicBoolean u;
    public final AtomicBoolean v;
    public final AtomicBoolean w;
    public final Handler x;
    public Runnable y;
    public final AtomicReference z;

    class ClaEac implements Runnable {
        static String ZhkDFi;
        static String uNtmHz;

        static {
            ZSK(false);
        }

        public ClaEac() {
        }

        public static /* synthetic */ void ZSK(boolean z) {
            if (z) {
                ZSK(false);
            }
            uNtmHz = CNATAC.a("]@gEZQJ\u0000bETNA\u0016CQDODYY\u0015\u000fDSKDC@TNF_:}}qr}ASy");
            ZhkDFi = CNATAC.a("]@gEZQJ\u0000eXXYZCC\u0018[_EBLLCU\u0001GQVJT\u001d\b");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (ZptgnD.this.q.get()) {
                    return;
                }
                if (CYFWebViewService.x.get()) {
                    ZptgnD.this.w();
                } else {
                    GpYFMu.g(ZptgnD.I, uNtmHz, new Throwable[0]);
                    ZptgnD.this.F(true);
                }
            } catch (Exception e2) {
                GpYFMu.d(ZptgnD.I, cj.h(e2, ZhkDFi, new StringBuilder()), new Throwable[0]);
            }
        }
    }

    abstract /* synthetic */ class CuccPN {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f337a;

        static {
            USrWvK.ELXMqL.DwXtmN._ZL = 2816;
            USrWvK.ELXMqL.DwXtmN.gSd = 7508;
            int[] iArr = new int[USrWvK.ELXMqL.DwXtmN.values().length];
            f337a = iArr;
            try {
                iArr[USrWvK.ELXMqL.DwXtmN.COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f337a[USrWvK.ELXMqL.DwXtmN.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f337a[USrWvK.ELXMqL.DwXtmN.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: ZjTIAZ.ZptgnD$ZptgnD, reason: collision with other inner class name */
    class RunnableC0008ZptgnD implements Runnable {
        static String JavuPd;
        static String JmZaaq;
        static String erqsgh;

        /* JADX INFO: renamed from: ZjTIAZ.ZptgnD$ZptgnD$nSmlN */
        public class nSmlN implements USrWvK.DRxlEm {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static String f338b = CNATAC.a("}@aq^BeSBXRRTZ\u0017][XD^\u0017\u000e");

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static String f339c = CNATAC.a("JLgVPF\u000fRd_[YG\u0016TYEFIMNE\u000fUSPLV\u001f\u0006");
            public static String d = CNATAC.a("}@aq^B}EwCPO]\u007fYLLX]MA\u000eJBSMQ\u001e\u0005");

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public static String f340e = CNATAC.a("}@aq^BkSrt[]WZR\\\tOY^B\\\u0015\u0010");

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public static String f341f = CNATAC.a("}@aq^B`RuTG\u001cPDEW[\u0010\u000b");
            public static String g = CNATAC.a("}@apC@eSBXRRTZ`Q]B\u007fCFKA\u0010DPQKW\u001c\u0007");

            public nSmlN() {
            }

            @Override // ZjTIAZ.USrWvK.DRxlEm
            public final void a(USrWvK.ELXMqL eLXMqL) {
                AtomicBoolean atomicBoolean;
                try {
                    int i2 = CuccPN.f337a[eLXMqL.f263a.ordinal()];
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 == 3) {
                                if (eLXMqL.f264b == USrWvK.ELXMqL.etZCba.BMP && ZptgnD.this.o.compareAndSet(false, true)) {
                                    if (ZptgnD.this.n()) {
                                        ZptgnD.this.c();
                                    }
                                    if (!ZptgnD.this.b()) {
                                        atomicBoolean = ZptgnD.this.p;
                                        atomicBoolean.set(true);
                                    }
                                } else if (eLXMqL.f264b == USrWvK.ELXMqL.etZCba.CPR && ZptgnD.this.p.compareAndSet(false, true)) {
                                    if (ZptgnD.this.b()) {
                                        ZptgnD.this.x();
                                    }
                                    if (!ZptgnD.this.n()) {
                                        atomicBoolean = ZptgnD.this.o;
                                        atomicBoolean.set(true);
                                    }
                                }
                            }
                        } else if (eLXMqL.f264b == USrWvK.ELXMqL.etZCba.BMP && !ZptgnD.this.o.get()) {
                            ZptgnD.this.o.set(true);
                            ZptgnD.this.c();
                        } else if (eLXMqL.f264b == USrWvK.ELXMqL.etZCba.CPR && !ZptgnD.this.p.get()) {
                            ZptgnD.this.p.set(true);
                            ZptgnD.this.x();
                        }
                    } else if (eLXMqL.f264b == USrWvK.ELXMqL.etZCba.BMP && !ZptgnD.this.o.get()) {
                        ZptgnD.this.o.set(true);
                        try {
                            ZptgnD zptgnD = ZptgnD.this;
                            Integer num = eLXMqL.f267f;
                            zptgnD.n = num != null ? num.intValue() : 0;
                        } catch (Exception e2) {
                            GpYFMu.g(ZptgnD.I, d + e2.getMessage(), new Throwable[0]);
                        }
                        try {
                            ZptgnD.this.l = eLXMqL.f266e;
                        } catch (Exception e3) {
                            GpYFMu.g(ZptgnD.I, f341f + e3.getMessage(), new Throwable[0]);
                        }
                        try {
                            ZptgnD zptgnD2 = ZptgnD.this;
                            Boolean bool = eLXMqL.g;
                            zptgnD2.m = bool != null ? bool.booleanValue() : true;
                        } catch (Exception e4) {
                            GpYFMu.g(ZptgnD.I, f340e + e4.getMessage(), new Throwable[0]);
                        }
                        try {
                            ZptgnD.this.y(eLXMqL.f265c);
                        } catch (Exception e5) {
                            GpYFMu.g(ZptgnD.I, f338b + e5.getMessage(), new Throwable[0]);
                        }
                    } else if (eLXMqL.f264b == USrWvK.ELXMqL.etZCba.CPR && !ZptgnD.this.p.get()) {
                        ZptgnD.this.p.set(true);
                        try {
                            ZptgnD.this.A(eLXMqL.f265c, eLXMqL.d);
                        } catch (Exception e6) {
                            GpYFMu.g(ZptgnD.I, g + e6.getMessage(), new Throwable[0]);
                        }
                    }
                    if (ZptgnD.o(ZptgnD.this)) {
                        ZptgnD.this.s.set(true);
                        ZptgnD.this.j();
                        CYFMonitor.d();
                    }
                } catch (Exception e7) {
                    GpYFMu.d(ZptgnD.I, cj.h(e7, f339c, new StringBuilder()), new Throwable[0]);
                    ZptgnD.this.o.set(true);
                    ZptgnD.this.p.set(true);
                    if (ZptgnD.this.n()) {
                        ZptgnD.this.c();
                    }
                    if (ZptgnD.this.b()) {
                        ZptgnD.this.x();
                    }
                    ZptgnD.this.j();
                    CYFMonitor.e(5);
                }
            }
        }

        static {
            sd(false);
        }

        public RunnableC0008ZptgnD() {
        }

        public static /* synthetic */ void sd(boolean z) {
            if (z) {
                sd(false);
            }
            JavuPd = CNATAC.a("JLgVPF\u000fwtScUPA\u0017J\\DEMOBJ\u0010GCJHPTB\u0012\u0018");
            JmZaaq = CNATAC.a("}@aq^BeSWTA_]eCY[^NH\rK]BNP\u0019\u0004");
            erqsgh = CNATAC.a("}@apC@eSWTA_]eCY[^NH\rK]BNP\u0019\u0004");
        }

        @Override // java.lang.Runnable
        public void run() {
            ZptgnD zptgnD;
            try {
                ZptgnD zptgnD2 = ZptgnD.this;
                USrWvK uSrWvK = new USrWvK(zptgnD2.f328a, zptgnD2.f329b, ZptgnD.this.f330c, ZptgnD.this.f334i, ZptgnD.this.f336k, Long.toString(ZxDSl.f343a), new nSmlN());
                synchronized (ZptgnD.this.B) {
                    zptgnD = ZptgnD.this;
                    zptgnD.A = uSrWvK;
                }
                if (zptgnD.n()) {
                    try {
                        ZptgnD.this.getClass();
                        try {
                            CYFMonitor.f25346b.n = 14;
                        } catch (Exception unused) {
                        }
                    } catch (Exception e2) {
                        GpYFMu.g(ZptgnD.I, JmZaaq + e2.getMessage(), new Throwable[0]);
                    }
                }
                if (ZptgnD.this.b()) {
                    try {
                        ZptgnD.this.getClass();
                        try {
                            CYFMonitor.f25346b.o = 14;
                        } catch (Exception unused2) {
                        }
                    } catch (Exception e3) {
                        GpYFMu.g(ZptgnD.I, erqsgh + e3.getMessage(), new Throwable[0]);
                    }
                }
                uSrWvK.m();
            } catch (Exception e4) {
                GpYFMu.d(ZptgnD.I, cj.h(e4, JavuPd, new StringBuilder()), new Throwable[0]);
                GWINqE.b(e4);
                ZptgnD.this.o.set(true);
                ZptgnD.this.p.set(true);
                if (ZptgnD.this.n()) {
                    ZptgnD.this.c();
                }
                if (ZptgnD.this.b()) {
                    ZptgnD.this.x();
                }
                ZptgnD.this.j();
                CYFMonitor.e(6);
            }
        }
    }

    public ZptgnD(Application application, String str, String str2, String str3, String str4) {
        this.f328a = null;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.t = atomicBoolean;
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        this.u = atomicBoolean2;
        AtomicBoolean atomicBoolean3 = new AtomicBoolean(false);
        this.v = atomicBoolean3;
        AtomicBoolean atomicBoolean4 = new AtomicBoolean(false);
        this.w = atomicBoolean4;
        this.x = new Handler(Looper.getMainLooper());
        this.z = new AtomicReference(null);
        this.A = null;
        this.B = new Object();
        try {
            if (application == null) {
                GpYFMu.d(I, CNATAC.a("OUe_ZQNTx^[\u001c[C[T\tCE\fD@FDHCOM_C"), new Throwable[0]);
                return;
            }
            if (!l(str)) {
                GpYFMu.d(I, CNATAC.a("LDfV\u0013g}l1X[JTZ^\\\tCE\fD@FDHCOM_C"), new Throwable[0]);
                return;
            }
            this.f328a = application;
            this.f329b = str;
            this.f330c = str2;
            this.f334i = str3;
            this.f336k = str4;
            this.C = str;
            this.D = str2;
            this.E = str3;
            this.F = str4;
            atomicBoolean.set(false);
            atomicBoolean2.set(false);
            atomicBoolean3.set(false);
            atomicBoolean4.set(false);
            p();
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "gK|GZSCIkT\u0015YMURH]CDB\u0017\u000e", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public static boolean B(String str) {
        if (str == null) {
            return true;
        }
        try {
            return (str.contains(CNATAC.a("2VvAZB[\u001e")) || str.contains(CNATAC.a("dDcR@Q]IaE\u000f")) || str.contains(CNATAC.a("kSt_\u001b")) || str.contains(CNATAC.a("HP{PG[@N9")) || str.length() > 10000) ? false : true;
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "xDyZWS[EBXRRTZ~V]OL^DZV\u0010DPQKW\u001c\u0007", new StringBuilder()), new Throwable[0]);
            return false;
        }
    }

    public static String a(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty() && !ContentTree.ROOT_ID.equals(str)) {
                    String[] strArrSplit = str.split(CNATAC.a("RY"));
                    if (strArrSplit.length < 4) {
                        return str;
                    }
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < 3 && i2 < strArrSplit.length; i2++) {
                        if (i2 > 0) {
                            sb.append("|");
                        }
                        sb.append(strArrSplit[i2]);
                    }
                    return sb.toString();
                }
            } catch (Exception e2) {
                GpYFMu.d(I, d21.h(e2, "}QgZCfXVT_VNLFC]MzJUAANT\u0001GQVJT\u001d\b", new StringBuilder()), new Throwable[0]);
            }
        }
        return str;
    }

    public static String f(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty() && !ContentTree.ROOT_ID.equals(str)) {
                    String[] strArrSplit = str.split(CNATAC.a("RY"));
                    if (strArrSplit.length >= 4) {
                        String strTrim = strArrSplit[3].trim();
                        if (!strTrim.isEmpty()) {
                            return strTrim;
                        }
                    }
                }
            } catch (Exception e2) {
                GpYFMu.d(I, d21.h(e2, "k]aARQ[tfGpRVDNH]OO|LWC_@F\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
            }
        }
        return null;
    }

    public static boolean i() {
        try {
            return CYFWebViewService.x.get();
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "gVFVADFCtc@R[_Y_\tOY^B\\\u0015\u0010", new StringBuilder()), new Throwable[0]);
            return false;
        }
    }

    public static boolean k(String str, String str2) {
        int i2;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        if (H > 3903) {
            return false;
        }
        while (true) {
            int i3 = H;
            int i4 = i3 + 39;
            if (i4 != 51) {
                if (i4 == 160) {
                    H = (i3 ^ 3379) + i3;
                } else if (i4 != 301) {
                    continue;
                }
                H = (H % 15) + i3;
                if (G <= 2746) {
                    do {
                        int i5 = G;
                        i2 = i5 + 52;
                        if (i2 == 77) {
                            G = (i5 % 87) + i5;
                            break;
                        }
                        if (i2 == 236) {
                            while (true) {
                                G = (G ^ 2082) % 42;
                            }
                        }
                    } while (i2 != 407);
                    while (true) {
                        G = (G % 122) * 2448;
                    }
                }
            } else {
                while (true) {
                    H = (H * 117) >> 20;
                }
            }
        }
    }

    public static boolean l(String str) {
        Uri uri;
        String scheme;
        if (str != null) {
            try {
                String strTrim = str.trim();
                if (!strTrim.isEmpty() && (uri = Uri.parse(strTrim)) != null && (scheme = uri.getScheme()) != null && scheme.equalsIgnoreCase(CNATAC.a("fQaC@"))) {
                    return true;
                }
            } catch (Exception e2) {
                GpYFMu.d(I, d21.h(e2, "gV@A_dNLxU\u0015YGDXJ\u0013\n", new StringBuilder()), new Throwable[0]);
                return false;
            }
        }
        return false;
    }

    public static boolean o(ZptgnD zptgnD) {
        boolean z;
        boolean z2;
        int i2;
        if (!zptgnD.o.get() && zptgnD.n()) {
            z = false;
        } else if (G <= 2746) {
            while (true) {
                int i3 = G;
                int i4 = i3 + 39;
                if (i4 == 98) {
                    break;
                }
                if (i4 == 166) {
                    G = ((i3 * 84) ^ 2518) + i3;
                }
            }
            while (true) {
                G = (G * 72) >> 115;
            }
        } else {
            z = true;
        }
        if (!zptgnD.p.get() && zptgnD.b()) {
            z2 = false;
        } else if ((G ^ 2747) != 0) {
            do {
                i2 = G + 78;
                if (i2 == 99) {
                    while (true) {
                        G = ((G >> 49) % 49) * 60;
                    }
                }
            } while (i2 != 118);
            while (true) {
                G = (G % 71) * 101;
            }
        } else {
            z2 = true;
        }
        if (!z || !z2) {
            return false;
        }
        if (H > 3903) {
            return true;
        }
        while (H + 104 != 41) {
        }
        while (true) {
            H = ((H % 93) >> 63) >> 6;
        }
    }

    public final void A(String str, String str2) {
        String strF;
        try {
            if (!B(str)) {
                GpYFMu.g(I, CNATAC.a("MuG\u0013@[HNp]\u0015ZT_[]M\nBBYKHBHVZ\u0004FNBKS"), new Throwable[0]);
                z();
                return;
            }
            if (str2 == null || str2.trim().isEmpty()) {
                GpYFMu.g(I, CNATAC.a("MuG\u0013G]DE\u007f\u0011\\O\u0015XBTE\u0005NA]ZV\u0010\f\u0002@EKHH\\\u0018i~h=mvG^s\u007f4b\u007fcpf\u007f\u007f,{ocye\"wknci"), new Throwable[0]);
            } else {
                if (str != null && !str.trim().isEmpty()) {
                    if (CYFMonitor.f25351i.get() && (strF = f(str)) != null && !strF.isEmpty()) {
                        this.f333h = strF;
                        RXtEM.f246j.p(strF);
                    }
                    String strA = a(str);
                    this.f332f = str;
                    this.g = strA;
                    this.f335j = str2;
                    RXtEM.f246j.n(str2, strA);
                    e();
                    return;
                }
                GpYFMu.g(I, CNATAC.a("MuG\u0013@[HNp]\u0015UF\u0016YMEF\u0004I@^[I\u0001\u000f\u0003GDHIGL:hyi>kO[w}4b\u007fcpf\u007f\u007f,{ocye\"pmbhfd"), new Throwable[0]);
            }
            z();
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "}@apC@eSBXRRTZ`Q]B\u007fCFKA\u0010DPQKW\u001c\u0007", new StringBuilder()), new Throwable[0]);
        }
    }

    public final Intent C() {
        Intent intent = new Intent(this.f328a, (Class<?>) CYFWebViewService.class);
        intent.putExtra(CNATAC.a("{Wy"), this.f329b);
        intent.putExtra(CNATAC.a("lHe`V@YEcb\\XPe^_GKG"), this.f330c);
        intent.putExtra(CNATAC.a("mUgy@g]L"), this.f334i);
        intent.putExtra(CNATAC.a("mUgy@f@Kt_"), this.f336k);
        intent.putExtra(CNATAC.a("}QtAGfFMt"), Long.toString(ZxDSl.f343a));
        return intent;
    }

    public final void D() {
        this.o.set(true);
        try {
            ASYMBN.j().h(Boolean.TRUE);
        } catch (Exception unused) {
        }
        g();
        try {
            CYFManager cYFManager = CYFMonitor.f25346b;
            int i2 = cYFManager.n;
            if (i2 == 3) {
                cYFManager.n = 11;
            } else if (i2 == 2) {
                cYFManager.n = 10;
            } else if (this.f330c == null) {
                cYFManager.n = 9;
            } else {
                cYFManager.n = 1;
                try {
                    cYFManager.C();
                } catch (Exception unused2) {
                }
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "]@aGZ\\H\u0000S|e\u001cFCT[LYX\f^ZNDTQ\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
        }
    }

    public final boolean E(String str, String str2, String str3, String str4) {
        int i2;
        if (!k(this.C, str) || !k(this.D, str2) || !k(this.E, str3) || !k(this.F, str4)) {
            return false;
        }
        if ((H ^ 3904) == 0) {
            return true;
        }
        while (true) {
            int i3 = H;
            int i4 = i3 + 26;
            if (i4 != 23) {
                if (i4 != 100) {
                    continue;
                } else {
                    H = (i3 + i3) % 4;
                }
            }
            H = ((H * 121) + i3) * 44;
            if (G <= 2746) {
                break;
            }
        }
        while (true) {
            i2 = G;
            int i5 = i2 + 39;
            if (i5 == 43) {
                G = ((i2 >> 47) ^ 5017) % 122;
                break;
            }
            if (i5 == 71) {
                while (true) {
                    G = (G >> 95) ^ 3939;
                }
            } else {
                if (i5 == 223) {
                    break;
                }
                if (i5 == 361) {
                    while (true) {
                        G = (G ^ 4161) + i2;
                    }
                }
            }
        }
        while (true) {
            G = (G * 119) + i2;
        }
    }

    public final void F(boolean z) {
        CYFManager cYFManager;
        int i2;
        CYFManager cYFManager2;
        int i3;
        Application application;
        if (this.r.compareAndSet(false, true)) {
            d();
            this.s.compareAndSet(false, true);
            try {
                if (!this.q.get() && i() && (application = this.f328a) != null) {
                    application.stopService(C());
                }
            } catch (Exception e2) {
                GpYFMu.d(I, d21.h(e2, "HD|_VV\u000fSe^EL\\XP\u0018ZOYZDMJ\u0010EWQMKA\u0007LQh~\u007fi>yA\\~quv}-8", new StringBuilder()), new Throwable[0]);
            }
            if (z) {
                try {
                    if (n() && (i3 = (cYFManager2 = CYFMonitor.f25346b).n) != 15 && i3 != 16) {
                        cYFManager2.n = 16;
                    }
                    if (b() && (i2 = (cYFManager = CYFMonitor.f25346b).o) != 15 && i2 != 16) {
                        cYFManager.o = 16;
                    }
                } catch (Exception e3) {
                    GpYFMu.d(I, d21.h(e3, "]@aGZ\\H\u0000bTGJ\\UR\u0018Z^J^Y\u000eIQHNF@\u0005USILoh<xlmOB(3", new StringBuilder()), new Throwable[0]);
                }
            }
            try {
                d();
                h();
                if (this.f328a == null || this.f329b == null || this.f329b.trim().isEmpty()) {
                    GpYFMu.d(I, CNATAC.a("MD{]\\F\u000fSePGH\u0015R^JLI_\fzKMfHGT\u001f\u0005KN[Ksu{=}pNDwk`5ye8kkxiX|c"), new Throwable[0]);
                } else {
                    this.o.set(false);
                    this.p.set(false);
                    j();
                    RunnableC0008ZptgnD runnableC0008ZptgnD = new RunnableC0008ZptgnD();
                    AtomicReference atomicReference = this.z;
                    while (!atomicReference.compareAndSet(null, runnableC0008ZptgnD)) {
                        if (atomicReference.get() != null) {
                        }
                    }
                    this.x.post(runnableC0008ZptgnD);
                }
            } catch (Exception e4) {
                GpYFMu.d(I, d21.h(e4, "}QtAGeJBgXPKq_E]J^GU\rK]BNP\u0019\u0004", new StringBuilder()), new Throwable[0]);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    /* JADX WARN: Code duplicated, block: B:60:0x0065 A[EDGE_INSN: B:60:0x0065->B:64:? BREAK  A[LOOP:2: B:27:0x0058->B:63:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x006c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:? A[LOOP:2: B:27:0x0058->B:63:?, LOOP_END, SYNTHETIC] */
    public final boolean b() {
        int i2;
        int i3;
        int i4;
        if (this.f334i == null || this.f334i.trim().isEmpty()) {
            return false;
        }
        if ((H ^ 3904) != 0) {
            while (true) {
                int i5 = H;
                int i6 = i5 + 39;
                if (i6 == 4) {
                    H = (i5 + i5) ^ 4057;
                } else if (i6 == 122) {
                    int i7 = i5 * 14;
                    int i8 = G;
                    if (i8 <= 2746) {
                        while (true) {
                            int i9 = G;
                            if (i9 + 130 == 60) {
                                G = (i9 % 69) >> 25;
                            }
                        }
                    } else {
                        H = (i7 % 44) >> 117;
                        if (i8 > 2746) {
                        }
                        while (true) {
                            i3 = G;
                            i4 = i3 + 117;
                            if (i4 == 39) {
                                if (i4 != 135) {
                                    G = (G + i3) % 19;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        while (true) {
                            G = (G * 49) + i3;
                            G = (G + i3) % 19;
                        }
                    }
                } else if (i6 != 167) {
                }
                do {
                    H = (H * 12) + i5;
                } while (G > 2746);
                while (true) {
                    i3 = G;
                    i4 = i3 + 117;
                    if (i4 == 39) {
                        if (i4 != 135) {
                            G = (G + i3) % 19;
                            break;
                        }
                    } else {
                        break;
                        break;
                    }
                }
                while (true) {
                    G = (G * 49) + i3;
                    G = (G + i3) % 19;
                }
            }
        } else {
            if (this.f336k == null) {
                return false;
            }
            boolean zIsEmpty = this.f336k.trim().isEmpty();
            if (G > 2746) {
                if (zIsEmpty) {
                    return false;
                }
                if (H <= 3903) {
                    do {
                        i2 = H;
                    } while (i2 + 26 != 6);
                    H = (i2 % 87) % 2;
                }
                return true;
            }
            while (true) {
                int i10 = G;
                if (i10 + 156 == 23) {
                    G = i10 ^ 741;
                }
            }
        }
    }

    public final void c() {
        this.o.set(true);
        try {
            ASYMBN.j().h(Boolean.FALSE);
        } catch (Exception unused) {
        }
        g();
        try {
            if (XBnaCg.a()) {
                CYFManager cYFManager = CYFMonitor.f25346b;
                int i2 = cYFManager.n;
                if (i2 == 2) {
                    cYFManager.n = 5;
                } else if (i2 == 4) {
                    cYFManager.n = 7;
                } else {
                    cYFManager.n = 8;
                }
            } else {
                CYFMonitor.f25346b.n = 6;
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "]@aGZ\\H\u0000S|e\u001cPDEW[\nXXLZZC\u0001GQVJT\u001d\b", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void d() {
        try {
            Runnable runnable = this.y;
            if (runnable != null) {
                this.x.removeCallbacks(runnable);
                this.y = null;
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "mD{PV^|EcG\\_Pb^ULE^X\rK]BNP\u0019\u0004", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void e() {
        this.p.set(true);
        try {
            ASYMBN.j().b(Boolean.TRUE);
        } catch (Exception unused) {
        }
        try {
            CYFManager cYFManager = CYFMonitor.f25346b;
            cYFManager.o = 1;
            cYFManager.C();
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "]@aGZ\\H\u0000Rag\u001cFCT[LYX\f^ZNDTQ\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void g() {
        String strC;
        try {
            this.d = this.f330c;
            if (this.f330c == null || (strC = DeHqqG.c(this.f330c)) == null) {
                return;
            }
            RXtEM.f246j.m(strC);
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "|@sAVAGb|AfYG@RJzCLBLB\u000fUSPLV\u001f\u0006", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void h() {
        try {
            Runnable runnable = (Runnable) this.z.getAndSet(null);
            if (runnable != null) {
                this.x.removeCallbacks(runnable);
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "mD{PV^\u007fE\u007fU\\RRr^JLI_{HLyYDUqQKHFJT\u007f;yolpR\n2", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void j() {
        try {
            synchronized (this.B) {
                try {
                    USrWvK uSrWvK = this.A;
                    if (uSrWvK != null) {
                        uSrWvK.i();
                        this.A = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "mIpR]G_cdCGY[B`]K|BIZ|Z^OGQ\u0004@TUGJ ;", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void m() {
        try {
            boolean z = this.t.get();
            AtomicBoolean atomicBoolean = this.u;
            boolean z2 = true;
            boolean z3 = z || atomicBoolean.get() || !n();
            boolean z4 = this.v.get();
            AtomicBoolean atomicBoolean2 = this.w;
            if (!z4 && !atomicBoolean2.get() && b()) {
                z2 = false;
            }
            if (z3 && z2) {
                if ((!n() || !atomicBoolean.get()) && (!b() || !atomicBoolean2.get())) {
                    CYFMonitor.d();
                } else {
                    if (this.r.get()) {
                        return;
                    }
                    F(false);
                }
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "oQaV^B[p~BAoPDAQJOmMABMQBI\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
        }
    }

    public final boolean n() {
        int i2;
        int i3;
        int i4;
        if (this.f329b == null || this.f329b.trim().isEmpty() || this.f330c == null || this.f330c.trim().isEmpty()) {
            return false;
        }
        if ((G ^ 2747) == 0) {
            return true;
        }
        do {
            i2 = G;
            i3 = i2 + 26;
            if (i3 == 19) {
                i4 = (i2 % 110) * 63;
            } else if (i3 == 65) {
                while (true) {
                    G = G + i2 + i2;
                }
            } else if (i3 == 199) {
                while (true) {
                    G = (G % 39) ^ 2844;
                }
            }
            G = i4;
            return true;
        } while (i3 != 314);
        i4 = ((i2 + i2) + i2) ^ 3544;
        G = i4;
        return true;
    }

    public final void p() {
        try {
            if (CYFMonitor.d && !i()) {
                if (this.f328a == null) {
                    GpYFMu.d(I, CNATAC.a("OUe_ZQNTx^[\u001cVYYLLR_\fC[C\\\u001a\u0002@EKHH\\\u0018io}oj?SU`e}vs"), new Throwable[0]);
                } else {
                    if (l(this.f329b)) {
                        this.f328a.startService(C());
                        d();
                        ClaEac claEac = new ClaEac();
                        this.y = claEac;
                        this.x.postDelayed(claEac, 10000L);
                        if (CYFWebViewService.x.get()) {
                            w();
                            return;
                        }
                        return;
                    }
                    GpYFMu.d(I, CNATAC.a("LDfV\u0013g}l1X[JTZ^\\\u0012\nHMC@@D\u0001QWEWR\u0007[]hmu~{"), new Throwable[0]);
                }
                F(true);
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "}QtAGeJBGXPKfSEN@IN\fHVLUQVJKK\u001c\u0007", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            F(true);
        }
    }

    public final void q(Application application, String str, String str2, String str3, String str4) {
        try {
            if (application == null) {
                GpYFMu.d(I, CNATAC.a("OUe_ZQNTx^[\u001c[C[T\tCE\fNAAVHEVV@"), new Throwable[0]);
                return;
            }
            if (!l(str)) {
                GpYFMu.d(I, CNATAC.a("LDfV\u0013g}l1X[JTZ^\\\tCE\fNAAVHEVV@"), new Throwable[0]);
                return;
            }
            this.r.set(false);
            if (E(str, str2, str3, str4)) {
                return;
            }
            this.o.set(false);
            this.p.set(false);
            this.q.set(false);
            this.f328a = application;
            this.f329b = str;
            this.f330c = str2;
            this.f334i = str3;
            this.f336k = str4;
            this.C = str;
            this.D = str2;
            this.E = str3;
            this.F = str4;
            this.t.set(false);
            this.u.set(false);
            this.v.set(false);
            this.w.set(false);
            p();
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "mJ{UZUZRt\u0011PDVSGL@EE\u0016\r", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final void r() {
        try {
            this.r.set(false);
            d();
            h();
            j();
            this.x.removeCallbacksAndMessages(null);
            this.f332f = null;
            this.f335j = null;
            this.f336k = null;
            this.p.set(false);
            this.q.set(false);
            this.v.set(false);
            this.w.set(false);
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "mIpR]G_\u0000tCGSG\f\u0017", new StringBuilder()), new Throwable[0]);
        }
    }

    public final String s() {
        if (this.m) {
            return this.f331e;
        }
        return null;
    }

    public final String t() {
        if (this.g != null && !this.g.isEmpty() && !ContentTree.ROOT_ID.equals(this.g)) {
            return this.g;
        }
        String strF = RXtEM.f246j.f();
        return (strF.isEmpty() || ContentTree.ROOT_ID.equals(strF)) ? ContentTree.ROOT_ID : strF;
    }

    public final String u() {
        if (this.f335j != null && !this.f335j.isEmpty() && !ContentTree.ROOT_ID.equals(this.f335j)) {
            return this.f335j;
        }
        String strG = RXtEM.f246j.g();
        return (strG.isEmpty() || ContentTree.ROOT_ID.equals(strG)) ? ContentTree.ROOT_ID : strG;
    }

    public final Boolean v() {
        try {
            return Boolean.valueOf((this.d == null || s() == null) ? false : true);
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "gVW^CaFG\u007fPY}CW^THHGI\rK]BNP\u0019\u0004", new StringBuilder()), new Throwable[0]);
            return Boolean.FALSE;
        }
    }

    public final void w() {
        try {
            this.q.set(true);
            d();
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "`JaZUK|EcG\\_PeCY[^NH\rK]BNP\u0019\u0004", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void x() {
        this.p.set(true);
        try {
            ASYMBN.j().b(Boolean.FALSE);
        } catch (Exception unused) {
        }
        try {
            if (XBnaCg.a()) {
                CYFMonitor.f25346b.o = 8;
            } else {
                CYFMonitor.f25346b.o = 6;
            }
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "]@aGZ\\H\u0000Rag\u001cPDEW[\nXXLZZC\u0001GQVJT\u001d\b", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void y(String str) {
        try {
            if (B(str)) {
                this.f331e = str;
                D();
                return;
            }
            try {
                c();
                this.f331e = null;
                this.l = null;
                this.n = 0;
            } catch (Exception e2) {
                GpYFMu.d(I, d21.h(e2, "}@aq^BeSWTA_]pVQEOO\fH\\]_S\u0018\u0003", new StringBuilder()), new Throwable[0]);
            }
        } catch (Exception e3) {
            GpYFMu.d(I, d21.h(e3, "}@aq^BeSBXRRTZ\u0017][XD^\u0017\u000e", new StringBuilder()), new Throwable[0]);
        }
    }

    public final void z() {
        try {
            x();
            this.f332f = null;
            this.f335j = null;
        } catch (Exception e2) {
            GpYFMu.d(I, d21.h(e2, "}@apC@eSWTA_]pVQEOO\fH\\]_S\u0018\u0003", new StringBuilder()), new Throwable[0]);
        }
    }
}

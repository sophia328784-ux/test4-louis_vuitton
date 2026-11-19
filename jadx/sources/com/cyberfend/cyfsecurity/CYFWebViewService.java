package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;
import ZjTIAZ.GWINqE;
import ZjTIAZ.USrWvK;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class CYFWebViewService extends Service {
    public static int v = 2094;
    public static int w = 3204;
    public static final AtomicBoolean x = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f25374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f25375c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f25376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f25377f;
    public String[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f25378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f25379i;
    public String l;
    public String o;
    public String p;
    public String q;
    public String r;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicBoolean f25380j = new AtomicBoolean(false);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f25381k = new AtomicBoolean(false);
    public final Handler m = new Handler(Looper.getMainLooper());
    public final AtomicReference n = new AtomicReference(null);
    public final AtomicBoolean s = new AtomicBoolean(false);
    public boolean t = false;
    public boolean u = false;

    /* JADX INFO: renamed from: com.cyberfend.cyfsecurity.CYFWebViewService$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    abstract /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25388a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f25389b;

        static {
            USrWvK.ELXMqL.etZCba.lBx = 8561;
            USrWvK.ELXMqL.DwXtmN._ZL = 2816;
            USrWvK.ELXMqL.etZCba.JVV = 8143;
            USrWvK.ELXMqL.DwXtmN.gSd = 7508;
            int[] iArr = new int[USrWvK.ELXMqL.DwXtmN.values().length];
            f25389b = iArr;
            try {
                iArr[USrWvK.ELXMqL.DwXtmN.COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25389b[USrWvK.ELXMqL.DwXtmN.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25389b[USrWvK.ELXMqL.DwXtmN.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[USrWvK.ELXMqL.etZCba.values().length];
            f25388a = iArr2;
            try {
                iArr2[USrWvK.ELXMqL.etZCba.BMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f25388a[USrWvK.ELXMqL.etZCba.CPR.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static boolean i(String str, String str2) {
        int i2;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            if ((w ^ 3204) != 0) {
                do {
                    i2 = w;
                } while (i2 + 39 != 90);
                w = ((i2 * 117) ^ 2712) + i2;
            }
            return true;
        }
        if ((v ^ 2094) == 0) {
            return false;
        }
        while (true) {
            int i3 = v;
            if (i3 + 39 == 34) {
                v = (i3 >> 101) ^ 1896;
            }
        }
    }

    public static void l(CYFWebViewService cYFWebViewService) {
        String str;
        if (cYFWebViewService.u) {
            try {
                Intent intent = new Intent(cYFWebViewService, (Class<?>) CYFWebViewBroadCastReceiver.class);
                intent.setAction(CNATAC.a("mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN"));
                if (cYFWebViewService.d() == null || (str = cYFWebViewService.d) == null || str.isEmpty()) {
                    intent.putExtra(CNATAC.a("mUglUW[CynFIVURKZ"), false);
                } else {
                    intent.putExtra(CNATAC.a("mUglUW[CynFIVURKZ"), true);
                    intent.putExtra(CNATAC.a("mUglYApSxV[]Y"), cYFWebViewService.d());
                    String strA = CNATAC.a("mUglYApT~ZPR");
                    String str2 = null;
                    try {
                        String str3 = cYFWebViewService.d;
                        if (str3 != null && !str3.isEmpty()) {
                            str2 = cYFWebViewService.d;
                        }
                    } catch (Exception e2) {
                        GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012HEeE\\RR\u0016th{\na\u007f\rZ@[DL\u0019\u0004", new StringBuilder()), new Throwable[0]);
                    }
                    intent.putExtra(strA, str2);
                }
                cYFWebViewService.sendBroadcast(intent);
            } catch (Exception e3) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e3, "KWg\\A\u0012\\E\u007fU\\RR\u0016th{\nXYNMJCR\u0002GEQG\u001d\b", new StringBuilder()), new Throwable[0]);
            }
        }
    }

    public static void m(CYFWebViewService cYFWebViewService, USrWvK.ELXMqL.etZCba etzcba) {
        String str;
        try {
            int i2 = AnonymousClass3.f25388a[etzcba.ordinal()];
            if (i2 == 1) {
                str = "lHelUW[CynS]\\ZR\\";
            } else if (i2 != 2) {
                return;
            } else {
                str = "mUglUW[CynS]\\ZR\\";
            }
            cYFWebViewService.q(CNATAC.a(str));
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "lWzRWQNSeaY]APXJDlJEA[]U\u0001GQVJT\u001d\b", new StringBuilder()), new Throwable[0]);
        }
    }

    public static boolean n(CYFWebViewService cYFWebViewService, String str) {
        int i2;
        int i3;
        int i4;
        if (str == null || str.isEmpty()) {
            return false;
        }
        if (w > 3203) {
            return true;
        }
        while (true) {
            i2 = w;
            int i5 = i2 + 26;
            if (i5 != 56) {
                if (i5 == 161) {
                    w = (i2 >> 120) ^ 4164;
                    break;
                }
                if (i5 == 267) {
                    do {
                        w = ((w + i2) % 55) ^ 3978;
                    } while ((v ^ 2094) == 0);
                    while (true) {
                        i4 = v;
                        int i6 = i4 + 78;
                        if (i6 != 28) {
                            if (i6 == 157) {
                                v = (v >> 116) ^ 4245;
                                break;
                            }
                            if (i6 == 270) {
                                while (true) {
                                    v = ((v % 118) ^ 3870) >> 39;
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    while (true) {
                        v = (v * 70) + i4;
                        v = (v >> 116) ^ 4245;
                    }
                }
            } else {
                break;
            }
        }
        while (true) {
            int i7 = (w % 16) >> 6;
            if (v <= 2093) {
                break;
            }
            w = i7 + i2;
        }
        while (true) {
            i3 = v;
            int i8 = i3 + 117;
            if (i8 != 29) {
                if (i8 == 69) {
                    v = (i3 * 61) % 115;
                    break;
                }
            } else {
                break;
            }
        }
        while (true) {
            v = ((v >> 54) * 11) + i3;
        }
    }

    public static void o(CYFWebViewService cYFWebViewService) {
        String str;
        int iValueOf;
        String str2;
        if (cYFWebViewService.t) {
            String[] strArr = null;
            try {
                try {
                    str = (!cYFWebViewService.g() || (str2 = cYFWebViewService.f25377f) == null || str2.isEmpty()) ? null : cYFWebViewService.f25377f;
                } catch (Exception e2) {
                    GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012HEeE\\RR\u0016uuy\na\u007f\r]FWOCO\u001e\u0005", new StringBuilder()), new Throwable[0]);
                }
                Intent intent = new Intent(cYFWebViewService, (Class<?>) CYFWebViewBroadCastReceiver.class);
                intent.setAction(CNATAC.a("mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN"));
                if (str != null) {
                    intent.putExtra(CNATAC.a("lHelUW[CynFIVURKZ"), true);
                    intent.putExtra(CNATAC.a("lHelYApSxV[]Y"), str);
                } else {
                    intent.putExtra(CNATAC.a("lHelUW[CynFIVURKZ"), false);
                }
                String strA = CNATAC.a("lHel\\@KEc");
                try {
                    strArr = cYFWebViewService.g;
                } catch (Exception e3) {
                    GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("KWg\\A\u0012HEeE\\RR\u0016uuy\nD^IK]\n\u0001") + e3.getMessage(), new Throwable[0]);
                }
                intent.putExtra(strA, strArr);
                intent.putExtra(CNATAC.a("lHelWAL\u007ft_T^YSS"), cYFWebViewService.g());
                String strA2 = CNATAC.a("lHelAWIRtB]c\\XC][\\J@");
                try {
                    Integer num = cYFWebViewService.f25378h;
                    iValueOf = Integer.valueOf(num != null ? num.intValue() : 0);
                } catch (Exception e4) {
                    GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e4, "KWg\\A\u0012HEeE\\RR\u0016uuy\nYIK\\JCI\u0002JJQCU^Yv!<", new StringBuilder()), new Throwable[0]);
                    iValueOf = 0;
                }
                intent.putExtra(strA2, iValueOf);
                cYFWebViewService.sendBroadcast(intent);
            } catch (Exception e5) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e5, "KWg\\A\u0012\\E\u007fU\\RR\u0016uuy\nXYNMJCR\u0002GEQG\u001d\b", new StringBuilder()), new Throwable[0]);
            }
        }
    }

    public static boolean p(String str) {
        Uri uri;
        String scheme;
        if (str != null) {
            try {
                String strTrim = str.trim();
                if (!strTrim.isEmpty() && (uri = Uri.parse(strTrim)) != null && (scheme = uri.getScheme()) != null && scheme.equalsIgnoreCase(CNATAC.a("fQaC@"))) {
                    return true;
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "LDfV\u0013g}l1GTP\\RVL@EE\fH\\]_S\u0018\u0003", new StringBuilder()), new Throwable[0]);
                return false;
            }
        }
        return false;
    }

    public final void a() {
        AtomicReference atomicReference = this.n;
        try {
            try {
                this.g = null;
                this.f25378h = null;
                this.f25379i = true;
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012LLtPGU[Q\u0017zdz\u000bHLZN\n\u0001", new StringBuilder()), new Throwable[0]);
            }
            try {
                this.f25376e = null;
                this.d = null;
            } catch (Exception e3) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("KWg\\A\u0012LLtPGU[Q\u0017{yx\u000bHLZN\n\u0001") + e3.getMessage(), new Throwable[0]);
            }
            USrWvK uSrWvK = (USrWvK) atomicReference.getAndSet(null);
            if (uSrWvK == null || uSrWvK.n.get()) {
                return;
            }
            uSrWvK.i();
        } catch (Exception e4) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e4, "KWg\\A\u0012LLtP[U[Q\u0017MY\n|IOxFUV\u0002NAHIUQ\u0002:", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e4);
            atomicReference.set(null);
        }
    }

    public final void b() {
        int i2;
        if (this.f25380j.get()) {
            if (w <= 3203) {
                while (true) {
                    int i3 = w;
                    int i4 = i3 + 26;
                    if (i4 == 89) {
                        while (true) {
                            w = (w % 65) ^ 1714;
                        }
                    } else if (i4 == 215) {
                        w = (i3 + i3 + i3) * 101;
                        if ((v ^ 2094) != 0) {
                            while (true) {
                                int i5 = v;
                                int i6 = i5 + 39;
                                if (i6 == 33) {
                                    i2 = ((i5 >> 108) % 22) * 123;
                                    break;
                                }
                                if (i6 == 84) {
                                    v = (i5 + i5) * 113;
                                } else if (i6 != 236) {
                                }
                                i2 = (v >> 41) % 24;
                                break;
                            }
                            v = i2;
                        }
                    } else if (i4 == 397) {
                        w = ((i3 % 103) + i3) % 32;
                        break;
                    }
                }
            }
            if (this.f25381k.get()) {
                j();
            }
        }
    }

    public final boolean c() {
        String str;
        int i2;
        int i3;
        int i4;
        String str2 = this.f25375c;
        if (str2 == null || str2.trim().isEmpty() || (str = this.d) == null || str.trim().isEmpty()) {
            return false;
        }
        if ((w ^ 3204) == 0) {
            return true;
        }
        if ((v ^ 2094) != 0) {
            while (true) {
                int i5 = v;
                int i6 = i5 + 39;
                if (i6 != 87) {
                    if (i6 == 266) {
                        break;
                    }
                    if (i6 == 297) {
                        v = ((i5 + i5) * 19) >> 64;
                    }
                }
                v = ((v % 90) + i5) * 19;
                break;
            }
            v ^= 6686;
        }
        do {
            i2 = w;
            i3 = i2 + 26;
            if (i3 == 44) {
                while (true) {
                    w = (w >> 15) * 2688;
                    if ((v ^ 2094) != 0) {
                        while (true) {
                            i4 = v;
                            int i7 = i4 + 52;
                            if (i7 != 45) {
                                if (i7 == 218) {
                                    v = (i4 ^ 2240) + i4;
                                } else {
                                    if (i7 == 254) {
                                        break;
                                    }
                                    if (i7 == 312) {
                                        v = ((v ^ 3927) % 1) ^ 4774;
                                    }
                                }
                            }
                            v = (v % 126) * 20;
                            v = ((v ^ 3927) % 1) ^ 4774;
                        }
                        v = ((i4 ^ 3575) >> 77) ^ 3965;
                    }
                }
            }
        } while (i3 != 160);
        while (true) {
            w = ((w + i2) >> 8) + i2;
        }
    }

    public final String d() {
        try {
            String str = this.f25376e;
            if (str != null && !str.isEmpty()) {
                return this.f25376e;
            }
            return null;
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012HEeE\\RR\u0016th{\na\u007f\r]FWOCO\u001e\u0005", new StringBuilder()), new Throwable[0]);
            return null;
        }
    }

    public final boolean e() {
        try {
            if (this.s.get()) {
                GpYFMu.g(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("]@aFC\u0012]E`DPOASS\u0018HL_I_\u000e\\DNR\u0018\u0004DDHZLsu{"), new Throwable[0]);
                return false;
            }
            Context applicationContext = getApplicationContext();
            if (applicationContext == null) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("OUe_ZQNTx^[\u001cVYYLLR_\fD]\u000f^TNO"), new Throwable[0]);
                return false;
            }
            this.n.set(new USrWvK(applicationContext, this.f25374b, this.f25377f, this.f25375c, this.d, this.l, new USrWvK.DRxlEm() { // from class: com.cyberfend.cyfsecurity.CYFWebViewService.2

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public static String f25382b = CNATAC.a("oCaVA\u0012la]}w}v}h}qin|yg`~");

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static String f25383c = CNATAC.a("oCaVA\u0012lo\\ayyas");
                public static String d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public static String f25384e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public static String f25385f;
                public static String g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public static String f25386h;

                static {
                    CNATAC.a("@Py_\u0013@JSd]A\u001cSDXU\tX^BCK]");
                    d = CNATAC.a("oCaVA\u0012jrC~g");
                    f25384e = CNATAC.a("oCaVA\u0012{i\\tzia");
                    f25385f = CNATAC.a("M|SdVPyItFfYG@^[L");
                    g = CNATAC.a("\\@fF_F\u000fIv_ZNPR\f\u0018ZOYZDMJ\u0010RVLTUCC\b]{ipd");
                    f25386h = CNATAC.a("\\P{]V@\u000fCp]Y^TU\\\u0018LRHI]ZF_O\u0018\u0003");
                }

                @Override // ZjTIAZ.USrWvK.DRxlEm
                public final void a(USrWvK.ELXMqL eLXMqL) {
                    String str;
                    USrWvK.ELXMqL.etZCba etzcba;
                    CYFWebViewService cYFWebViewService = CYFWebViewService.this;
                    AtomicBoolean atomicBoolean = cYFWebViewService.f25381k;
                    AtomicBoolean atomicBoolean2 = cYFWebViewService.f25380j;
                    try {
                        if (cYFWebViewService.s.get()) {
                            GpYFMu.c(f25385f, g, new Throwable[0]);
                            return;
                        }
                        USrWvK.ELXMqL.etZCba etzcba2 = eLXMqL.f264b;
                        String str2 = eLXMqL.f265c;
                        int i2 = AnonymousClass3.f25389b[eLXMqL.f263a.ordinal()];
                        if (i2 == 1) {
                            int i3 = AnonymousClass3.f25388a[etzcba2.ordinal()];
                            if (i3 != 1) {
                                if (i3 == 2 && atomicBoolean.compareAndSet(false, true) && CYFWebViewService.n(cYFWebViewService, str2)) {
                                    cYFWebViewService.u = true;
                                    cYFWebViewService.f25376e = str2;
                                    cYFWebViewService.d = eLXMqL.d;
                                    CYFWebViewService.l(cYFWebViewService);
                                }
                            } else if (atomicBoolean2.compareAndSet(false, true) && CYFWebViewService.n(cYFWebViewService, str2)) {
                                cYFWebViewService.t = true;
                                cYFWebViewService.f25377f = str2;
                                cYFWebViewService.g = eLXMqL.f266e;
                                cYFWebViewService.f25378h = eLXMqL.f267f;
                                cYFWebViewService.f25379i = Boolean.TRUE.equals(eLXMqL.g);
                                CYFWebViewService.o(cYFWebViewService);
                            }
                            str = f25383c;
                        } else if (i2 == 2) {
                            int i4 = AnonymousClass3.f25388a[etzcba2.ordinal()];
                            if (i4 != 1) {
                                if (i4 == 2 && atomicBoolean.compareAndSet(false, true) && CYFWebViewService.n(cYFWebViewService, str2)) {
                                    cYFWebViewService.u = true;
                                    etzcba = USrWvK.ELXMqL.etZCba.CPR;
                                    CYFWebViewService.m(cYFWebViewService, etzcba);
                                }
                            } else if (atomicBoolean2.compareAndSet(false, true) && CYFWebViewService.n(cYFWebViewService, str2)) {
                                cYFWebViewService.t = true;
                                etzcba = USrWvK.ELXMqL.etZCba.BMP;
                                CYFWebViewService.m(cYFWebViewService, etzcba);
                            }
                            str = d;
                        } else {
                            if (i2 != 3) {
                                return;
                            }
                            USrWvK.ELXMqL.etZCba etzcba3 = USrWvK.ELXMqL.etZCba.BMP;
                            if (etzcba2 != etzcba3) {
                                etzcba3 = USrWvK.ELXMqL.etZCba.CPR;
                                if (etzcba2 == etzcba3 && atomicBoolean.compareAndSet(false, true) && cYFWebViewService.c()) {
                                    CYFWebViewService.m(cYFWebViewService, etzcba3);
                                }
                            } else if (atomicBoolean2.compareAndSet(false, true) && cYFWebViewService.k()) {
                                CYFWebViewService.m(cYFWebViewService, etzcba3);
                            }
                            str = f25384e;
                        }
                        cYFWebViewService.r(str);
                        cYFWebViewService.b();
                    } catch (Exception e2) {
                        GpYFMu.d(f25385f, cj.h(e2, f25386h, new StringBuilder()), new Throwable[0]);
                        GWINqE.b(e2);
                        if (atomicBoolean2.compareAndSet(false, true) && cYFWebViewService.t) {
                            CYFWebViewService.m(cYFWebViewService, USrWvK.ELXMqL.etZCba.BMP);
                        }
                        if (atomicBoolean.compareAndSet(false, true) && cYFWebViewService.u) {
                            CYFWebViewService.m(cYFWebViewService, USrWvK.ELXMqL.etZCba.CPR);
                        }
                        cYFWebViewService.r(f25382b);
                        cYFWebViewService.b();
                    }
                }
            }));
            try {
                if (!k()) {
                    this.f25380j.compareAndSet(false, true);
                }
                if (!c()) {
                    this.f25381k.compareAndSet(false, true);
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "cDgX}][c~_SURCE]MzGMYH@BLQ\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
            }
            r(CNATAC.a("oCaVA\u0012\\EeDEkPTaQL]\u000b\u0004]A\\D\u0001OBVNhH\\{uuztyjRUv:"));
            b();
            return true;
        } catch (Exception e3) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e3, "KWg\\A\u0012\\EeE\\RR\u0016BH\t}NN{GJG\u001b\u0002", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e3);
            return false;
        }
    }

    public final void f() {
        try {
            USrWvK uSrWvK = (USrWvK) this.n.get();
            if (uSrWvK == null) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("Y@weZWX\u0000cD[RPD\u0017QZ\nEYAB"), new Throwable[0]);
                q(CNATAC.a("gK|GlTNI}TQ"));
                return;
            }
            if (k()) {
                q(CNATAC.a("lHelYApSePGHPR"));
            }
            if (c()) {
                q(CNATAC.a("mUglYApSePGHPR"));
            }
            uSrWvK.m();
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012COpU\\RR\u0016bje\u0010\u000b", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    public final boolean g() {
        try {
            return this.f25379i;
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012LHtR^U[Q\u0017QO\nia}\u000ekcb\u0002JW\u0005CIIZv~x'>", new StringBuilder()), new Throwable[0]);
            return true;
        }
    }

    public final void h() {
        q(CNATAC.a("gK|GlTNI}TQ"));
        j();
    }

    public final void j() {
        if (this.s.compareAndSet(false, true)) {
            a();
            try {
                stopSelf();
                GpYFMu.c(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("]@gEZQJ\u0000bEZLESS\u0018\u0001XNM^AA\rBMNTICSAWt2"), new Throwable[0]);
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "}QzC`WCF1TGNZD\r\u0018", new StringBuilder()), new Throwable[0]);
            }
        }
    }

    public final boolean k() {
        String str;
        int i2;
        int i3;
        int i4;
        String str2 = this.f25374b;
        if (str2 == null || str2.trim().isEmpty() || (str = this.f25377f) == null) {
            return false;
        }
        String strTrim = str.trim();
        if (v <= 2093) {
            while (true) {
                int i5 = v;
                int i6 = i5 + 26;
                if (i6 == 5) {
                    v = (i5 % 18) >> 88;
                } else {
                    if (i6 == 178) {
                        i4 = (i5 * 64) ^ 4119;
                        break;
                    }
                    if (i6 == 372) {
                        v = ((i5 + i5) ^ 3490) + i5;
                    } else if (i6 != 446) {
                    }
                }
                i4 = (v * 99) % 8;
                break;
            }
            v = i4;
        }
        if (strTrim.isEmpty()) {
            return false;
        }
        if (w <= 3203) {
            do {
                int i7 = w;
                i2 = i7 + 26;
                if (i2 == 8) {
                    w = ((i7 + i7) >> 52) + i7;
                } else if (i2 == 140) {
                    while (true) {
                        w = ((w % 67) % 101) >> 62;
                    }
                } else if (i2 == 234) {
                    w = (i7 >> 120) + i7 + i7;
                    break;
                }
            } while (i2 != 272);
            do {
                w = (w % 88) >> 8;
            } while (v > 2093);
            while (true) {
                i3 = v;
                int i8 = i3 + 91;
                if (i8 == 36) {
                    v = ((i3 + i3) >> 121) * 122;
                } else if (i8 == 134) {
                    break;
                }
            }
            while (true) {
                v = ((v + i3) ^ 1809) + i3;
            }
        }
        return true;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        x.set(true);
        try {
            q(CNATAC.a("gK|GlAZCrTFO"));
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "HD|_VV\u000fT~\u0011[SA_QA\tnxo`OAQFGQ\u0004J@\u0007[]hmu~{?SDsa`/6", new StringBuilder()), new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        AtomicBoolean atomicBoolean = this.s;
        AtomicBoolean atomicBoolean2 = x;
        try {
            try {
                this.m.removeCallbacksAndMessages(null);
                a();
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("KWg\\A\u0012FN1^[xPECJFS\u0011\f") + e2.getMessage(), new Throwable[0]);
                GWINqE.b(e2);
            }
            atomicBoolean2.set(false);
            atomicBoolean.set(true);
            super.onDestroy();
        } catch (Throwable th) {
            atomicBoolean2.set(false);
            atomicBoolean.set(true);
            throw th;
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i2, int i3) {
        PushAutoTrackHelper.onServiceStartCommand(this, intent, i2, i3);
        try {
            if (intent != null) {
                this.m.post(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewService.1
                    /* JADX INFO: Infinite loop detected, blocks: 3, insns: 0 */
                    @Override // java.lang.Runnable
                    public void run() {
                        CYFWebViewService cYFWebViewService = CYFWebViewService.this;
                        Intent intent2 = intent;
                        int i4 = CYFWebViewService.v;
                        cYFWebViewService.getClass();
                        try {
                            if (cYFWebViewService.s.get()) {
                                GpYFMu.g(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("]@gEZQJ\u0000p]GYTRN\u0018Z^D\\]GAW\u000eQWKUVBL\u0003:r{sqmI^u3zpa7jl{~i~z"), new Throwable[0]);
                                return;
                            }
                            cYFWebViewService.f25374b = intent2.getStringExtra(CNATAC.a("{Wy"));
                            cYFWebViewService.f25375c = intent2.getStringExtra(CNATAC.a("mUgy@g]L"));
                            cYFWebViewService.d = intent2.getStringExtra(CNATAC.a("mUgy@f@Kt_"));
                            cYFWebViewService.f25377f = intent2.getStringExtra(CNATAC.a("lHe`V@YEcb\\XPe^_GKG"));
                            cYFWebViewService.l = intent2.getStringExtra(CNATAC.a("}QtAGfFMt"));
                            if (!CYFWebViewService.p(cYFWebViewService.f25374b)) {
                                GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("LDfV\u0013g}l1X[JTZ^\\\t\u0002EYAB\u0000ULRW]\nRHG\u0018vtrz>pR\u0010||z8~clyy+ec.\u007fbnf*"), new Throwable[0]);
                                cYFWebViewService.h();
                                return;
                            }
                            if (cYFWebViewService.s(cYFWebViewService.f25374b, cYFWebViewService.f25377f, cYFWebViewService.f25375c, cYFWebViewService.d)) {
                                return;
                            }
                            String str = cYFWebViewService.f25374b;
                            String str2 = cYFWebViewService.f25377f;
                            String str3 = cYFWebViewService.f25375c;
                            String str4 = cYFWebViewService.d;
                            cYFWebViewService.o = str;
                            cYFWebViewService.r = str2;
                            if ((CYFWebViewService.v ^ 2094) != 0) {
                                while (true) {
                                    int i5 = CYFWebViewService.v;
                                    int i6 = i5 + 13;
                                    if (i6 == 96) {
                                        CYFWebViewService.v = (i5 % 26) >> 90;
                                        break;
                                    } else if (i6 == 150) {
                                        while (true) {
                                            CYFWebViewService.v = (CYFWebViewService.v % 43) >> 124;
                                        }
                                    }
                                }
                            }
                            cYFWebViewService.p = str3;
                            cYFWebViewService.q = str4;
                            if (cYFWebViewService.e()) {
                                cYFWebViewService.f();
                            } else {
                                cYFWebViewService.h();
                            }
                        } catch (Exception e2) {
                            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012_R~RPOF_Y_\tYN^[GLU\u0001PFUPCT\\\u0002:", new StringBuilder()), new Throwable[0]);
                            GWINqE.b(e2);
                            cYFWebViewService.h();
                        }
                    }
                });
                return 2;
            }
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("GKaV]F\u000fIb\u0011[IYZ\u0017QG\nDB~ZNBUaLIHGIL"), new Throwable[0]);
            h();
            return 2;
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), d21.h(e2, "KWg\\A\u0012FN1^[oAWELjEFAL@K\n\u0001", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            h();
            return 2;
        }
    }

    public final void q(String str) {
        try {
            Intent intent = new Intent(this, (Class<?>) CYFWebViewBroadCastReceiver.class);
            intent.setAction(CNATAC.a("mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN"));
            intent.putExtra(str, true);
            sendBroadcast(intent);
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|SdVPyItFfYG@^[L"), CNATAC.a("KWg\\A\u0012\\E\u007fU\\RR\u0016UJFKOOL][\u0010GMQ\u0004") + str + CNATAC.a("4\u0005") + e2.getMessage(), new Throwable[0]);
        }
    }

    public final void r(String str) {
        String strA = CNATAC.a("M|SdVPyItFfYG@^[L");
        StringBuilder sbT = n00.t(str);
        sbT.append(CNATAC.a(".VaRGW\u0015\u0000s\\E\u007fZ[GTL^N\u0011"));
        sbT.append(this.f25380j.get());
        sbT.append(CNATAC.a("\"\u0005vCAq@Ma]PHP\u000b"));
        sbT.append(this.f25381k.get());
        sbT.append(CNATAC.a("\"\u0005w^CsYAx]T^YS\n"));
        sbT.append(this.t);
        sbT.append(CNATAC.a("\"\u0005vCAsYAx]T^YS\n"));
        sbT.append(this.u);
        sbT.append(CNATAC.a("\"\u0005fG\\B_Eu\f"));
        sbT.append(this.s.get());
        GpYFMu.c(strA, sbT.toString(), new Throwable[0]);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0079 A[SYNTHETIC] */
    public final boolean s(String str, String str2, String str3, String str4) {
        int i2;
        if (!i(this.o, str) || !i(this.r, str2) || !i(this.p, str3) || !i(this.q, str4)) {
            return false;
        }
        if (w > 3203) {
            return true;
        }
        while (true) {
            int i3 = w;
            int i4 = i3 + 26;
            if (i4 != 50) {
                if (i4 != 78) {
                    if (i4 == 116) {
                        do {
                            w = (w + i3) >> 41;
                        } while ((v ^ 2094) == 0);
                        while (v + 78 != 62) {
                        }
                        while (true) {
                            v = (v ^ 4738) >> 11;
                        }
                    } else if (i4 != 291) {
                    }
                }
                do {
                    w ^= 3268;
                } while ((v ^ 2094) == 0);
                while (true) {
                    i2 = v;
                    if (i2 + 91 != 76) {
                        v = ((i2 >> 54) ^ 3881) >> 77;
                    }
                }
            } else {
                w = (i3 ^ 7525) % 84;
            }
            w = (w >> 16) + i3;
            if ((v ^ 2094) == 0) {
                do {
                    w ^= 3268;
                } while ((v ^ 2094) == 0);
            }
            while (true) {
                i2 = v;
                if (i2 + 91 != 76) {
                    v = ((i2 >> 54) ^ 3881) >> 77;
                }
            }
        }
    }
}

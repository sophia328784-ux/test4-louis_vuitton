package com.cyberfend.cyfsecurity;

import IYP.QCW.Rrd.SSZ;
import JeZnOD.AbwThP;
import KdM.Tgg.JAF;
import OjK.OIu;
import SEK.IfH.NGV;
import TES.Gmz;
import ZjTIAZ.ASYMBN;
import ZjTIAZ.AagQCC;
import ZjTIAZ.AcVtYN;
import ZjTIAZ.CNATAC;
import ZjTIAZ.CbGKec;
import ZjTIAZ.DQwsTh;
import ZjTIAZ.DUcPEg;
import ZjTIAZ.DbkYmF;
import ZjTIAZ.DeHqqG;
import ZjTIAZ.ECIjpk;
import ZjTIAZ.GWINqE;
import ZjTIAZ.Gvcplk;
import ZjTIAZ.JMlAJG;
import ZjTIAZ.KgGan;
import ZjTIAZ.QQixUL;
import ZjTIAZ.QYXNEc;
import ZjTIAZ.QveSIH;
import ZjTIAZ.RXtEM;
import ZjTIAZ.UfEmur;
import ZjTIAZ.WmAQuO;
import ZjTIAZ.WpDaqA;
import ZjTIAZ.XNPXeV;
import ZjTIAZ.XbALEN;
import ZjTIAZ.ZptgnD;
import ZjTIAZ.ZxDSl;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.EditText;
import com.linkplay.medialib.ContentTree;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.cj;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.asn1.cmc.BodyPartID;
import wcQZwr.GpYFMu;
import wcQZwr.MrfBl;

/* JADX INFO: loaded from: classes2.dex */
public class CYFManager implements KgGan {
    public static int u = 2766;
    public static int v = 6132;
    public Handler l;
    public volatile int n;
    public volatile int o;
    public volatile int p;
    public static final MrfBl w = new MrfBl(new Pair("", ""), 0L, 0L);
    public static final ArrayList x = new ArrayList();
    public static boolean y = false;
    public static boolean z = false;
    public static boolean A = false;
    public static boolean B = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WmAQuO f25336a = new WmAQuO();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CbGKec f25337b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ECIjpk f25338c = null;
    public Gvcplk d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public QYXNEc f25339e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public QQixUL f25340f = null;
    public WpDaqA g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public UfEmur f25341h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ZptgnD f25342i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DUcPEg f25343j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicBoolean f25344k = new AtomicBoolean(false);
    public String m = null;
    public int q = -1;
    public Date r = null;
    public boolean s = false;
    public final ExecutorService t = Executors.newSingleThreadExecutor();

    public CYFManager() {
        this.l = null;
        try {
            this.l = new Handler(Looper.getMainLooper());
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("BLfGV\\JR1YTRQZRJ\tCEEY\u000eIQHNVV@"), e2);
        }
    }

    public static long d(int i2, int i3, int i4) {
        int i5;
        long j2 = ((long) i2) << 32;
        if (u <= 2765) {
            do {
                i5 = u;
            } while (i5 + 13 != 94);
            u = ((i5 % 7) ^ 2120) >> 108;
        }
        long j3 = i3;
        if (v > 6131) {
            long j4 = j2 | (j3 & BodyPartID.bodyIdMax);
            int i6 = AbwThP.f23a;
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i7 = (int) j4;
            int i8 = (int) (j4 >> 32);
            int i9 = 0;
            while (i9 < 16) {
                int i10 = i4 << i9;
                if ((AbwThP.f23a ^ 5470) != 0) {
                    while (true) {
                        int i11 = AbwThP.f23a;
                        int i12 = i11 + 13;
                        if (i12 == 23) {
                            AbwThP.f23a = (i11 >> 8) * 35;
                            break;
                        }
                        if (i12 == 116) {
                            while (true) {
                                AbwThP.f23a = ((AbwThP.f23a >> 112) + i11) * 125;
                            }
                        }
                    }
                }
                int i13 = i8 ^ ((i10 | (i4 >>> (32 - i9))) ^ i7);
                i9++;
                i8 = i7;
                i7 = i13;
            }
            long j5 = (((long) i7) & BodyPartID.bodyIdMax) | (((long) i8) << 32);
            long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
            GpYFMu.e(AbwThP.d, AbwThP.f24b + jUptimeMillis2 + AbwThP.f25c, new Throwable[0]);
            return j5;
        }
        while (true) {
            int i14 = v;
            if (i14 + 13 == 93) {
                v = (i14 * 96) ^ 4671;
            }
        }
    }

    public static synchronized boolean p(Window window) {
        int iHashCode = window.hashCode();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = x;
            if (i2 >= arrayList.size()) {
                arrayList.add(Integer.valueOf(iHashCode));
                return false;
            }
            if (iHashCode == ((Integer) arrayList.get(i2)).intValue()) {
                return true;
            }
            i2++;
        }
    }

    public final synchronized void A() {
        try {
            Gvcplk gvcplk = this.d;
            if (gvcplk == null) {
            } else {
                gvcplk.h();
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015ECWYZBBJ\u000eB_UKLJ\u0005KFFY}~n"), e2);
            GWINqE.b(e2);
        }
    }

    public final synchronized void B() {
        try {
            QYXNEc qYXNEc = this.f25339e;
            if (qYXNEc == null) {
            } else {
                qYXNEc.g();
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015ECWYZBBJ\u000e@BHGMPDRNGV:v}s\u007fxEB"), e2);
            GWINqE.b(e2);
        }
    }

    public final synchronized void C() {
        try {
            Gvcplk gvcplk = this.d;
            if (gvcplk != null && this.f25339e != null) {
                if (gvcplk.d.size() >= 16 || this.f25339e.d.size() >= 16) {
                    this.t.execute(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFManager.5
                        static String CIaZYv;
                        static LjL CMKhzu;
                        static String COIVnP;
                        static String CiHYpX;
                        static String DicDbN;
                        static String DnOKlt;
                        static String EunleT;
                        static String GKzVmr;
                        static OIu GODnES;
                        static String GVIEUx;
                        static String GXjrzf;
                        static String GnkjMh;
                        static String JIHwJR;
                        static String JLksSB;
                        static Gmz JRAQZm;
                        static String JWlUMZ;
                        static String JfGqiW;
                        static JAF JmFvYe;
                        static String JxlrpV;
                        static SSZ PdPTp;
                        static String QDRsTb;
                        static String QQKahi;
                        static String QUhvg;
                        static String QXEcYt;
                        static String QXZtgj;
                        static String XHquVZ;
                        static String XugSgu;

                        /* JADX INFO: Incorrect field signature: Lint; */
                        static String ZAtxPp;
                        static String ZCCade;
                        static String ZlLfvP;

                        /* JADX INFO: Incorrect field signature: Ldouble; */
                        static String aAaBSK;
                        static String aafepb;
                        static String arWelS;
                        static String aurZSv;
                        static String avjaxi;
                        static String eFqTYV;
                        static String eOKLLk;
                        static String ehPJIQ;
                        static String uDaiap;
                        static String uaRiBT;
                        static String wBmPgh;

                        /* JADX INFO: Incorrect field signature: Ldouble; */
                        static String wKMKwu;

                        /* JADX INFO: Incorrect field signature: Lint; */
                        static String wLslUh;
                        static String wagMkt;
                        static String wugVfZ;
                        static String zJVOKL;
                        static String zdEODW;

                        static {
                            ZRw(false);
                        }

                        public static /* synthetic */ void ZRw(boolean z2) {
                            if (z2) {
                                ZRw(false);
                            }
                            JWlUMZ = CNATAC.a("AW|V]FNTx^[\u001cP@RV]Y\u000bX_G_\\DV\u0003MV\u0006I]Tv7<hmvNW2vyebn8okg`ool{");
                            wugVfZ = CNATAC.a("~zp]");
                            wKMKwu = CNATAC.a("#\u0014#\u0005");
                            QXZtgj = CNATAC.a("#\u001c$");
                            ZlLfvP = CNATAC.a("#\u0014$\u0006");
                            DicDbN = CNATAC.a(":\u000b'\u001d\u0003");
                            XugSgu = CNATAC.a("#\u0014#\u0003");
                            XHquVZ = CNATAC.a("zzp]");
                            JLksSB = CNATAC.a("CJaZ\\\\\u000fEgT[HF\u0016CJ@ZGIY\u000eFC\u0001LVHI\n\u0007]Ksu{={rPDk3rtz{zhi`");
                            EunleT = CNATAC.a("#\u001c%");
                            ZCCade = CNATAC.a("jHJF]@");
                            QUhvg = CNATAC.a("#\u0014$\u0004");
                            wLslUh = CNATAC.a("#\u0014!\u0001");
                            QQKahi = CNATAC.a("#\u0014#\u0000");
                            QXEcYt = CNATAC.a("#\u0014!\u0006");
                            arWelS = CNATAC.a("LP|_W[AG1BPRFYE\u0018MK_M\u0017\u000e");
                            ZAtxPp = CNATAC.a("jHJV]");
                            CIaZYv = CNATAC.a("j@sRF^[\u007faTGZZDZYGIN");
                            JRAQZm = CNATAC.a("\"\u0014");
                            wBmPgh = CNATAC.a("#\u0014 \u0003");
                            PdPTp = CNATAC.a("#\u0012%");
                            wagMkt = CNATAC.a("{UqRGW|E\u007fBZNqWCYjKHDH\u000eJBSMQ\u001e\u0005");
                            GVIEUx = CNATAC.a("M|S~R\\NGtC");
                            aAaBSK = CNATAC.a("jJJWZA");
                            QDRsTb = CNATAC.a("#\u0014%\u0001");
                            GKzVmr = CNATAC.a("#\u0014'\u0002");
                            aafepb = CNATAC.a("#\u0014%\u000b");
                            JfGqiW = CNATAC.a("#\u0014#\u0002");
                            JIHwJR = CNATAC.a("#\u0014!\u0000");
                            zJVOKL = CNATAC.a("#\u0014%\u0007");
                            JmFvYe = CNATAC.a("#\u001d%");
                            DnOKlt = CNATAC.a("#\u0014%\u0003");
                            GnkjMh = CNATAC.a("#\u0014#\u0006");
                            JxlrpV = CNATAC.a("#\u0017!\u0003");
                            ehPJIQ = CNATAC.a("hzp]");
                            GXjrzf = CNATAC.a("#\u0014-\u0003");
                            uDaiap = CNATAC.a("jJJV]");
                            CMKhzu = CNATAC.a("#\u0014\"\u0002");
                            uaRiBT = CNATAC.a("#\u0014$\u0001");
                            GODnES = CNATAC.a("#\u0014\"\u0001");
                            eOKLLk = CNATAC.a("#\u0014");
                            CiHYpX = CNATAC.a("jHJWZA");
                            aurZSv = CNATAC.a("#\u0014%\u0000");
                            avjaxi = CNATAC.a("#\u0014%\u0002");
                            zdEODW = CNATAC.a("#\u0014'\u0003");
                            eFqTYV = CNATAC.a("#\u0014!\u0007");
                            COIVnP = CNATAC.a("jJJF]@");
                        }

                        /* JADX WARN: Code duplicated, block: B:133:0x02eb A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:138:0x02f8 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:143:0x0305 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:148:0x0312 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:153:0x031f A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:159:0x032e A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:165:0x03f8  */
                        /* JADX WARN: Code duplicated, block: B:167:0x03fc A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:169:0x0402 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:170:0x0410  */
                        /* JADX WARN: Code duplicated, block: B:174:0x042d A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:179:0x0455 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:184:0x0480  */
                        /* JADX WARN: Code duplicated, block: B:187:0x048b A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:188:0x0494  */
                        /* JADX WARN: Code duplicated, block: B:191:0x05d9  */
                        /* JADX WARN: Code duplicated, block: B:192:0x05da  */
                        /* JADX WARN: Code duplicated, block: B:195:0x0626 A[Catch: Exception -> 0x0050, TryCatch #0 {Exception -> 0x0050, blocks: (B:3:0x000d, B:5:0x0039, B:6:0x003f, B:11:0x004b, B:15:0x004f, B:18:0x0053, B:20:0x0061, B:22:0x007f, B:37:0x00b0, B:39:0x00fd, B:41:0x010b, B:42:0x0117, B:44:0x0134, B:45:0x0138, B:47:0x0143, B:48:0x0147, B:50:0x014b, B:53:0x0156, B:56:0x0164, B:58:0x016a, B:61:0x0174, B:63:0x017a, B:65:0x0180, B:75:0x01a1, B:85:0x01c4, B:87:0x01d8, B:89:0x01f1, B:91:0x020b, B:93:0x021f, B:94:0x0231, B:98:0x0248, B:100:0x024c, B:103:0x0259, B:105:0x0265, B:107:0x0271, B:108:0x027b, B:110:0x0296, B:112:0x029f, B:114:0x02a3, B:117:0x02ae, B:119:0x02b2, B:122:0x02bc, B:124:0x02c2, B:128:0x02cf, B:130:0x02e2, B:132:0x02e6, B:135:0x02ef, B:137:0x02f3, B:140:0x02fc, B:142:0x0300, B:145:0x0309, B:147:0x030d, B:150:0x0316, B:152:0x031a, B:155:0x0323, B:157:0x0327, B:160:0x0331, B:162:0x03e6, B:164:0x03ea, B:167:0x03fc, B:169:0x0402, B:172:0x0414, B:174:0x042d, B:176:0x0439, B:177:0x044d, B:179:0x0455, B:181:0x045f, B:183:0x0479, B:185:0x0481, B:187:0x048b, B:189:0x0496, B:193:0x05db, B:195:0x0626, B:197:0x0630, B:201:0x063e, B:203:0x064c, B:205:0x0658, B:207:0x066f, B:209:0x067b, B:210:0x068f, B:212:0x069d, B:214:0x06a1, B:216:0x06a9, B:218:0x06af, B:219:0x06b8, B:224:0x06d3, B:226:0x06d7, B:228:0x06df, B:230:0x06e7, B:232:0x06fa, B:231:0x06f2, B:220:0x06bb, B:221:0x06c3, B:223:0x06c9, B:159:0x032e, B:153:0x031f, B:148:0x0312, B:143:0x0305, B:138:0x02f8, B:133:0x02eb, B:84:0x01c1, B:74:0x019e, B:67:0x0184, B:69:0x018e, B:70:0x0191, B:72:0x0199, B:9:0x0043, B:10:0x0049, B:77:0x01a5, B:79:0x01af, B:80:0x01b2, B:82:0x01ba), top: B:236:0x000d, inners: #1, #4, #5 }] */
                        /* JADX WARN: Code duplicated, block: B:198:0x0639  */
                        /* JADX WARN: Code duplicated, block: B:200:0x063c A[ADDED_TO_REGION] */
                        /* JADX WARN: Code duplicated, block: B:254:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
                        @Override // java.lang.Runnable
                        public void run() {
                            String str;
                            String str2;
                            String strB;
                            String strH;
                            String strG;
                            boolean z2;
                            boolean z3;
                            String str3;
                            String strValueOf;
                            String strValueOf2;
                            String strValueOf3;
                            String strValueOf4;
                            String strValueOf5;
                            String strValueOf6;
                            MrfBl mrfBl;
                            String str4;
                            String str5;
                            MrfBl mrfBl2;
                            String str6;
                            String str7;
                            ArrayList arrayList;
                            String str8;
                            String str9;
                            String str10;
                            Object[] objArr;
                            Object obj;
                            Object obj2;
                            Object obj3;
                            Object obj4;
                            Object obj5;
                            Object obj6;
                            Object obj7;
                            Object obj8;
                            Object obj9;
                            try {
                                GpYFMu.e(GVIEUx, arWelS + Thread.currentThread(), new Throwable[0]);
                                long jUptimeMillis = SystemClock.uptimeMillis();
                                if (XbALEN.a().equals(CIaZYv)) {
                                    String strA = AagQCC.a();
                                    synchronized (XbALEN.class) {
                                        if (strA == null) {
                                            strA = CNATAC.a("j@sRF^[\u007faTGZZDZYGIN");
                                        }
                                        XbALEN.f315b = strA;
                                    }
                                }
                                String str11 = eOKLLk;
                                int i2 = CYFMonitor.f25345a;
                                if (CYFManager.this.f25343j != null) {
                                    str2 = CYFManager.this.f25343j.f146b;
                                    strB = CYFManager.this.f25343j.b();
                                    str = CYFManager.this.f25343j.o;
                                } else {
                                    str = "";
                                    str2 = str11;
                                    strB = str2;
                                }
                                UfEmur ufEmur = CYFManager.this.f25341h;
                                if (ufEmur != null) {
                                    try {
                                        strH = ufEmur.h() != null ? CYFManager.this.f25341h.h() : "";
                                    } catch (Exception unused) {
                                        strH = str11;
                                    }
                                    try {
                                        strG = CYFManager.this.f25341h.g() != null ? CYFManager.this.f25341h.g() : "";
                                    } catch (Exception unused2) {
                                        strG = str11;
                                    }
                                } else {
                                    strH = str11;
                                    strG = strH;
                                }
                                String str12 = str2 + "," + DeHqqG.e(str2) + "," + String.valueOf(new Random().nextInt()) + "," + String.valueOf(ZxDSl.f343a / 2);
                                MrfBl mrfBlD = CYFManager.this.f25339e.d();
                                MrfBl mrfBlD2 = CYFManager.this.d.d();
                                if (mrfBlD == null) {
                                    GpYFMu.g(GVIEUx, JWlUMZ, new Throwable[0]);
                                    mrfBlD = CYFManager.w;
                                }
                                if (mrfBlD2 == null) {
                                    GpYFMu.g(GVIEUx, JLksSB, new Throwable[0]);
                                    mrfBlD2 = CYFManager.w;
                                }
                                String strC = CYFManager.this.f25339e.c();
                                String strC2 = CYFManager.this.d.c();
                                Pair pair = new Pair("", 0L);
                                QQixUL qQixUL = CYFManager.this.f25340f;
                                if (qQixUL != null) {
                                    pair = qQixUL.b();
                                }
                                Pair pair2 = new Pair("", 0L);
                                CbGKec cbGKec = CYFManager.this.f25337b;
                                if (cbGKec != null) {
                                    pair2 = cbGKec.b();
                                }
                                String str13 = eOKLLk;
                                if (pair2 != null) {
                                    str13 = (String) pair2.first;
                                }
                                String str14 = pair != null ? (String) pair.first : str13;
                                String str15 = strG;
                                ECIjpk eCIjpk = CYFManager.this.f25338c;
                                String strA2 = eCIjpk != null ? eCIjpk.a() : str13;
                                String str16 = strH;
                                WpDaqA wpDaqA = CYFManager.this.g;
                                String strA3 = wpDaqA != null ? wpDaqA.a() : "";
                                String str17 = uDaiap;
                                String str18 = strB;
                                try {
                                    if (CYFManager.this.f25339e.e()) {
                                        str17 = COIVnP;
                                    } else if (!CYFManager.this.f25339e.f224b) {
                                        str17 = aAaBSK;
                                    }
                                } catch (Exception unused3) {
                                    str17 = COIVnP;
                                }
                                String str19 = str17;
                                String str20 = ZAtxPp;
                                try {
                                    if (CYFManager.this.d.e()) {
                                        str20 = ZCCade;
                                    } else if (!CYFManager.this.d.f195b) {
                                        str20 = CiHYpX;
                                    }
                                } catch (Exception unused4) {
                                    str20 = ZCCade;
                                }
                                String str21 = str20;
                                String str22 = XHquVZ;
                                String str23 = str14;
                                String str24 = ehPJIQ;
                                String str25 = str13;
                                String str26 = wugVfZ;
                                String str27 = str;
                                if (CYFManager.this.f25343j != null) {
                                    z2 = CYFManager.this.f25343j.l;
                                    z3 = CYFManager.this.f25343j.m;
                                } else {
                                    z2 = false;
                                    z3 = false;
                                }
                                String str28 = str19 + "," + str21 + "," + str22;
                                if (z2) {
                                    str28 = str28 + "," + str24;
                                }
                                if (z3) {
                                    str28 = str28 + "," + str26;
                                }
                                long jUptimeMillis2 = (SystemClock.uptimeMillis() - jUptimeMillis) * 1000;
                                int i3 = Looper.myLooper() != Looper.getMainLooper() ? 1 : 0;
                                boolean z4 = DbkYmF.f155e;
                                long jLongValue = pair2 != null ? ((Long) pair2.second).longValue() : 0L;
                                if (pair != null) {
                                    jLongValue += ((Long) pair.second).longValue();
                                }
                                if (mrfBlD != null) {
                                    jLongValue += ((Long) mrfBlD.f80836b).longValue();
                                }
                                if (mrfBlD2 != null) {
                                    jLongValue += ((Long) mrfBlD2.f80836b).longValue();
                                }
                                String str29 = strA3;
                                String str30 = strA2;
                                long j2 = jLongValue;
                                long jCurrentTimeMillis = System.currentTimeMillis() - ZxDSl.f343a;
                                CYFManager cYFManager = CYFManager.this;
                                String str31 = str28;
                                CbGKec cbGKec2 = cYFManager.f25337b;
                                long j3 = cbGKec2 != null ? cbGKec2.f123h : 0L;
                                QQixUL qQixUL2 = cYFManager.f25340f;
                                long j4 = qQixUL2 != null ? qQixUL2.d : 0L;
                                int iIntValue = (mrfBlD == null || (obj9 = mrfBlD.f80837c) == null) ? 0 : ((Long) obj9).intValue();
                                if (mrfBlD2 != null) {
                                    str3 = str12;
                                    Object obj10 = mrfBlD2.f80837c;
                                    int iIntValue2 = obj10 != null ? ((Long) obj10).intValue() : 0;
                                    long j5 = j4;
                                    long j6 = j3;
                                    long jD = CYFManager.d((int) j2, (int) (j3 + j5 + ((long) iIntValue) + ((long) iIntValue2)), (int) jCurrentTimeMillis);
                                    if (pair2 != null || (obj8 = pair2.second) == null) {
                                        strValueOf = eOKLLk;
                                    } else {
                                        strValueOf = String.valueOf(obj8);
                                    }
                                    if (pair != null || (obj7 = pair.second) == null) {
                                        strValueOf2 = eOKLLk;
                                    } else {
                                        strValueOf2 = String.valueOf(obj7);
                                    }
                                    if (mrfBlD != null || (obj6 = mrfBlD.f80836b) == null) {
                                        strValueOf3 = eOKLLk;
                                    } else {
                                        strValueOf3 = String.valueOf(obj6);
                                    }
                                    if (mrfBlD2 != null || (obj5 = mrfBlD2.f80836b) == null) {
                                        strValueOf4 = eOKLLk;
                                    } else {
                                        strValueOf4 = String.valueOf(obj5);
                                    }
                                    if (mrfBlD != null || (obj4 = mrfBlD.f80837c) == null) {
                                        strValueOf5 = eOKLLk;
                                    } else {
                                        strValueOf5 = String.valueOf(obj4);
                                    }
                                    if (mrfBlD2 != null || (obj3 = mrfBlD2.f80837c) == null) {
                                        strValueOf6 = eOKLLk;
                                    } else {
                                        strValueOf6 = String.valueOf(obj3);
                                    }
                                    mrfBl = mrfBlD2;
                                    String str32 = (strValueOf + "," + strValueOf2 + "," + strValueOf3 + "," + strValueOf4 + "," + j2 + "," + jCurrentTimeMillis + "," + j6 + "," + j5 + "," + strValueOf5 + "," + strValueOf6 + "," + (ZxDSl.f346e * 1000) + "," + jUptimeMillis2 + "," + ZxDSl.f347f + "," + jD + "," + ZxDSl.f343a + "," + CYFManager.this.n + "," + CYFManager.this.o + "," + CYFManager.this.p) + ((String) JRAQZm);
                                    String str33 = i3 + "," + (z4 ? 1 : 0);
                                    if (mrfBlD != null || (obj2 = mrfBlD.f80835a) == null) {
                                        str4 = null;
                                        str5 = null;
                                    } else {
                                        str5 = (String) ((Pair) obj2).first;
                                        str4 = (String) ((Pair) obj2).second;
                                    }
                                    if (mrfBl != null) {
                                        mrfBl2 = mrfBl;
                                        obj = mrfBl2.f80835a;
                                        if (obj != null) {
                                            str7 = (String) ((Pair) obj).first;
                                            str6 = (String) ((Pair) obj).second;
                                        }
                                        arrayList = new ArrayList();
                                        arrayList.add(new Pair("", DicDbN));
                                        if (CYFManager.this.f25342i != null && CYFManager.this.f25342i.s() != null) {
                                            arrayList.add(new Pair(EunleT, CYFManager.this.f25342i.s()));
                                        }
                                        if (CYFManager.this.f25342i != null || CYFManager.this.f25342i.d == null) {
                                            str8 = "";
                                        } else {
                                            str8 = CYFManager.this.f25342i.d;
                                            if (!DeHqqG.c(str8).equals(RXtEM.i().j())) {
                                                CYFManager.this.n = 12;
                                            }
                                        }
                                        if (CYFManager.this.f25343j.n != null) {
                                            str9 = CYFManager.this.f25343j.n;
                                        } else {
                                            str9 = str11;
                                        }
                                        String strH2 = CYFManager.this.h();
                                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                                        String str34 = str8;
                                        linkedHashMap.put(PdPTp, new Pair(PdPTp, ""));
                                        linkedHashMap.put(JmFvYe, new Pair(JmFvYe, ""));
                                        linkedHashMap.put(GKzVmr, new Pair(GKzVmr, ""));
                                        linkedHashMap.put(DnOKlt, new Pair(DnOKlt, str3));
                                        linkedHashMap.put(avjaxi, new Pair(avjaxi, str31));
                                        linkedHashMap.put(QDRsTb, new Pair(QDRsTb, str30));
                                        linkedHashMap.put(aurZSv, new Pair(aurZSv, str29));
                                        linkedHashMap.put(zJVOKL, new Pair(zJVOKL, str27));
                                        linkedHashMap.put(aafepb, new Pair(aafepb, str25));
                                        linkedHashMap.put(uaRiBT, new Pair(uaRiBT, XbALEN.a()));
                                        linkedHashMap.put(QUhvg, new Pair(QUhvg, str23));
                                        linkedHashMap.put(zdEODW, new Pair(zdEODW, XbALEN.b()));
                                        linkedHashMap.put(eFqTYV, new Pair(eFqTYV, str4));
                                        linkedHashMap.put(XugSgu, new Pair(XugSgu, strC));
                                        linkedHashMap.put(wLslUh, new Pair(wLslUh, str5));
                                        linkedHashMap.put(QXEcYt, new Pair(QXEcYt, str6));
                                        linkedHashMap.put(JfGqiW, new Pair(JfGqiW, strC2));
                                        linkedHashMap.put(JIHwJR, new Pair(JIHwJR, str7));
                                        linkedHashMap.put(wBmPgh, new Pair(wBmPgh, str33));
                                        linkedHashMap.put(QQKahi, new Pair(QQKahi, str18));
                                        linkedHashMap.put(GnkjMh, new Pair(GnkjMh, str16));
                                        linkedHashMap.put(wKMKwu, new Pair(wKMKwu, str15));
                                        LjL ljL = CMKhzu;
                                        LjL ljL2 = CMKhzu;
                                        str10 = CYFManager.this.m;
                                        if (str10 != null) {
                                            str10 = "";
                                        }
                                        linkedHashMap.put(ljL, new Pair(ljL2, str10));
                                        linkedHashMap.put(JxlrpV, new Pair(JxlrpV, ContentTree.ROOT_ID));
                                        linkedHashMap.put(GODnES, new Pair(GODnES, XNPXeV.f307j.c()));
                                        linkedHashMap.put(GXjrzf, new Pair(GXjrzf, str9));
                                        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
                                        linkedHashMap2.put(ZlLfvP, new Pair(ZlLfvP, str32));
                                        if (CYFManager.this.f25342i != null || CYFManager.this.f25342i.l == null) {
                                            objArr = null;
                                        } else {
                                            objArr = CYFManager.this.f25342i.l;
                                        }
                                        if (mrfBlD != null || mrfBl2 == null) {
                                        }
                                        if (((Long) mrfBlD.f80837c).longValue() >= 16 || ((Long) mrfBl2.f80837c).longValue() >= 16) {
                                            ArrayList<Pair<String, String>> arrayList2 = new ArrayList<>();
                                            arrayList2.add(new Pair<>("", DicDbN));
                                            if (CYFManager.this.f25342i != null && CYFManager.this.f25342i.s() != null) {
                                                arrayList2.add(new Pair<>(EunleT, CYFManager.this.f25342i.s()));
                                            }
                                            arrayList2.add(new Pair<>(QXZtgj, strH2));
                                            if (objArr != null) {
                                                for (Object obj11 : objArr) {
                                                    if (linkedHashMap2.containsKey(obj11) && linkedHashMap2.get(obj11) != null) {
                                                        arrayList2.add((Pair) linkedHashMap2.get(obj11));
                                                    }
                                                }
                                            } else {
                                                Iterator it = linkedHashMap2.values().iterator();
                                                while (it.hasNext()) {
                                                    arrayList2.add((Pair) it.next());
                                                }
                                            }
                                            RXtEM.i().l(!SensorDataBuilder.f25399b ? SensorDataBuilder.f25398a.buildN(arrayList2) : null, str34, CYFManager.this.f25342i != null ? CYFManager.this.f25342i.u() : RXtEM.i().g(), strH2);
                                            return;
                                        }
                                        return;
                                    }
                                    mrfBl2 = mrfBl;
                                    str6 = null;
                                    str7 = null;
                                    arrayList = new ArrayList();
                                    arrayList.add(new Pair("", DicDbN));
                                    if (CYFManager.this.f25342i != null) {
                                        arrayList.add(new Pair(EunleT, CYFManager.this.f25342i.s()));
                                    }
                                    if (CYFManager.this.f25342i != null) {
                                        str8 = "";
                                    } else {
                                        str8 = "";
                                    }
                                    if (CYFManager.this.f25343j.n != null) {
                                        str9 = CYFManager.this.f25343j.n;
                                    } else {
                                        str9 = str11;
                                    }
                                    String strH3 = CYFManager.this.h();
                                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                    String str35 = str8;
                                    linkedHashMap3.put(PdPTp, new Pair(PdPTp, ""));
                                    linkedHashMap3.put(JmFvYe, new Pair(JmFvYe, ""));
                                    linkedHashMap3.put(GKzVmr, new Pair(GKzVmr, ""));
                                    linkedHashMap3.put(DnOKlt, new Pair(DnOKlt, str3));
                                    linkedHashMap3.put(avjaxi, new Pair(avjaxi, str31));
                                    linkedHashMap3.put(QDRsTb, new Pair(QDRsTb, str30));
                                    linkedHashMap3.put(aurZSv, new Pair(aurZSv, str29));
                                    linkedHashMap3.put(zJVOKL, new Pair(zJVOKL, str27));
                                    linkedHashMap3.put(aafepb, new Pair(aafepb, str25));
                                    linkedHashMap3.put(uaRiBT, new Pair(uaRiBT, XbALEN.a()));
                                    linkedHashMap3.put(QUhvg, new Pair(QUhvg, str23));
                                    linkedHashMap3.put(zdEODW, new Pair(zdEODW, XbALEN.b()));
                                    linkedHashMap3.put(eFqTYV, new Pair(eFqTYV, str4));
                                    linkedHashMap3.put(XugSgu, new Pair(XugSgu, strC));
                                    linkedHashMap3.put(wLslUh, new Pair(wLslUh, str5));
                                    linkedHashMap3.put(QXEcYt, new Pair(QXEcYt, str6));
                                    linkedHashMap3.put(JfGqiW, new Pair(JfGqiW, strC2));
                                    linkedHashMap3.put(JIHwJR, new Pair(JIHwJR, str7));
                                    linkedHashMap3.put(wBmPgh, new Pair(wBmPgh, str33));
                                    linkedHashMap3.put(QQKahi, new Pair(QQKahi, str18));
                                    linkedHashMap3.put(GnkjMh, new Pair(GnkjMh, str16));
                                    linkedHashMap3.put(wKMKwu, new Pair(wKMKwu, str15));
                                    LjL ljL3 = CMKhzu;
                                    LjL ljL4 = CMKhzu;
                                    str10 = CYFManager.this.m;
                                    if (str10 != null) {
                                        str10 = "";
                                    }
                                    linkedHashMap3.put(ljL3, new Pair(ljL4, str10));
                                    linkedHashMap3.put(JxlrpV, new Pair(JxlrpV, ContentTree.ROOT_ID));
                                    linkedHashMap3.put(GODnES, new Pair(GODnES, XNPXeV.f307j.c()));
                                    linkedHashMap3.put(GXjrzf, new Pair(GXjrzf, str9));
                                    LinkedHashMap linkedHashMap4 = new LinkedHashMap(linkedHashMap3);
                                    linkedHashMap4.put(ZlLfvP, new Pair(ZlLfvP, str32));
                                    if (CYFManager.this.f25342i != null) {
                                        objArr = null;
                                    } else {
                                        objArr = null;
                                    }
                                    if (mrfBlD != null) {
                                    }
                                }
                                str3 = str12;
                                long j7 = j4;
                                long j8 = j3;
                                long jD2 = CYFManager.d((int) j2, (int) (j3 + j7 + ((long) iIntValue) + ((long) iIntValue2)), (int) jCurrentTimeMillis);
                                if (pair2 != null) {
                                    strValueOf = eOKLLk;
                                } else {
                                    strValueOf = eOKLLk;
                                }
                                if (pair != null) {
                                    strValueOf2 = eOKLLk;
                                } else {
                                    strValueOf2 = eOKLLk;
                                }
                                if (mrfBlD != null) {
                                    strValueOf3 = eOKLLk;
                                } else {
                                    strValueOf3 = eOKLLk;
                                }
                                if (mrfBlD2 != null) {
                                    strValueOf4 = eOKLLk;
                                } else {
                                    strValueOf4 = eOKLLk;
                                }
                                if (mrfBlD != null) {
                                    strValueOf5 = eOKLLk;
                                } else {
                                    strValueOf5 = eOKLLk;
                                }
                                if (mrfBlD2 != null) {
                                    strValueOf6 = eOKLLk;
                                } else {
                                    strValueOf6 = eOKLLk;
                                }
                                mrfBl = mrfBlD2;
                                String str36 = (strValueOf + "," + strValueOf2 + "," + strValueOf3 + "," + strValueOf4 + "," + j2 + "," + jCurrentTimeMillis + "," + j8 + "," + j7 + "," + strValueOf5 + "," + strValueOf6 + "," + (ZxDSl.f346e * 1000) + "," + jUptimeMillis2 + "," + ZxDSl.f347f + "," + jD2 + "," + ZxDSl.f343a + "," + CYFManager.this.n + "," + CYFManager.this.o + "," + CYFManager.this.p) + ((String) JRAQZm);
                                String str37 = i3 + "," + (z4 ? 1 : 0);
                                if (mrfBlD != null) {
                                    str4 = null;
                                    str5 = null;
                                } else {
                                    str4 = null;
                                    str5 = null;
                                }
                                if (mrfBl != null) {
                                    mrfBl2 = mrfBl;
                                    obj = mrfBl2.f80835a;
                                    if (obj != null) {
                                        str7 = (String) ((Pair) obj).first;
                                        str6 = (String) ((Pair) obj).second;
                                    }
                                    arrayList = new ArrayList();
                                    arrayList.add(new Pair("", DicDbN));
                                    if (CYFManager.this.f25342i != null) {
                                        arrayList.add(new Pair(EunleT, CYFManager.this.f25342i.s()));
                                    }
                                    if (CYFManager.this.f25342i != null) {
                                        str8 = "";
                                    } else {
                                        str8 = "";
                                    }
                                    if (CYFManager.this.f25343j.n != null) {
                                        str9 = CYFManager.this.f25343j.n;
                                    } else {
                                        str9 = str11;
                                    }
                                    String strH4 = CYFManager.this.h();
                                    LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                                    String str38 = str8;
                                    linkedHashMap5.put(PdPTp, new Pair(PdPTp, ""));
                                    linkedHashMap5.put(JmFvYe, new Pair(JmFvYe, ""));
                                    linkedHashMap5.put(GKzVmr, new Pair(GKzVmr, ""));
                                    linkedHashMap5.put(DnOKlt, new Pair(DnOKlt, str3));
                                    linkedHashMap5.put(avjaxi, new Pair(avjaxi, str31));
                                    linkedHashMap5.put(QDRsTb, new Pair(QDRsTb, str30));
                                    linkedHashMap5.put(aurZSv, new Pair(aurZSv, str29));
                                    linkedHashMap5.put(zJVOKL, new Pair(zJVOKL, str27));
                                    linkedHashMap5.put(aafepb, new Pair(aafepb, str25));
                                    linkedHashMap5.put(uaRiBT, new Pair(uaRiBT, XbALEN.a()));
                                    linkedHashMap5.put(QUhvg, new Pair(QUhvg, str23));
                                    linkedHashMap5.put(zdEODW, new Pair(zdEODW, XbALEN.b()));
                                    linkedHashMap5.put(eFqTYV, new Pair(eFqTYV, str4));
                                    linkedHashMap5.put(XugSgu, new Pair(XugSgu, strC));
                                    linkedHashMap5.put(wLslUh, new Pair(wLslUh, str5));
                                    linkedHashMap5.put(QXEcYt, new Pair(QXEcYt, str6));
                                    linkedHashMap5.put(JfGqiW, new Pair(JfGqiW, strC2));
                                    linkedHashMap5.put(JIHwJR, new Pair(JIHwJR, str7));
                                    linkedHashMap5.put(wBmPgh, new Pair(wBmPgh, str37));
                                    linkedHashMap5.put(QQKahi, new Pair(QQKahi, str18));
                                    linkedHashMap5.put(GnkjMh, new Pair(GnkjMh, str16));
                                    linkedHashMap5.put(wKMKwu, new Pair(wKMKwu, str15));
                                    LjL ljL5 = CMKhzu;
                                    LjL ljL6 = CMKhzu;
                                    str10 = CYFManager.this.m;
                                    if (str10 != null) {
                                        str10 = "";
                                    }
                                    linkedHashMap5.put(ljL5, new Pair(ljL6, str10));
                                    linkedHashMap5.put(JxlrpV, new Pair(JxlrpV, ContentTree.ROOT_ID));
                                    linkedHashMap5.put(GODnES, new Pair(GODnES, XNPXeV.f307j.c()));
                                    linkedHashMap5.put(GXjrzf, new Pair(GXjrzf, str9));
                                    LinkedHashMap linkedHashMap6 = new LinkedHashMap(linkedHashMap5);
                                    linkedHashMap6.put(ZlLfvP, new Pair(ZlLfvP, str36));
                                    if (CYFManager.this.f25342i != null) {
                                        objArr = null;
                                    } else {
                                        objArr = null;
                                    }
                                    if (mrfBlD != null) {
                                    }
                                }
                                mrfBl2 = mrfBl;
                                str6 = null;
                                str7 = null;
                                arrayList = new ArrayList();
                                arrayList.add(new Pair("", DicDbN));
                                if (CYFManager.this.f25342i != null) {
                                    arrayList.add(new Pair(EunleT, CYFManager.this.f25342i.s()));
                                }
                                if (CYFManager.this.f25342i != null) {
                                    str8 = "";
                                } else {
                                    str8 = "";
                                }
                                if (CYFManager.this.f25343j.n != null) {
                                    str9 = CYFManager.this.f25343j.n;
                                } else {
                                    str9 = str11;
                                }
                                String strH5 = CYFManager.this.h();
                                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                                String str39 = str8;
                                linkedHashMap7.put(PdPTp, new Pair(PdPTp, ""));
                                linkedHashMap7.put(JmFvYe, new Pair(JmFvYe, ""));
                                linkedHashMap7.put(GKzVmr, new Pair(GKzVmr, ""));
                                linkedHashMap7.put(DnOKlt, new Pair(DnOKlt, str3));
                                linkedHashMap7.put(avjaxi, new Pair(avjaxi, str31));
                                linkedHashMap7.put(QDRsTb, new Pair(QDRsTb, str30));
                                linkedHashMap7.put(aurZSv, new Pair(aurZSv, str29));
                                linkedHashMap7.put(zJVOKL, new Pair(zJVOKL, str27));
                                linkedHashMap7.put(aafepb, new Pair(aafepb, str25));
                                linkedHashMap7.put(uaRiBT, new Pair(uaRiBT, XbALEN.a()));
                                linkedHashMap7.put(QUhvg, new Pair(QUhvg, str23));
                                linkedHashMap7.put(zdEODW, new Pair(zdEODW, XbALEN.b()));
                                linkedHashMap7.put(eFqTYV, new Pair(eFqTYV, str4));
                                linkedHashMap7.put(XugSgu, new Pair(XugSgu, strC));
                                linkedHashMap7.put(wLslUh, new Pair(wLslUh, str5));
                                linkedHashMap7.put(QXEcYt, new Pair(QXEcYt, str6));
                                linkedHashMap7.put(JfGqiW, new Pair(JfGqiW, strC2));
                                linkedHashMap7.put(JIHwJR, new Pair(JIHwJR, str7));
                                linkedHashMap7.put(wBmPgh, new Pair(wBmPgh, str37));
                                linkedHashMap7.put(QQKahi, new Pair(QQKahi, str18));
                                linkedHashMap7.put(GnkjMh, new Pair(GnkjMh, str16));
                                linkedHashMap7.put(wKMKwu, new Pair(wKMKwu, str15));
                                LjL ljL7 = CMKhzu;
                                LjL ljL8 = CMKhzu;
                                str10 = CYFManager.this.m;
                                if (str10 != null) {
                                    str10 = "";
                                }
                                linkedHashMap7.put(ljL7, new Pair(ljL8, str10));
                                linkedHashMap7.put(JxlrpV, new Pair(JxlrpV, ContentTree.ROOT_ID));
                                linkedHashMap7.put(GODnES, new Pair(GODnES, XNPXeV.f307j.c()));
                                linkedHashMap7.put(GXjrzf, new Pair(GXjrzf, str9));
                                LinkedHashMap linkedHashMap8 = new LinkedHashMap(linkedHashMap7);
                                linkedHashMap8.put(ZlLfvP, new Pair(ZlLfvP, str36));
                                if (CYFManager.this.f25342i != null) {
                                    objArr = null;
                                } else {
                                    objArr = null;
                                }
                                if (mrfBlD != null) {
                                }
                            } catch (Exception e2) {
                                GpYFMu.d(GVIEUx, cj.h(e2, wagMkt, new StringBuilder()), new Throwable[0]);
                                GWINqE.b(e2);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            GpYFMu.g(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("CJaZ\\\\\u0000ocXPRAWCQFD\u000bAL@NWDPP\u0004KIS\bQtrht\u007fsIJww/5e|qyzbbj.lqbjf$pvcim_\u0012"), new Throwable[0]);
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("{UqRGW|E\u007fBZNqWCYjKHDH\u000eJHDAVPJT\u0007MJhtn'>") + e2.getMessage(), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    @Override // ZjTIAZ.KgGan
    public final synchronized void a() {
        int i2 = CYFMonitor.f25345a;
    }

    @Override // ZjTIAZ.KgGan
    public final synchronized void b() {
        int i2 = CYFMonitor.f25345a;
    }

    public final void c() {
        try {
            QQixUL qQixUL = this.f25340f;
            if (qQixUL != null) {
                qQixUL.f217b = 0;
                qQixUL.f218c = 0;
                qQixUL.d = 0L;
                qQixUL.f216a = SystemClock.uptimeMillis();
                qQixUL.f219e.clear();
                Future future = qQixUL.f220f;
                if (future != null && !future.isCancelled() && !qQixUL.f220f.isDone()) {
                    qQixUL.f220f.cancel(true);
                }
                qQixUL.f220f = null;
            }
            CbGKec cbGKec = this.f25337b;
            if (cbGKec != null) {
                cbGKec.d();
            }
            ECIjpk eCIjpk = this.f25338c;
            if (eCIjpk != null) {
                eCIjpk.f183a.clear();
            }
            XbALEN.c();
            int i2 = ZxDSl.f345c;
            GpYFMu.e(CNATAC.a("MJ{@GSATb"), CNATAC.a("\\@fVGFFNv\u0011C]YCRK"), new Throwable[0]);
            ZxDSl.f344b = SystemClock.uptimeMillis();
            ZxDSl.f343a = System.currentTimeMillis();
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    public final String e() {
        AtomicBoolean atomicBoolean = this.f25344k;
        try {
            String str = (String) RXtEM.f246j.f248b.get();
            if (str == null) {
                str = "";
            }
            if (str.isEmpty()) {
                str = "";
            }
            try {
                if (atomicBoolean.compareAndSet(false, true)) {
                    if (this.l == null) {
                        this.l = new Handler(Looper.getMainLooper());
                    }
                    this.l.postDelayed(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFManager.3
                        static String GVIEUx;
                        static String VpEjW;

                        static {
                            ucP(false);
                        }

                        public static /* synthetic */ void ucP(boolean z2) {
                            if (z2) {
                                ucP(false);
                            }
                            VpEjW = CNATAC.a("]F}VWGCEu\u0011GYSDRKA\nMMDBJT");
                            GVIEUx = CNATAC.a("M|S~R\\NGtC");
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            CYFManager cYFManager;
                            try {
                                CYFManager.this.t();
                                cYFManager = CYFManager.this;
                            } catch (Exception e2) {
                                GpYFMu.d(GVIEUx, VpEjW, e2);
                                cYFManager = CYFManager.this;
                            } finally {
                                CYFManager.this.f25344k.compareAndSet(true, false);
                            }
                            AtomicBoolean atomicBoolean2 = cYFManager.f25344k;
                        }
                    }, LiveTranslationEntity.DefaultSentenceTimeOut);
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("HD|_VV\u000fT~\u0011F_]SSMEO\u000b_H@\\_S\u0002GEQG\u0007Z]|iynv"), e2);
                atomicBoolean.set(false);
            }
            String strG = g();
            AtomicReference atomicReference = RXtEM.f246j.f249c;
            String str2 = atomicReference.get() != null ? (String) atomicReference.get() : "";
            String strH = DQwsTh.A.h();
            if (strH == null) {
                strH = "";
            }
            String strP = AcVtYN.I.p();
            if (strP == null) {
                strP = "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("$");
            sb.append(strH);
            sb.append("$");
            sb.append(strP);
            sb.append("$");
            sb.append(str2 != null ? str2 : "");
            sb.append("$");
            sb.append(strG);
            return sb.toString();
        } catch (Exception e3) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("i@apRQGEubPRFYE|H^J\fKOF\\DF"), e3);
            GWINqE.b(e3);
            return CNATAC.a("j@sRF^[\r|^WUYS");
        }
    }

    public final void f() {
        try {
            QYXNEc qYXNEc = this.f25339e;
            qYXNEc.getClass();
            qYXNEc.f225c = SystemClock.uptimeMillis();
            qYXNEc.d.clear();
            Future future = qYXNEc.f227f;
            if (future != null) {
                if (!future.isCancelled() && !qYXNEc.f227f.isDone()) {
                    qYXNEc.f227f.cancel(true);
                }
                qYXNEc.f227f = null;
            }
            qYXNEc.f226e.clear();
            this.d.f();
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    public final String g() {
        String strK;
        String strT;
        String strU;
        String strE;
        String strE2 = ContentTree.ROOT_ID;
        try {
            ZptgnD zptgnD = this.f25342i;
            if (zptgnD != null) {
                strT = zptgnD.t();
                strU = this.f25342i.u();
                ZptgnD zptgnD2 = this.f25342i;
                if (zptgnD2.f333h == null || zptgnD2.f333h.isEmpty()) {
                    strK = RXtEM.f246j.k();
                    if (strK.isEmpty()) {
                        strK = "";
                    }
                } else {
                    strK = zptgnD2.f333h;
                }
            } else {
                RXtEM rXtEM = RXtEM.f246j;
                String strF = rXtEM.f();
                String strG = rXtEM.g();
                strK = rXtEM.k();
                strT = strF;
                strU = strG;
            }
            try {
                DUcPEg dUcPEg = this.f25343j;
                strE = dUcPEg != null ? dUcPEg.g : null;
                if (strE == null || strE.isEmpty() || CNATAC.a("#\u0014").equals(strE) || ContentTree.ROOT_ID.equals(strE)) {
                    strE = RXtEM.f246j.e();
                } else {
                    try {
                        RXtEM.f246j.o(strE);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable unused2) {
                strE = ContentTree.ROOT_ID;
            }
            if (strK == null || strK.isEmpty()) {
                return strT + CNATAC.a("(\u00033") + strE + CNATAC.a("(\u00033") + strU + CNATAC.a("(\u00033") + CNATAC.a(":\u000b'\u001d\u0003");
            }
            return strT + CNATAC.a("(\u00033") + strE + CNATAC.a("(\u00033") + strU + CNATAC.a("(\u00033") + CNATAC.a(":\u000b'\u001d\u0003") + CNATAC.a("(\u00033") + strK;
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), d21.h(e2, "lP|_Wq_RBXRRTZsY]K\u000bI_\\@B\u001b\u0002", new StringBuilder()), new Throwable[0]);
            try {
                DUcPEg dUcPEg2 = this.f25343j;
                String str = dUcPEg2 != null ? dUcPEg2.g : null;
                if (str == null || str.isEmpty() || CNATAC.a("#\u0014").equals(str) || ContentTree.ROOT_ID.equals(str)) {
                    strE2 = RXtEM.f246j.e();
                } else {
                    try {
                        RXtEM.f246j.o(str);
                    } catch (Throwable unused3) {
                    }
                    strE2 = str;
                }
            } catch (Throwable unused4) {
            }
            return CNATAC.a(">\u00033\u0015") + strE2 + CNATAC.a("(\u00033\u0003\u0015\u0014\t") + CNATAC.a(":\u000b'\u001d\u0003");
        }
    }

    public final String h() {
        try {
            ZptgnD zptgnD = this.f25342i;
            return zptgnD != null ? zptgnD.t() : RXtEM.f246j.f();
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), d21.h(e2, "i@apC@lFxx[ZZpXJzOE_B\\kQUC\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
            return ContentTree.ROOT_ID;
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:6:0x0018
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final boolean m() {
        /*
            r6 = this;
            ZjTIAZ.Gvcplk r0 = r6.d
            java.util.ArrayList r0 = r0.d
            int r0 = r0.size()
            long r0 = (long) r0
            r2 = 16
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto Laa
            ZjTIAZ.QYXNEc r6 = r6.f25339e
            int r0 = com.cyberfend.cyfsecurity.CYFManager.v
            r1 = 6131(0x17f3, float:8.591E-42)
            r4 = 1
            if (r0 > r1) goto L7e
        L18:
            int r0 = com.cyberfend.cyfsecurity.CYFManager.v
            int r1 = r0 + 39
            r5 = 82
            if (r1 == r5) goto L39
            r5 = 137(0x89, float:1.92E-43)
            if (r1 == r5) goto L32
            r5 = 183(0xb7, float:2.56E-43)
            if (r1 == r5) goto L29
            goto L18
        L29:
            r6 = r0 ^ 4972(0x136c, float:6.967E-42)
            int r6 = r6 * 59
            int r6 = r6 % 105
            com.cyberfend.cyfsecurity.CYFManager.v = r6
            goto L39
        L32:
            int r0 = r0 * 110
            int r0 = r0 >> 54
            com.cyberfend.cyfsecurity.CYFManager.v = r0
            goto L7e
        L39:
            int r6 = com.cyberfend.cyfsecurity.CYFManager.v
            int r6 = r6 + r0
            int r6 = r6 * 5
            int r6 = r6 >> 102
            com.cyberfend.cyfsecurity.CYFManager.v = r6
            int r6 = com.cyberfend.cyfsecurity.CYFManager.u
            r6 = r6 ^ 2766(0xace, float:3.876E-42)
            if (r6 == 0) goto L39
        L48:
            int r6 = com.cyberfend.cyfsecurity.CYFManager.u
            int r0 = r6 + 65
            r1 = 53
            if (r0 == r1) goto L6b
            r1 = 235(0xeb, float:3.3E-43)
            if (r0 == r1) goto L63
            r1 = 349(0x15d, float:4.89E-43)
            if (r0 == r1) goto L74
            r1 = 497(0x1f1, float:6.96E-43)
            if (r0 == r1) goto L5d
            goto L48
        L5d:
            int r0 = r6 * 107
            r0 = r0 ^ 2131(0x853, float:2.986E-42)
            int r0 = r0 >> r4
            goto L7b
        L63:
            int r0 = com.cyberfend.cyfsecurity.CYFManager.u
            int r0 = r0 % 106
            int r0 = r0 + r6
            com.cyberfend.cyfsecurity.CYFManager.u = r0
            goto L63
        L6b:
            int r0 = com.cyberfend.cyfsecurity.CYFManager.u
            int r0 = r0 + r6
            int r0 = r0 >> 110
            int r0 = r0 >> 55
            com.cyberfend.cyfsecurity.CYFManager.u = r0
        L74:
            int r0 = com.cyberfend.cyfsecurity.CYFManager.u
            int r0 = r0 >> 17
            int r0 = r0 + r6
            r0 = r0 ^ 3680(0xe60, float:5.157E-42)
        L7b:
            com.cyberfend.cyfsecurity.CYFManager.u = r0
            goto L6b
        L7e:
            java.util.ArrayList r6 = r6.d
            int r6 = r6.size()
            long r0 = (long) r6
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 >= 0) goto Laa
            ZjTIAZ.RXtEM r6 = ZjTIAZ.RXtEM.f246j
            java.util.concurrent.atomic.AtomicReference r6 = r6.f248b
            java.lang.Object r6 = r6.get()
            if (r6 == 0) goto Laa
            int r6 = com.cyberfend.cyfsecurity.CYFManager.u
            r6 = r6 ^ 2766(0xace, float:3.876E-42)
            if (r6 == 0) goto La9
        L99:
            int r6 = com.cyberfend.cyfsecurity.CYFManager.u
            int r0 = r6 + 104
            r1 = 16
            if (r0 == r1) goto La2
            goto L99
        La2:
            int r6 = r6 + r6
            int r6 = r6 % 77
            r6 = r6 ^ 2853(0xb25, float:3.998E-42)
            com.cyberfend.cyfsecurity.CYFManager.u = r6
        La9:
            return r4
        Laa:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyberfend.cyfsecurity.CYFManager.m():boolean");
    }

    /* JADX INFO: Infinite loop detected, blocks: 9, insns: 0 */
    /* JADX WARN: Code duplicated, block: B:198:0x086e A[Catch: all -> 0x008b, Exception -> 0x008e, OutOfMemoryError -> 0x0091, TryCatch #2 {Exception -> 0x008e, blocks: (B:3:0x0032, B:5:0x006f, B:6:0x0075, B:11:0x0081, B:15:0x0085, B:23:0x0093, B:25:0x0097, B:26:0x00a2, B:28:0x00c2, B:30:0x00d1, B:32:0x00d7, B:35:0x00e6, B:48:0x0116, B:50:0x0163, B:53:0x017c, B:55:0x0195, B:57:0x01ac, B:60:0x01b6, B:62:0x01bf, B:63:0x01c3, B:65:0x01d7, B:66:0x01db, B:68:0x01e3, B:70:0x01e9, B:80:0x0212, B:90:0x023b, B:92:0x0259, B:94:0x0267, B:96:0x0281, B:98:0x0295, B:99:0x02a7, B:103:0x02bd, B:105:0x02ff, B:107:0x0308, B:118:0x03b8, B:120:0x0430, B:122:0x0436, B:123:0x0448, B:125:0x0460, B:127:0x0464, B:129:0x047e, B:132:0x0488, B:136:0x0494, B:140:0x0682, B:142:0x06eb, B:144:0x06ef, B:147:0x06f7, B:149:0x06fb, B:151:0x0703, B:153:0x0709, B:154:0x0712, B:156:0x071c, B:158:0x074e, B:160:0x0755, B:162:0x076b, B:167:0x0780, B:169:0x0797, B:171:0x079d, B:172:0x07af, B:174:0x07bf, B:176:0x07c3, B:178:0x07cb, B:180:0x07d1, B:181:0x07da, B:186:0x07f5, B:188:0x07f9, B:189:0x07ff, B:191:0x0803, B:193:0x0810, B:194:0x0819, B:196:0x0862, B:199:0x0871, B:198:0x086e, B:192:0x0808, B:182:0x07dd, B:183:0x07e5, B:185:0x07eb, B:155:0x0715, B:89:0x0236, B:79:0x020d), top: B:237:0x0032 }] */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:216:0x090d
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.String n() {
        /*
            Method dump skipped, instruction units count: 2373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyberfend.cyfsecurity.CYFManager.n():java.lang.String");
    }

    public final synchronized Boolean o() {
        if (this.r == null) {
            return Boolean.FALSE;
        }
        Date date = new Date();
        ZptgnD zptgnD = this.f25342i;
        return Boolean.valueOf((date.getTime() - this.r.getTime()) / 1000 > ((long) ((zptgnD == null || zptgnD.n <= 0) ? 3600 : this.f25342i.n)));
    }

    public final void q(Activity activity) {
        try {
            if (this.f25338c != null) {
                ViewTreeObserver viewTreeObserver = activity.getWindow().getDecorView().getRootView().getViewTreeObserver();
                ECIjpk eCIjpk = this.f25338c;
                if (eCIjpk.f184b == null) {
                    GpYFMu.g(ECIjpk.f181c, ECIjpk.d, new Throwable[0]);
                }
                JMlAJG jMlAJG = eCIjpk.f184b;
                if (jMlAJG != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnGlobalFocusChangeListener(jMlAJG);
                }
                ECIjpk eCIjpk2 = this.f25338c;
                JMlAJG jMlAJG2 = eCIjpk2.f184b;
                if (jMlAJG2 == null) {
                    return;
                }
                try {
                    jMlAJG2.deleteObservers();
                    eCIjpk2.f184b = null;
                } catch (Exception unused) {
                }
            }
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    public final void r() {
        try {
            new Thread(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFManager.2
                static String GVIEUx;

                /* JADX INFO: Incorrect field signature: Lshort; */
                static String eUfXIs;

                static {
                    uYY(false);
                }

                public static /* synthetic */ void uYY(boolean z2) {
                    if (z2) {
                        uYY(false);
                    }
                    eUfXIs = CNATAC.a("KWg\\A\u0012KUcX[[\u0015RR[[S[XDAA");
                    GVIEUx = CNATAC.a("M|S~R\\NGtC");
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (SensorDataBuilder.f25399b) {
                            return;
                        }
                        SensorDataBuilder.f25398a.decryptN();
                    } catch (Exception e2) {
                        GpYFMu.d(GVIEUx, eUfXIs, e2);
                    }
                }
            }).start();
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("HD|_VV\u000fT~\u0011FHTDC\u0018MOH^T^[YNL\u0003PMTBI\\"), e2);
        }
    }

    public final void s() {
        try {
            new Thread(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFManager.1
                static NGV GVIEUx;
                static String JsfVvW;

                static {
                    CuP(false);
                }

                public static /* synthetic */ void CuP(boolean z2) {
                    if (z2) {
                        CuP(false);
                    }
                    JsfVvW = CNATAC.a("KWg\\A\u0012KUcX[[\u0015SY[[S[XDAA");
                    GVIEUx = CNATAC.a("M|S~R\\NGtC");
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (SensorDataBuilder.f25399b) {
                            return;
                        }
                        SensorDataBuilder.f25398a.encryptKeyN();
                    } catch (Exception e2) {
                        GpYFMu.d(GVIEUx, JsfVvW, e2);
                    }
                }
            }).start();
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("HD|_VV\u000fT~\u0011FHTDC\u0018LDH^T^[YNL\u0003PMTBI\\"), e2);
        }
    }

    public final synchronized String t() {
        try {
            GpYFMu.e(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("I@aGZ\\H\u0000bT[OZD\u0017\\H^J"), new Throwable[0]);
            String strH = RXtEM.f246j.h();
            if (this.d == null || this.f25339e == null) {
                GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("ONt^R[maA\u0011fx~\u0016^K\tDDX\rGAYUKBHL\\BL"), new Throwable[0]);
                return strH;
            }
            try {
                String strN = n();
                if (!strN.isEmpty()) {
                    strH = strN;
                }
                ASYMBN.j().g();
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016D]GYD^\rJND@"), e2);
                GWINqE.b(e2);
                ASYMBN asymbnJ = ASYMBN.j();
                ArrayList arrayList = asymbnJ.f98h;
                try {
                    if (asymbnJ.f97f != CYFIntegrityChecker$DebugMode.NONE) {
                        CYFIntegrityChecker$IntegrityCheckState cYFIntegrityChecker$IntegrityCheckState = CYFIntegrityChecker$IntegrityCheckState.SENSOR_DATA_FAILED;
                        if (!arrayList.contains(cYFIntegrityChecker$IntegrityCheckState)) {
                            arrayList.add(cYFIntegrityChecker$IntegrityCheckState);
                        }
                        asymbnJ.k(ASYMBN.f0, ASYMBN.f92k);
                        arrayList.remove(cYFIntegrityChecker$IntegrityCheckState);
                        asymbnJ.a();
                    }
                } catch (Exception unused) {
                }
            }
            GpYFMu.e(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("]@{@\\@\u000fdpET\u0006\u0015").concat(strH), new Throwable[0]);
            return strH;
        } catch (Throwable th) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("MW|GZQNL1TGNZD\u0017QG\nLIY}J^RMQ`DRF"), th);
            return CNATAC.a("j@sRF^[\r|^WUYS");
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[Catch: all -> 0x0028, TryCatch #1 {all -> 0x0028, blocks: (B:5:0x0004, B:7:0x0008, B:11:0x000e, B:14:0x002c, B:16:0x0035, B:18:0x0039, B:31:0x0058, B:30:0x0057, B:33:0x005a, B:37:0x0074, B:41:0x0094, B:20:0x003c, B:22:0x0040, B:28:0x0052), top: B:48:0x0004, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x005a A[Catch: all -> 0x0028, TryCatch #1 {all -> 0x0028, blocks: (B:5:0x0004, B:7:0x0008, B:11:0x000e, B:14:0x002c, B:16:0x0035, B:18:0x0039, B:31:0x0058, B:30:0x0057, B:33:0x005a, B:37:0x0074, B:41:0x0094, B:20:0x003c, B:22:0x0040, B:28:0x0052), top: B:48:0x0004, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0071  */
    /* JADX WARN: Code duplicated, block: B:36:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x0092  */
    /* JADX WARN: Code duplicated, block: B:40:0x0093  */
    public final synchronized void u(Application application, String str, String str2, String str3, String str4) {
        boolean z2;
        boolean z3 = true;
        if (application != null) {
            try {
                if (B) {
                    if (B || this.f25342i == null) {
                        String strA = CNATAC.a("M|S~R\\NGtC");
                        StringBuilder sb = new StringBuilder();
                        sb.append(CNATAC.a("MD{]\\F\u000fI\u007fXAUTZ^BL\no\u007fn\u000ebQOCDAW\u001c\u0007IHj&"));
                        if (application != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        sb.append(z2);
                        sb.append(CNATAC.a("\"\u0005q@P{AIeXTP\\LR\\\u0014"));
                        sb.append(B);
                        sb.append(CNATAC.a("\"\u0005q@P\u007fNNpVPN\b"));
                        if (this.f25342i == null) {
                            z3 = false;
                        }
                        sb.append(z3);
                        GpYFMu.g(strA, sb.toString(), new Throwable[0]);
                    } else {
                        synchronized (this) {
                            if (application != null) {
                                try {
                                    if (this.f25342i != null) {
                                        this.r = new Date();
                                        this.f25342i.q(application, str, str2, str3, str4);
                                    }
                                } catch (Exception e2) {
                                    GWINqE.b(e2);
                                }
                            }
                        }
                    }
                } else {
                    if (this.f25342i != null) {
                        return;
                    }
                    this.r = new Date();
                    this.f25342i = new ZptgnD(application, str, str2, str3, str4);
                    B = true;
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        } else if (B) {
            String strA2 = CNATAC.a("M|S~R\\NGtC");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CNATAC.a("MD{]\\F\u000fI\u007fXAUTZ^BL\no\u007fn\u000ebQOCDAW\u001c\u0007IHj&"));
            if (application != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            sb2.append(z2);
            sb2.append(CNATAC.a("\"\u0005q@P{AIeXTP\\LR\\\u0014"));
            sb2.append(B);
            sb2.append(CNATAC.a("\"\u0005q@P\u007fNNpVPN\b"));
            if (this.f25342i == null) {
                z3 = false;
            }
            sb2.append(z3);
            GpYFMu.g(strA2, sb2.toString(), new Throwable[0]);
        } else {
            String strA3 = CNATAC.a("M|S~R\\NGtC");
            StringBuilder sb3 = new StringBuilder();
            sb3.append(CNATAC.a("MD{]\\F\u000fI\u007fXAUTZ^BL\no\u007fn\u000ebQOCDAW\u001c\u0007IHj&"));
            if (application != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            sb3.append(z2);
            sb3.append(CNATAC.a("\"\u0005q@P{AIeXTP\\LR\\\u0014"));
            sb3.append(B);
            sb3.append(CNATAC.a("\"\u0005q@P\u007fNNpVPN\b"));
            if (this.f25342i == null) {
                z3 = false;
            }
            sb3.append(z3);
            GpYFMu.g(strA3, sb3.toString(), new Throwable[0]);
        }
    }

    public final void v(Activity activity) {
        try {
            if (this.f25337b != null) {
                if (this.f25338c == null) {
                    this.f25338c = new ECIjpk();
                }
                ViewTreeObserver viewTreeObserver = activity.getWindow().getDecorView().getRootView().getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    ECIjpk eCIjpk = this.f25338c;
                    if (eCIjpk.f184b == null) {
                        GpYFMu.g(ECIjpk.f181c, ECIjpk.d, new Throwable[0]);
                    }
                    JMlAJG jMlAJG = eCIjpk.f184b;
                    if (jMlAJG == null) {
                        GpYFMu.g(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("HJvF@\u0012CIbEPRPD\u0017QZ\nEYAB\u0014\u0010RIJTUOIO\u0018h~{tmkRQfz{{8"), new Throwable[0]);
                    } else {
                        viewTreeObserver.addOnGlobalFocusChangeListener(jMlAJG);
                        jMlAJG.addObserver(this.f25337b.f118a);
                    }
                }
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015UE]H^BBJ\u000eI_BWP\u0004IOT\\]t~n"), e2);
            GWINqE.b(e2);
            ASYMBN.j().f();
        }
    }

    public final void w(Context context, ViewGroup viewGroup) {
        try {
            for (View view : QveSIH.a(viewGroup)) {
                if (view instanceof EditText) {
                    if (!this.s) {
                        this.f25337b = new CbGKec(context);
                        this.s = true;
                    }
                    GpYFMu.c(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("bLfGV\\JR1PQX\\XP\u0018OEY\fHJFDUG[P\u0005") + view, new Throwable[0]);
                    this.f25337b.c((EditText) view);
                }
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015UE]H^BBJ\u000e[UYV\u0003HLUSMV\u007fi"), e2);
            GWINqE.b(e2);
            ASYMBN.j().f();
        }
    }

    public final void x(Window window) {
        try {
            if (this.f25340f == null) {
                this.f25340f = new QQixUL();
            }
            QQixUL qQixUL = this.f25340f;
            qQixUL.getClass();
            GpYFMu.e(CNATAC.a("ZJ`P[\u007fNNpVPN"), CNATAC.a("BLfGV\\FNv\u0011ZR\u0015A^VME\\"), new Throwable[0]);
            qQixUL.f216a = SystemClock.uptimeMillis();
            DbkYmF dbkYmF = new DbkYmF(window.getCallback());
            window.setCallback(dbkYmF);
            dbkYmF.addObserver(qQixUL);
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015UE]H^BBJ\u000e[_TAK\u0004HGII_\u007fi"), e2);
            GWINqE.b(e2);
            ASYMBN.j().f();
        }
    }

    public final synchronized void y() {
        try {
            Gvcplk gvcplk = this.d;
            if (gvcplk == null) {
                return;
            }
            gvcplk.g();
            ASYMBN.j().d(Boolean.TRUE);
        } catch (Exception e2) {
            e2.getMessage();
            SDKInitFailure sDKInitFailure = SDKInitFailure.MOTION_SENSOR_FAILURE;
            a();
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015ECY[^BBJ\u000eB_UKLJ\u0005KFFY}~n"), e2);
            GWINqE.b(e2);
            ASYMBN.j().d(Boolean.FALSE);
        }
    }

    public final synchronized void z() {
        try {
            QYXNEc qYXNEc = this.f25339e;
            if (qYXNEc == null) {
                return;
            }
            qYXNEc.f();
            ASYMBN.j().e(Boolean.TRUE);
        } catch (Exception e2) {
            e2.getMessage();
            SDKInitFailure sDKInitFailure = SDKInitFailure.MOTION_SENSOR_FAILURE;
            a();
            ASYMBN.j().e(Boolean.FALSE);
            GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015ECY[^BBJ\u000e@BHGMPDRNGV:v}s\u007fxEB"), e2);
            GWINqE.b(e2);
        }
    }
}

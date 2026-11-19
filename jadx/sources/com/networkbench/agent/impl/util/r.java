package com.networkbench.agent.impl.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.github.druk.dnssd.DNSSD;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.PrivacyDataType;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.text.MessageFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class r {
    public static final int E = 2000;
    public static final int K = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static long f38393k = 0;
    public static long l = 0;
    public static boolean o = false;
    public static final String t = "X-Tingyun-Tx-Data";
    public static final String u = "X-Tingyun-Id";
    public static final String v = "X-Tingyun";
    public static final String w = "X-Tingyun-Data";
    public static final long x = 20000;
    public static final String y = "<_TY_C_API>";
    public String C;
    X509Certificate O;
    private JSONArray S;
    private String aD;
    private long aK;
    private long aL;
    private int aa;
    private com.networkbench.agent.impl.data.c.a ab;
    private g ac;
    private Context ae;
    private String af;
    private String ag;
    private String ah;
    private String at;
    private String au;
    private String aw;
    private boolean ax;
    private long ay;
    boolean g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f38397i;
    private static final r P = new r();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f38389a = 600000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f38390b = 300000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f38391c = 10;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f38392j = 0;
    public static String n = "";
    public static String m = MessageFormat.format("NBS Newlens Agent/{0} ({1} {2})", NBSAgent.getVersion(), "Android", Build.VERSION.RELEASE);
    public static int p = 0;
    public static boolean q = false;
    public static String r = "";
    public static int s = 50;
    public static final com.networkbench.agent.impl.c.e A = com.networkbench.agent.impl.c.f.a();
    private static int al = 3;
    public boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f38394e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f38395f = "mobile-symbol-upload.tingyun.com";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f38396h = "";
    private boolean R = false;
    private boolean T = false;
    private Map<String, String> U = new ConcurrentHashMap();
    private long V = 0;
    private boolean W = true;
    private u X = new u();
    private com.networkbench.agent.impl.k.a Y = new com.networkbench.agent.impl.k.a();
    private boolean Z = false;
    public boolean z = true;
    public boolean B = false;
    public boolean D = false;
    private boolean ad = false;
    private boolean ai = false;
    private long aj = -1;
    private AtomicInteger ak = new AtomicInteger(0);
    private String am = "";
    private String an = "";
    private String ao = "";
    private AtomicBoolean ap = new AtomicBoolean(true);
    private AtomicInteger aq = new AtomicInteger(1);
    private Float ar = Float.valueOf(1.0f);
    private Map<String, String> as = new HashMap();
    private t av = null;
    private int az = 4000;
    private boolean aA = false;
    private boolean aB = false;
    private int aC = 20;
    public int F = 16;
    private boolean aE = false;
    public HashMap<String, String[]> G = new HashMap<>();
    boolean H = false;
    public String I = "";
    private String aF = "";
    public int J = 0;
    private int aG = 32;
    private String aH = "";
    private int aI = 0;
    private String aJ = "";
    private boolean aM = true;
    int L = 100;
    private boolean aN = true;
    boolean M = false;
    private com.networkbench.agent.impl.harvest.a.a.b aO = new com.networkbench.agent.impl.harvest.a.a.b();
    private AtomicLong aP = new AtomicLong(0);
    String N = "";
    private com.networkbench.agent.impl.performance.a.a.b aQ = new com.networkbench.agent.impl.performance.a.a.b();
    private int aR = -1;
    private boolean aS = false;
    private n Q = new n();

    private r() {
        this.g = true;
        this.g = 50 < com.networkbench.agent.impl.crash.b.c();
    }

    public static String a(String str, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(";c=2;r=");
        sb.append(i2);
        sb.append(";");
        String strT = u().t();
        if (!TextUtils.isEmpty(strT)) {
            try {
                String strB = ak.b(q.a(strT.getBytes("UTF-8")));
                sb.append("u=");
                sb.append(strB);
                sb.append("::");
                sb.append(q.a());
            } catch (Throwable unused) {
            }
        }
        return sb.toString();
    }

    public static int ar() {
        int iNextInt = new SecureRandom().nextInt();
        if (iNextInt < 0) {
            return -iNextInt;
        }
        return iNextInt < 100 ? iNextInt + 100 : iNextInt;
    }

    private String m(int i2) {
        return i2 == 0 ? v.a(i2) : v.a(-1);
    }

    public static r u() {
        return P;
    }

    public boolean A() {
        return this.X.e() && this.ai;
    }

    public int B() {
        return this.aa;
    }

    public boolean C() {
        return this.ak.get() == 2;
    }

    public String D() {
        return this.am;
    }

    public boolean E() {
        return this.ap.get();
    }

    public int F() {
        return this.aq.get();
    }

    public int G() {
        return this.aq.getAndDecrement();
    }

    public Map<String, String> H() {
        return this.as;
    }

    public String I() {
        return this.at;
    }

    public Context J() {
        return this.ae;
    }

    public String K() {
        return this.af;
    }

    public String L() {
        return this.au;
    }

    public int M() {
        return al;
    }

    public int N() {
        return this.ak.get();
    }

    public String O() {
        return this.an;
    }

    public Float P() {
        return this.ar;
    }

    public boolean Q() {
        return this.ax;
    }

    public long R() {
        return this.aj;
    }

    public long S() {
        return this.ay;
    }

    public String T() {
        return this.aD;
    }

    public void U() {
        this.X.d();
    }

    public boolean V() {
        return this.X.f();
    }

    public boolean W() {
        return this.X.g() && this.X.f();
    }

    public boolean X() {
        return this.X.h();
    }

    public boolean Y() {
        return this.X.i();
    }

    public boolean Z() {
        return this.X.j();
    }

    public u aA() {
        return this.X;
    }

    public boolean aB() {
        return this.aN;
    }

    public boolean aC() {
        return this.M;
    }

    public com.networkbench.agent.impl.harvest.a.a.b aD() {
        return this.aO;
    }

    public long aE() {
        return this.aP.get();
    }

    public void aF() {
        this.aP.incrementAndGet();
    }

    public X509Certificate aG() {
        if (this.O == null) {
            this.O = com.networkbench.agent.impl.h.b.a().b(com.networkbench.agent.impl.harvest.a.m.a().f37272e);
        }
        return this.O;
    }

    public com.networkbench.agent.impl.k.a aH() {
        return this.Y;
    }

    public com.networkbench.agent.impl.performance.a.a.b aI() {
        return this.aQ;
    }

    public int aJ() {
        return this.aR;
    }

    public boolean aK() {
        com.networkbench.agent.impl.c.j.a("new page calc algo is " + this.aS);
        return this.aS;
    }

    public int aa() {
        return this.aC;
    }

    public boolean ab() {
        return this.X.k();
    }

    public boolean ac() {
        return this.X.l();
    }

    public boolean ad() {
        return this.X.n();
    }

    public boolean ae() {
        return this.X.o();
    }

    public boolean af() {
        return this.X.p();
    }

    public boolean ag() {
        return this.X.v();
    }

    public boolean ah() {
        return this.X.w();
    }

    public boolean ai() {
        return this.X.m();
    }

    public boolean aj() {
        return this.X.q();
    }

    public boolean ak() {
        return this.X.u();
    }

    public boolean al() {
        List<String> cellInfoConfig = HarvestConfiguration.getCellInfoConfig();
        return (cellInfoConfig != null && cellInfoConfig.size() > 0) || this.H;
    }

    public String am() {
        return this.I;
    }

    public String an() {
        String strT = t();
        boolean zR = ak.r(strT);
        String str = this.aF;
        if (zR) {
            return fc.h("c=A|", str, ";");
        }
        StringBuilder sbR = pq0.r("c=A|", str, ";");
        sbR.append(o(strT));
        sbR.append(";");
        return sbR.toString();
    }

    public String ao() {
        String strT = t();
        if (ak.r(strT) || strT.length() > 50) {
            return n00.r(this.aF, ";", new StringBuilder("c=A|"));
        }
        return "c=A|" + this.aF + ";" + o(strT) + ";";
    }

    public boolean ap() {
        return this.J == 1;
    }

    public boolean aq() {
        return !TextUtils.isEmpty(this.aF) && ap() && aj();
    }

    public int as() {
        return this.az;
    }

    public String at() {
        String strReplace = UUID.randomUUID().toString().replace("-", "");
        if (strReplace != null) {
            int length = strReplace.length();
            int i2 = this.aG;
            if (length > i2) {
                return strReplace.substring(0, i2);
            }
        }
        return strReplace;
    }

    public String au() {
        return this.aH;
    }

    public synchronized String av() {
        return this.aJ;
    }

    public synchronized int aw() {
        return this.aI;
    }

    public void ax() {
        try {
            if (this.ae == null || System.currentTimeMillis() - this.aK <= 60000) {
                return;
            }
            int iC = com.networkbench.agent.impl.e.b.c(PrivacyDataType.PrivacyDataNetType);
            if (iC == 0 || iC == 1) {
                j(iC);
                p(m(iC));
                q("");
            } else {
                j(v.a(this.ae, iC));
                p(v.a(iC));
                if (this.aM) {
                    q(com.networkbench.agent.impl.e.b.a(PrivacyDataType.PrivacyDataCarrierCode));
                }
            }
            this.aK = System.currentTimeMillis();
        } catch (Throwable th) {
            A.a("Exception encountered while attempting to harvest   takePhoneNetworkState:   ", th);
        }
    }

    public boolean ay() {
        return this.aM;
    }

    public int az() {
        int i2 = this.L;
        if (i2 == 0) {
            return 100;
        }
        return i2;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.startsWith("null");
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("null")) {
            return;
        }
        this.C = str;
    }

    public String d() {
        return this.U.get(ConfigurationName.dataTagKey) == null ? "" : this.U.get(ConfigurationName.dataTagKey);
    }

    public void e(String str) {
        this.ah = str;
        Context context = this.ae;
        if (context == null) {
            return;
        }
        this.ae.getSharedPreferences(k(context.getPackageName()), 0).edit().putString(p.b("userId"), p.b(str)).apply();
    }

    public boolean f() {
        A.a("NBSGlobalSettings  isViolence_endbled : " + this.X.t());
        return this.X.t();
    }

    public long g(long j2) {
        return (j2 - this.aL) / 1000;
    }

    public void h(long j2) {
        this.aL = j2;
        A.a("setExcursion time : " + j2);
    }

    public g i() {
        if (this.ac == null && !TextUtils.isEmpty(this.C)) {
            try {
                return new g(this.C);
            } catch (Throwable th) {
                A.a("getEncryptContent has an error :   ", th);
            }
        }
        return this.ac;
    }

    public synchronized void j(int i2) {
        this.aI = i2;
    }

    public boolean k() {
        return this.X.e();
    }

    public boolean l() {
        return this.X.r() && this.g;
    }

    public boolean n() {
        return this.ad;
    }

    public String o(String str) {
        if (!this.B) {
            return "u=base64#" + p.b(str);
        }
        try {
            String strSubstring = "";
            if (!ab.c(com.networkbench.agent.impl.harvest.a.e.f37259c) && !ab.c(com.networkbench.agent.impl.harvest.a.e.f37258b)) {
                strSubstring = com.networkbench.agent.impl.harvest.a.e.f37258b;
                if (strSubstring.startsWith("04")) {
                    strSubstring = strSubstring.substring(2);
                }
                A.a("sm4 encrypt keyString:" + strSubstring + ", raw value:" + com.networkbench.agent.impl.harvest.a.e.f37259c);
            }
            return "u=gm#" + strSubstring + "#" + ak.b(z.a().a(str.getBytes("UTF-8")));
        } catch (Throwable unused) {
            return "u=";
        }
    }

    public String p() {
        return this.aw;
    }

    public synchronized void q(String str) {
        try {
            if (str == null) {
                this.aJ = "";
            } else {
                this.aJ = str;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void r(String str) {
        this.aO = new com.networkbench.agent.impl.harvest.a.a.b();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.aO.a(jSONObject.getInt("gpsUseTimePer"));
            this.aO.c(jSONObject.getInt("gpsUseTime10m"));
            this.aO.b(jSONObject.getInt("gpsUseCount10m"));
            this.aO.d(jSONObject.getInt("wakeLockHeldTimePer"));
            this.aO.e(jSONObject.getInt("wakeLockHeldTime10m"));
            this.aO.f(jSONObject.getInt("wakeLockAcquiredCount10m"));
            this.aO.g(jSONObject.getInt("wakeupAlarmCount10m"));
            this.aO.h(jSONObject.getInt("alarmCount10m"));
        } catch (Throwable unused) {
        }
    }

    public boolean s() {
        return this.W;
    }

    public String t() {
        if (ak.r(this.ah)) {
            Context context = this.ae;
            if (context == null) {
                return "";
            }
            this.ah = p.c(this.ae.getSharedPreferences(k(context.getPackageName()), 0).getString(p.b("userId"), ""));
        }
        return this.ah;
    }

    public boolean v() {
        return this.aB;
    }

    public void w() {
        this.ak.set(2);
        this.as.put("status", "{o:c|b:" + this.ao + "}");
        this.at = "";
    }

    public boolean x() {
        return this.ak.get() == 1;
    }

    public boolean y() {
        return this.ak.get() == 0;
    }

    public String z() {
        return this.ag;
    }

    private void s(boolean z) {
    }

    public void n(boolean z) {
        this.H = z;
    }

    public void p(String str) {
        this.aH = str;
    }

    public void n(String str) {
        this.aF = str;
    }

    public void p(boolean z) {
        this.aN = z;
    }

    public void s(String str) {
        this.N = str;
    }

    public static String k(String str) {
        return tr.g("nbsagent_preference_", str);
    }

    public void g(boolean z) {
        this.W = z;
    }

    public void g(String str) {
        this.am = str;
    }

    public void j(boolean z) {
        this.ap.set(z);
    }

    public void g(int i2) {
        this.J = i2;
    }

    public void j(String str) {
        this.ao = str;
    }

    public void k(boolean z) {
        this.ax = z;
    }

    public n g() {
        return this.Q;
    }

    public boolean j() {
        return this.R;
    }

    public void k(int i2) {
        if (i2 == 0) {
            i2 = 100;
        }
        this.L = i2;
    }

    public void b(boolean z) {
        this.Z = z;
    }

    public boolean b() {
        return this.T;
    }

    public void m(boolean z) {
        this.X.l(z);
    }

    public void b(int i2) {
        this.aa = i2;
    }

    public void m(String str) {
        this.I = str;
    }

    public void b(long j2) {
        this.aj = j2;
    }

    public boolean m() {
        return this.X.s();
    }

    public void l(String str) {
        this.aD = str;
    }

    public t q() {
        t tVar = this.av;
        return tVar == null ? new t(0.0d, 0.0d) : tVar;
    }

    public void l(boolean z) {
        this.X.o(z);
    }

    public int c() {
        return this.f38397i;
    }

    public void l(int i2) {
        if (i2 <= 0) {
            this.aR = -1;
        } else {
            this.aR = i2 * DNSSD.DNSSD_DEFAULT_TIMEOUT;
        }
    }

    public void q(boolean z) {
        this.M = z;
    }

    public void c(boolean z) {
        this.R = z;
    }

    public void c(long j2) {
        this.ay = j2;
    }

    public void c(int i2) {
        this.X.a(i2);
    }

    public void h(boolean z) {
        this.aB = z;
    }

    public void h(String str) {
        this.af = str;
    }

    public void d(boolean z) {
        this.X.d(z);
    }

    public void h(int i2) {
        this.az = i2;
    }

    public void d(String str) {
        this.aw = str;
    }

    public com.networkbench.agent.impl.data.c.a h() {
        return this.ab;
    }

    public void d(int i2) {
        this.X.a(i2, true);
    }

    public String d(long j2) {
        return ae.a();
    }

    public void i(boolean z) {
        this.ai = z;
    }

    public void f(boolean z) {
        this.aA = z;
    }

    public void i(String str) {
        this.au = str;
    }

    public void f(String str) {
        this.ag = str;
    }

    public void i(int i2) {
        this.aG = i2;
    }

    public void f(int i2) {
        this.aC = i2;
    }

    public void i(long j2) {
        this.aP.addAndGet(j2);
    }

    public long f(long j2) {
        return ((j2 * 1000) - this.aL) / 1000;
    }

    public void e(boolean z) {
        this.ad = z;
    }

    public Map e() {
        return this.U;
    }

    public void e(int i2) {
        this.X.n(i2 == 1);
    }

    public long e(long j2) {
        return j2 - this.aL;
    }

    public void a(boolean z) {
        this.X.p(z);
    }

    public JSONArray a() {
        return this.S;
    }

    public void a(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            this.S = jSONArray;
            if (jSONArray.length() > 0) {
                this.T = true;
            }
            com.networkbench.agent.impl.c.g.o("setApmsIssue : " + this.S.toString());
        } catch (Throwable unused) {
            com.networkbench.agent.impl.c.g.o("setApmsIssue  has an error!");
        }
    }

    public void a(int i2) {
        com.networkbench.agent.impl.c.g.p("setOldFeature :  设置一下历史保存的feature值 : " + i2);
        this.f38397i = i2;
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.U.put(str, str2);
    }

    public void a(com.networkbench.agent.impl.data.c.a aVar) {
        this.ab = aVar;
    }

    public void a(g gVar) {
        this.ac = gVar;
    }

    public void a(double d, double d2) {
        this.av = new t(d, d2);
    }

    public void a(long j2) {
        if (this.V > 0) {
            return;
        }
        this.V = j2;
    }

    public void a(Context context) {
        this.ae = context;
    }

    public void a(Float f2) {
        this.ar = f2;
    }

    public void a(int i2, boolean z) {
        if (com.networkbench.agent.impl.data.type.b.a().i()) {
            if (!this.aE) {
                this.X.a(i2, true);
                if (!z) {
                    com.networkbench.agent.impl.harvest.b.b.a().d(i2);
                }
            }
            this.aE = true;
        }
    }

    public void a(String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.G.put(str, strArr);
    }

    public void a(Date date, boolean z) {
    }

    public void a(X509Certificate x509Certificate) {
        this.O = x509Certificate;
    }

    public void a(com.networkbench.agent.impl.performance.a.a.b bVar) {
        this.aQ = bVar;
    }

    public long r() {
        return this.V;
    }

    public void r(boolean z) {
        this.aS = z;
    }

    public boolean o() {
        return this.aA;
    }

    public void o(boolean z) {
        this.aM = z;
    }
}

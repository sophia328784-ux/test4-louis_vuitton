package com.networkbench.agent.impl.a.a;

import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.r;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private int A;
    private int B;
    private long C;
    private String D;
    private String E;
    private String F;
    private String G;
    private Map I;
    private String J;
    private boolean L;
    private String N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f36392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HashMap<String, String> f36393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap<String, String> f36394c;
    private final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f36395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f36396f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f36397h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f36398i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f36399j;
    private final long l;
    private final long m;
    private final String n;
    private RequestMethodType o;
    private HttpLibType p;
    private final String q;
    private String s;
    private com.networkbench.agent.impl.k.b t;
    private int v;
    private String w;
    private int x;
    private String y;
    private int z;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Object f36400k = new Object();
    private boolean r = false;
    private boolean K = false;
    private String M = "";
    private int u = 0;
    private int H = r.u().aw();

    public b(String str, String str2, int i2, int i3, int i4, long j2, long j3, String str3, String str4, String str5, RequestMethodType requestMethodType, HttpLibType httpLibType, int i5, String str6, int i6, int i7, int i8, String str7, String str8, int i9, String str9, String str10, int i10, HashMap map, HashMap map2, String str11, long j4, String str12, long j5, String str13, String str14) {
        this.s = "";
        this.f36395e = str;
        this.f36396f = str2;
        this.g = i2;
        this.f36398i = i3;
        this.f36399j = i4;
        this.l = j2;
        this.m = j3;
        this.f36392a = str3;
        this.n = str11;
        this.d = j4;
        this.q = str4;
        this.o = requestMethodType;
        this.p = httpLibType;
        this.x = i5;
        this.y = str6;
        this.z = i6;
        this.A = i7;
        this.B = i8;
        this.E = str7;
        this.D = str8;
        this.f36397h = i9;
        this.J = str9;
        this.w = str10;
        this.v = i10;
        this.f36393b = map;
        this.f36394c = map2;
        this.s = str12;
        this.C = j5;
        this.F = str13;
        this.G = str14;
    }

    public HttpLibType A() {
        return this.p;
    }

    public long B() {
        return this.d;
    }

    public int C() {
        return this.g;
    }

    public boolean D() {
        return this.K;
    }

    public boolean E() {
        return this.L;
    }

    public String F() {
        return this.M;
    }

    public boolean G() {
        return this.r;
    }

    public String H() {
        return this.N;
    }

    public String I() {
        return this.F;
    }

    public String J() {
        return this.G;
    }

    public com.networkbench.agent.impl.k.b K() {
        return this.t;
    }

    public void a(NBSTransactionState nBSTransactionState) {
        if (nBSTransactionState.isOkhttp3()) {
            this.z = nBSTransactionState.getTcpHandShakeTime();
            this.A = nBSTransactionState.getSslHandShakeTime();
            this.v = nBSTransactionState.remainPackage;
            this.B = nBSTransactionState.getFirstPacketPeriod();
        }
    }

    public int b() {
        return this.v;
    }

    public int c() {
        return this.u;
    }

    public String d() {
        return this.w;
    }

    public long e() {
        return this.C;
    }

    public Map f() {
        return this.I;
    }

    public void g(int i2) {
        synchronized (this.f36400k) {
            this.f36399j = i2;
        }
    }

    public String h() {
        return this.J;
    }

    public String i() {
        return this.D;
    }

    public String j() {
        return this.E;
    }

    public int k() {
        return this.x;
    }

    public String l() {
        return this.y;
    }

    public int m() {
        return this.z;
    }

    public int n() {
        return this.A;
    }

    public int o() {
        return this.B;
    }

    public int p() {
        return this.f36397h;
    }

    public RequestMethodType q() {
        return this.o;
    }

    public String r() {
        return this.f36395e;
    }

    public int s() {
        return this.f36398i;
    }

    public int t() {
        int i2;
        synchronized (this.f36400k) {
            i2 = this.f36399j;
            if (i2 == 0) {
                i2 = -1;
            }
        }
        return i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("url:" + this.f36395e);
        sb.append(", carrier:" + this.f36396f);
        sb.append(", time:" + this.g);
        sb.append(", statusCode:" + this.f36398i);
        sb.append(", errorCode:" + this.f36399j);
        sb.append(", byteSent:" + this.l);
        sb.append(", bytesRecieved:" + this.m);
        sb.append(", appData:" + this.f36392a);
        sb.append(", formattedUrlParams:" + this.q);
        sb.append(", requestmethodtype:" + this.o);
        sb.append(", cdnHeaderName :" + this.E);
        sb.append(", contentType : " + this.D);
        sb.append(", dnstime : " + this.x);
        sb.append(", connect : " + this.z);
        sb.append(", ssl : " + this.A);
        sb.append(", firstpk : " + this.B);
        sb.append(", remainpk : " + this.v);
        sb.append(", timeStamp : " + this.d);
        sb.append(", queue : " + this.u);
        return sb.toString();
    }

    public int u() {
        int i2;
        synchronized (this.f36400k) {
            i2 = this.f36399j;
        }
        return i2;
    }

    public String v() {
        return this.q;
    }

    public long w() {
        return this.l;
    }

    public long x() {
        long j2 = this.m;
        if (j2 == -1) {
            return 0L;
        }
        return j2;
    }

    public String y() {
        return this.f36392a;
    }

    public String z() {
        return this.n;
    }

    public void b(String str) {
        this.E = str;
    }

    public void c(String str) {
        this.y = str;
    }

    public void d(int i2) {
        this.z = i2;
    }

    public void e(int i2) {
        this.B = i2;
    }

    public void f(int i2) {
        this.f36398i = i2;
    }

    public void h(int i2) {
        this.g = i2;
    }

    public void i(int i2) {
        this.f36397h = i2;
    }

    public void b(int i2) {
        this.x = i2;
    }

    public void c(int i2) {
        this.A = i2;
    }

    public void d(String str) {
        this.M = str;
    }

    public void e(String str) {
        this.N = str;
    }

    public void b(boolean z) {
        this.L = z;
    }

    public void c(boolean z) {
        this.r = z;
    }

    public int g() {
        return this.H;
    }

    public void a(int i2) {
        this.v = i2;
    }

    public void a(long j2) {
        this.C = j2;
    }

    public void a(Map map) {
        this.I = map;
    }

    public void a(String str) {
        this.J = str;
    }

    public void a(RequestMethodType requestMethodType) {
        this.o = requestMethodType;
    }

    public void a(HttpLibType httpLibType) {
        this.p = httpLibType;
    }

    public void a(boolean z) {
        this.K = z;
    }

    public String a() {
        return this.s;
    }

    public void a(com.networkbench.agent.impl.k.b bVar) {
        this.t = bVar;
    }
}

package com.networkbench.agent.impl.d.b;

import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.networkbench.agent.impl.d.b {
    private static e o = f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap<String, String> f36711c;
    public HashMap<String, String> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.k.b f36712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36713f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f36714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f36715i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, Object> f36716j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f36717k;
    private String l;
    private String m;
    private String n;
    private RequestMethodType p;
    private String q;
    private HttpLibType r;
    private int s;
    private Map t;
    private String u;
    private String v;

    public b(NBSTransactionState nBSTransactionState, String str, Map<String, Object> map, String str2) {
        super(com.networkbench.agent.impl.d.f.HttpError);
        this.r = HttpLibType.URLConnection;
        this.f36711c = new HashMap<>();
        this.d = new HashMap<>();
        com.networkbench.agent.impl.a.a.b transactionData = nBSTransactionState.getTransactionData();
        String strR = transactionData.r();
        String strD = transactionData.d();
        if (strR == null) {
            return;
        }
        this.f36713f = strR;
        this.g = transactionData.s() == 0 ? -1 : transactionData.s();
        a(System.currentTimeMillis());
        if (transactionData.G()) {
            this.f36715i = "";
        } else {
            this.f36715i = t();
        }
        this.f36714h = str;
        this.f36716j = map;
        this.m = transactionData.v();
        this.l = strD;
        this.f36717k = str2;
        this.p = transactionData.q();
        this.n = transactionData.l();
        this.q = transactionData.j();
        this.r = transactionData.A();
        this.s = transactionData.p();
        this.v = transactionData.h();
        this.f36711c = transactionData.f36393b;
        this.d = transactionData.f36394c;
        this.u = transactionData.H();
        this.t = transactionData.f();
        this.f36712e = transactionData.K();
    }

    private boolean a(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        if (className.startsWith(com.networkbench.a.f36385b)) {
            return true;
        }
        if (className.startsWith("dalvik.system.VMStack") && methodName.startsWith("getThreadStackTrace")) {
            return true;
        }
        return className.startsWith("java.lang.Thread") && methodName.startsWith("getStackTrace");
    }

    private String t() {
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int i2 = 0;
        for (int i3 = 0; i3 < stackTrace.length; i3++) {
            StackTraceElement stackTraceElement = stackTrace[i3];
            if (!a(stackTraceElement)) {
                sb.append(stackTraceElement.toString());
                if (i3 <= stackTrace.length - 1) {
                    sb.append("\n");
                }
                i2++;
                if (i2 >= NBSAgent.getStackTraceLimit()) {
                    break;
                }
            }
        }
        return sb.toString();
    }

    public void b(String str) {
        this.f36713f = str;
    }

    public Map c() {
        return this.t;
    }

    public String d() {
        return this.u;
    }

    public String e() {
        return this.v;
    }

    public int f() {
        return this.s;
    }

    public String g() {
        return this.m;
    }

    public RequestMethodType h() {
        return this.p;
    }

    public String i() {
        return this.l;
    }

    public HttpLibType j() {
        return this.r;
    }

    public String k() {
        return this.f36713f;
    }

    public int l() {
        return this.g;
    }

    public String m() {
        return this.f36714h;
    }

    public String n() {
        return this.f36715i;
    }

    public Map<String, Object> o() {
        return this.f36716j;
    }

    public String p() {
        return this.f36717k;
    }

    public String q() {
        return this.n;
    }

    public String r() {
        return this.q;
    }

    public com.networkbench.agent.impl.k.b s() {
        return this.f36712e;
    }

    @Override // com.networkbench.agent.impl.d.b
    public String toString() {
        return ("HttpErrorMeasurement: url:" + this.f36713f + ", httpStatusCode:" + this.g + ",responseBody:" + this.f36714h + ", stackTrace:" + this.f36715i + ",message:" + this.f36717k + ",urlParams:" + this.l + ", filterParams:" + this.m + ", remoteIp:" + this.n + ",appPhase:" + this.s + ", requestMethodType:" + this.p + ", cdn_vendor_name:" + this.q + ",appPhase : +" + this.s).replaceAll("[\r\n]", ";");
    }

    public void b(Map<String, Object> map) {
        this.f36716j = map;
    }

    public void c(String str) {
        this.f36715i = str;
    }

    public void a(Map map) {
        this.t = map;
    }

    public void a(String str) {
        this.n = str;
    }

    public void a(int i2) {
        this.g = i2;
    }
}

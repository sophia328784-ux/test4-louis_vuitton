package com.networkbench.agent.impl.harvest.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.util.ak;
import defpackage.o60;
import defpackage.pq0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    private static final m g = new m();
    private com.networkbench.agent.impl.util.g m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.networkbench.agent.impl.c.e f37273f = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f37269a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f37270b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f37271c = true;
    public String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f37272e = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37274h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f37275i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, Object> f37276j = new HashMap();
    private long l = System.currentTimeMillis();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f37277k = System.nanoTime();

    private m() {
    }

    private Object d(String str) {
        if (this.f37276j.containsKey(str)) {
            return this.f37276j.get(str);
        }
        return null;
    }

    public void a(Map<String, Object> map) {
        this.f37276j = map;
        this.f37270b = b("ak");
        this.f37269a = b("sk");
        this.d = b("so_host");
        this.f37272e = b("tySm2Cert");
        if (com.networkbench.agent.impl.util.r.u().B && TextUtils.isEmpty(this.f37272e)) {
            this.f37273f.c("tySm2Cert config is empty");
        }
        this.f37271c = c("so_disabled").doubleValue() != 0.0d;
        try {
            this.f37274h = b("tySecretKey");
        } catch (Throwable unused) {
        }
        this.f37275i = c("vd").doubleValue() == 1.0d;
        com.networkbench.agent.impl.util.r.u().D = this.f37275i;
        com.networkbench.agent.impl.util.r.u().b(this.f37274h);
        if (TextUtils.isEmpty(this.f37274h)) {
            return;
        }
        c();
    }

    public long b() {
        return ((System.nanoTime() - this.f37277k) / 1000000) + this.l;
    }

    public com.networkbench.agent.impl.util.g c() {
        try {
            if (TextUtils.isEmpty(this.f37274h)) {
                return null;
            }
            this.m = new com.networkbench.agent.impl.util.g(this.f37274h);
            com.networkbench.agent.impl.util.r.u().a(this.m);
        } catch (Throwable th) {
            com.networkbench.agent.impl.util.r.A.a("generate encryptContent error:", th);
        }
        return this.m;
    }

    private String b(String str) {
        Object objD = d(str);
        if (objD != null) {
            return objD.toString();
        }
        return "";
    }

    private Double c(String str) {
        try {
            Object objD = d(str);
            if (objD != null) {
                return (Double) objD;
            }
        } catch (Throwable th) {
            this.f37273f.a("parseKeyDouble error!", th);
        }
        return Double.valueOf(0.0d);
    }

    public void a(String str) {
        try {
            this.f37277k = System.nanoTime();
            this.l = ak.q(str);
        } catch (Throwable th) {
            o60.C(th, pq0.r("error get dc time stamp, dc value is:", str, ", error:"), this.f37273f);
        }
    }

    public static m a() {
        return g;
    }
}

package com.networkbench.agent.impl.plugin;

import android.content.Context;
import com.networkbench.agent.impl.harvest.type.BaseHarvestable;
import com.networkbench.agent.impl.harvest.type.HarvestableType;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends BaseHarvestable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static com.networkbench.agent.impl.c.e f38121f = com.networkbench.agent.impl.c.f.a();
    protected static final int g = 60;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f38122a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f38123h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.networkbench.agent.impl.data.c.d f38124i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f38125j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f38126k;
    public boolean l;
    public boolean m;
    protected String n;
    protected boolean o;
    public int p;
    protected com.networkbench.agent.impl.plugin.f.i q;

    public h(HarvestableType harvestableType, com.networkbench.agent.impl.plugin.f.i iVar, com.networkbench.agent.impl.data.c.d dVar) {
        super(harvestableType);
        this.f38123h = "";
        this.f38126k = 60;
        this.o = true;
        this.p = -1;
        this.q = iVar;
        this.f38124i = dVar;
        this.l = false;
        this.m = false;
        this.f38125j = new d();
        this.n = g();
        if (dVar.a()) {
            this.o = false;
        }
        this.f38122a = System.currentTimeMillis();
    }

    public String a(Context context) {
        try {
            String[] strArrA = new c(context).a();
            return (strArrA == null || strArrA.length <= 0) ? "" : strArrA[0];
        } catch (Exception e2) {
            f38121f.a("error getDnsServer e:" + e2.getMessage());
            return "";
        }
    }

    public abstract void a(Map<String, Object> map);

    public abstract boolean b();

    public long c() {
        return this.f38122a;
    }

    public String d() {
        return this.n;
    }

    public void e() {
        com.networkbench.agent.impl.plugin.f.e eVar = com.networkbench.agent.impl.plugin.f.h.f38061i.get(this.f38124i.f36846a);
        if (eVar != null) {
            eVar.f38054b = true;
        }
        this.f38122a = System.currentTimeMillis();
        a();
    }

    public boolean f() {
        return this.f38125j.a();
    }

    public String g() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
            JSONObject jSONObject = this.f38124i.d;
            if (jSONObject != null) {
                messageDigest.update(jSONObject.toString().getBytes());
            }
            String str = this.f38124i.f36848c;
            if (str != null) {
                messageDigest.update(str.getBytes());
            }
            return new String(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            f38121f.e("Unable to initialize SHA-1 hash algorithm");
            return null;
        }
    }

    public String toString() {
        return "PluginObserver{action=" + this.f38124i.toString() + "} ";
    }

    public void a() {
        this.l = true;
        this.q.a(this.f38124i.f36846a);
    }

    public boolean a(com.networkbench.agent.impl.plugin.f.i iVar) {
        return this.f38125j.a(iVar);
    }
}

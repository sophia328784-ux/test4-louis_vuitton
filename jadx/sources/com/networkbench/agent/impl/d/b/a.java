package com.networkbench.agent.impl.d.b;

import com.networkbench.agent.impl.d.f;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.n00;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.networkbench.agent.impl.d.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f36708c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.a.a.b f36709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f36710f;
    private String g;

    public a(com.networkbench.agent.impl.a.a.b bVar) {
        super(f.Network);
        this.f36709e = bVar;
        a(bVar.B());
        a(bVar.a());
        this.f36710f = "";
        this.g = "";
    }

    public void a(String str) {
        if (ak.r(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!ak.r(this.f36709e.f36392a)) {
                jSONObject = new JSONObject(this.f36709e.f36392a);
            }
            jSONObject.put(r.u().f38396h, str);
            this.f36709e.f36392a = jSONObject.toString();
        } catch (Throwable unused) {
        }
    }

    public com.networkbench.agent.impl.a.a.b c() {
        return this.f36709e;
    }

    public String d() {
        return this.f36710f;
    }

    public String e() {
        return this.g;
    }

    public String f() {
        String strR = this.f36709e.r();
        if (!ak.r(this.f36709e.d())) {
            StringBuilder sbU = n00.u(strR, "?");
            sbU.append(this.f36709e.d());
            strR = sbU.toString();
        }
        if (!ak.r(strR) && strR.length() > 1024) {
            strR = strR.substring(0, 1024);
        }
        return strR == null ? "" : strR;
    }

    public int g() {
        return this.f36709e.s();
    }

    @Override // com.networkbench.agent.impl.d.b
    public String toString() {
        return "HttpActionMeasurement{" + this.f36709e.toString() + '}';
    }

    public void a(String str, String str2) {
        if (str == null) {
            str = "";
        }
        this.f36710f = str;
        if (str2 == null) {
            str2 = "";
        }
        this.g = str2;
    }

    public void a(com.networkbench.agent.impl.a.a.b bVar) {
        this.f36709e = bVar;
    }

    public void a(int i2) {
        this.f36709e.g(i2);
    }
}

package com.networkbench.agent.impl.harvest.a;

import com.linkplay.medialib.FinalDataUtil;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.util.ab;
import defpackage.n00;
import defpackage.z81;
import java.net.HttpURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f37263b;
    protected final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f37264e;

    public h(String str, boolean z) {
        this.f37264e = str;
        this.f37262a = z;
    }

    private String c(String str) {
        return str.startsWith("04") ? str.substring(2) : str;
    }

    public abstract String a();

    public HttpURLConnection a(HttpURLConnection httpURLConnection) {
        if (com.networkbench.agent.impl.util.r.u().B) {
            this.d.a("SM4_SECRET_VALUE:" + e.f37258b);
            if (!ab.c(e.f37258b)) {
                String strC = c(e.f37258b);
                z81.j("format secret value:", strC, this.d);
                httpURLConnection.setRequestProperty(e.f37257a, strC);
            }
        }
        return httpURLConnection;
    }

    public com.networkbench.agent.impl.harvest.d.c b() {
        return new com.networkbench.agent.impl.harvest.d.b();
    }

    public abstract void b(HttpURLConnection httpURLConnection);

    public void b(String str) {
        this.f37263b = str;
    }

    public void c(HttpURLConnection httpURLConnection) {
    }

    public String c() {
        return this.f37263b;
    }

    public void a(long j2) {
    }

    public String a(String str) {
        if (this.f37264e.startsWith(SecurityConstants.SECURITY_NONE)) {
            return n00.r(this.f37264e, str, new StringBuilder());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f37262a ? "https://" : FinalDataUtil.HTTP_HEAD);
        return n00.r(this.f37264e, str, sb);
    }

    public com.networkbench.agent.impl.harvest.d.c a(String str, com.networkbench.agent.impl.harvest.d.c cVar) {
        com.networkbench.agent.impl.c.j.b("type:" + c() + ", responseBody:" + str);
        return cVar;
    }
}

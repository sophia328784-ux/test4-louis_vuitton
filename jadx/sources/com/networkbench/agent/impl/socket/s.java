package com.networkbench.agent.impl.socket;

import com.linkplay.network.SecurityConstants;
import defpackage.d21;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f38226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38228c = "/";
    private a d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38229e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f38230f = false;

    private String a(String str, int i2) {
        if (i2 > 0) {
            String strK = pq0.k(i2, ":");
            if (!str.endsWith(strK)) {
                return str.concat(strK);
            }
        }
        return str;
    }

    private String g() {
        String str = this.f38227b;
        return str != null ? str : "unknown-host";
    }

    public String b() {
        return this.f38227b;
    }

    public void c(String str) {
        if (str != null) {
            this.f38228c = str;
        }
    }

    public boolean d(String str) {
        if (str != null) {
            return str.regionMatches(true, 0, "http:", 0, 5) || str.regionMatches(true, 0, "https:", 0, 6);
        }
        return false;
    }

    public a e() {
        return this.d;
    }

    public String f() {
        String str;
        a aVar;
        String strG = g();
        if (this.f38230f) {
            return a(strG, this.f38229e);
        }
        String str2 = this.f38228c;
        if (d(str2)) {
            return str2;
        }
        String str3 = "";
        if (this.d != null) {
            str = "" + this.d.f38234c + ":";
        } else {
            str = "";
        }
        if (str2.startsWith("//")) {
            return str.concat(str2);
        }
        String strConcat = str.concat("//");
        if (str2.startsWith(strG)) {
            return strConcat.concat(str2);
        }
        if (this.f38229e > 0 && ((aVar = this.d) == null || aVar.d != this.f38229e)) {
            String str4 = ":" + this.f38229e;
            if (!strG.endsWith(str4)) {
                str3 = str4;
            }
        }
        return d21.k(strConcat, strG, str3, str2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("hostAddress: " + this.f38226a);
        sb.append("hostname: " + this.f38227b);
        sb.append("httpPath: " + this.f38228c);
        sb.append("scheme: " + this.d);
        sb.append("hostPort: " + this.f38229e);
        return sb.toString();
    }

    public enum a {
        HTTP(SecurityConstants.SECURITY_NONE, 80),
        HTTPS(SecurityConstants.SECURITY_HTTPS, 443);


        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f38234c;
        private int d;

        a(String str, int i2) {
            this.f38234c = str;
            this.d = i2;
        }

        public String a() {
            return this.f38234c;
        }

        public int b() {
            return this.d;
        }
    }

    public void b(String str) {
        this.f38227b = str;
    }

    public int c() {
        return this.f38229e;
    }

    public void a(int i2) {
        com.networkbench.agent.impl.util.b.a(i2 > 0);
        if (i2 > 0) {
            this.f38229e = i2;
        }
    }

    public void a(boolean z) {
        this.f38230f = z;
    }

    public void a(String str) {
        this.f38226a = str;
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public String a() {
        return this.f38226a;
    }

    public String d() {
        return this.f38228c;
    }
}

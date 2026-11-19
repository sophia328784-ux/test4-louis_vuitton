package com.batch.android.g1;

import com.appsflyer.sdk_base.referrer.Payload;

/* JADX INFO: loaded from: classes2.dex */
public class a extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23406c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f23407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f23408f;

    /* JADX INFO: renamed from: com.batch.android.g1.a$a, reason: collision with other inner class name */
    public enum EnumC0053a {
        OK,
        BUMP,
        RECHECK,
        RESEND,
        UNKNOWN
    }

    public a(String str) {
        super(com.batch.android.f1.f.ATTRIBUTES_CHECK, str);
        this.d = -1L;
        this.f23407e = null;
    }

    public void a(String str) {
        this.f23406c = str;
    }

    public void b(String str) {
        this.f23408f = str;
    }

    public EnumC0053a c() {
        String str = this.f23406c;
        if (str == null) {
            return EnumC0053a.UNKNOWN;
        }
        if (Payload.RESPONSE_OK.equalsIgnoreCase(str)) {
            return EnumC0053a.OK;
        }
        if ("BUMP".equalsIgnoreCase(this.f23406c)) {
            return EnumC0053a.BUMP;
        }
        if ("RECHECK".equalsIgnoreCase(this.f23406c)) {
            return EnumC0053a.RECHECK;
        }
        return "RESEND".equalsIgnoreCase(this.f23406c) ? EnumC0053a.RESEND : EnumC0053a.UNKNOWN;
    }

    public String d() {
        return this.f23408f;
    }

    public Long e() {
        return this.f23407e;
    }

    public long f() {
        return this.d;
    }

    public void a(long j2) {
        this.d = j2;
    }

    public void a(Long l) {
        this.f23407e = l;
    }
}

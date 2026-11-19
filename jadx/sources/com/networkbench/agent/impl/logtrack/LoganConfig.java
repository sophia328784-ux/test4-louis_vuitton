package com.networkbench.agent.impl.logtrack;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class LoganConfig {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected static final int f37441i = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final long f37442j = 86400000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f37443k = 1048576;
    private static final long l = 604800000;
    private static final long m = 10485760;
    private static final long n = 52428800;
    private static final int o = 500;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f37444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f37445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f37446c;
    long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f37447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f37448f;
    byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    byte[] f37449h;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f37450a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f37451b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        byte[] f37453e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        byte[] f37454f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f37452c = LoganConfig.m;
        long d = LoganConfig.l;
        long g = LoganConfig.n;

        public LoganConfig build() {
            LoganConfig loganConfig = new LoganConfig();
            loganConfig.a(this.f37450a);
            loganConfig.b(this.f37451b);
            loganConfig.b(this.f37452c);
            loganConfig.c(this.g);
            loganConfig.a(this.d);
            loganConfig.b(this.f37453e);
            loganConfig.a(this.f37454f);
            return loganConfig;
        }

        public Builder setCachePath(String str) {
            this.f37450a = str;
            return this;
        }

        public Builder setDay(long j2) {
            this.d = j2 * LoganConfig.f37442j;
            return this;
        }

        public Builder setEncryptIV16(byte[] bArr) {
            this.f37454f = bArr;
            return this;
        }

        public Builder setEncryptKey16(byte[] bArr) {
            this.f37453e = bArr;
            return this;
        }

        public Builder setMaxFile(long j2) {
            this.f37452c = j2 * LoganConfig.f37443k;
            return this;
        }

        public Builder setMinSDCard(long j2) {
            this.g = j2;
            return this;
        }

        public Builder setPath(String str) {
            this.f37451b = str;
            return this;
        }
    }

    private LoganConfig() {
        this.f37446c = m;
        this.d = l;
        this.f37447e = 500L;
        this.f37448f = n;
    }

    public boolean a() {
        return (TextUtils.isEmpty(this.f37444a) || TextUtils.isEmpty(this.f37445b) || this.g == null || this.f37449h == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j2) {
        this.f37448f = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        this.f37445b = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j2) {
        this.f37446c = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(byte[] bArr) {
        this.g = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.f37444a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2) {
        this.d = j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(byte[] bArr) {
        this.f37449h = bArr;
    }
}

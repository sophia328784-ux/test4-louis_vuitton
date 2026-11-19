package com.batch.android.g1;

/* JADX INFO: loaded from: classes2.dex */
public class b extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23413c;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f23414e;

    public b(String str) {
        super(com.batch.android.f1.f.ATTRIBUTES, str);
        this.d = -1L;
    }

    public void a(long j2) {
        this.d = j2;
    }

    public void b(String str) {
        this.f23413c = str;
    }

    public String c() {
        return this.f23414e;
    }

    public String d() {
        return this.f23413c;
    }

    public long e() {
        return this.d;
    }

    public void a(String str) {
        this.f23414e = str;
    }
}

package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class XMSSAddress {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f78173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78174c;
    public final int d;

    public static abstract class Builder<T extends Builder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f78175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f78176b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f78177c = 0;
        public int d = 0;

        public Builder(int i2) {
            this.f78175a = i2;
        }
    }

    public XMSSAddress(Builder builder) {
        this.f78172a = builder.f78176b;
        this.f78173b = builder.f78177c;
        this.f78174c = builder.f78175a;
        this.d = builder.d;
    }

    public byte[] a() {
        byte[] bArr = new byte[32];
        Pack.c(this.f78172a, bArr, 0);
        Pack.g(this.f78173b, bArr, 4);
        Pack.c(this.f78174c, bArr, 12);
        Pack.c(this.d, bArr, 28);
        return bArr;
    }
}

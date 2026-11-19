package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
final class HashTreeAddress extends XMSSAddress {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f78149f;

    public static class Builder extends XMSSAddress.Builder<Builder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f78150e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f78151f;

        public Builder() {
            super(2);
            this.f78150e = 0;
            this.f78151f = 0;
        }
    }

    public HashTreeAddress(Builder builder) {
        super(builder);
        this.f78148e = builder.f78150e;
        this.f78149f = builder.f78151f;
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSAddress
    public final byte[] a() {
        byte[] bArrA = super.a();
        Pack.c(0, bArrA, 16);
        Pack.c(this.f78148e, bArrA, 20);
        Pack.c(this.f78149f, bArrA, 24);
        return bArrA;
    }
}

package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
final class LTreeAddress extends XMSSAddress {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f78155f;
    public final int g;

    public static class Builder extends XMSSAddress.Builder<Builder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f78156e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f78157f;
        public int g;

        public Builder() {
            super(1);
            this.f78156e = 0;
            this.f78157f = 0;
            this.g = 0;
        }
    }

    public LTreeAddress(Builder builder) {
        super(builder);
        this.f78154e = builder.f78156e;
        this.f78155f = builder.f78157f;
        this.g = builder.g;
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSAddress
    public final byte[] a() {
        byte[] bArrA = super.a();
        Pack.c(this.f78154e, bArrA, 16);
        Pack.c(this.f78155f, bArrA, 20);
        Pack.c(this.g, bArrA, 24);
        return bArrA;
    }
}

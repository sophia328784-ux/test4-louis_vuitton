package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
final class OTSHashAddress extends XMSSAddress {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f78158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f78159f;
    public final int g;

    public static class Builder extends XMSSAddress.Builder<Builder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f78160e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f78161f;
        public int g;

        public Builder() {
            super(0);
            this.f78160e = 0;
            this.f78161f = 0;
            this.g = 0;
        }
    }

    public OTSHashAddress(Builder builder) {
        super(builder);
        this.f78158e = builder.f78160e;
        this.f78159f = builder.f78161f;
        this.g = builder.g;
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSAddress
    public final byte[] a() {
        byte[] bArrA = super.a();
        Pack.c(this.f78158e, bArrA, 16);
        Pack.c(this.f78159f, bArrA, 20);
        Pack.c(this.g, bArrA, 24);
        return bArrA;
    }
}

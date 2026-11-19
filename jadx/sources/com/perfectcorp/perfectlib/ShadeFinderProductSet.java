package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderProductSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ShadeFinderProduct f39855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShadeFinderProduct f39856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShadeFinderProduct f39857c;
    public final ShadeFinderProduct d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ShadeFinderProduct f39858e;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ShadeFinderProduct f39859a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ShadeFinderProduct f39860b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ShadeFinderProduct f39861c;
        public ShadeFinderProduct d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ShadeFinderProduct f39862e;

        public Builder(ShadeFinderProduct shadeFinderProduct) {
            this.f39859a = shadeFinderProduct;
        }
    }

    public ShadeFinderProductSet(Builder builder) {
        this.f39855a = builder.f39859a;
        this.f39856b = builder.f39860b;
        this.f39857c = builder.f39861c;
        this.d = builder.f39862e;
        this.f39858e = builder.d;
    }

    public final ShadeFinderProduct getBestMatch() {
        return this.f39855a;
    }

    public final ShadeFinderProduct getCooler() {
        return this.f39857c;
    }

    public final ShadeFinderProduct getDarker() {
        return this.f39858e;
    }

    public final ShadeFinderProduct getLighter() {
        return this.d;
    }

    public final ShadeFinderProduct getWarmer() {
        return this.f39856b;
    }
}

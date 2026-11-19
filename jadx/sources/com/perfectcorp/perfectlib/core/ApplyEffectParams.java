package com.perfectcorp.perfectlib.core;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class ApplyEffectParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile String f40064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile String f40065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile String f40066c;
    public volatile String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile String f40067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile String f40068f;
    public volatile boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f40069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f40070i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f40071j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f40072k;
    public volatile boolean l;
    public volatile boolean m;
    public volatile boolean n;
    public volatile boolean o;
    public volatile boolean p;
    public volatile boolean q;
    public volatile boolean r;
    public volatile boolean s;

    public final void a(ApplyEffectParams applyEffectParams) {
        this.f40064a = applyEffectParams.f40064a;
        this.f40065b = applyEffectParams.f40065b;
        this.g = applyEffectParams.g;
        this.f40069h = applyEffectParams.f40069h;
        this.f40070i = applyEffectParams.f40070i;
        this.f40071j = applyEffectParams.f40071j;
        this.f40072k = applyEffectParams.f40072k;
        this.l = applyEffectParams.l;
        this.m = applyEffectParams.m;
        this.n = applyEffectParams.n;
        this.o = applyEffectParams.o;
        this.p = applyEffectParams.p;
        this.q = applyEffectParams.q;
        this.r = applyEffectParams.r;
        this.s = applyEffectParams.s;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ApplyEffectCtrl$Params");
        toStringHelper.b("defaultOccluderFilePath", this.f40064a);
        toStringHelper.b("defaultEyewearOccluderFilePath", this.f40065b);
        toStringHelper.b("defaultNecklaceOccluderFilePath1", this.f40066c);
        toStringHelper.b("defaultNecklaceOccluderFilePath2", this.d);
        toStringHelper.b("eyeshadowHdrFilePath", this.f40067e);
        toStringHelper.b("eyeshadowPngFilePath", this.f40068f);
        toStringHelper.c("enableFaceShaper", this.g);
        toStringHelper.c("enableEyeEnlarger", this.f40069h);
        toStringHelper.c("enableMakeup", this.f40070i);
        toStringHelper.c("enableHairDye", this.f40071j);
        toStringHelper.c("enableFoundationOnly", this.f40072k);
        toStringHelper.c("enableFunSticker", this.l);
        toStringHelper.c("enableDetailedReshape", this.m);
        toStringHelper.c("enableCubeEyewear", this.n);
        toStringHelper.c("enableReal3DEyewear", this.o);
        toStringHelper.c("enableEarrings", this.p);
        toStringHelper.c("enableBackground", this.q);
        toStringHelper.c("enableTeethWhitening", this.r);
        toStringHelper.c("enableNecklace", this.s);
        return toStringHelper.toString();
    }
}

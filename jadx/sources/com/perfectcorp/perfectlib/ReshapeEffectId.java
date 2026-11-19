package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class ReshapeEffectId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReshapeEffect f39822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39823b;

    public ReshapeEffectId(ReshapeEffect reshapeEffect, int i2) {
        this.f39822a = reshapeEffect;
        this.f39823b = i2;
    }

    public final int getIntensity() {
        return this.f39823b;
    }

    public final ReshapeEffect getType() {
        return this.f39822a;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ReshapeEffectId");
        toStringHelper.b("type", this.f39822a.name());
        toStringHelper.b("intensity", Integer.valueOf(this.f39823b));
        return toStringHelper.toString();
    }
}

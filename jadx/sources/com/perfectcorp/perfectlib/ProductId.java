package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;

/* JADX INFO: loaded from: classes3.dex */
public final class ProductId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EffectId f39795a;

    public ProductId(EffectId effectId) {
        this.f39795a = effectId;
    }

    public final NailPosition getNailPosition() {
        return this.f39795a.getNailPosition();
    }

    public final String getPaletteGuid() {
        return this.f39795a.getPaletteGuid();
    }

    public final String getPatternGuid() {
        return this.f39795a.getPatternGuid();
    }

    public final String getProductGuid() {
        return this.f39795a.getProductGuid();
    }

    public final String getSkuGuid() {
        return this.f39795a.getSkuGuid();
    }

    public final String getSkuSetGuid() {
        return this.f39795a.getSkuSetGuid();
    }

    public final PerfectEffect getType() {
        return this.f39795a.getType();
    }

    public final String getWearingStyleGuid() {
        return this.f39795a.getWearingStyleGuid();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ProductId");
        toStringHelper.b("type", getType().name());
        toStringHelper.b("skuSetGuid", getSkuSetGuid());
        toStringHelper.b("productGuid", getProductGuid());
        toStringHelper.b("skuGuid", getSkuGuid());
        toStringHelper.b("paletteGuid", getPaletteGuid());
        toStringHelper.b("patternGuid", getPatternGuid());
        toStringHelper.b("wearingStyleGuid", getWearingStyleGuid());
        toStringHelper.b("nailPosition", getNailPosition());
        return toStringHelper.toString();
    }
}

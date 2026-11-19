package com.perfectcorp.perfectlib;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class SkuSetItemInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductInfo f39955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SkuInfo f39956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39957c;
    public final com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.b d;

    public SkuSetItemInfo(ProductInfo productInfo, SkuInfo skuInfo, com.perfectcorp.perfectlib.ph.database.ymk.skuset.i.a aVar) {
        Objects.requireNonNull(productInfo);
        this.f39955a = productInfo;
        Objects.requireNonNull(skuInfo);
        this.f39956b = skuInfo;
        this.d = null;
        List listC = SkuInfo.c(skuInfo);
        int i2 = aVar.paletteColorIndex;
        this.f39957c = (i2 < 0 || i2 >= listC.size()) ? 0 : ((Integer) listC.get(i2)).intValue();
    }

    public final int getColor() {
        return this.f39957c;
    }

    public final com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.b getPatternInfo() {
        return this.d;
    }

    public final ProductInfo getProductInfo() {
        return this.f39955a;
    }

    public final SkuInfo getSkuInfo() {
        return this.f39956b;
    }

    public SkuSetItemInfo(ProductInfo productInfo, SkuInfo skuInfo, com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.a aVar) {
        Objects.requireNonNull(productInfo);
        this.f39955a = productInfo;
        Objects.requireNonNull(skuInfo);
        this.f39956b = skuInfo;
        this.d = null;
        List listC = SkuInfo.c(skuInfo);
        int i2 = aVar.paletteColorIndex;
        this.f39957c = (i2 < 0 || i2 >= listC.size()) ? 0 : ((Integer) listC.get(i2)).intValue();
    }

    public SkuSetItemInfo(ProductInfo productInfo, SkuInfo skuInfo, com.perfectcorp.perfectlib.ph.database.ymk.skuset.k.b bVar) {
        Objects.requireNonNull(productInfo);
        this.f39955a = productInfo;
        Objects.requireNonNull(skuInfo);
        this.f39956b = skuInfo;
        Objects.requireNonNull(bVar);
        this.d = bVar;
        this.f39957c = 0;
    }
}

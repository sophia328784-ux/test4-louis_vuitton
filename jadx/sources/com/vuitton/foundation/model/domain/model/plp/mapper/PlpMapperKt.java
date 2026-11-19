package com.vuitton.foundation.model.domain.model.plp.mapper;

import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.plp.PlpProductItem;
import com.vuitton.foundation.model.domain.model.plp.ProductList;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PlpMapperKt {
    public static final PlpPagination a(ProductList productList, int i2) {
        return new PlpPagination(productList.f67855a, productList.f67856b, productList.f67857c, productList.d, productList.f67859f, productList.f67858e, i2, productList.g);
    }

    public static final PlpProductItem b(ProductShort productShort, boolean z) {
        productShort.getClass();
        String str = productShort.f68125a;
        String str2 = productShort.f68126b;
        String str3 = productShort.f68128e;
        String str4 = productShort.d;
        String str5 = productShort.f68131i;
        boolean z2 = productShort.f68130h;
        VirtualTryOn virtualTryOn = productShort.q;
        boolean z3 = (virtualTryOn != null ? virtualTryOn.f68036a : null) != null;
        Asset asset = productShort.f68127c;
        List list = productShort.f68132j;
        List list2 = productShort.f68129f;
        ProductShortCharacteristic productShortCharacteristic = productShort.g;
        boolean z4 = false;
        List list3 = productShort.l;
        ProductShortPrice productShortPrice = productShort.o;
        if (productShortPrice != null && z) {
            z4 = true;
        }
        return new PlpProductItem(str, str2, str3, str4, str5, asset, list, list2, productShortCharacteristic, list3, productShortPrice, z4, productShort.s, productShort.f68133k, productShort.m, z2, z3, productShort.p, false, 262144, null);
    }
}

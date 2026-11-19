package com.vuitton.android.data.dto.productshort.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.product.virtualtryon.VirtualTryOnDto;
import com.vuitton.android.data.dto.product.vto.mapper.TryOnProductMapperKt;
import com.vuitton.android.data.dto.productshort.ProductShortCharacteristicDto;
import com.vuitton.android.data.dto.productshort.ProductShortDto;
import com.vuitton.android.data.dto.productshort.ProductShortPriceDto;
import com.vuitton.android.data.dto.productshort.ProductVariationDto;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductVariation;
import com.vuitton.foundation.model.domain.model.wishlist.WishlistItemId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductShortMapperKt {
    /* JADX WARN: Code duplicated, block: B:30:0x00d1  */
    public static final ProductShort a(ProductShortDto productShortDto, Function1 function1) throws Throwable {
        String str;
        ProductBackground productBackgroundValueOf;
        productShortDto.getClass();
        function1.getClass();
        String str2 = productShortDto.f46637a;
        String str3 = productShortDto.f46640e;
        if (str2 != null) {
            ProductId.Companion companion = ProductId.INSTANCE;
            str = str2;
        } else {
            str = null;
        }
        String str4 = productShortDto.f46638b;
        Asset assetA = AssetMapperKt.a(productShortDto.f46639c);
        String str5 = productShortDto.d;
        String str6 = productShortDto.f46640e;
        List list = productShortDto.f46641f;
        ArrayList<ProductVariationDto> arrayList = new ArrayList();
        for (Object obj : list) {
            String str7 = ((ProductVariationDto) obj).f46655a;
            SkuId.Companion companion2 = SkuId.INSTANCE;
            if (!Intrinsics.c(str7, str3)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (ProductVariationDto productVariationDto : arrayList) {
            String str8 = productVariationDto.f46655a;
            ProductShortCharacteristicDto productShortCharacteristicDto = productVariationDto.f46656b;
            arrayList2.add(new ProductVariation(str8, new ProductShortCharacteristic(productShortCharacteristicDto.f46634a, AssetMapperKt.b(productShortCharacteristicDto.f46635b)), null));
        }
        ProductShortCharacteristicDto productShortCharacteristicDto2 = productShortDto.g;
        ProductShortCharacteristic productShortCharacteristic = productShortCharacteristicDto2 != null ? new ProductShortCharacteristic(productShortCharacteristicDto2.f46634a, AssetMapperKt.b(productShortCharacteristicDto2.f46635b)) : null;
        boolean z = productShortDto.f46642h;
        String str9 = productShortDto.f46643i;
        List list2 = productShortDto.f46644j;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList3.add(AssetMapperKt.a((AssetDto) it.next()));
        }
        String str10 = productShortDto.f46645k;
        if (str10 != null) {
            String upperCase = str10.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            productBackgroundValueOf = ProductBackground.valueOf(upperCase);
            if (productBackgroundValueOf == null) {
                productBackgroundValueOf = ProductBackground.DEFAULT;
            }
        } else {
            productBackgroundValueOf = ProductBackground.DEFAULT;
        }
        ProductBackground productBackground = productBackgroundValueOf;
        String str11 = productShortDto.l;
        List listO = str11 != null ? CollectionsKt.O(str11) : null;
        if (listO == null) {
            listO = EmptyList.f71768b;
        }
        List list3 = listO;
        String str12 = productShortDto.m;
        WishlistItemId wishlistItemId = (WishlistItemId) function1.invoke(new SkuId(str3));
        String str13 = wishlistItemId != null ? wishlistItemId.f68290a : null;
        ProductShortPriceDto productShortPriceDto = productShortDto.n;
        ProductShortPrice productShortPrice = productShortPriceDto != null ? new ProductShortPrice(productShortPriceDto.f46647a, productShortPriceDto.f46648b, productShortPriceDto.f46649c, productShortPriceDto.d) : null;
        boolean z2 = productShortDto.o;
        VirtualTryOnDto virtualTryOnDto = productShortDto.p;
        return new ProductShort(str, str4, assetA, str5, str6, arrayList2, productShortCharacteristic, z, str9, arrayList3, productBackground, list3, str12, str13, productShortPrice, z2, virtualTryOnDto != null ? new VirtualTryOn(TryOnProductMapperKt.a(virtualTryOnDto.f46497a)) : null, productShortDto.q, productShortDto.r, null);
    }

    public static final List b(List list, Function1 function1) {
        function1.getClass();
        if (list == null) {
            List list2 = Collections.EMPTY_LIST;
            list2.getClass();
            return list2;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ProductShortDto productShortDto = (ProductShortDto) it.next();
            ProductShort productShortA = (productShortDto != null ? productShortDto.f46638b : null) != null ? a(productShortDto, function1) : null;
            if (productShortA != null) {
                arrayList.add(productShortA);
            }
        }
        return arrayList;
    }
}

package com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.TryOnProductMapperKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBackgroundUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortCharacteristicUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductVariationUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.WishlistItemIdUiModel;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductVariation;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProductShortMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63004a;

        static {
            int[] iArr = new int[ProductBackground.values().length];
            try {
                iArr[ProductBackground.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProductBackground.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f63004a = iArr;
        }
    }

    public static final ProductBackgroundUiModel a(ProductBackground productBackground) {
        productBackground.getClass();
        int i2 = WhenMappings.f63004a[productBackground.ordinal()];
        if (i2 == 1) {
            return ProductBackgroundUiModel.DEFAULT;
        }
        if (i2 == 2) {
            return ProductBackgroundUiModel.FLOOR;
        }
        v40.g();
        return null;
    }

    public static final ProductShortCharacteristicUiModel b(ProductShortCharacteristic productShortCharacteristic) {
        productShortCharacteristic.getClass();
        return new ProductShortCharacteristicUiModel(productShortCharacteristic.f68134a, AssetMapperKt.a(productShortCharacteristic.f68135b));
    }

    public static final ProductShortPriceUiModel c(ProductShortPrice productShortPrice) {
        productShortPrice.getClass();
        return new ProductShortPriceUiModel(productShortPrice.f68136a, productShortPrice.f68137b, productShortPrice.f68138c, productShortPrice.d);
    }

    public static final ProductShortUiModel d(ProductShort productShort) {
        String str;
        productShort.getClass();
        String str2 = productShort.f68125a;
        if (str2 != null) {
            ProductIdUiModel.f61731c.getClass();
            str = str2;
        } else {
            str = null;
        }
        String str3 = productShort.f68126b;
        AssetUiModel assetUiModelB = AssetMapperKt.b(productShort.f68127c);
        String str4 = productShort.d;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str5 = productShort.f68128e;
        companion.getClass();
        List list = productShort.f68129f;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(e((ProductVariation) it.next()));
        }
        ProductShortCharacteristic productShortCharacteristic = productShort.g;
        ProductShortCharacteristicUiModel productShortCharacteristicUiModelB = productShortCharacteristic != null ? b(productShortCharacteristic) : null;
        boolean z = productShort.f68130h;
        String str6 = productShort.f68131i;
        List list2 = productShort.f68132j;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(AssetMapperKt.b((Asset) it2.next()));
        }
        ProductBackgroundUiModel productBackgroundUiModelA = a(productShort.f68133k);
        List list3 = productShort.l;
        String str7 = productShort.m;
        String str8 = productShort.n;
        WishlistItemIdUiModel wishlistItemIdUiModel = str8 != null ? new WishlistItemIdUiModel(str8) : null;
        ProductShortPrice productShortPrice = productShort.o;
        ProductShortPriceUiModel productShortPriceUiModelC = productShortPrice != null ? c(productShortPrice) : null;
        boolean z2 = productShort.p;
        VirtualTryOn virtualTryOn = productShort.q;
        return new ProductShortUiModel(str, str3, assetUiModelB, str4, str5, arrayList, productShortCharacteristicUiModelB, z, str6, arrayList2, productBackgroundUiModelA, list3, str7, wishlistItemIdUiModel, productShortPriceUiModelC, z2, virtualTryOn != null ? new VirtualTryOnUiModel(TryOnProductMapperKt.a(virtualTryOn.f68036a)) : null, productShort.r, productShort.s, null);
    }

    public static final ProductVariationUiModel e(ProductVariation productVariation) {
        productVariation.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str = productVariation.f68142a;
        companion.getClass();
        return new ProductVariationUiModel(str, b(productVariation.f68143b), null);
    }
}

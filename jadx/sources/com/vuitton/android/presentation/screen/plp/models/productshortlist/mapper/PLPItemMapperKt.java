package com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductVariationUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModelKt;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.plp.PlpSection;
import com.vuitton.foundation.model.domain.model.product.virtualtryon.VirtualTryOn;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortCharacteristic;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductVariation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPItemMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f63002b;

        static {
            int[] iArr = new int[PlpSection.HalfEdito.Alignment.values().length];
            try {
                iArr[PlpSection.HalfEdito.Alignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PlpSection.HalfEdito.Alignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f63001a = iArr;
            int[] iArr2 = new int[PlpSection.CuratedText.Label.Font.values().length];
            try {
                iArr2[PlpSection.CuratedText.Label.Font.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[PlpSection.CuratedText.Label.Font.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PlpSection.CuratedText.Label.Font.LARGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f63002b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00e4  */
    public static final PlpProductUiModel a(ProductShort productShort, boolean z, boolean z2, boolean z3) {
        String str;
        ProductShortPriceUiModel productShortPriceUiModelC;
        productShort.getClass();
        ProductShortPrice productShortPrice = productShort.o;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        String str2 = productShort.f68128e;
        companion.getClass();
        String str3 = productShort.f68125a;
        if (str3 != null) {
            ProductIdUiModel.f61731c.getClass();
            str = str3;
        } else {
            str = null;
        }
        String str4 = productShort.d;
        String str5 = productShort.f68126b;
        AssetUiModel assetUiModelB = AssetMapperKt.b(productShort.f68127c);
        List list = productShort.f68132j;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(AssetMapperKt.b((Asset) it.next()));
        }
        boolean z4 = productShort.f68130h;
        VirtualTryOn virtualTryOn = productShort.q;
        MutableState mutableStateG = SnapshotStateKt.g(new PlpProductUiModel.SkuDataUiModel(str2, str, str4, str5, assetUiModelB, arrayList, HistoryUiModelKt.b(productShort.f68133k), str3 != null ? SnapshotStateKt.g(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z2, false)) : null, z4, (virtualTryOn != null ? virtualTryOn.f68036a : null) != null, productShort.p, null));
        MutableState mutableStateG2 = SnapshotStateKt.g(Boolean.FALSE);
        ListBuilder listBuilderV = CollectionsKt.v();
        ProductShortCharacteristic productShortCharacteristic = productShort.g;
        if (productShortCharacteristic != null) {
            SkuIdUiModel.f61763c.getClass();
            listBuilderV.add(new ProductVariationUiModel(str2, ProductShortMapperKt.b(productShortCharacteristic), null));
            List list2 = productShort.f68129f;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(ProductShortMapperKt.e((ProductVariation) it2.next()));
            }
            listBuilderV.addAll(arrayList2);
        }
        ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
        if (productShortPrice == null) {
            productShortPriceUiModelC = null;
        } else {
            ProductShortPrice productShortPrice2 = z ? productShortPrice : null;
            if (productShortPrice2 != null) {
                productShortPriceUiModelC = ProductShortMapperKt.c(productShortPrice2);
            } else {
                productShortPriceUiModelC = null;
            }
        }
        return new PlpProductUiModel(mutableStateG, mutableStateG2, listBuilderR, productShortPriceUiModelC, productShort.l, productShortPrice != null && z3, null, productShort.s, 64, null);
    }
}

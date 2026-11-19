package com.vuitton.android.data.database.entity.searchhistory.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.database.entity.searchhistory.HistoryItemEntity;
import com.vuitton.android.data.database.entity.searchhistory.ProductBackgroundEntity;
import com.vuitton.android.data.database.entity.searchhistory.ProductShortPriceEntity;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HistoryMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f43617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f43618b;

        static {
            int[] iArr = new int[ProductBackgroundEntity.values().length];
            try {
                iArr[ProductBackgroundEntity.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProductBackgroundEntity.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f43617a = iArr;
            int[] iArr2 = new int[ProductBackground.values().length];
            try {
                iArr2[ProductBackground.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ProductBackground.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f43618b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0032  */
    public static final HistoryItem a(HistoryItemEntity historyItemEntity) {
        ProductBackground productBackground;
        historyItemEntity.getClass();
        String str = historyItemEntity.f43607a;
        String str2 = historyItemEntity.f43610e;
        String str3 = historyItemEntity.f43608b;
        if (str == null) {
            return new HistoryItem.HistoryTextResearch(str3, StringKtExtKt.d(str2));
        }
        String str4 = historyItemEntity.f43609c;
        if (str4 == null) {
            str4 = "";
        }
        ProductBackgroundEntity productBackgroundEntity = historyItemEntity.d;
        if (productBackgroundEntity == null) {
            productBackground = ProductBackground.DEFAULT;
        } else {
            int i2 = WhenMappings.f43617a[productBackgroundEntity.ordinal()];
            if (i2 == 1) {
                productBackground = ProductBackground.DEFAULT;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return null;
                }
                productBackground = ProductBackground.FLOOR;
            }
            if (productBackground == null) {
                productBackground = ProductBackground.DEFAULT;
            }
        }
        return new HistoryItem.HistoryProduct(str, str3, str4, productBackground, StringKtExtKt.d(str2), null, 32, null);
    }

    public static final HistoryItemEntity b(HistoryItem historyItem) {
        ProductBackgroundEntity productBackgroundEntity;
        historyItem.getClass();
        if (!(historyItem instanceof HistoryItem.HistoryProduct)) {
            if (historyItem instanceof HistoryItem.HistoryTextResearch) {
                HistoryItem.HistoryTextResearch historyTextResearch = (HistoryItem.HistoryTextResearch) historyItem;
                return new HistoryItemEntity(null, historyTextResearch.f68191a, null, null, String.valueOf(historyTextResearch.f68192b), null, null);
            }
            v40.g();
            return null;
        }
        HistoryItem.HistoryProduct historyProduct = (HistoryItem.HistoryProduct) historyItem;
        String str = historyProduct.f68186a;
        String str2 = historyProduct.f68187b;
        String str3 = historyProduct.f68188c;
        int i2 = WhenMappings.f43618b[historyProduct.d.ordinal()];
        if (i2 == 1) {
            productBackgroundEntity = ProductBackgroundEntity.DEFAULT;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            productBackgroundEntity = ProductBackgroundEntity.FLOOR;
        }
        ProductBackgroundEntity productBackgroundEntity2 = productBackgroundEntity;
        String strValueOf = String.valueOf(historyProduct.f68189e);
        ProductShortPrice productShortPrice = historyProduct.f68190f;
        return new HistoryItemEntity(str, str2, str3, productBackgroundEntity2, strValueOf, productShortPrice != null ? new ProductShortPriceEntity(productShortPrice.f68136a, productShortPrice.f68137b, productShortPrice.f68138c, productShortPrice.d) : null, null);
    }
}

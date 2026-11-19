package com.vuitton.android.presentation.screen.search.models;

import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import defpackage.v40;
import java.time.LocalDateTime;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class HistoryUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64249a;

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
            f64249a = iArr;
        }
    }

    public static final HistoryItem a(HistoryItemUiModel historyItemUiModel) {
        historyItemUiModel.getClass();
        if (!(historyItemUiModel instanceof HistoryItemUiModel.HistoryProductUiModel)) {
            if (historyItemUiModel instanceof HistoryItemUiModel.HistoryResearchUiModel) {
                HistoryItemUiModel.HistoryResearchUiModel historyResearchUiModel = (HistoryItemUiModel.HistoryResearchUiModel) historyItemUiModel;
                return new HistoryItem.HistoryTextResearch(historyResearchUiModel.f64246a, historyResearchUiModel.f64247b);
            }
            v40.g();
            return null;
        }
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        HistoryItemUiModel.HistoryProductUiModel historyProductUiModel = (HistoryItemUiModel.HistoryProductUiModel) historyItemUiModel;
        String str = historyProductUiModel.f64241a;
        companion.getClass();
        SkuIdUiModel.Companion.b(str);
        String str2 = historyProductUiModel.f64242b;
        String str3 = historyProductUiModel.f64243c;
        ProductBackground productBackground = historyProductUiModel.f64244e == R.drawable.background_product_floor_1_1 ? ProductBackground.FLOOR : ProductBackground.DEFAULT;
        LocalDateTime localDateTime = historyProductUiModel.f64245f;
        ProductShortPriceUiModel productShortPriceUiModel = historyProductUiModel.d;
        return new HistoryItem.HistoryProduct(str, str2, str3, productBackground, localDateTime, productShortPriceUiModel != null ? new ProductShortPrice(productShortPriceUiModel.f62981a, productShortPriceUiModel.f62982b, productShortPriceUiModel.f62983c, productShortPriceUiModel.d) : null, null);
    }

    public static final int b(ProductBackground productBackground) {
        int i2 = productBackground == null ? -1 : WhenMappings.f64249a[productBackground.ordinal()];
        return (i2 == 1 || i2 != 2) ? R.drawable.background_product_default : R.drawable.background_product_floor_1_1;
    }
}

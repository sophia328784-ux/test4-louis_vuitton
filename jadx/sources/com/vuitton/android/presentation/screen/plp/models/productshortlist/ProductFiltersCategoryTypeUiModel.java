package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;", "", "RANGE", "SIMPLE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductFiltersCategoryTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductFiltersCategoryTypeUiModel[] $VALUES;
    public static final ProductFiltersCategoryTypeUiModel RANGE;
    public static final ProductFiltersCategoryTypeUiModel SIMPLE;

    static {
        ProductFiltersCategoryTypeUiModel productFiltersCategoryTypeUiModel = new ProductFiltersCategoryTypeUiModel("RANGE", 0);
        RANGE = productFiltersCategoryTypeUiModel;
        ProductFiltersCategoryTypeUiModel productFiltersCategoryTypeUiModel2 = new ProductFiltersCategoryTypeUiModel("SIMPLE", 1);
        SIMPLE = productFiltersCategoryTypeUiModel2;
        ProductFiltersCategoryTypeUiModel[] productFiltersCategoryTypeUiModelArr = {productFiltersCategoryTypeUiModel, productFiltersCategoryTypeUiModel2};
        $VALUES = productFiltersCategoryTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(productFiltersCategoryTypeUiModelArr);
    }

    public static ProductFiltersCategoryTypeUiModel valueOf(String str) {
        return (ProductFiltersCategoryTypeUiModel) Enum.valueOf(ProductFiltersCategoryTypeUiModel.class, str);
    }

    public static ProductFiltersCategoryTypeUiModel[] values() {
        return (ProductFiltersCategoryTypeUiModel[]) $VALUES.clone();
    }
}

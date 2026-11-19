package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;", "", "DEFAULT", "FLOOR", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductBackgroundUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductBackgroundUiModel[] $VALUES;
    public static final ProductBackgroundUiModel DEFAULT;
    public static final ProductBackgroundUiModel FLOOR;

    static {
        ProductBackgroundUiModel productBackgroundUiModel = new ProductBackgroundUiModel("DEFAULT", 0);
        DEFAULT = productBackgroundUiModel;
        ProductBackgroundUiModel productBackgroundUiModel2 = new ProductBackgroundUiModel("FLOOR", 1);
        FLOOR = productBackgroundUiModel2;
        ProductBackgroundUiModel[] productBackgroundUiModelArr = {productBackgroundUiModel, productBackgroundUiModel2};
        $VALUES = productBackgroundUiModelArr;
        $ENTRIES = EnumEntriesKt.a(productBackgroundUiModelArr);
    }

    public static ProductBackgroundUiModel valueOf(String str) {
        return (ProductBackgroundUiModel) Enum.valueOf(ProductBackgroundUiModel.class, str);
    }

    public static ProductBackgroundUiModel[] values() {
        return (ProductBackgroundUiModel[]) $VALUES.clone();
    }
}

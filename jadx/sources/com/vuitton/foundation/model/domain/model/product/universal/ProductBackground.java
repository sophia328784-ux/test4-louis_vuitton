package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;", "", "DEFAULT", "FLOOR", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductBackground {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductBackground[] $VALUES;
    public static final ProductBackground DEFAULT;
    public static final ProductBackground FLOOR;

    static {
        ProductBackground productBackground = new ProductBackground("DEFAULT", 0);
        DEFAULT = productBackground;
        ProductBackground productBackground2 = new ProductBackground("FLOOR", 1);
        FLOOR = productBackground2;
        ProductBackground[] productBackgroundArr = {productBackground, productBackground2};
        $VALUES = productBackgroundArr;
        $ENTRIES = EnumEntriesKt.a(productBackgroundArr);
    }

    public static ProductBackground valueOf(String str) {
        return (ProductBackground) Enum.valueOf(ProductBackground.class, str);
    }

    public static ProductBackground[] values() {
        return (ProductBackground[]) $VALUES.clone();
    }
}

package com.vuitton.foundation.model.domain.model.productshortlist;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;", "", "RANGE", "SIMPLE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductFiltersCategoryType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductFiltersCategoryType[] $VALUES;
    public static final ProductFiltersCategoryType RANGE;
    public static final ProductFiltersCategoryType SIMPLE;

    static {
        ProductFiltersCategoryType productFiltersCategoryType = new ProductFiltersCategoryType("RANGE", 0);
        RANGE = productFiltersCategoryType;
        ProductFiltersCategoryType productFiltersCategoryType2 = new ProductFiltersCategoryType("SIMPLE", 1);
        SIMPLE = productFiltersCategoryType2;
        ProductFiltersCategoryType[] productFiltersCategoryTypeArr = {productFiltersCategoryType, productFiltersCategoryType2};
        $VALUES = productFiltersCategoryTypeArr;
        $ENTRIES = EnumEntriesKt.a(productFiltersCategoryTypeArr);
    }

    public static ProductFiltersCategoryType valueOf(String str) {
        return (ProductFiltersCategoryType) Enum.valueOf(ProductFiltersCategoryType.class, str);
    }

    public static ProductFiltersCategoryType[] values() {
        return (ProductFiltersCategoryType[]) $VALUES.clone();
    }
}

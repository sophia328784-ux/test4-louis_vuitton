package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/ProductType;", "", "Offer", "KIOSK", "Article", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProductType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductType[] $VALUES;
    public static final ProductType Article;
    public static final ProductType KIOSK;
    public static final ProductType Offer;

    static {
        ProductType productType = new ProductType("Offer", 0);
        Offer = productType;
        ProductType productType2 = new ProductType("KIOSK", 1);
        KIOSK = productType2;
        ProductType productType3 = new ProductType("Article", 2);
        Article = productType3;
        ProductType[] productTypeArr = {productType, productType2, productType3};
        $VALUES = productTypeArr;
        $ENTRIES = EnumEntriesKt.a(productTypeArr);
    }

    public static ProductType valueOf(String str) {
        return (ProductType) Enum.valueOf(ProductType.class, str);
    }

    public static ProductType[] values() {
        return (ProductType[]) $VALUES.clone();
    }
}

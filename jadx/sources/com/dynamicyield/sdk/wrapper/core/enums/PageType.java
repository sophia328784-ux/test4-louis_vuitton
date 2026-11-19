package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;", "", "HOMEPAGE", "CATEGORY", "PRODUCT", "CART", "OTHER", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PageType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PageType[] $VALUES;
    public static final PageType CART;
    public static final PageType CATEGORY;
    public static final PageType HOMEPAGE;
    public static final PageType OTHER;
    public static final PageType PRODUCT;

    static {
        PageType pageType = new PageType("HOMEPAGE", 0);
        HOMEPAGE = pageType;
        PageType pageType2 = new PageType("CATEGORY", 1);
        CATEGORY = pageType2;
        PageType pageType3 = new PageType("PRODUCT", 2);
        PRODUCT = pageType3;
        PageType pageType4 = new PageType("CART", 3);
        CART = pageType4;
        PageType pageType5 = new PageType("OTHER", 4);
        OTHER = pageType5;
        PageType[] pageTypeArr = {pageType, pageType2, pageType3, pageType4, pageType5};
        $VALUES = pageTypeArr;
        $ENTRIES = EnumEntriesKt.a(pageTypeArr);
    }

    public static PageType valueOf(String str) {
        return (PageType) Enum.valueOf(PageType.class, str);
    }

    public static PageType[] values() {
        return (PageType[]) $VALUES.clone();
    }
}

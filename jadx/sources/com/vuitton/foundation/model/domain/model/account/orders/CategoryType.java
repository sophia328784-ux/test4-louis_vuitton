package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;", "", "TEXT", "IMAGE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CategoryType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CategoryType[] $VALUES;
    public static final CategoryType IMAGE;
    public static final CategoryType TEXT;

    static {
        CategoryType categoryType = new CategoryType("TEXT", 0);
        TEXT = categoryType;
        CategoryType categoryType2 = new CategoryType("IMAGE", 1);
        IMAGE = categoryType2;
        CategoryType[] categoryTypeArr = {categoryType, categoryType2};
        $VALUES = categoryTypeArr;
        $ENTRIES = EnumEntriesKt.a(categoryTypeArr);
    }

    public static CategoryType valueOf(String str) {
        return (CategoryType) Enum.valueOf(CategoryType.class, str);
    }

    public static CategoryType[] values() {
        return (CategoryType[]) $VALUES.clone();
    }
}

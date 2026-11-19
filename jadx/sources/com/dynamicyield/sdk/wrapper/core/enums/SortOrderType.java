package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;", "", "ASC", "DESC", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SortOrderType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SortOrderType[] $VALUES;
    public static final SortOrderType ASC;
    public static final SortOrderType DESC;

    static {
        SortOrderType sortOrderType = new SortOrderType("ASC", 0);
        ASC = sortOrderType;
        SortOrderType sortOrderType2 = new SortOrderType("DESC", 1);
        DESC = sortOrderType2;
        SortOrderType[] sortOrderTypeArr = {sortOrderType, sortOrderType2};
        $VALUES = sortOrderTypeArr;
        $ENTRIES = EnumEntriesKt.a(sortOrderTypeArr);
    }

    public static SortOrderType valueOf(String str) {
        return (SortOrderType) Enum.valueOf(SortOrderType.class, str);
    }

    public static SortOrderType[] values() {
        return (SortOrderType[]) $VALUES.clone();
    }
}

package com.vuitton.android.presentation.screen.filter.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/model/FilterType;", "", "SIMPLE", "RANGE", "SORT", "BOOLEAN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FilterType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FilterType[] $VALUES;
    public static final FilterType BOOLEAN;
    public static final FilterType RANGE;
    public static final FilterType SIMPLE;
    public static final FilterType SORT;

    static {
        FilterType filterType = new FilterType("SIMPLE", 0);
        SIMPLE = filterType;
        FilterType filterType2 = new FilterType("RANGE", 1);
        RANGE = filterType2;
        FilterType filterType3 = new FilterType("SORT", 2);
        SORT = filterType3;
        FilterType filterType4 = new FilterType("BOOLEAN", 3);
        BOOLEAN = filterType4;
        FilterType[] filterTypeArr = {filterType, filterType2, filterType3, filterType4};
        $VALUES = filterTypeArr;
        $ENTRIES = EnumEntriesKt.a(filterTypeArr);
    }

    public static FilterType valueOf(String str) {
        return (FilterType) Enum.valueOf(FilterType.class, str);
    }

    public static FilterType[] values() {
        return (FilterType[]) $VALUES.clone();
    }
}

package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/FacetValuesType;", "", "string", "number", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacetValuesType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FacetValuesType[] $VALUES;
    public static final FacetValuesType number;
    public static final FacetValuesType string;

    static {
        FacetValuesType facetValuesType = new FacetValuesType("string", 0);
        string = facetValuesType;
        FacetValuesType facetValuesType2 = new FacetValuesType("number", 1);
        number = facetValuesType2;
        FacetValuesType[] facetValuesTypeArr = {facetValuesType, facetValuesType2};
        $VALUES = facetValuesTypeArr;
        $ENTRIES = EnumEntriesKt.a(facetValuesTypeArr);
    }

    public static FacetValuesType valueOf(String str) {
        return (FacetValuesType) Enum.valueOf(FacetValuesType.class, str);
    }

    public static FacetValuesType[] values() {
        return (FacetValuesType[]) $VALUES.clone();
    }
}

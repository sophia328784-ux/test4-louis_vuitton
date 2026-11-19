package com.vuitton.foundation.model.domain.model.common.editorial;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;", "", "DYNAMIC_YIELD", "LAST_VIEWED_PRODUCTS", "MOST_PURCHASED_WITH", "SKUS", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AlgorithmType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AlgorithmType[] $VALUES;
    public static final AlgorithmType DYNAMIC_YIELD;
    public static final AlgorithmType LAST_VIEWED_PRODUCTS;
    public static final AlgorithmType MOST_PURCHASED_WITH;
    public static final AlgorithmType SKUS;

    static {
        AlgorithmType algorithmType = new AlgorithmType("DYNAMIC_YIELD", 0);
        DYNAMIC_YIELD = algorithmType;
        AlgorithmType algorithmType2 = new AlgorithmType("LAST_VIEWED_PRODUCTS", 1);
        LAST_VIEWED_PRODUCTS = algorithmType2;
        AlgorithmType algorithmType3 = new AlgorithmType("MOST_PURCHASED_WITH", 2);
        MOST_PURCHASED_WITH = algorithmType3;
        AlgorithmType algorithmType4 = new AlgorithmType("SKUS", 3);
        SKUS = algorithmType4;
        AlgorithmType[] algorithmTypeArr = {algorithmType, algorithmType2, algorithmType3, algorithmType4};
        $VALUES = algorithmTypeArr;
        $ENTRIES = EnumEntriesKt.a(algorithmTypeArr);
    }

    public static AlgorithmType valueOf(String str) {
        return (AlgorithmType) Enum.valueOf(AlgorithmType.class, str);
    }

    public static AlgorithmType[] values() {
        return (AlgorithmType[]) $VALUES.clone();
    }
}

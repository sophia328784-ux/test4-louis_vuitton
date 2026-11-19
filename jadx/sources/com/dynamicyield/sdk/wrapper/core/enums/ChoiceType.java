package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;", "", "DECISION", "RECS_DECISION", "QSR_PRODUCT_RECS_DECISION", "SORTING_DECISION", "SEMANTIC_SEARCH_DECISION", "VISUAL_SEARCH_DECISION", "SHOPPING_MUSE_DECISION", "NO_DECISION", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChoiceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ChoiceType[] $VALUES;
    public static final ChoiceType DECISION;
    public static final ChoiceType NO_DECISION;
    public static final ChoiceType QSR_PRODUCT_RECS_DECISION;
    public static final ChoiceType RECS_DECISION;
    public static final ChoiceType SEMANTIC_SEARCH_DECISION;
    public static final ChoiceType SHOPPING_MUSE_DECISION;
    public static final ChoiceType SORTING_DECISION;
    public static final ChoiceType VISUAL_SEARCH_DECISION;

    static {
        ChoiceType choiceType = new ChoiceType("DECISION", 0);
        DECISION = choiceType;
        ChoiceType choiceType2 = new ChoiceType("RECS_DECISION", 1);
        RECS_DECISION = choiceType2;
        ChoiceType choiceType3 = new ChoiceType("QSR_PRODUCT_RECS_DECISION", 2);
        QSR_PRODUCT_RECS_DECISION = choiceType3;
        ChoiceType choiceType4 = new ChoiceType("SORTING_DECISION", 3);
        SORTING_DECISION = choiceType4;
        ChoiceType choiceType5 = new ChoiceType("SEMANTIC_SEARCH_DECISION", 4);
        SEMANTIC_SEARCH_DECISION = choiceType5;
        ChoiceType choiceType6 = new ChoiceType("VISUAL_SEARCH_DECISION", 5);
        VISUAL_SEARCH_DECISION = choiceType6;
        ChoiceType choiceType7 = new ChoiceType("SHOPPING_MUSE_DECISION", 6);
        SHOPPING_MUSE_DECISION = choiceType7;
        ChoiceType choiceType8 = new ChoiceType("NO_DECISION", 7);
        NO_DECISION = choiceType8;
        ChoiceType[] choiceTypeArr = {choiceType, choiceType2, choiceType3, choiceType4, choiceType5, choiceType6, choiceType7, choiceType8};
        $VALUES = choiceTypeArr;
        $ENTRIES = EnumEntriesKt.a(choiceTypeArr);
    }

    public static ChoiceType valueOf(String str) {
        return (ChoiceType) Enum.valueOf(ChoiceType.class, str);
    }

    public static ChoiceType[] values() {
        return (ChoiceType[]) $VALUES.clone();
    }
}

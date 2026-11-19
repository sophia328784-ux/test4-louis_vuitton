package com.vuitton.foundation.model.domain.model.connectivity.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;", "", "EARPHONES", "WATCH_V3", "LIGHT_UP_KEEP_ALL", "LIGHT_UP_SNEAKERS", "SPEAKER_TRUNK", "SPEAKER_HORIZON", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FaqCategoryType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FaqCategoryType[] $VALUES;
    public static final FaqCategoryType EARPHONES;
    public static final FaqCategoryType LIGHT_UP_KEEP_ALL;
    public static final FaqCategoryType LIGHT_UP_SNEAKERS;
    public static final FaqCategoryType SPEAKER_HORIZON;
    public static final FaqCategoryType SPEAKER_TRUNK;
    public static final FaqCategoryType WATCH_V3;

    static {
        FaqCategoryType faqCategoryType = new FaqCategoryType("EARPHONES", 0);
        EARPHONES = faqCategoryType;
        FaqCategoryType faqCategoryType2 = new FaqCategoryType("WATCH_V3", 1);
        WATCH_V3 = faqCategoryType2;
        FaqCategoryType faqCategoryType3 = new FaqCategoryType("LIGHT_UP_KEEP_ALL", 2);
        LIGHT_UP_KEEP_ALL = faqCategoryType3;
        FaqCategoryType faqCategoryType4 = new FaqCategoryType("LIGHT_UP_SNEAKERS", 3);
        LIGHT_UP_SNEAKERS = faqCategoryType4;
        FaqCategoryType faqCategoryType5 = new FaqCategoryType("SPEAKER_TRUNK", 4);
        SPEAKER_TRUNK = faqCategoryType5;
        FaqCategoryType faqCategoryType6 = new FaqCategoryType("SPEAKER_HORIZON", 5);
        SPEAKER_HORIZON = faqCategoryType6;
        FaqCategoryType[] faqCategoryTypeArr = {faqCategoryType, faqCategoryType2, faqCategoryType3, faqCategoryType4, faqCategoryType5, faqCategoryType6};
        $VALUES = faqCategoryTypeArr;
        $ENTRIES = EnumEntriesKt.a(faqCategoryTypeArr);
    }

    public static FaqCategoryType valueOf(String str) {
        return (FaqCategoryType) Enum.valueOf(FaqCategoryType.class, str);
    }

    public static FaqCategoryType[] values() {
        return (FaqCategoryType[]) $VALUES.clone();
    }
}

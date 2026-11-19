package com.vuitton.foundation.model.domain.model.connectivity.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "", "EARPHONES", "WATCH_FAQ", "WATCH_V3_FAQ", "LIGHT_UP_KEEP_ALL", "LIGHT_UP_SNEAKERS", "TRUNK_SPEAKERS", "HORIZON_SPEAKER", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FaqType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FaqType[] $VALUES;
    public static final FaqType EARPHONES;
    public static final FaqType HORIZON_SPEAKER;
    public static final FaqType LIGHT_UP_KEEP_ALL;
    public static final FaqType LIGHT_UP_SNEAKERS;
    public static final FaqType TRUNK_SPEAKERS;
    public static final FaqType WATCH_FAQ;
    public static final FaqType WATCH_V3_FAQ;

    static {
        FaqType faqType = new FaqType("EARPHONES", 0);
        EARPHONES = faqType;
        FaqType faqType2 = new FaqType("WATCH_FAQ", 1);
        WATCH_FAQ = faqType2;
        FaqType faqType3 = new FaqType("WATCH_V3_FAQ", 2);
        WATCH_V3_FAQ = faqType3;
        FaqType faqType4 = new FaqType("LIGHT_UP_KEEP_ALL", 3);
        LIGHT_UP_KEEP_ALL = faqType4;
        FaqType faqType5 = new FaqType("LIGHT_UP_SNEAKERS", 4);
        LIGHT_UP_SNEAKERS = faqType5;
        FaqType faqType6 = new FaqType("TRUNK_SPEAKERS", 5);
        TRUNK_SPEAKERS = faqType6;
        FaqType faqType7 = new FaqType("HORIZON_SPEAKER", 6);
        HORIZON_SPEAKER = faqType7;
        FaqType[] faqTypeArr = {faqType, faqType2, faqType3, faqType4, faqType5, faqType6, faqType7};
        $VALUES = faqTypeArr;
        $ENTRIES = EnumEntriesKt.a(faqTypeArr);
    }

    public static FaqType valueOf(String str) {
        return (FaqType) Enum.valueOf(FaqType.class, str);
    }

    public static FaqType[] values() {
        return (FaqType[]) $VALUES.clone();
    }
}

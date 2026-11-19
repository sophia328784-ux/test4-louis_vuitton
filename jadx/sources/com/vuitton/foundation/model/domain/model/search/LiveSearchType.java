package com.vuitton.foundation.model.domain.model.search;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/LiveSearchType;", "", "SEARCHING_RESULT", "SUGGESTION_RESULT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveSearchType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LiveSearchType[] $VALUES;
    public static final LiveSearchType SEARCHING_RESULT;
    public static final LiveSearchType SUGGESTION_RESULT;

    static {
        LiveSearchType liveSearchType = new LiveSearchType("SEARCHING_RESULT", 0);
        SEARCHING_RESULT = liveSearchType;
        LiveSearchType liveSearchType2 = new LiveSearchType("SUGGESTION_RESULT", 1);
        SUGGESTION_RESULT = liveSearchType2;
        LiveSearchType[] liveSearchTypeArr = {liveSearchType, liveSearchType2};
        $VALUES = liveSearchTypeArr;
        $ENTRIES = EnumEntriesKt.a(liveSearchTypeArr);
    }

    public static LiveSearchType valueOf(String str) {
        return (LiveSearchType) Enum.valueOf(LiveSearchType.class, str);
    }

    public static LiveSearchType[] values() {
        return (LiveSearchType[]) $VALUES.clone();
    }
}

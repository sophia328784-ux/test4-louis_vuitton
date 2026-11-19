package com.vuitton.foundation.model.domain.model.personalselections;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;", "", "IN_STORE", "ADVISOR_CURATION", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SelectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionType[] $VALUES;
    public static final SelectionType ADVISOR_CURATION;
    public static final SelectionType IN_STORE;

    static {
        SelectionType selectionType = new SelectionType("IN_STORE", 0);
        IN_STORE = selectionType;
        SelectionType selectionType2 = new SelectionType("ADVISOR_CURATION", 1);
        ADVISOR_CURATION = selectionType2;
        SelectionType[] selectionTypeArr = {selectionType, selectionType2};
        $VALUES = selectionTypeArr;
        $ENTRIES = EnumEntriesKt.a(selectionTypeArr);
    }

    public static SelectionType valueOf(String str) {
        return (SelectionType) Enum.valueOf(SelectionType.class, str);
    }

    public static SelectionType[] values() {
        return (SelectionType[]) $VALUES.clone();
    }
}

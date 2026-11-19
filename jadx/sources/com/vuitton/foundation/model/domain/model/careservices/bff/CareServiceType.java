package com.vuitton.foundation.model.domain.model.careservices.bff;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;", "", "InStore", "Distant", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServiceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceType[] $VALUES;
    public static final CareServiceType Distant;
    public static final CareServiceType InStore;

    static {
        CareServiceType careServiceType = new CareServiceType("InStore", 0);
        InStore = careServiceType;
        CareServiceType careServiceType2 = new CareServiceType("Distant", 1);
        Distant = careServiceType2;
        CareServiceType[] careServiceTypeArr = {careServiceType, careServiceType2};
        $VALUES = careServiceTypeArr;
        $ENTRIES = EnumEntriesKt.a(careServiceTypeArr);
    }

    public static CareServiceType valueOf(String str) {
        return (CareServiceType) Enum.valueOf(CareServiceType.class, str);
    }

    public static CareServiceType[] values() {
        return (CareServiceType[]) $VALUES.clone();
    }
}

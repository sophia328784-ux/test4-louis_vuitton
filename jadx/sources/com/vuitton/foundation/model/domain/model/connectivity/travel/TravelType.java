package com.vuitton.foundation.model.domain.model.connectivity.travel;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;", "", "FLIGHT", "TRAIN", "HOTEL", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TravelType[] $VALUES;
    public static final TravelType FLIGHT;
    public static final TravelType HOTEL;
    public static final TravelType TRAIN;

    static {
        TravelType travelType = new TravelType("FLIGHT", 0);
        FLIGHT = travelType;
        TravelType travelType2 = new TravelType("TRAIN", 1);
        TRAIN = travelType2;
        TravelType travelType3 = new TravelType("HOTEL", 2);
        HOTEL = travelType3;
        TravelType[] travelTypeArr = {travelType, travelType2, travelType3};
        $VALUES = travelTypeArr;
        $ENTRIES = EnumEntriesKt.a(travelTypeArr);
    }

    public static TravelType valueOf(String str) {
        return (TravelType) Enum.valueOf(TravelType.class, str);
    }

    public static TravelType[] values() {
        return (TravelType[]) $VALUES.clone();
    }
}

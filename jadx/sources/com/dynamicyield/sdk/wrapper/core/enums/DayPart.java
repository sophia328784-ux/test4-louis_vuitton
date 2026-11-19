package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;", "", "BREAKFAST", "LUNCH", "DINNER", "LATENIGHT", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DayPart {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DayPart[] $VALUES;
    public static final DayPart BREAKFAST;
    public static final DayPart DINNER;
    public static final DayPart LATENIGHT;
    public static final DayPart LUNCH;

    static {
        DayPart dayPart = new DayPart("BREAKFAST", 0);
        BREAKFAST = dayPart;
        DayPart dayPart2 = new DayPart("LUNCH", 1);
        LUNCH = dayPart2;
        DayPart dayPart3 = new DayPart("DINNER", 2);
        DINNER = dayPart3;
        DayPart dayPart4 = new DayPart("LATENIGHT", 3);
        LATENIGHT = dayPart4;
        DayPart[] dayPartArr = {dayPart, dayPart2, dayPart3, dayPart4};
        $VALUES = dayPartArr;
        $ENTRIES = EnumEntriesKt.a(dayPartArr);
    }

    public static DayPart valueOf(String str) {
        return (DayPart) Enum.valueOf(DayPart.class, str);
    }

    public static DayPart[] values() {
        return (DayPart[]) $VALUES.clone();
    }
}

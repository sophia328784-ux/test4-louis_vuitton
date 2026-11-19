package com.kizitonwose.calendar.core;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/kizitonwose/calendar/core/DayPosition;", "", "InDate", "MonthDate", "OutDate", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DayPosition {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DayPosition[] $VALUES;
    public static final DayPosition InDate;
    public static final DayPosition MonthDate;
    public static final DayPosition OutDate;

    static {
        DayPosition dayPosition = new DayPosition("InDate", 0);
        InDate = dayPosition;
        DayPosition dayPosition2 = new DayPosition("MonthDate", 1);
        MonthDate = dayPosition2;
        DayPosition dayPosition3 = new DayPosition("OutDate", 2);
        OutDate = dayPosition3;
        DayPosition[] dayPositionArr = {dayPosition, dayPosition2, dayPosition3};
        $VALUES = dayPositionArr;
        $ENTRIES = EnumEntriesKt.a(dayPositionArr);
    }

    public static DayPosition valueOf(String str) {
        return (DayPosition) Enum.valueOf(DayPosition.class, str);
    }

    public static DayPosition[] values() {
        return (DayPosition[]) $VALUES.clone();
    }
}

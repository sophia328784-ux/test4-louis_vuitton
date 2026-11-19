package com.kizitonwose.calendar.core;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/kizitonwose/calendar/core/OutDateStyle;", "", "EndOfRow", "EndOfGrid", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OutDateStyle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OutDateStyle[] $VALUES;
    public static final OutDateStyle EndOfGrid;
    public static final OutDateStyle EndOfRow;

    static {
        OutDateStyle outDateStyle = new OutDateStyle("EndOfRow", 0);
        EndOfRow = outDateStyle;
        OutDateStyle outDateStyle2 = new OutDateStyle("EndOfGrid", 1);
        EndOfGrid = outDateStyle2;
        OutDateStyle[] outDateStyleArr = {outDateStyle, outDateStyle2};
        $VALUES = outDateStyleArr;
        $ENTRIES = EnumEntriesKt.a(outDateStyleArr);
    }

    public static OutDateStyle valueOf(String str) {
        return (OutDateStyle) Enum.valueOf(OutDateStyle.class, str);
    }

    public static OutDateStyle[] values() {
        return (OutDateStyle[]) $VALUES.clone();
    }
}

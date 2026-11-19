package com.vuitton.android.presentation.screen.booking.common.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;", "", "IDLE", "LOADING", "ERROR", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingCTAState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingCTAState[] $VALUES;
    public static final BookingCTAState ERROR;
    public static final BookingCTAState IDLE;
    public static final BookingCTAState LOADING;

    static {
        BookingCTAState bookingCTAState = new BookingCTAState("IDLE", 0);
        IDLE = bookingCTAState;
        BookingCTAState bookingCTAState2 = new BookingCTAState("LOADING", 1);
        LOADING = bookingCTAState2;
        BookingCTAState bookingCTAState3 = new BookingCTAState("ERROR", 2);
        ERROR = bookingCTAState3;
        BookingCTAState[] bookingCTAStateArr = {bookingCTAState, bookingCTAState2, bookingCTAState3};
        $VALUES = bookingCTAStateArr;
        $ENTRIES = EnumEntriesKt.a(bookingCTAStateArr);
    }

    public static BookingCTAState valueOf(String str) {
        return (BookingCTAState) Enum.valueOf(BookingCTAState.class, str);
    }

    public static BookingCTAState[] values() {
        return (BookingCTAState[]) $VALUES.clone();
    }
}

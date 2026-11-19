package com.vuitton.foundation.model.domain.model.booking;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;", "", "ADD_TO_CALENDAR", "QR_CODE", "CANCEL", "MODIFY", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingActionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingActionType[] $VALUES;
    public static final BookingActionType ADD_TO_CALENDAR;
    public static final BookingActionType CANCEL;
    public static final BookingActionType MODIFY;
    public static final BookingActionType QR_CODE;

    static {
        BookingActionType bookingActionType = new BookingActionType("ADD_TO_CALENDAR", 0);
        ADD_TO_CALENDAR = bookingActionType;
        BookingActionType bookingActionType2 = new BookingActionType("QR_CODE", 1);
        QR_CODE = bookingActionType2;
        BookingActionType bookingActionType3 = new BookingActionType("CANCEL", 2);
        CANCEL = bookingActionType3;
        BookingActionType bookingActionType4 = new BookingActionType("MODIFY", 3);
        MODIFY = bookingActionType4;
        BookingActionType[] bookingActionTypeArr = {bookingActionType, bookingActionType2, bookingActionType3, bookingActionType4};
        $VALUES = bookingActionTypeArr;
        $ENTRIES = EnumEntriesKt.a(bookingActionTypeArr);
    }

    public static BookingActionType valueOf(String str) {
        return (BookingActionType) Enum.valueOf(BookingActionType.class, str);
    }

    public static BookingActionType[] values() {
        return (BookingActionType[]) $VALUES.clone();
    }
}

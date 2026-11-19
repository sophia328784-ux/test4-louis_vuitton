package com.vuitton.foundation.model.domain.model.booking;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;", "", "TEXT", "ADDRESS", "PHONE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingInfoType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingInfoType[] $VALUES;
    public static final BookingInfoType ADDRESS;
    public static final BookingInfoType PHONE;
    public static final BookingInfoType TEXT;

    static {
        BookingInfoType bookingInfoType = new BookingInfoType("TEXT", 0);
        TEXT = bookingInfoType;
        BookingInfoType bookingInfoType2 = new BookingInfoType("ADDRESS", 1);
        ADDRESS = bookingInfoType2;
        BookingInfoType bookingInfoType3 = new BookingInfoType("PHONE", 2);
        PHONE = bookingInfoType3;
        BookingInfoType[] bookingInfoTypeArr = {bookingInfoType, bookingInfoType2, bookingInfoType3};
        $VALUES = bookingInfoTypeArr;
        $ENTRIES = EnumEntriesKt.a(bookingInfoTypeArr);
    }

    public static BookingInfoType valueOf(String str) {
        return (BookingInfoType) Enum.valueOf(BookingInfoType.class, str);
    }

    public static BookingInfoType[] values() {
        return (BookingInfoType[]) $VALUES.clone();
    }
}

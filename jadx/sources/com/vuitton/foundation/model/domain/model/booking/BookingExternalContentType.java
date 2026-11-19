package com.vuitton.foundation.model.domain.model.booking;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;", "", "PDF", "WEBVIEW", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingExternalContentType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingExternalContentType[] $VALUES;
    public static final BookingExternalContentType PDF;
    public static final BookingExternalContentType WEBVIEW;

    static {
        BookingExternalContentType bookingExternalContentType = new BookingExternalContentType("PDF", 0);
        PDF = bookingExternalContentType;
        BookingExternalContentType bookingExternalContentType2 = new BookingExternalContentType("WEBVIEW", 1);
        WEBVIEW = bookingExternalContentType2;
        BookingExternalContentType[] bookingExternalContentTypeArr = {bookingExternalContentType, bookingExternalContentType2};
        $VALUES = bookingExternalContentTypeArr;
        $ENTRIES = EnumEntriesKt.a(bookingExternalContentTypeArr);
    }

    public static BookingExternalContentType valueOf(String str) {
        return (BookingExternalContentType) Enum.valueOf(BookingExternalContentType.class, str);
    }

    public static BookingExternalContentType[] values() {
        return (BookingExternalContentType[]) $VALUES.clone();
    }
}

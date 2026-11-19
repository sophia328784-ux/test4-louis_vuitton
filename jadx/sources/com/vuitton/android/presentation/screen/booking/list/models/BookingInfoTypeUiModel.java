package com.vuitton.android.presentation.screen.booking.list.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;", "", "TEXT", "ADDRESS", "PHONE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingInfoTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingInfoTypeUiModel[] $VALUES;
    public static final BookingInfoTypeUiModel ADDRESS;
    public static final BookingInfoTypeUiModel PHONE;
    public static final BookingInfoTypeUiModel TEXT;

    static {
        BookingInfoTypeUiModel bookingInfoTypeUiModel = new BookingInfoTypeUiModel("TEXT", 0);
        TEXT = bookingInfoTypeUiModel;
        BookingInfoTypeUiModel bookingInfoTypeUiModel2 = new BookingInfoTypeUiModel("ADDRESS", 1);
        ADDRESS = bookingInfoTypeUiModel2;
        BookingInfoTypeUiModel bookingInfoTypeUiModel3 = new BookingInfoTypeUiModel("PHONE", 2);
        PHONE = bookingInfoTypeUiModel3;
        BookingInfoTypeUiModel[] bookingInfoTypeUiModelArr = {bookingInfoTypeUiModel, bookingInfoTypeUiModel2, bookingInfoTypeUiModel3};
        $VALUES = bookingInfoTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(bookingInfoTypeUiModelArr);
    }

    public static BookingInfoTypeUiModel valueOf(String str) {
        return (BookingInfoTypeUiModel) Enum.valueOf(BookingInfoTypeUiModel.class, str);
    }

    public static BookingInfoTypeUiModel[] values() {
        return (BookingInfoTypeUiModel[]) $VALUES.clone();
    }
}

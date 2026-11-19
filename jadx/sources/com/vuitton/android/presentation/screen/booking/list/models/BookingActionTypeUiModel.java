package com.vuitton.android.presentation.screen.booking.list.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;", "", "ADD_TO_CALENDAR", "QR_CODE", "MODIFY", "CANCEL", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingActionTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BookingActionTypeUiModel[] $VALUES;
    public static final BookingActionTypeUiModel ADD_TO_CALENDAR;
    public static final BookingActionTypeUiModel CANCEL;
    public static final BookingActionTypeUiModel MODIFY;
    public static final BookingActionTypeUiModel QR_CODE;

    static {
        BookingActionTypeUiModel bookingActionTypeUiModel = new BookingActionTypeUiModel("ADD_TO_CALENDAR", 0);
        ADD_TO_CALENDAR = bookingActionTypeUiModel;
        BookingActionTypeUiModel bookingActionTypeUiModel2 = new BookingActionTypeUiModel("QR_CODE", 1);
        QR_CODE = bookingActionTypeUiModel2;
        BookingActionTypeUiModel bookingActionTypeUiModel3 = new BookingActionTypeUiModel("MODIFY", 2);
        MODIFY = bookingActionTypeUiModel3;
        BookingActionTypeUiModel bookingActionTypeUiModel4 = new BookingActionTypeUiModel("CANCEL", 3);
        CANCEL = bookingActionTypeUiModel4;
        BookingActionTypeUiModel[] bookingActionTypeUiModelArr = {bookingActionTypeUiModel, bookingActionTypeUiModel2, bookingActionTypeUiModel3, bookingActionTypeUiModel4};
        $VALUES = bookingActionTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(bookingActionTypeUiModelArr);
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static BookingActionTypeUiModel valueOf(String str) {
        return (BookingActionTypeUiModel) Enum.valueOf(BookingActionTypeUiModel.class, str);
    }

    public static BookingActionTypeUiModel[] values() {
        return (BookingActionTypeUiModel[]) $VALUES.clone();
    }
}

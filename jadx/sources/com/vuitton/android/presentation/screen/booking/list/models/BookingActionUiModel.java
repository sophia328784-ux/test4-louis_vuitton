package com.vuitton.android.presentation.screen.booking.list.models;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.booking.BookingCalendarData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;", "", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;", "type", "Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingActionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingActionTypeUiModel f54601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BookingCalendarData f54602b;

    public BookingActionUiModel(BookingActionTypeUiModel bookingActionTypeUiModel, BookingCalendarData bookingCalendarData) {
        bookingActionTypeUiModel.getClass();
        this.f54601a = bookingActionTypeUiModel;
        this.f54602b = bookingCalendarData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingActionUiModel)) {
            return false;
        }
        BookingActionUiModel bookingActionUiModel = (BookingActionUiModel) obj;
        return this.f54601a == bookingActionUiModel.f54601a && Intrinsics.c(this.f54602b, bookingActionUiModel.f54602b);
    }

    public final int hashCode() {
        int iHashCode = this.f54601a.hashCode() * 31;
        BookingCalendarData bookingCalendarData = this.f54602b;
        return iHashCode + (bookingCalendarData == null ? 0 : bookingCalendarData.hashCode());
    }

    public final String toString() {
        return "BookingActionUiModel(type=" + this.f54601a + ", data=" + this.f54602b + ")";
    }
}

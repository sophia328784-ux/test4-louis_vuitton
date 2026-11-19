package com.vuitton.foundation.model.domain.model.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingAction;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;", "type", "Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/foundation/model/domain/model/booking/BookingActionType;Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingActionType f66684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BookingCalendarData f66685b;

    public BookingAction(BookingActionType bookingActionType, BookingCalendarData bookingCalendarData) {
        bookingActionType.getClass();
        this.f66684a = bookingActionType;
        this.f66685b = bookingCalendarData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingAction)) {
            return false;
        }
        BookingAction bookingAction = (BookingAction) obj;
        return this.f66684a == bookingAction.f66684a && Intrinsics.c(this.f66685b, bookingAction.f66685b);
    }

    public final int hashCode() {
        int iHashCode = this.f66684a.hashCode() * 31;
        BookingCalendarData bookingCalendarData = this.f66685b;
        return iHashCode + (bookingCalendarData == null ? 0 : bookingCalendarData.hashCode());
    }

    public final String toString() {
        return "BookingAction(type=" + this.f66684a + ", data=" + this.f66685b + ")";
    }
}

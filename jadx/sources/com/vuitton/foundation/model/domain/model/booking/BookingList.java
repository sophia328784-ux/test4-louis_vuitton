package com.vuitton.foundation.model.domain.model.booking;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingList;", "", "", "Lcom/vuitton/foundation/model/domain/model/booking/Booking;", "onGoings", "Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;", "additional", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f66748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66749b;

    public BookingList(List<Booking> list, List<BookingAdditional> list2) {
        list.getClass();
        list2.getClass();
        this.f66748a = list;
        this.f66749b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingList)) {
            return false;
        }
        BookingList bookingList = (BookingList) obj;
        return Intrinsics.c(this.f66748a, bookingList.f66748a) && Intrinsics.c(this.f66749b, bookingList.f66749b);
    }

    public final int hashCode() {
        return this.f66749b.hashCode() + (this.f66748a.hashCode() * 31);
    }

    public final String toString() {
        return "BookingList(onGoings=" + this.f66748a + ", additional=" + this.f66749b + ")";
    }
}

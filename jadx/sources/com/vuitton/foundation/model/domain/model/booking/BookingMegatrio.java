package com.vuitton.foundation.model.domain.model.booking;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingMegatrio;", "", "Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;", "termsAndConditions", "<init>", "(Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingMegatrio {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingExternalContent f66750a;

    public BookingMegatrio(BookingExternalContent bookingExternalContent) {
        bookingExternalContent.getClass();
        this.f66750a = bookingExternalContent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BookingMegatrio) && Intrinsics.c(this.f66750a, ((BookingMegatrio) obj).f66750a);
    }

    public final int hashCode() {
        return this.f66750a.hashCode();
    }

    public final String toString() {
        return "BookingMegatrio(termsAndConditions=" + this.f66750a + ")";
    }
}

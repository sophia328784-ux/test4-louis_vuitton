package com.vuitton.foundation.model.domain.model.booking;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;", "", "", "value", "Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;", "action", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimerAction;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingDisclaimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BookingDisclaimerAction f66694b;

    public BookingDisclaimer(String str, BookingDisclaimerAction bookingDisclaimerAction) {
        str.getClass();
        this.f66693a = str;
        this.f66694b = bookingDisclaimerAction;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingDisclaimer)) {
            return false;
        }
        BookingDisclaimer bookingDisclaimer = (BookingDisclaimer) obj;
        return Intrinsics.c(this.f66693a, bookingDisclaimer.f66693a) && Intrinsics.c(this.f66694b, bookingDisclaimer.f66694b);
    }

    public final int hashCode() {
        int iHashCode = this.f66693a.hashCode() * 31;
        BookingDisclaimerAction bookingDisclaimerAction = this.f66694b;
        return iHashCode + (bookingDisclaimerAction == null ? 0 : bookingDisclaimerAction.hashCode());
    }

    public final String toString() {
        return "BookingDisclaimer(value=" + this.f66693a + ", action=" + this.f66694b + ")";
    }

    public /* synthetic */ BookingDisclaimer(String str, BookingDisclaimerAction bookingDisclaimerAction, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : bookingDisclaimerAction);
    }
}

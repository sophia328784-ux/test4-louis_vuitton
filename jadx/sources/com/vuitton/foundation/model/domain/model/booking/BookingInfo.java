package com.vuitton.foundation.model.domain.model.booking;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingInfo;", "", "", "title", "value", "Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingInfoType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BookingInfoType f66747c;

    public BookingInfo(String str, String str2, BookingInfoType bookingInfoType) {
        str.getClass();
        str2.getClass();
        bookingInfoType.getClass();
        this.f66745a = str;
        this.f66746b = str2;
        this.f66747c = bookingInfoType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingInfo)) {
            return false;
        }
        BookingInfo bookingInfo = (BookingInfo) obj;
        return Intrinsics.c(this.f66745a, bookingInfo.f66745a) && Intrinsics.c(this.f66746b, bookingInfo.f66746b) && this.f66747c == bookingInfo.f66747c;
    }

    public final int hashCode() {
        return this.f66747c.hashCode() + fc.b(this.f66745a.hashCode() * 31, 31, this.f66746b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("BookingInfo(title=", this.f66745a, ", value=", this.f66746b, ", type=");
        sbS.append(this.f66747c);
        sbS.append(")");
        return sbS.toString();
    }
}

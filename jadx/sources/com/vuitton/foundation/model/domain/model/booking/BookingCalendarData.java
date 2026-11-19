package com.vuitton.foundation.model.domain.model.booking;

import java.time.Instant;
import java.time.ZoneId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;", "", "Ljava/time/Instant;", "startTime", "endTime", "Ljava/time/ZoneId;", "timeZone", "<init>", "(Ljava/time/Instant;Ljava/time/Instant;Ljava/time/ZoneId;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BookingCalendarData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Instant f66690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Instant f66691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ZoneId f66692c;

    public BookingCalendarData(Instant instant, Instant instant2, ZoneId zoneId) {
        instant.getClass();
        instant2.getClass();
        zoneId.getClass();
        this.f66690a = instant;
        this.f66691b = instant2;
        this.f66692c = zoneId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingCalendarData)) {
            return false;
        }
        BookingCalendarData bookingCalendarData = (BookingCalendarData) obj;
        return Intrinsics.c(this.f66690a, bookingCalendarData.f66690a) && Intrinsics.c(this.f66691b, bookingCalendarData.f66691b) && Intrinsics.c(this.f66692c, bookingCalendarData.f66692c);
    }

    public final int hashCode() {
        return this.f66692c.hashCode() + ((this.f66691b.hashCode() + (this.f66690a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "BookingCalendarData(startTime=" + this.f66690a + ", endTime=" + this.f66691b + ", timeZone=" + this.f66692c + ")";
    }
}

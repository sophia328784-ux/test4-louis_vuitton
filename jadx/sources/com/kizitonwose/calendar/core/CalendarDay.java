package com.kizitonwose.calendar.core;

import java.io.Serializable;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/kizitonwose/calendar/core/CalendarDay;", "Ljava/io/Serializable;", "Ljava/time/LocalDate;", "date", "Lcom/kizitonwose/calendar/core/DayPosition;", "position", "<init>", "(Ljava/time/LocalDate;Lcom/kizitonwose/calendar/core/DayPosition;)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarDay implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocalDate f35955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DayPosition f35956c;

    public CalendarDay(LocalDate localDate, DayPosition dayPosition) {
        localDate.getClass();
        dayPosition.getClass();
        this.f35955b = localDate;
        this.f35956c = dayPosition;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarDay)) {
            return false;
        }
        CalendarDay calendarDay = (CalendarDay) obj;
        return Intrinsics.c(this.f35955b, calendarDay.f35955b) && this.f35956c == calendarDay.f35956c;
    }

    public final int hashCode() {
        return this.f35956c.hashCode() + (this.f35955b.hashCode() * 31);
    }

    public final String toString() {
        return "CalendarDay(date=" + this.f35955b + ", position=" + this.f35956c + ")";
    }
}

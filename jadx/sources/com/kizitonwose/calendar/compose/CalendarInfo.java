package com.kizitonwose.calendar.compose;

import com.kizitonwose.calendar.core.OutDateStyle;
import java.time.DayOfWeek;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/kizitonwose/calendar/compose/CalendarInfo;", "", "", "indexCount", "Ljava/time/DayOfWeek;", "firstDayOfWeek", "Lcom/kizitonwose/calendar/core/OutDateStyle;", "outDateStyle", "<init>", "(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;)V", "compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f35920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DayOfWeek f35921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OutDateStyle f35922c;

    public /* synthetic */ CalendarInfo(int i2, DayOfWeek dayOfWeek, OutDateStyle outDateStyle, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? null : dayOfWeek, (i3 & 4) != 0 ? null : outDateStyle);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarInfo)) {
            return false;
        }
        CalendarInfo calendarInfo = (CalendarInfo) obj;
        return this.f35920a == calendarInfo.f35920a && this.f35921b == calendarInfo.f35921b && this.f35922c == calendarInfo.f35922c;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f35920a) * 31;
        DayOfWeek dayOfWeek = this.f35921b;
        int iHashCode2 = (iHashCode + (dayOfWeek == null ? 0 : dayOfWeek.hashCode())) * 31;
        OutDateStyle outDateStyle = this.f35922c;
        return iHashCode2 + (outDateStyle != null ? outDateStyle.hashCode() : 0);
    }

    public final String toString() {
        return "CalendarInfo(indexCount=" + this.f35920a + ", firstDayOfWeek=" + this.f35921b + ", outDateStyle=" + this.f35922c + ")";
    }

    public CalendarInfo(int i2, DayOfWeek dayOfWeek, OutDateStyle outDateStyle) {
        this.f35920a = i2;
        this.f35921b = dayOfWeek;
        this.f35922c = outDateStyle;
    }
}

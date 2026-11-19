package com.kizitonwose.calendar.core;

import defpackage.a;
import java.io.Serializable;
import java.time.YearMonth;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/kizitonwose/calendar/core/CalendarMonth;", "Ljava/io/Serializable;", "Ljava/time/YearMonth;", "yearMonth", "", "Lcom/kizitonwose/calendar/core/CalendarDay;", "weekDays", "<init>", "(Ljava/time/YearMonth;Ljava/util/List;)V", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CalendarMonth implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final YearMonth f35957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f35958c;

    public CalendarMonth(YearMonth yearMonth, List<? extends List<CalendarDay>> list) {
        yearMonth.getClass();
        list.getClass();
        this.f35957b = yearMonth;
        this.f35958c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!CalendarMonth.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        CalendarMonth calendarMonth = (CalendarMonth) obj;
        List list = calendarMonth.f35958c;
        if (!Intrinsics.c(this.f35957b, calendarMonth.f35957b)) {
            return false;
        }
        List list2 = this.f35958c;
        return Intrinsics.c(CollectionsKt.B((List) CollectionsKt.B(list2)), CollectionsKt.B((List) CollectionsKt.B(list))) && Intrinsics.c(CollectionsKt.M((List) CollectionsKt.M(list2)), CollectionsKt.M((List) CollectionsKt.M(list)));
    }

    public final int hashCode() {
        int iHashCode = this.f35957b.hashCode() * 31;
        List list = this.f35958c;
        return ((CalendarDay) CollectionsKt.M((List) CollectionsKt.M(list))).hashCode() + ((((CalendarDay) CollectionsKt.B((List) CollectionsKt.B(list))).hashCode() + iHashCode) * 31);
    }

    public final String toString() {
        List list = this.f35958c;
        Object objB = CollectionsKt.B((List) CollectionsKt.B(list));
        Object objM = CollectionsKt.M((List) CollectionsKt.M(list));
        StringBuilder sb = new StringBuilder("CalendarMonth { yearMonth = ");
        sb.append(this.f35957b);
        sb.append(", firstDay = ");
        sb.append(objB);
        sb.append(", lastDay = ");
        return a.n(sb, objM, " } ");
    }
}

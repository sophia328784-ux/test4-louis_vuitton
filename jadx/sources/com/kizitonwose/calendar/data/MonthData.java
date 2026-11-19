package com.kizitonwose.calendar.data;

import com.kizitonwose.calendar.core.CalendarDay;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.kizitonwose.calendar.core.DayPosition;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.b21;
import defpackage.tr;
import java.time.LocalDate;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/kizitonwose/calendar/data/MonthData;", "", "Ljava/time/YearMonth;", "month", "", "inDays", "outDays", "<init>", "(Ljava/time/YearMonth;II)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MonthData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final YearMonth f35962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f35964c;
    public final LocalDate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final YearMonth f35965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final YearMonth f35966f;
    public final CalendarMonth g;

    public MonthData(YearMonth yearMonth, int i2, int i3) {
        DayPosition dayPosition;
        yearMonth.getClass();
        this.f35962a = yearMonth;
        this.f35963b = i2;
        this.f35964c = i3;
        int iLengthOfMonth = yearMonth.lengthOfMonth() + i2 + i3;
        LocalDate localDateAtDay = yearMonth.atDay(1);
        localDateAtDay.getClass();
        this.d = localDateAtDay.minusDays(i2);
        ArrayList<List> arrayListS = CollectionsKt.s(RangesKt.j(0, iLengthOfMonth), 7);
        YearMonth yearMonthMinusMonths = yearMonth.minusMonths(1L);
        yearMonthMinusMonths.getClass();
        this.f35965e = yearMonthMinusMonths;
        YearMonth yearMonthPlusMonths = yearMonth.plusMonths(1L);
        yearMonthPlusMonths.getClass();
        this.f35966f = yearMonthPlusMonths;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(arrayListS, 10));
        for (List list : arrayListS) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                LocalDate localDatePlusDays = this.d.plusDays(((Number) it.next()).intValue());
                localDatePlusDays.getClass();
                YearMonth yearMonthOf = YearMonth.of(localDatePlusDays.getYear(), localDatePlusDays.getMonth());
                yearMonthOf.getClass();
                YearMonth yearMonth2 = this.f35962a;
                if (yearMonthOf.equals(yearMonth2)) {
                    dayPosition = DayPosition.MonthDate;
                } else if (yearMonthOf.equals(this.f35965e)) {
                    dayPosition = DayPosition.InDate;
                } else {
                    if (!yearMonthOf.equals(this.f35966f)) {
                        b21.s("Invalid date: ", localDatePlusDays, " in month: ", yearMonth2);
                        throw null;
                    }
                    dayPosition = DayPosition.OutDate;
                }
                arrayList2.add(new CalendarDay(localDatePlusDays, dayPosition));
            }
            arrayList.add(arrayList2);
        }
        this.g = new CalendarMonth(yearMonth, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MonthData)) {
            return false;
        }
        MonthData monthData = (MonthData) obj;
        return Intrinsics.c(this.f35962a, monthData.f35962a) && this.f35963b == monthData.f35963b && this.f35964c == monthData.f35964c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f35964c) + tr.b(this.f35963b, this.f35962a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MonthData(month=");
        sb.append(this.f35962a);
        sb.append(", inDays=");
        sb.append(this.f35963b);
        sb.append(", outDays=");
        return a.i(this.f35964c, ")", sb);
    }
}

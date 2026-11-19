package androidx.compose.material3.internal;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/material3/internal/CalendarMonth;", "", "", "year", "month", "numberOfDays", "daysFromStartOfWeekToFirstOfMonth", "", "startUtcTimeMillis", "<init>", "(IIIIJ)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class CalendarMonth {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7595c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7596e;

    public CalendarMonth(int i2, int i3, int i4, int i5, long j2) {
        this.f7593a = i2;
        this.f7594b = i3;
        this.f7595c = i4;
        this.d = i5;
        this.f7596e = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarMonth)) {
            return false;
        }
        CalendarMonth calendarMonth = (CalendarMonth) obj;
        return this.f7593a == calendarMonth.f7593a && this.f7594b == calendarMonth.f7594b && this.f7595c == calendarMonth.f7595c && this.d == calendarMonth.d && this.f7596e == calendarMonth.f7596e;
    }

    public final int hashCode() {
        return Long.hashCode(this.f7596e) + tr.b(this.d, tr.b(this.f7595c, tr.b(this.f7594b, Integer.hashCode(this.f7593a) * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CalendarMonth(year=");
        sb.append(this.f7593a);
        sb.append(", month=");
        sb.append(this.f7594b);
        sb.append(", numberOfDays=");
        sb.append(this.f7595c);
        sb.append(", daysFromStartOfWeekToFirstOfMonth=");
        sb.append(this.d);
        sb.append(", startUtcTimeMillis=");
        return fc.k(sb, this.f7596e, ')');
    }
}

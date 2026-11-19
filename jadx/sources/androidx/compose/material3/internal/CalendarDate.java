package androidx.compose.material3.internal;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/material3/internal/CalendarDate;", "", "", "year", "month", "dayOfMonth", "", "utcTimeMillis", "<init>", "(IIIJ)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class CalendarDate implements Comparable<CalendarDate> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7585c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7586e;

    public CalendarDate(int i2, int i3, int i4, long j2) {
        this.f7584b = i2;
        this.f7585c = i3;
        this.d = i4;
        this.f7586e = j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(CalendarDate calendarDate) {
        return Intrinsics.e(this.f7586e, calendarDate.f7586e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarDate)) {
            return false;
        }
        CalendarDate calendarDate = (CalendarDate) obj;
        return this.f7584b == calendarDate.f7584b && this.f7585c == calendarDate.f7585c && this.d == calendarDate.d && this.f7586e == calendarDate.f7586e;
    }

    public final int hashCode() {
        return Long.hashCode(this.f7586e) + tr.b(this.d, tr.b(this.f7585c, Integer.hashCode(this.f7584b) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CalendarDate(year=");
        sb.append(this.f7584b);
        sb.append(", month=");
        sb.append(this.f7585c);
        sb.append(", dayOfMonth=");
        sb.append(this.d);
        sb.append(", utcTimeMillis=");
        return fc.k(sb, this.f7586e, ')');
    }
}

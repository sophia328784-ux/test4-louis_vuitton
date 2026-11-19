package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarModelImpl;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0010\n\u001a\u00060\bj\u0002`\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/material3/BaseDatePickerStateImpl;", "", "", "initialDisplayedMonthMillis", "Lkotlin/ranges/IntRange;", "yearRange", "Landroidx/compose/material3/SelectableDates;", "selectableDates", "Ljava/util/Locale;", "Landroidx/compose/material3/CalendarLocale;", "locale", "<init>", "(Ljava/lang/Long;Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class BaseDatePickerStateImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntRange f6568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Locale f6569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CalendarModelImpl f6570c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f6571e;

    public BaseDatePickerStateImpl(Long l, IntRange intRange, SelectableDates selectableDates, Locale locale) {
        CalendarMonth calendarMonthF;
        this.f6568a = intRange;
        this.f6569b = locale;
        CalendarModelImpl calendarModelImpl = new CalendarModelImpl(locale);
        this.f6570c = calendarModelImpl;
        this.d = SnapshotStateKt.g(selectableDates);
        if (l != null) {
            calendarMonthF = calendarModelImpl.e(l.longValue());
            if (!intRange.m(calendarMonthF.f7593a)) {
                calendarMonthF = calendarModelImpl.f(calendarModelImpl.g());
            }
        } else {
            calendarMonthF = calendarModelImpl.f(calendarModelImpl.g());
        }
        this.f6571e = SnapshotStateKt.g(calendarMonthF);
    }

    public final void a(long j2) {
        CalendarMonth calendarMonthE = this.f6570c.e(j2);
        if (this.f6568a.m(calendarMonthE.f7593a)) {
            ((SnapshotMutableStateImpl) this.f6571e).setValue(calendarMonthE);
        }
    }

    public final SelectableDates b() {
        return (SelectableDates) ((SnapshotMutableStateImpl) this.d).getF10755b();
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final IntRange getF6568a() {
        return this.f6568a;
    }

    /* JADX INFO: renamed from: getLocale, reason: from getter */
    public final Locale getF6569b() {
        return this.f6569b;
    }

    public final long h() {
        return ((CalendarMonth) ((SnapshotMutableStateImpl) this.f6571e).getF10755b()).f7596e;
    }
}

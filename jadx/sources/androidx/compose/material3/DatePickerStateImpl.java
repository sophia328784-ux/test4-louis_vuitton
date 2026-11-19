package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0011B?\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0010\u000e\u001a\u00060\fj\u0002`\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/DatePickerStateImpl;", "Landroidx/compose/material3/BaseDatePickerStateImpl;", "Landroidx/compose/material3/DatePickerState;", "", "initialSelectedDateMillis", "initialDisplayedMonthMillis", "Lkotlin/ranges/IntRange;", "yearRange", "Landroidx/compose/material3/DisplayMode;", "initialDisplayMode", "Landroidx/compose/material3/SelectableDates;", "selectableDates", "Ljava/util/Locale;", "Landroidx/compose/material3/CalendarLocale;", "locale", "<init>", "(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class DatePickerStateImpl extends BaseDatePickerStateImpl implements DatePickerState {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f6882h = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f6883f;
    public final MutableState g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/DatePickerStateImpl$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public DatePickerStateImpl(Long l, Long l2, IntRange intRange, int i2, SelectableDates selectableDates, Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
        super(l2, intRange, selectableDates, locale);
        CalendarDate calendarDate = null;
        if (l != null) {
            CalendarDate calendarDateK = this.f6570c.k(l.longValue());
            if (intRange.m(calendarDateK.f7584b)) {
                calendarDate = calendarDateK;
            }
        }
        this.f6883f = SnapshotStateKt.g(calendarDate);
        this.g = SnapshotStateKt.g(new DisplayMode(i2));
    }

    @Override // androidx.compose.material3.DatePickerState
    public final Long c() {
        CalendarDate calendarDate = (CalendarDate) ((SnapshotMutableStateImpl) this.f6883f).getF10755b();
        if (calendarDate != null) {
            return Long.valueOf(calendarDate.f7586e);
        }
        return null;
    }

    @Override // androidx.compose.material3.DatePickerState
    public final void e(Long l) {
        MutableState mutableState = this.f6883f;
        if (l == null) {
            ((SnapshotMutableStateImpl) mutableState).setValue(null);
        } else {
            CalendarDate calendarDateK = this.f6570c.k(l.longValue());
            ((SnapshotMutableStateImpl) mutableState).setValue(this.f6568a.m(calendarDateK.f7584b) ? calendarDateK : null);
        }
    }

    @Override // androidx.compose.material3.DatePickerState
    public final void f(int i2) {
        Long lC = c();
        if (lC != null) {
            a(this.f6570c.e(lC.longValue()).f7596e);
        }
        ((SnapshotMutableStateImpl) this.g).setValue(new DisplayMode(i2));
    }

    @Override // androidx.compose.material3.DatePickerState
    public final int g() {
        return ((DisplayMode) ((SnapshotMutableStateImpl) this.g).getF10755b()).f6902a;
    }
}

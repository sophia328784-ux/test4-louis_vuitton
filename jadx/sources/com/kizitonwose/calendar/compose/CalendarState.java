package com.kizitonwose.calendar.compose;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.kizitonwose.calendar.core.OutDateStyle;
import com.kizitonwose.calendar.data.DataStore;
import defpackage.c1;
import defpackage.jh;
import defpackage.lc0;
import defpackage.t;
import java.time.DayOfWeek;
import java.time.YearMonth;
import java.time.temporal.ChronoUnit;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB;\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/kizitonwose/calendar/compose/CalendarState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "Ljava/time/YearMonth;", "startMonth", "endMonth", "Ljava/time/DayOfWeek;", "firstDayOfWeek", "firstVisibleMonth", "Lcom/kizitonwose/calendar/core/OutDateStyle;", "outDateStyle", "Lcom/kizitonwose/calendar/compose/VisibleItemState;", "visibleItemState", "<init>", "(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Ljava/time/YearMonth;Lcom/kizitonwose/calendar/core/OutDateStyle;Lcom/kizitonwose/calendar/compose/VisibleItemState;)V", "Companion", "compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CalendarState implements ScrollableState {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Companion f35926k = new Companion(null);
    public static final SaverKt$Saver$1 l = ListSaverKt.a(new t(25), new jh(5));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f35927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f35928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f35929c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final State f35930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final State f35931f;
    public final LazyListState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ItemPlacementInfo f35932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f35933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DataStore f35934j;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kizitonwose/calendar/compose/CalendarState$Companion;", "", "compose_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public CalendarState(YearMonth yearMonth, YearMonth yearMonth2, DayOfWeek dayOfWeek, YearMonth yearMonth3, OutDateStyle outDateStyle, VisibleItemState visibleItemState) {
        int iIntValue;
        yearMonth.getClass();
        yearMonth2.getClass();
        dayOfWeek.getClass();
        yearMonth3.getClass();
        outDateStyle.getClass();
        this.f35927a = SnapshotStateKt.g(yearMonth);
        MutableState mutableStateG = SnapshotStateKt.g(yearMonth2);
        this.f35928b = mutableStateG;
        MutableState mutableStateG2 = SnapshotStateKt.g(dayOfWeek);
        this.f35929c = mutableStateG2;
        MutableState mutableStateG3 = SnapshotStateKt.g(outDateStyle);
        this.d = mutableStateG3;
        final int i2 = 0;
        this.f35930e = SnapshotStateKt.e(new Function0(this) { // from class: ci

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CalendarState f21159c;

            {
                this.f21159c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                CalendarState calendarState = this.f21159c;
                switch (i3) {
                    case 0:
                        return (CalendarMonth) calendarState.f35934j.get(Integer.valueOf(calendarState.g.h()));
                    default:
                        DataStore dataStore = calendarState.f35934j;
                        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.N(calendarState.g.j().getF5211k());
                        return (CalendarMonth) dataStore.get(Integer.valueOf(lazyListItemInfo != null ? lazyListItemInfo.getF5212a() : 0));
                }
            }
        });
        final int i3 = 1;
        this.f35931f = SnapshotStateKt.e(new Function0(this) { // from class: ci

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CalendarState f21159c;

            {
                this.f21159c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                CalendarState calendarState = this.f21159c;
                switch (i4) {
                    case 0:
                        return (CalendarMonth) calendarState.f35934j.get(Integer.valueOf(calendarState.g.h()));
                    default:
                        DataStore dataStore = calendarState.f35934j;
                        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.N(calendarState.g.j().getF5211k());
                        return (CalendarMonth) dataStore.get(Integer.valueOf(lazyListItemInfo != null ? lazyListItemInfo.getF5212a() : 0));
                }
            }
        });
        if (visibleItemState != null) {
            iIntValue = visibleItemState.f35943b;
        } else {
            Integer numF = f(yearMonth3);
            iIntValue = numF != null ? numF.intValue() : 0;
        }
        this.g = new LazyListState(iIntValue, visibleItemState != null ? visibleItemState.f35944c : 0);
        this.f35932h = new ItemPlacementInfo();
        MutableState mutableStateG4 = SnapshotStateKt.g(new CalendarInfo(0, null, null, 6, null));
        this.f35933i = mutableStateG4;
        DataStore dataStore = new DataStore(null, new c1(this, 26), 1, null);
        this.f35934j = dataStore;
        dataStore.clear();
        YearMonth yearMonthG = g();
        YearMonth yearMonth4 = (YearMonth) ((SnapshotMutableStateImpl) mutableStateG).getF10755b();
        yearMonthG.getClass();
        yearMonth4.getClass();
        if (yearMonth4.compareTo(yearMonthG) < 0) {
            lc0.o("start: ", yearMonthG, " is greater than end: ", yearMonth4);
            throw null;
        }
        YearMonth yearMonthG2 = g();
        YearMonth yearMonth5 = (YearMonth) ((SnapshotMutableStateImpl) mutableStateG).getF10755b();
        yearMonthG2.getClass();
        yearMonth5.getClass();
        ((SnapshotMutableStateImpl) mutableStateG4).setValue(new CalendarInfo(((int) ChronoUnit.MONTHS.between(yearMonthG2, yearMonth5)) + 1, (DayOfWeek) ((SnapshotMutableStateImpl) mutableStateG2).getF10755b(), (OutDateStyle) ((SnapshotMutableStateImpl) mutableStateG3).getF10755b()));
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.g.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return this.g.b();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objC = this.g.c(mutatePriority, function2, continuation);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return this.g.d();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return this.g.e(f2);
    }

    public final Integer f(YearMonth yearMonth) {
        YearMonth yearMonthG = g();
        if (yearMonth.compareTo((YearMonth) ((SnapshotMutableStateImpl) this.f35928b).getF10755b()) > 0 || yearMonth.compareTo(yearMonthG) < 0) {
            Objects.toString(yearMonth);
            return null;
        }
        YearMonth yearMonthG2 = g();
        yearMonthG2.getClass();
        return Integer.valueOf((int) ChronoUnit.MONTHS.between(yearMonthG2, yearMonth));
    }

    public final YearMonth g() {
        return (YearMonth) ((SnapshotMutableStateImpl) this.f35927a).getF10755b();
    }
}

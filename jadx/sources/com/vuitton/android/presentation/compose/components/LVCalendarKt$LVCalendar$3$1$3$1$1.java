package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.lazy.LazyListState;
import com.kizitonwose.calendar.compose.CalendarState;
import defpackage.md;
import java.time.YearMonth;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.LVCalendarKt$LVCalendar$3$1$3$1$1", f = "LVCalendar.kt", l = {157}, m = "invokeSuspend", v = 2)
final class LVCalendarKt$LVCalendar$3$1$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CalendarState f50966c;
    public final /* synthetic */ YearMonth d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVCalendarKt$LVCalendar$3$1$3$1$1(CalendarState calendarState, YearMonth yearMonth, Continuation continuation) {
        super(2, continuation);
        this.f50966c = calendarState;
        this.d = yearMonth;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVCalendarKt$LVCalendar$3$1$3$1$1(this.f50966c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVCalendarKt$LVCalendar$3$1$3$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objF;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50965b;
        if (i2 == 0) {
            ResultKt.b(obj);
            YearMonth yearMonthMinusMonths = this.d.minusMonths(1L);
            yearMonthMinusMonths.getClass();
            this.f50965b = 1;
            CalendarState calendarState = this.f50966c;
            LazyListState lazyListState = calendarState.g;
            Integer numF = calendarState.f(yearMonthMinusMonths);
            if (numF != null) {
                int iIntValue = numF.intValue();
                LazyListState.Companion companion = LazyListState.y;
                objF = lazyListState.f(iIntValue, 0, this);
                if (objF != coroutineSingletons) {
                    objF = Unit.f71739a;
                }
            } else {
                objF = Unit.f71739a;
            }
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}

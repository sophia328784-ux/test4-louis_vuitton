package com.vuitton.android.presentation.screen.booking.summary;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.ConfirmPreBookUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.booking.common.BookingErrorExtKt;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.booking.BookingException;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmation;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$confirm$1", f = "PrebookSummaryViewModelImpl.kt", l = {149}, m = "invokeSuspend", v = 2)
final class PrebookSummaryViewModelImpl$confirm$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54753c;
    public final /* synthetic */ PrebookSummaryViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreBookConfirmForm f54754e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrebookSummaryViewModelImpl$confirm$1(PrebookSummaryViewModelImpl prebookSummaryViewModelImpl, PreBookConfirmForm preBookConfirmForm, Continuation continuation) {
        super(2, continuation);
        this.d = prebookSummaryViewModelImpl;
        this.f54754e = preBookConfirmForm;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrebookSummaryViewModelImpl$confirm$1(this.d, this.f54754e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrebookSummaryViewModelImpl$confirm$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        PrebookSummaryViewModelImpl prebookSummaryViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = prebookSummaryViewModelImpl.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54753c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = prebookSummaryViewModelImpl.f54747j.a(prebookSummaryViewModelImpl.o, BookingMonitoring.Action.ConfirmExperience.f48850a);
            ConfirmPreBookUseCase confirmPreBookUseCase = prebookSummaryViewModelImpl.f54744f;
            this.f54752b = dynatraceMonitorActionA;
            this.f54753c = 1;
            Object objA = confirmPreBookUseCase.a(this.f54754e, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f54752b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            String str = ((PreBookConfirmation) obj2).f66773a;
            Logger logger = prebookSummaryViewModelImpl.f54745h;
            SharedFlowImpl sharedFlowImpl = prebookSummaryViewModelImpl.f54748k;
            int i3 = PrebookSummaryViewModelImplKt.f54766a;
            logger.getClass();
            mutableStateFlow.setValue(BookingCTAState.IDLE);
            if (str == null || StringsKt.w(str)) {
                sharedFlowImpl.a(PrebookNavigationEvent.NavigateToConfirmation.f54737a);
            } else {
                sharedFlowImpl.a(new PrebookNavigationEvent.NavigateToPayment(str));
            }
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new BookingMonitoring.Error.ConfirmExperienceError(thA));
            mutableStateFlow.setValue(BookingCTAState.ERROR);
            if (thA instanceof BookingException) {
                prebookSummaryViewModelImpl.t.setValue(new SummaryBottomSheet.BookingConflict(BookingErrorExtKt.a(thA)));
            } else {
                prebookSummaryViewModelImpl.m.a(NotificationBuilder.a(prebookSummaryViewModelImpl.g, BookingErrorExtKt.a(thA), false, null, null, 60));
            }
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}

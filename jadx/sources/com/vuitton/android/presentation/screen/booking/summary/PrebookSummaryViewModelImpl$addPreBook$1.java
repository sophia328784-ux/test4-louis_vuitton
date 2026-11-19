package com.vuitton.android.presentation.screen.booking.summary;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.AddPreBookUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.booking.common.BookingErrorExtKt;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingMapperKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModelMapperKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.PreBookSummary;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$addPreBook$1", f = "PrebookSummaryViewModelImpl.kt", l = {108}, m = "invokeSuspend", v = 2)
final class PrebookSummaryViewModelImpl$addPreBook$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54750c;
    public final /* synthetic */ PrebookSummaryViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BookingFormUiModel f54751e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrebookSummaryViewModelImpl$addPreBook$1(PrebookSummaryViewModelImpl prebookSummaryViewModelImpl, BookingFormUiModel bookingFormUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = prebookSummaryViewModelImpl;
        this.f54751e = bookingFormUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrebookSummaryViewModelImpl$addPreBook$1(this.d, this.f54751e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrebookSummaryViewModelImpl$addPreBook$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        PrebookSummaryViewModelImpl prebookSummaryViewModelImpl = this.d;
        InAppDispatch inAppDispatch = prebookSummaryViewModelImpl.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54750c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = prebookSummaryViewModelImpl.f54747j.a(inAppDispatch, BookingMonitoring.Action.PrebookExperience.f48855a);
            BookingFormUiModel bookingFormUiModel = this.f54751e;
            dynatraceMonitorActionA.c(bookingFormUiModel.f54559e.getMonitoringValue(), "experienceType");
            AddPreBookUseCase addPreBookUseCase = prebookSummaryViewModelImpl.f54741b;
            BookingForm bookingFormA = BookingMapperKt.a(bookingFormUiModel);
            this.f54749b = dynatraceMonitorActionA;
            this.f54750c = 1;
            Object objA = addPreBookUseCase.a(bookingFormA, this);
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
            monitorAction = this.f54749b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            prebookSummaryViewModelImpl.p.setValue(new PreBookViewState.Success(PreBookUiModelMapperKt.a((PreBookSummary) obj2, inAppDispatch), false, false, 6, null));
            prebookSummaryViewModelImpl.f54748k.a(PrebookNavigationEvent.NavigateToBookingSummary.f54736a);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            Logger logger = prebookSummaryViewModelImpl.f54745h;
            int i3 = PrebookSummaryViewModelImplKt.f54766a;
            thA.toString();
            logger.getClass();
            monitorAction.d(new BookingMonitoring.Error.PrebookExperienceError(thA));
            prebookSummaryViewModelImpl.r.setValue(BookingCTAState.ERROR);
            prebookSummaryViewModelImpl.m.a(NotificationBuilder.a(prebookSummaryViewModelImpl.g, BookingErrorExtKt.a(thA), false, null, null, 60));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}

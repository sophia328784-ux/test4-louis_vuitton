package com.vuitton.android.presentation.screen.booking.summary;

import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.booking.UpdatePreBookUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
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
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$modifyPrebook$1", f = "PrebookSummaryViewModelImpl.kt", l = {128}, m = "invokeSuspend", v = 2)
final class PrebookSummaryViewModelImpl$modifyPrebook$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrebookSummaryViewModelImpl f54764c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BookingFormUiModel f54765e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrebookSummaryViewModelImpl$modifyPrebook$1(PrebookSummaryViewModelImpl prebookSummaryViewModelImpl, String str, BookingFormUiModel bookingFormUiModel, Continuation continuation) {
        super(2, continuation);
        this.f54764c = prebookSummaryViewModelImpl;
        this.d = str;
        this.f54765e = bookingFormUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrebookSummaryViewModelImpl$modifyPrebook$1(this.f54764c, this.d, this.f54765e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrebookSummaryViewModelImpl$modifyPrebook$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        PrebookSummaryViewModelImpl prebookSummaryViewModelImpl = this.f54764c;
        SharedFlowImpl sharedFlowImpl = prebookSummaryViewModelImpl.m;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54763b;
        if (i2 == 0) {
            ResultKt.b(obj);
            UpdatePreBookUseCase updatePreBookUseCase = prebookSummaryViewModelImpl.f54742c;
            BookingForm bookingFormA = BookingMapperKt.a(this.f54765e);
            this.f54763b = 1;
            objA = updatePreBookUseCase.a(this.d, bookingFormA, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            prebookSummaryViewModelImpl.p.setValue(new PreBookViewState.Success(PreBookUiModelMapperKt.a((PreBookSummary) objA, prebookSummaryViewModelImpl.o), false, false, 6, null));
            prebookSummaryViewModelImpl.f54748k.a(PrebookNavigationEvent.NavigateToBookingSummary.f54736a);
            sharedFlowImpl.a(NotificationBuilder.a(prebookSummaryViewModelImpl.g, new StringResourceUiModel.ResId(R.string.booking_modify_success_message, null, 2, null), true, null, null, 60));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            Logger logger = prebookSummaryViewModelImpl.f54745h;
            int i3 = PrebookSummaryViewModelImplKt.f54766a;
            thA.toString();
            logger.getClass();
            prebookSummaryViewModelImpl.r.setValue(BookingCTAState.ERROR);
            sharedFlowImpl.a(NotificationBuilder.a(prebookSummaryViewModelImpl.g, BookingErrorExtKt.a(thA), false, null, null, 60));
        }
        return Unit.f71739a;
    }
}

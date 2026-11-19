package com.vuitton.android.presentation.screen.booking.summary;

import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.booking.DeletePrebookUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModelMapperKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookViewState;
import com.vuitton.foundation.logger.Logger;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$deletePreBook$1", f = "PrebookSummaryViewModelImpl.kt", l = {177}, m = "invokeSuspend", v = 2)
final class PrebookSummaryViewModelImpl$deletePreBook$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrebookSummaryViewModelImpl f54758c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PreBookViewState.Success f54759e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrebookSummaryViewModelImpl$deletePreBook$1(PrebookSummaryViewModelImpl prebookSummaryViewModelImpl, String str, PreBookViewState.Success success, Continuation continuation) {
        super(2, continuation);
        this.f54758c = prebookSummaryViewModelImpl;
        this.d = str;
        this.f54759e = success;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrebookSummaryViewModelImpl$deletePreBook$1(this.f54758c, this.d, this.f54759e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrebookSummaryViewModelImpl$deletePreBook$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        PrebookSummaryViewModelImpl prebookSummaryViewModelImpl = this.f54758c;
        MutableStateFlow mutableStateFlow = prebookSummaryViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54757b;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeletePrebookUseCase deletePrebookUseCase = prebookSummaryViewModelImpl.d;
            this.f54757b = 1;
            objA = deletePrebookUseCase.a(this.d, this);
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
            mutableStateFlow.setValue(new PreBookViewState.Success(PreBookUiModelMapperKt.a((PreBookSummary) objA, prebookSummaryViewModelImpl.o), false, false, 2, null));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            Logger logger = prebookSummaryViewModelImpl.f54745h;
            int i3 = PrebookSummaryViewModelImplKt.f54766a;
            thA.toString();
            logger.getClass();
            mutableStateFlow.setValue(PreBookViewState.Success.a(this.f54759e, false, 3));
            prebookSummaryViewModelImpl.m.a(NotificationBuilder.a(prebookSummaryViewModelImpl.g, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60));
        }
        return Unit.f71739a;
    }
}

package com.vuitton.android.presentation.screen.booking.summary;

import com.vuitton.android.domain.usecase.booking.GetPreBookSummaryUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$getPrebookSummary$1", f = "PrebookSummaryViewModelImpl.kt", l = {92}, m = "invokeSuspend", v = 2)
final class PrebookSummaryViewModelImpl$getPrebookSummary$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PrebookSummaryViewModelImpl f54760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54761c;
    public final /* synthetic */ PrebookSummaryViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrebookSummaryViewModelImpl$getPrebookSummary$1(PrebookSummaryViewModelImpl prebookSummaryViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = prebookSummaryViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PrebookSummaryViewModelImpl$getPrebookSummary$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PrebookSummaryViewModelImpl$getPrebookSummary$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        PrebookSummaryViewModelImpl prebookSummaryViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = prebookSummaryViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54761c;
        if (i2 == 0) {
            ResultKt.b(obj);
            PreBookViewState preBookViewState = (PreBookViewState) mutableStateFlow.getValue();
            if (preBookViewState instanceof PreBookViewState.Success) {
                mutableStateFlow.setValue(PreBookViewState.Success.a((PreBookViewState.Success) preBookViewState, false, 5));
            } else {
                mutableStateFlow.setValue(PreBookViewState.Loading.f54828a);
            }
            GetPreBookSummaryUseCase getPreBookSummaryUseCase = prebookSummaryViewModelImpl.f54740a;
            this.f54760b = prebookSummaryViewModelImpl;
            this.f54761c = 1;
            objA = getPreBookSummaryUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            prebookSummaryViewModelImpl = this.f54760b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            prebookSummaryViewModelImpl.p.setValue(new PreBookViewState.Success(PreBookUiModelMapperKt.a((PreBookSummary) objA, prebookSummaryViewModelImpl.o), false, false, 6, null));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            Logger logger = prebookSummaryViewModelImpl.f54745h;
            int i3 = PrebookSummaryViewModelImplKt.f54766a;
            thA.toString();
            logger.getClass();
            prebookSummaryViewModelImpl.p.setValue(PreBookViewState.Error.f54827a);
        }
        return Unit.f71739a;
    }
}

package com.vuitton.android.presentation.screen.main;

import com.vuitton.android.domain.usecase.aicompanion.UpdateAITooltipVisibilityUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$updateTooltipVisibility$1", f = "MainActivityViewModelImpl.kt", l = {287}, m = "invokeSuspend", v = 2)
final class MainActivityViewModelImpl$updateTooltipVisibility$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModelImpl f59092c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivityViewModelImpl$updateTooltipVisibility$1(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
        super(2, continuation);
        this.f59092c = mainActivityViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivityViewModelImpl$updateTooltipVisibility$1(continuation, this.f59092c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivityViewModelImpl$updateTooltipVisibility$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59091b;
        MainActivityViewModelImpl mainActivityViewModelImpl = this.f59092c;
        if (i2 == 0) {
            ResultKt.b(obj);
            UpdateAITooltipVisibilityUseCase updateAITooltipVisibilityUseCase = mainActivityViewModelImpl.q;
            this.f59091b = 1;
            objA = updateAITooltipVisibilityUseCase.a(true, this);
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
        Throwable thA = Result.a(objA);
        if (thA != null) {
            defpackage.a.y("Error updating AI tooltip visibility: ", thA.getMessage(), mainActivityViewModelImpl.f59053b, MainActivityViewModelImpl.J, null);
        }
        return Unit.f71739a;
    }
}

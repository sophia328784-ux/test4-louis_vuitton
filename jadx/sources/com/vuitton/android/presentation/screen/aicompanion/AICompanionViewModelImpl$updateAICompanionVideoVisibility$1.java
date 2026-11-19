package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.domain.usecase.aicompanion.UpdateAICompanionVideoVisibilityUseCase;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$updateAICompanionVideoVisibility$1", f = "AICompanionViewModelImpl.kt", l = {108}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$updateAICompanionVideoVisibility$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AICompanionViewModelImpl f52775c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$updateAICompanionVideoVisibility$1(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52775c = aICompanionViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$updateAICompanionVideoVisibility$1(this.f52775c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$updateAICompanionVideoVisibility$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52774b;
        AICompanionViewModelImpl aICompanionViewModelImpl = this.f52775c;
        if (i2 == 0) {
            ResultKt.b(obj);
            UpdateAICompanionVideoVisibilityUseCase updateAICompanionVideoVisibilityUseCase = aICompanionViewModelImpl.o;
            this.f52774b = 1;
            objA = updateAICompanionVideoVisibilityUseCase.a(true, this);
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
            defpackage.a.y("Error updating AI companion video visibility: ", thA.getMessage(), aICompanionViewModelImpl.f52730b, AICompanionViewModelImpl.v, thA);
        }
        return Unit.f71739a;
    }
}

package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.domain.usecase.aicompanion.HasAICompanionVideoBeenDisplayedUseCase;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionOnboardingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.foundation.model.domain.model.config.AICompanionConfig;
import com.vuitton.foundation.model.domain.model.config.AICompanionOnboarding;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1", f = "AICompanionViewModelImpl.kt", l = {122}, m = "invokeSuspend", v = 2)
final class AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AICompanionOnboarding f52747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f52748c;
    public final /* synthetic */ AICompanionViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = aICompanionViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        AICompanionOnboarding aICompanionOnboarding;
        Object value;
        Object value2;
        AICompanionViewModelImpl aICompanionViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = aICompanionViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52748c;
        if (i2 == 0) {
            ResultKt.b(obj);
            AICompanionConfig aICompanionConfig = aICompanionViewModelImpl.f52737k.a().f67237j;
            AICompanionOnboarding aICompanionOnboarding2 = aICompanionConfig != null ? aICompanionConfig.f67222b : null;
            HasAICompanionVideoBeenDisplayedUseCase hasAICompanionVideoBeenDisplayedUseCase = aICompanionViewModelImpl.n;
            this.f52747b = aICompanionOnboarding2;
            this.f52748c = 1;
            Object objA = hasAICompanionVideoBeenDisplayedUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            aICompanionOnboarding = aICompanionOnboarding2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            aICompanionOnboarding = this.f52747b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            Boolean bool = (Boolean) obj2;
            bool.booleanValue();
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, AICompanionViewState.a((AICompanionViewState) value2, false, aICompanionOnboarding != null ? new AICompanionOnboardingUiModel(aICompanionOnboarding.f67225c.f67112b, aICompanionOnboarding.f67223a, FeatureThemeMapperKt.b(aICompanionOnboarding.f67224b)) : null, null, null, null, bool, false, false, null, 477)));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            defpackage.a.y("Error checking if AI companion video has been displayed: ", thA.getMessage(), aICompanionViewModelImpl.f52730b, AICompanionViewModelImpl.v, thA);
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, AICompanionViewState.a((AICompanionViewState) value, false, aICompanionOnboarding != null ? new AICompanionOnboardingUiModel(aICompanionOnboarding.f67225c.f67112b, aICompanionOnboarding.f67223a, FeatureThemeMapperKt.b(aICompanionOnboarding.f67224b)) : null, null, null, null, Boolean.TRUE, false, false, null, 477)));
        }
        return Unit.f71739a;
    }
}

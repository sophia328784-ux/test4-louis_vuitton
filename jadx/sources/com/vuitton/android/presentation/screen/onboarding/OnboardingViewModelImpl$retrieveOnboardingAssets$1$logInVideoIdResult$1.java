package com.vuitton.android.presentation.screen.onboarding;

import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.common.AppAssetsVideoId;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.video.VideoId;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1", f = "OnboardingViewModelImpl.kt", l = {147}, m = "invokeSuspend", v = 2)
final class OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends AssetVideo>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModelImpl f59521c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1(OnboardingViewModelImpl onboardingViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59521c = onboardingViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1(this.f59521c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object objA;
        OnboardingViewModelImpl onboardingViewModelImpl = this.f59521c;
        MutableStateFlow mutableStateFlow = onboardingViewModelImpl.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59520b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetLiveVideoUseCase getLiveVideoUseCase = onboardingViewModelImpl.d;
            if (onboardingViewModelImpl.f59501i.n()) {
                str = AppAssetsVideoId.LoginVideoId.f50722c.f50721b;
                VideoId.Companion companion = VideoId.f68280a;
                str.getClass();
            } else {
                str = AppAssetsVideoId.LoginVideoId.f50722c.f50720a;
                VideoId.Companion companion2 = VideoId.f68280a;
                str.getClass();
            }
            this.f59520b = 1;
            objA = getLiveVideoUseCase.a(str, this);
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
        Result.Companion companion3 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        if (Result.a(objA) != null) {
            mutableStateFlow.setValue(Boolean.TRUE);
        }
        return new Result(objA);
    }
}

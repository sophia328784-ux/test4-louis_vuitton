package com.vuitton.android.presentation.screen.onboarding;

import android.os.Build;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssetType;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$retrieveOnboardingSteps$1", f = "OnboardingViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class OnboardingViewModelImpl$retrieveOnboardingSteps$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OnboardingViewModelImpl f59526b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingViewModelImpl$retrieveOnboardingSteps$1(OnboardingViewModelImpl onboardingViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59526b = onboardingViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingViewModelImpl$retrieveOnboardingSteps$1(this.f59526b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingViewModelImpl$retrieveOnboardingSteps$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 33) {
            arrayList.add(OnboardingAssetType.NOTIFICATIONS);
        }
        arrayList.add(OnboardingAssetType.GEOLOCATION);
        OnboardingViewModelImpl onboardingViewModelImpl = this.f59526b;
        if (((Boolean) onboardingViewModelImpl.f59503k.getValue()).booleanValue()) {
            arrayList.add(OnboardingAssetType.ICONS);
        }
        onboardingViewModelImpl.m.setValue(CollectionsKt.y0(arrayList));
        return Unit.f71739a;
    }
}

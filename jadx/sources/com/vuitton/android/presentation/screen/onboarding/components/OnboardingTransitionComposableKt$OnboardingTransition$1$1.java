package com.vuitton.android.presentation.screen.onboarding.components;

import android.os.Handler;
import android.os.Looper;
import defpackage.r3;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.components.OnboardingTransitionComposableKt$OnboardingTransition$1$1", f = "OnboardingTransitionComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class OnboardingTransitionComposableKt$OnboardingTransition$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f59568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f59569c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingTransitionComposableKt$OnboardingTransition$1$1(long j2, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f59568b = j2;
        this.f59569c = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnboardingTransitionComposableKt$OnboardingTransition$1$1(this.f59568b, this.f59569c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnboardingTransitionComposableKt$OnboardingTransition$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        new Handler(Looper.getMainLooper()).postDelayed(new r3(this.f59569c, 7), this.f59568b);
        return Unit.f71739a;
    }
}

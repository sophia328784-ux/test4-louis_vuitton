package com.vuitton.android.presentation.screen.aicompanion.components.onboarding;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$videoReady$1", f = "AICompanionOnboardingScreen.kt", l = {CertificateBody.profileType}, m = "invokeSuspend", v = 2)
final class AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$videoReady$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CompletableDeferred f52878c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$videoReady$1(CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.f52878c = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$videoReady$1(this.f52878c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$videoReady$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52877b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f52877b = 1;
            if (this.f52878c.k(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}

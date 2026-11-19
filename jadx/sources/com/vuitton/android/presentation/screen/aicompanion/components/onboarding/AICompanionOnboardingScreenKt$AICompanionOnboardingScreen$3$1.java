package com.vuitton.android.presentation.screen.aicompanion.components.onboarding;

import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.LazyListState;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1", f = "AICompanionOnboardingScreen.kt", l = {125, 139}, m = "invokeSuspend", v = 2)
final class AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f52873c;
    public final /* synthetic */ CompletableDeferred d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1", f = "AICompanionOnboardingScreen.kt", l = {128}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Unit>>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f52874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f52875c;
        public final /* synthetic */ CompletableDeferred d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CompletableDeferred completableDeferred, Continuation continuation) {
            super(2, continuation);
            this.d = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, continuation);
            anonymousClass1.f52875c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope = (CoroutineScope) this.f52875c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f52874b;
            if (i2 != 0) {
                if (i2 == 1) {
                    ResultKt.b(obj);
                    return obj;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            Deferred[] deferredArr = {BuildersKt.a(coroutineScope, null, new AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$minimumDelay$1(2, null), 3), BuildersKt.a(coroutineScope, null, new AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1$videoReady$1(this.d, null), 3)};
            this.f52875c = null;
            this.f52874b = 1;
            Object objA = AwaitKt.a(deferredArr, this);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$2", f = "AICompanionOnboardingScreen.kt", l = {140, 144}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f52879b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f52880c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object f52881e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ TargetBasedAnimation f52882f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(TargetBasedAnimation targetBasedAnimation, Continuation continuation) {
            super(2, continuation);
            this.f52882f = targetBasedAnimation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f52882f, continuation);
            anonymousClass2.f52881e = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0049  */
        /* JADX WARN: Code duplicated, block: B:18:0x0065  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0065 -> B:19:0x0068). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = r11.f52881e
                androidx.compose.foundation.gestures.ScrollScope r0 = (androidx.compose.foundation.gestures.ScrollScope) r0
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r11.d
                r3 = 4
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L24
                if (r2 == r5) goto L20
                if (r2 != r4) goto L19
                float r2 = r11.f52880c
                long r5 = r11.f52879b
                kotlin.ResultKt.b(r12)
                goto L68
            L19:
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r11)
                r11 = 0
                return r11
            L20:
                kotlin.ResultKt.b(r12)
                goto L3f
            L24:
                kotlin.ResultKt.b(r12)
                p r12 = new p
                r12.<init>(r3)
                r11.f52881e = r0
                r11.d = r5
                kotlin.coroutines.CoroutineContext r2 = r11.getContext()
                androidx.compose.runtime.MonotonicFrameClock r2 = androidx.compose.runtime.MonotonicFrameClockKt.a(r2)
                java.lang.Object r12 = r2.c(r11, r12)
                if (r12 != r1) goto L3f
                goto L64
            L3f:
                java.lang.Number r12 = (java.lang.Number) r12
                long r5 = r12.longValue()
                r12 = 0
                r2 = 0
            L47:
                if (r2 != 0) goto L86
                p r2 = new p
                r2.<init>(r3)
                r11.f52881e = r0
                r11.f52879b = r5
                r11.f52880c = r12
                r11.d = r4
                kotlin.coroutines.CoroutineContext r7 = r11.getContext()
                androidx.compose.runtime.MonotonicFrameClock r7 = androidx.compose.runtime.MonotonicFrameClockKt.a(r7)
                java.lang.Object r2 = r7.c(r11, r2)
                if (r2 != r1) goto L65
            L64:
                return r1
            L65:
                r10 = r2
                r2 = r12
                r12 = r10
            L68:
                java.lang.Number r12 = (java.lang.Number) r12
                long r7 = r12.longValue()
                long r7 = r7 - r5
                androidx.compose.animation.core.TargetBasedAnimation r12 = r11.f52882f
                java.lang.Object r9 = r12.f(r7)
                java.lang.Number r9 = (java.lang.Number) r9
                float r9 = r9.floatValue()
                float r2 = r9 - r2
                r0.e(r2)
                boolean r2 = r12.c(r7)
                r12 = r9
                goto L47
            L86:
                kotlin.Unit r11 = kotlin.Unit.f71739a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1(LazyListState lazyListState, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.f52873c = lazyListState;
        this.d = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1(this.f52873c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0070, code lost:
    
        if (r14.c(androidx.compose.foundation.MutatePriority.Default, r1, r13) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.f52872b
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L11
            kotlin.ResultKt.b(r14)
            goto L73
        L11:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r4
        L17:
            kotlin.ResultKt.b(r14)
            goto L2e
        L1b:
            kotlin.ResultKt.b(r14)
            com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1 r14 = new com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$1
            kotlinx.coroutines.CompletableDeferred r1 = r13.d
            r14.<init>(r1, r4)
            r13.f52872b = r3
            java.lang.Object r14 = kotlinx.coroutines.CoroutineScopeKt.d(r14, r13)
            if (r14 != r0) goto L2e
            goto L72
        L2e:
            androidx.compose.foundation.lazy.LazyListState r14 = r13.f52873c
            androidx.compose.foundation.lazy.LazyListLayoutInfo r1 = r14.j()
            java.util.List r1 = r1.getF5211k()
            java.lang.Object r1 = kotlin.collections.CollectionsKt.firstOrNull(r1)
            androidx.compose.foundation.lazy.LazyListItemInfo r1 = (androidx.compose.foundation.lazy.LazyListItemInfo) r1
            if (r1 == 0) goto L76
            int r1 = r1.getQ()
            float r1 = (float) r1
            androidx.compose.animation.core.TargetBasedAnimation r5 = new androidx.compose.animation.core.TargetBasedAnimation
            r3 = 0
            r6 = 6
            r7 = 500(0x1f4, float:7.0E-43)
            androidx.compose.animation.core.TweenSpec r6 = androidx.compose.animation.core.AnimationSpecKt.c(r7, r3, r4, r6)
            androidx.compose.animation.core.TwoWayConverter r7 = androidx.compose.animation.core.VectorConvertersKt.f4036a
            java.lang.Float r8 = new java.lang.Float
            r3 = 0
            r8.<init>(r3)
            java.lang.Float r9 = new java.lang.Float
            r9.<init>(r1)
            r11 = 16
            r12 = 0
            r10 = 0
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
            com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$2 r1 = new com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1$2
            r1.<init>(r5, r4)
            r13.f52872b = r2
            androidx.compose.foundation.MutatePriority r2 = androidx.compose.foundation.MutatePriority.Default
            java.lang.Object r13 = r14.c(r2, r1, r13)
            if (r13 != r0) goto L73
        L72:
            return r0
        L73:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        L76:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

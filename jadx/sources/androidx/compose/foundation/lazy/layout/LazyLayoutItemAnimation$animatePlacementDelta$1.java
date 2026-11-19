package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.FiniteAnimationSpec;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1", f = "LazyLayoutItemAnimation.kt", l = {141, 148}, m = "invokeSuspend", v = 1)
final class LazyLayoutItemAnimation$animatePlacementDelta$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FiniteAnimationSpec f5441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5442c;
    public final /* synthetic */ LazyLayoutItemAnimation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FiniteAnimationSpec f5443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f5444f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutItemAnimation$animatePlacementDelta$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, long j2, Continuation continuation) {
        super(2, continuation);
        this.d = lazyLayoutItemAnimation;
        this.f5443e = finiteAnimationSpec;
        this.f5444f = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyLayoutItemAnimation$animatePlacementDelta$1(this.d, this.f5443e, this.f5444f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LazyLayoutItemAnimation$animatePlacementDelta$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0079, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r0, r1, r10, null, r11, r12, 4) == r8) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r7 = r12.d
            androidx.compose.animation.core.Animatable r0 = r7.o
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.f5442c
            r2 = 0
            long r3 = r12.f5444f
            r6 = 2
            r9 = 1
            if (r1 == 0) goto L23
            if (r1 == r9) goto L1d
            if (r1 != r6) goto L17
            kotlin.ResultKt.b(r13)     // Catch: java.util.concurrent.CancellationException -> L84
            goto L7c
        L17:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r2
        L1d:
            androidx.compose.animation.core.FiniteAnimationSpec r1 = r12.f5441b
            kotlin.ResultKt.b(r13)     // Catch: java.util.concurrent.CancellationException -> L84
            goto L4e
        L23:
            kotlin.ResultKt.b(r13)
            boolean r1 = r0.e()     // Catch: java.util.concurrent.CancellationException -> L84
            androidx.compose.animation.core.FiniteAnimationSpec r10 = r12.f5443e
            if (r1 == 0) goto L37
            boolean r1 = r10 instanceof androidx.compose.animation.core.SpringSpec     // Catch: java.util.concurrent.CancellationException -> L84
            if (r1 == 0) goto L35
            androidx.compose.animation.core.SpringSpec r10 = (androidx.compose.animation.core.SpringSpec) r10     // Catch: java.util.concurrent.CancellationException -> L84
            goto L37
        L35:
            androidx.compose.animation.core.SpringSpec r10 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimationKt.f5453a     // Catch: java.util.concurrent.CancellationException -> L84
        L37:
            r1 = r10
            boolean r10 = r0.e()     // Catch: java.util.concurrent.CancellationException -> L84
            if (r10 != 0) goto L53
            androidx.compose.ui.unit.IntOffset r10 = new androidx.compose.ui.unit.IntOffset     // Catch: java.util.concurrent.CancellationException -> L84
            r10.<init>(r3)     // Catch: java.util.concurrent.CancellationException -> L84
            r12.f5441b = r1     // Catch: java.util.concurrent.CancellationException -> L84
            r12.f5442c = r9     // Catch: java.util.concurrent.CancellationException -> L84
            java.lang.Object r10 = r0.f(r10, r12)     // Catch: java.util.concurrent.CancellationException -> L84
            if (r10 != r8) goto L4e
            goto L7b
        L4e:
            kotlin.jvm.functions.Function0 r10 = r7.f5425c     // Catch: java.util.concurrent.CancellationException -> L84
            r10.mo47invoke()     // Catch: java.util.concurrent.CancellationException -> L84
        L53:
            java.lang.Object r0 = r0.d()     // Catch: java.util.concurrent.CancellationException -> L84
            androidx.compose.ui.unit.IntOffset r0 = (androidx.compose.ui.unit.IntOffset) r0     // Catch: java.util.concurrent.CancellationException -> L84
            long r10 = r0.f11014a     // Catch: java.util.concurrent.CancellationException -> L84
            long r3 = androidx.compose.ui.unit.IntOffset.c(r10, r3)     // Catch: java.util.concurrent.CancellationException -> L84
            androidx.compose.animation.core.Animatable r0 = r7.o     // Catch: java.util.concurrent.CancellationException -> L84
            r10 = r1
            androidx.compose.ui.unit.IntOffset r1 = new androidx.compose.ui.unit.IntOffset     // Catch: java.util.concurrent.CancellationException -> L84
            r1.<init>(r3)     // Catch: java.util.concurrent.CancellationException -> L84
            s1 r11 = new s1     // Catch: java.util.concurrent.CancellationException -> L84
            r11.<init>(r7, r3, r9)     // Catch: java.util.concurrent.CancellationException -> L84
            r12.f5441b = r2     // Catch: java.util.concurrent.CancellationException -> L84
            r12.f5442c = r6     // Catch: java.util.concurrent.CancellationException -> L84
            r3 = 0
            r6 = 4
            r5 = r12
            r2 = r10
            r4 = r11
            java.lang.Object r0 = androidx.compose.animation.core.Animatable.c(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.util.concurrent.CancellationException -> L84
            if (r0 != r8) goto L7c
        L7b:
            return r8
        L7c:
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$Companion r0 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.s     // Catch: java.util.concurrent.CancellationException -> L84
            r0 = 0
            r7.g(r0)     // Catch: java.util.concurrent.CancellationException -> L84
            r7.g = r0     // Catch: java.util.concurrent.CancellationException -> L84
        L84:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

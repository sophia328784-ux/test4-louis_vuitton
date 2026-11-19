package androidx.navigation.compose;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.navigation.NavBackStackEntry;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$29$1", f = "NavHost.kt", l = {644, 651}, m = "invokeSuspend")
final class NavHostKt$NavHost$29$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18270c;
    public final /* synthetic */ SeekableTransitionState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavBackStackEntry f18271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Transition f18272f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1(SeekableTransitionState seekableTransitionState, NavBackStackEntry navBackStackEntry, Transition transition, Continuation continuation) {
        super(2, continuation);
        this.d = seekableTransitionState;
        this.f18271e = navBackStackEntry;
        this.f18272f = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NavHostKt$NavHost$29$1 navHostKt$NavHost$29$1 = new NavHostKt$NavHost$29$1(this.d, this.f18271e, this.f18272f, continuation);
        navHostKt$NavHost$29$1.f18270c = obj;
        return navHostKt$NavHost$29$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavHostKt$NavHost$29$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        if (androidx.compose.animation.core.SeekableTransitionState.k(r5, r9, r14) == r6) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0075, code lost:
    
        if (androidx.compose.animation.core.SuspendAnimationKt.c(r3, net.rtccloud.sdk.Call.Parameters.DEFAULT_CAMERA_ZOOM, r1, r3, r14, 4) == r6) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
    
        return r6;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r14.f18269b
            r1 = 0
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L18
            if (r0 == r3) goto L14
            if (r0 != r2) goto Le
            goto L14
        Le:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r1
        L14:
            kotlin.ResultKt.b(r15)
            goto L78
        L18:
            kotlin.ResultKt.b(r15)
            java.lang.Object r0 = r14.f18270c
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            androidx.compose.animation.core.SeekableTransitionState r5 = r14.d
            androidx.compose.runtime.MutableState r7 = r5.f3922c
            androidx.compose.runtime.MutableFloatState r8 = r5.f3926i
            androidx.compose.runtime.SnapshotMutableStateImpl r7 = (androidx.compose.runtime.SnapshotMutableStateImpl) r7
            java.lang.Object r7 = r7.getF10755b()
            androidx.navigation.NavBackStackEntry r9 = r14.f18271e
            boolean r7 = kotlin.jvm.internal.Intrinsics.c(r7, r9)
            if (r7 != 0) goto L3c
            r14.f18269b = r3
            java.lang.Object r0 = androidx.compose.animation.core.SeekableTransitionState.k(r5, r9, r14)
            if (r0 != r6) goto L78
            goto L77
        L3c:
            androidx.compose.animation.core.Transition r3 = r14.f18272f
            androidx.compose.runtime.State r3 = r3.l
            java.lang.Object r3 = r3.getF10755b()
            java.lang.Number r3 = (java.lang.Number) r3
            long r10 = r3.longValue()
            r12 = 1000000(0xf4240, double:4.940656E-318)
            long r10 = r10 / r12
            r3 = r8
            androidx.compose.runtime.SnapshotMutableFloatStateImpl r3 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r3
            float r3 = r3.a()
            androidx.compose.runtime.SnapshotMutableFloatStateImpl r8 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r8
            float r7 = r8.a()
            float r8 = (float) r10
            float r7 = r7 * r8
            int r7 = (int) r7
            r8 = 0
            r10 = 6
            androidx.compose.animation.core.TweenSpec r1 = androidx.compose.animation.core.AnimationSpecKt.c(r7, r8, r1, r10)
            r7 = r3
            androidx.navigation.compose.c r3 = new androidx.navigation.compose.c
            r3.<init>()
            r14.f18269b = r2
            r2 = r1
            r1 = 0
            r5 = 4
            r4 = r14
            r0 = r7
            java.lang.Object r0 = androidx.compose.animation.core.SuspendAnimationKt.c(r0, r1, r2, r3, r4, r5)
            if (r0 != r6) goto L78
        L77:
            return r6
        L78:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$29$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

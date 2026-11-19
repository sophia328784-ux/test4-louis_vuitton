package androidx.navigation3.ui;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.navigation3.scene.Scene;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$12$1", f = "NavDisplay.kt", l = {778, 798}, m = "invokeSuspend", v = 1)
final class NavDisplayKt__NavDisplayKt$NavDisplay$12$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18433c;
    public final /* synthetic */ SeekableTransitionState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Scene f18434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Transition f18435f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$12$1(SeekableTransitionState seekableTransitionState, Scene scene, Transition transition, Continuation continuation) {
        super(2, continuation);
        this.d = seekableTransitionState;
        this.f18434e = scene;
        this.f18435f = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NavDisplayKt__NavDisplayKt$NavDisplay$12$1 navDisplayKt__NavDisplayKt$NavDisplay$12$1 = new NavDisplayKt__NavDisplayKt$NavDisplay$12$1(this.d, this.f18434e, this.f18435f, continuation);
        navDisplayKt__NavDisplayKt$NavDisplay$12$1.f18433c = obj;
        return navDisplayKt__NavDisplayKt$NavDisplay$12$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$12$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
    
        if (androidx.compose.animation.core.SeekableTransitionState.k(r1, r7, r14) == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00be, code lost:
    
        if (androidx.compose.animation.core.SuspendAnimationKt.c(r8, r9, r10, r11, r14, 4) == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c0, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r14.f18432b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L19
            if (r1 == r4) goto L14
            if (r1 != r3) goto Le
            goto L14
        Le:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r14)
            return r2
        L14:
            kotlin.ResultKt.b(r15)
            goto Lc1
        L19:
            kotlin.ResultKt.b(r15)
            java.lang.Object r15 = r14.f18433c
            kotlinx.coroutines.CoroutineScope r15 = (kotlinx.coroutines.CoroutineScope) r15
            androidx.compose.animation.core.SeekableTransitionState r1 = r14.d
            androidx.compose.runtime.MutableState r5 = r1.f3922c
            androidx.compose.runtime.MutableFloatState r6 = r1.f3926i
            androidx.compose.runtime.SnapshotMutableStateImpl r5 = (androidx.compose.runtime.SnapshotMutableStateImpl) r5
            java.lang.Object r5 = r5.getF10755b()
            androidx.navigation3.scene.Scene r7 = r14.f18434e
            boolean r5 = kotlin.jvm.internal.Intrinsics.c(r5, r7)
            if (r5 != 0) goto L3e
            r14.f18432b = r4
            java.lang.Object r14 = androidx.compose.animation.core.SeekableTransitionState.k(r1, r7, r14)
            if (r14 != r0) goto Lc1
            goto Lc0
        L3e:
            androidx.compose.animation.core.Transition r4 = r14.f18435f
            androidx.compose.runtime.State r5 = r4.l
            java.lang.Object r5 = r5.getF10755b()
            java.lang.Number r5 = (java.lang.Number) r5
            long r8 = r5.longValue()
            r10 = 1000000(0xf4240, double:4.940656E-318)
            long r8 = r8 / r10
            androidx.compose.runtime.MutableState r4 = r4.d
            androidx.compose.runtime.SnapshotMutableStateImpl r4 = (androidx.compose.runtime.SnapshotMutableStateImpl) r4
            java.lang.Object r4 = r4.getF10755b()
            boolean r4 = kotlin.jvm.internal.Intrinsics.c(r4, r7)
            if (r4 == 0) goto L7b
            java.lang.Float r4 = new java.lang.Float
            r5 = 1065353216(0x3f800000, float:1.0)
            r4.<init>(r5)
            r10 = r6
            androidx.compose.runtime.SnapshotMutableFloatStateImpl r10 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r10
            float r10 = r10.a()
            float r5 = r5 - r10
            float r8 = (float) r8
            float r5 = r5 * r8
            int r5 = (int) r5
            java.lang.Integer r8 = new java.lang.Integer
            r8.<init>(r5)
            kotlin.Pair r5 = new kotlin.Pair
            r5.<init>(r4, r8)
            goto L95
        L7b:
            java.lang.Float r4 = new java.lang.Float
            r5 = 0
            r4.<init>(r5)
            r5 = r6
            androidx.compose.runtime.SnapshotMutableFloatStateImpl r5 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r5
            float r5 = r5.a()
            float r8 = (float) r8
            float r5 = r5 * r8
            int r5 = (int) r5
            java.lang.Integer r8 = new java.lang.Integer
            r8.<init>(r5)
            kotlin.Pair r5 = new kotlin.Pair
            r5.<init>(r4, r8)
        L95:
            java.lang.Object r4 = r5.f71705b
            java.lang.Number r4 = (java.lang.Number) r4
            float r9 = r4.floatValue()
            java.lang.Object r4 = r5.f71706c
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            androidx.compose.runtime.SnapshotMutableFloatStateImpl r6 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r6
            float r8 = r6.a()
            r5 = 0
            r6 = 6
            androidx.compose.animation.core.TweenSpec r10 = androidx.compose.animation.core.AnimationSpecKt.c(r4, r5, r2, r6)
            androidx.navigation3.ui.a r11 = new androidx.navigation3.ui.a
            r11.<init>()
            r14.f18432b = r3
            r13 = 4
            r12 = r14
            java.lang.Object r14 = androidx.compose.animation.core.SuspendAnimationKt.c(r8, r9, r10, r11, r12, r13)
            if (r14 != r0) goto Lc1
        Lc0:
            return r0
        Lc1:
            kotlin.Unit r14 = kotlin.Unit.f71739a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$12$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package androidx.navigation3.ui;

import androidx.compose.animation.core.SeekableTransitionState;
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
@DebugMetadata(c = "androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1", f = "NavDisplay.kt", l = {806, 810}, m = "invokeSuspend", v = 1)
final class NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f18437c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SeekableTransitionState f18438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Scene f18439f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1(float f2, float f3, SeekableTransitionState seekableTransitionState, Scene scene, Continuation continuation) {
        super(2, continuation);
        this.f18437c = f2;
        this.d = f3;
        this.f18438e = seekableTransitionState;
        this.f18439f = scene;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1(this.f18437c, this.d, this.f18438e, this.f18439f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        if (r2.r(r7.f18439f, r7) == r0) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f18436b
            androidx.compose.animation.core.SeekableTransitionState r2 = r7.f18438e
            float r3 = r7.f18437c
            float r4 = r7.d
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L21
            if (r1 == r6) goto L1d
            if (r1 != r5) goto L16
            kotlin.ResultKt.b(r8)
            goto L49
        L16:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L1d:
            kotlin.ResultKt.b(r8)
            goto L3a
        L21:
            kotlin.ResultKt.b(r8)
            int r8 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r8 != 0) goto L29
            goto L3a
        L29:
            r7.f18436b = r6
            androidx.compose.runtime.MutableState r8 = r2.f3921b
            androidx.compose.runtime.SnapshotMutableStateImpl r8 = (androidx.compose.runtime.SnapshotMutableStateImpl) r8
            java.lang.Object r8 = r8.getF10755b()
            java.lang.Object r8 = r2.n(r3, r8, r7)
            if (r8 != r0) goto L3a
            goto L48
        L3a:
            int r8 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r8 != 0) goto L49
            r7.f18436b = r5
            androidx.navigation3.scene.Scene r8 = r7.f18439f
            java.lang.Object r7 = r2.r(r8, r7)
            if (r7 != r0) goto L49
        L48:
            return r0
        L49:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$12$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

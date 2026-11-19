package androidx.navigation.compose;

import androidx.compose.animation.core.SeekableTransitionState;
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
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1", f = "NavHost.kt", l = {659, 663}, m = "invokeSuspend")
final class NavHostKt$NavHost$29$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f18274c;
    public final /* synthetic */ SeekableTransitionState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavBackStackEntry f18275e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$29$1$1$1(float f2, SeekableTransitionState seekableTransitionState, NavBackStackEntry navBackStackEntry, Continuation continuation) {
        super(2, continuation);
        this.f18274c = f2;
        this.d = seekableTransitionState;
        this.f18275e = navBackStackEntry;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavHostKt$NavHost$29$1$1$1(this.f18274c, this.d, this.f18275e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavHostKt$NavHost$29$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r2.r(r7.f18275e, r7) == r0) goto L19;
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
            int r1 = r7.f18273b
            androidx.compose.animation.core.SeekableTransitionState r2 = r7.d
            float r3 = r7.f18274c
            r4 = 0
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L20
            if (r1 == r6) goto L1c
            if (r1 != r5) goto L15
            kotlin.ResultKt.b(r8)
            goto L47
        L15:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L1c:
            kotlin.ResultKt.b(r8)
            goto L38
        L20:
            kotlin.ResultKt.b(r8)
            int r8 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r8 <= 0) goto L38
            r7.f18273b = r6
            androidx.compose.runtime.MutableState r8 = r2.f3921b
            androidx.compose.runtime.SnapshotMutableStateImpl r8 = (androidx.compose.runtime.SnapshotMutableStateImpl) r8
            java.lang.Object r8 = r8.getF10755b()
            java.lang.Object r8 = r2.n(r3, r8, r7)
            if (r8 != r0) goto L38
            goto L46
        L38:
            int r8 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r8 != 0) goto L47
            r7.f18273b = r5
            androidx.navigation.NavBackStackEntry r8 = r7.f18275e
            java.lang.Object r7 = r2.r(r8, r7)
            if (r7 != r0) goto L47
        L46:
            return r0
        L47:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

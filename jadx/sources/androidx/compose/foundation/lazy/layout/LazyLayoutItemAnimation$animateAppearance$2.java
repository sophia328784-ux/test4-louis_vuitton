package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animateAppearance$2", f = "LazyLayoutItemAnimation.kt", l = {183, ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", v = 1)
final class LazyLayoutItemAnimation$animateAppearance$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f5435c;
    public final /* synthetic */ LazyLayoutItemAnimation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FiniteAnimationSpec f5436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GraphicsLayer f5437f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutItemAnimation$animateAppearance$2(boolean z, LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, GraphicsLayer graphicsLayer, Continuation continuation) {
        super(2, continuation);
        this.f5435c = z;
        this.d = lazyLayoutItemAnimation;
        this.f5436e = finiteAnimationSpec;
        this.f5437f = graphicsLayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyLayoutItemAnimation$animateAppearance$2(this.f5435c, this.d, this.f5436e, this.f5437f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LazyLayoutItemAnimation$animateAppearance$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        if (r14 == r0) goto L22;
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
            int r1 = r13.f5434b
            r2 = 0
            r3 = 2
            r4 = 1
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r5 = r13.d
            if (r1 == 0) goto L21
            if (r1 == r4) goto L1d
            if (r1 != r3) goto L16
            kotlin.ResultKt.b(r14)     // Catch: java.lang.Throwable -> L13
            goto L57
        L13:
            r0 = move-exception
            r13 = r0
            goto L61
        L16:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            r13 = 0
            return r13
        L1d:
            kotlin.ResultKt.b(r14)     // Catch: java.lang.Throwable -> L13
            goto L39
        L21:
            kotlin.ResultKt.b(r14)
            boolean r14 = r13.f5435c     // Catch: java.lang.Throwable -> L13
            if (r14 == 0) goto L39
            androidx.compose.animation.core.Animatable r14 = r5.p     // Catch: java.lang.Throwable -> L13
            java.lang.Float r1 = new java.lang.Float     // Catch: java.lang.Throwable -> L13
            r6 = 0
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L13
            r13.f5434b = r4     // Catch: java.lang.Throwable -> L13
            java.lang.Object r14 = r14.f(r1, r13)     // Catch: java.lang.Throwable -> L13
            if (r14 != r0) goto L39
            goto L56
        L39:
            androidx.compose.animation.core.Animatable r6 = r5.p     // Catch: java.lang.Throwable -> L13
            java.lang.Float r7 = new java.lang.Float     // Catch: java.lang.Throwable -> L13
            r14 = 1065353216(0x3f800000, float:1.0)
            r7.<init>(r14)     // Catch: java.lang.Throwable -> L13
            androidx.compose.animation.core.FiniteAnimationSpec r8 = r13.f5436e     // Catch: java.lang.Throwable -> L13
            androidx.compose.ui.graphics.layer.GraphicsLayer r14 = r13.f5437f     // Catch: java.lang.Throwable -> L13
            f90 r10 = new f90     // Catch: java.lang.Throwable -> L13
            r10.<init>(r14, r5, r2)     // Catch: java.lang.Throwable -> L13
            r13.f5434b = r3     // Catch: java.lang.Throwable -> L13
            r9 = 0
            r12 = 4
            r11 = r13
            java.lang.Object r14 = androidx.compose.animation.core.Animatable.c(r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L13
            if (r14 != r0) goto L57
        L56:
            return r0
        L57:
            androidx.compose.animation.core.AnimationResult r14 = (androidx.compose.animation.core.AnimationResult) r14     // Catch: java.lang.Throwable -> L13
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$Companion r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.s
            r5.e(r2)
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        L61:
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$Companion r14 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.s
            r5.e(r2)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animateAppearance$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import defpackage.f90;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animateDisappearance$1", f = "LazyLayoutItemAnimation.kt", l = {204}, m = "invokeSuspend", v = 1)
final class LazyLayoutItemAnimation$animateDisappearance$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyLayoutItemAnimation f5439c;
    public final /* synthetic */ FiniteAnimationSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GraphicsLayer f5440e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutItemAnimation$animateDisappearance$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, GraphicsLayer graphicsLayer, Continuation continuation) {
        super(2, continuation);
        this.f5439c = lazyLayoutItemAnimation;
        this.d = finiteAnimationSpec;
        this.f5440e = graphicsLayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyLayoutItemAnimation$animateDisappearance$1(this.f5439c, this.d, this.f5440e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LazyLayoutItemAnimation$animateDisappearance$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f5438b;
        LazyLayoutItemAnimation lazyLayoutItemAnimation = this.f5439c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Animatable animatable = lazyLayoutItemAnimation.p;
                Float f2 = new Float(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                FiniteAnimationSpec finiteAnimationSpec = this.d;
                f90 f90Var = new f90(this.f5440e, lazyLayoutItemAnimation, 1);
                this.f5438b = 1;
                if (Animatable.c(animatable, f2, finiteAnimationSpec, null, f90Var, this, 4) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            ((SnapshotMutableStateImpl) lazyLayoutItemAnimation.f5431k).setValue(Boolean.TRUE);
            lazyLayoutItemAnimation.f(false);
            return Unit.f71739a;
        } catch (Throwable th) {
            LazyLayoutItemAnimation.Companion companion = LazyLayoutItemAnimation.s;
            lazyLayoutItemAnimation.f(false);
            throw th;
        }
    }
}

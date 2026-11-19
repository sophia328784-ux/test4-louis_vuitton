package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import defpackage.dw0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u001c\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007R\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\n"}, d2 = {"Landroidx/compose/animation/BoundsAnimation;", "", "Landroidx/compose/animation/SharedTransitionScope;", "transitionScope", "Landroidx/compose/animation/core/Transition;", "", "transition", "Landroidx/compose/animation/core/Transition$DeferredAnimation;", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/animation/core/AnimationVector4D;", "animation", "Landroidx/compose/animation/BoundsTransform;", "boundsTransform", "Lkotlin/Function0;", "Landroidx/compose/ui/geometry/Offset;", "momentumOffset", "<init>", "(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/BoundsTransform;Lkotlin/jvm/functions/Function0;)V"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BoundsAnimation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedTransitionScope f3535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transition f3536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f3537c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f3538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FiniteAnimationSpec f3539f = BoundsAnimationKt.f3543a;
    public final MutableState g = SnapshotStateKt.g(null);

    public BoundsAnimation(SharedTransitionScope sharedTransitionScope, Transition<Boolean> transition, Transition<Boolean>.DeferredAnimation<Rect, AnimationVector4D> deferredAnimation, BoundsTransform boundsTransform, Function0<Offset> function0) {
        this.f3535a = sharedTransitionScope;
        this.f3536b = transition;
        this.f3537c = function0;
        this.d = SnapshotStateKt.g(deferredAnimation);
        this.f3538e = SnapshotStateKt.g(boundsTransform);
    }

    public final void a(final Rect rect, final Rect rect2, dw0 dw0Var) {
        BoundsTransform boundsTransform;
        if (this.f3535a.j()) {
            MutableState mutableState = this.g;
            if (((State) ((SnapshotMutableStateImpl) mutableState).getF10755b()) == null) {
                if (dw0Var == null) {
                    boundsTransform = (BoundsTransform) ((SnapshotMutableStateImpl) this.f3538e).getF10755b();
                }
                this.f3539f = boundsTransform.a();
            }
            boundsTransform = dw0Var;
            ((SnapshotMutableStateImpl) mutableState).setValue(((Transition.DeferredAnimation) ((SnapshotMutableStateImpl) this.d).getF10755b()).a(new Function1<Transition.Segment<Boolean>, FiniteAnimationSpec<Rect>>() { // from class: androidx.compose.animation.BoundsAnimation$animate$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f3540c.f3539f;
                }
            }, new Function1<Boolean, Rect>() { // from class: androidx.compose.animation.BoundsAnimation$animate$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ((Boolean) obj).booleanValue() == ((Boolean) ((SnapshotMutableStateImpl) this.f3541c.f3536b.d).getF10755b()).booleanValue() ? rect2 : rect;
                }
            }));
        }
    }

    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f3536b.d).getF10755b()).booleanValue();
    }

    public final Rect c() {
        State state;
        Rect rect;
        if (!this.f3535a.j() || (state = (State) ((SnapshotMutableStateImpl) this.g).getF10755b()) == null || (rect = (Rect) state.getF10755b()) == null) {
            return null;
        }
        long j2 = ((Offset) this.f3537c.mo47invoke()).f8808a;
        Offset.f8806b.getClass();
        return !Offset.c(j2, 0L) ? rect.i(j2) : rect;
    }
}

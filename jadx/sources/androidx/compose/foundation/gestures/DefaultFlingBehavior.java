package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.ui.MotionDurationScale;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/gestures/DefaultFlingBehavior;", "Landroidx/compose/foundation/gestures/ScrollableDefaultFlingBehavior;", "Landroidx/compose/animation/core/DecayAnimationSpec;", "", "flingDecay", "Landroidx/compose/ui/MotionDurationScale;", "motionDurationScale", "<init>", "(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DefaultFlingBehavior implements ScrollableDefaultFlingBehavior {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DecayAnimationSpec f4453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MotionDurationScale f4454b;

    public DefaultFlingBehavior(DecayAnimationSpec decayAnimationSpec, MotionDurationScale motionDurationScale, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(decayAnimationSpec, (i2 & 2) != 0 ? ScrollableKt.f4676c : motionDurationScale);
    }

    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public final Object a(ScrollScope scrollScope, float f2, Continuation continuation) {
        return BuildersKt.f(this.f4454b, new DefaultFlingBehavior$performFling$2(f2, this, scrollScope, null), continuation);
    }

    public DefaultFlingBehavior(DecayAnimationSpec<Float> decayAnimationSpec, MotionDurationScale motionDurationScale) {
        this.f4453a = decayAnimationSpec;
        this.f4454b = motionDurationScale;
    }
}

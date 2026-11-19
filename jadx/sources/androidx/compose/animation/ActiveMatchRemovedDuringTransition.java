package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/ActiveMatchRemovedDuringTransition;", "Landroidx/compose/animation/MatchIsOrHasBeenConfigured;", "Landroidx/compose/animation/TargetData;", "targetData", "Landroidx/compose/ui/geometry/Rect;", "currentBounds", "<init>", "(Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ActiveMatchRemovedDuringTransition extends MatchIsOrHasBeenConfigured {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TargetData f3409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3410b;

    public ActiveMatchRemovedDuringTransition(TargetData targetData, Rect rect) {
        this.f3409a = targetData;
        this.f3410b = SnapshotStateKt.g(rect);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final Rect c() {
        return (Rect) ((SnapshotMutableStateImpl) this.f3410b).getF10755b();
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    /* JADX INFO: renamed from: e, reason: from getter */
    public final TargetData getF3409a() {
        return this.f3409a;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State g(BoundsProvider boundsProvider) {
        return new ActiveMatchFoundConfigPending(boundsProvider, this.f3409a, c());
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State h() {
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final void i(Rect rect) {
        ((SnapshotMutableStateImpl) this.f3410b).setValue(rect);
    }
}

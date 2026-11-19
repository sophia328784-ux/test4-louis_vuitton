package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/ActiveMatchConfigured;", "Landroidx/compose/animation/MatchIsOrHasBeenConfigured;", "Landroidx/compose/animation/TargetData;", "targetData", "Landroidx/compose/animation/BoundsProvider;", "targetBoundsProvider", "Landroidx/compose/ui/geometry/Rect;", "currentBounds", "<init>", "(Landroidx/compose/animation/TargetData;Landroidx/compose/animation/BoundsProvider;Landroidx/compose/ui/geometry/Rect;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ActiveMatchConfigured extends MatchIsOrHasBeenConfigured {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TargetData f3403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f3405c;

    public ActiveMatchConfigured(TargetData targetData, BoundsProvider boundsProvider, Rect rect) {
        this.f3403a = targetData;
        this.f3404b = SnapshotStateKt.g(boundsProvider);
        this.f3405c = SnapshotStateKt.g(rect);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State a(SharedElement sharedElement, BoundsProvider boundsProvider, long j2, long j3, long j4) {
        MutableState mutableState = this.f3404b;
        SharedTransitionStateMachineKt.b(this.f3403a, j2, j3, j4, !Intrinsics.c((BoundsProvider) ((SnapshotMutableStateImpl) mutableState).getF10755b(), boundsProvider));
        ((SnapshotMutableStateImpl) mutableState).setValue(boundsProvider);
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final Rect c() {
        return (Rect) ((SnapshotMutableStateImpl) this.f3405c).getF10755b();
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    /* JADX INFO: renamed from: e, reason: from getter */
    public final TargetData getF3409a() {
        return this.f3403a;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State g(BoundsProvider boundsProvider) {
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State h() {
        TargetData targetData = this.f3403a;
        MutableState mutableState = targetData.d;
        MutableState mutableState2 = targetData.d;
        Rect rectD0 = ((BoundsProvider) ((SnapshotMutableStateImpl) this.f3404b).getF10755b()).d0(RectKt.a(Offset.f(((Offset) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f8808a, ((Offset) ((SnapshotMutableStateImpl) targetData.f3752c).getF10755b()).f8808a), ((Size) ((SnapshotMutableStateImpl) targetData.f3750a).getF10755b()).f8822a));
        if (rectD0 == null) {
            return NoMatchFound.f3641a;
        }
        TargetData targetData2 = new TargetData(rectD0.c(), ((Offset) ((SnapshotMutableStateImpl) targetData.f3751b).getF10755b()).f8808a, Offset.e(rectD0.d(), ((Offset) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).f8808a), null);
        ((SnapshotMutableStateImpl) targetData2.d).setValue(new Offset(((Offset) ((SnapshotMutableStateImpl) mutableState2).getF10755b()).f8808a));
        return new ActiveMatchRemovedDuringTransition(targetData2, c());
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final void i(Rect rect) {
        ((SnapshotMutableStateImpl) this.f3405c).setValue(rect);
    }
}

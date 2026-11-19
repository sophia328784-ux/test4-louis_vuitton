package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/ActiveMatchFoundConfigPending;", "Landroidx/compose/animation/SharedTransitionStateMachine$State;", "Landroidx/compose/animation/BoundsProvider;", "targetBoundsProviderBeforeConfig", "Landroidx/compose/animation/TargetData;", "targetData", "Landroidx/compose/ui/geometry/Rect;", "currentBounds", "<init>", "(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ActiveMatchFoundConfigPending extends SharedTransitionStateMachine.State {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BoundsProvider f3406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TargetData f3407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f3408c;

    public ActiveMatchFoundConfigPending(BoundsProvider boundsProvider, TargetData targetData, Rect rect) {
        super(null);
        this.f3406a = boundsProvider;
        this.f3407b = targetData;
        this.f3408c = SnapshotStateKt.g(rect);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0055 A[PHI: r1
      0x0055: PHI (r1v1 androidx.compose.ui.geometry.Rect) = (r1v0 androidx.compose.ui.geometry.Rect), (r1v3 androidx.compose.ui.geometry.Rect) binds: [B:6:0x0016, B:22:0x004d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State a(SharedElement sharedElement, BoundsProvider boundsProvider, long j2, long j3, long j4) {
        long j5;
        Object obj;
        TargetData targetData = this.f3407b;
        if (targetData == null) {
            targetData = new TargetData(j2, Offset.e(j3, j4), j4, null);
        }
        Rect rectC = c();
        if (rectC != null) {
            j5 = j3;
        } else {
            BoundsProvider boundsProvider2 = this.f3406a;
            if (boundsProvider2 == null) {
                List listB = sharedElement.b();
                int size = listB.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        obj = null;
                        break;
                    }
                    obj = listB.get(i2);
                    if (sharedElement.c().contains((SharedElementEntry) obj)) {
                        break;
                    }
                    i2++;
                }
                SharedElementEntry sharedElementEntry = (SharedElementEntry) obj;
                boundsProvider2 = sharedElementEntry != null ? sharedElementEntry.m : null;
            }
            rectC = SharedTransitionStateMachineKt.a(sharedElement, boundsProvider2);
            if (rectC == null) {
                j5 = j3;
                rectC = RectKt.a(j5, j2);
            } else {
                j5 = j3;
            }
        }
        TargetData targetData2 = targetData;
        SharedTransitionStateMachineKt.b(targetData2, j2, j5, j4, true);
        return new ActiveMatchConfigured(targetData2, boundsProvider, rectC);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final boolean b() {
        return true;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final Rect c() {
        return (Rect) ((SnapshotMutableStateImpl) this.f3408c).getF10755b();
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    /* JADX INFO: renamed from: e, reason: from getter */
    public final TargetData getF3407b() {
        return this.f3407b;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final Rect f(SharedElement sharedElement) {
        Object obj;
        Rect rectC = c();
        if (rectC != null) {
            return rectC;
        }
        if (c() == null) {
            BoundsProvider boundsProvider = this.f3406a;
            if (boundsProvider == null) {
                List listB = sharedElement.b();
                int size = listB.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        obj = null;
                        break;
                    }
                    obj = listB.get(i2);
                    if (sharedElement.c().contains((SharedElementEntry) obj)) {
                        break;
                    }
                    i2++;
                }
                SharedElementEntry sharedElementEntry = (SharedElementEntry) obj;
                boundsProvider = sharedElementEntry != null ? sharedElementEntry.m : null;
            }
            Rect rectA = SharedTransitionStateMachineKt.a(sharedElement, boundsProvider);
            if (rectA != null) {
                ((SnapshotMutableStateImpl) this.f3408c).setValue(rectA);
            }
        }
        return c();
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State g(BoundsProvider boundsProvider) {
        if (this.f3406a == null) {
            this.f3406a = boundsProvider;
        }
        return this;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State h() {
        return NoMatchFound.f3641a;
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final void i(Rect rect) {
        ((SnapshotMutableStateImpl) this.f3408c).setValue(rect);
    }

    public /* synthetic */ ActiveMatchFoundConfigPending(BoundsProvider boundsProvider, TargetData targetData, Rect rect, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(boundsProvider, (i2 & 2) != 0 ? null : targetData, (i2 & 4) != 0 ? null : rect);
    }
}

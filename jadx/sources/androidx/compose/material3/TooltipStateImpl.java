package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/TooltipStateImpl;", "Landroidx/compose/material3/TooltipState;", "", "initialIsVisible", "isPersistent", "Landroidx/compose/foundation/MutatorMutex;", "mutatorMutex", "<init>", "(ZZLandroidx/compose/foundation/MutatorMutex;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class TooltipStateImpl implements TooltipState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f7418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutatorMutex f7419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableTransitionState f7420c;
    public CancellableContinuationImpl d;

    public TooltipStateImpl(boolean z, boolean z2, MutatorMutex mutatorMutex) {
        this.f7418a = z2;
        this.f7419b = mutatorMutex;
        this.f7420c = new MutableTransitionState(Boolean.valueOf(z));
    }

    @Override // androidx.compose.material3.TooltipState
    /* JADX INFO: renamed from: a, reason: from getter */
    public final MutableTransitionState getF7420c() {
        return this.f7420c;
    }

    @Override // androidx.compose.material3.TooltipState
    public final void b() {
        CancellableContinuationImpl cancellableContinuationImpl = this.d;
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.cancel(null);
        }
    }

    @Override // androidx.compose.material3.TooltipState
    public final Object c(MutatePriority mutatePriority, SuspendLambda suspendLambda) {
        Object objB = this.f7419b.b(mutatePriority, new TooltipStateImpl$show$2(this, new TooltipStateImpl$show$cancellableShow$1(this, null), mutatePriority, null), suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    @Override // androidx.compose.material3.TooltipState
    public final void dismiss() {
        CancellableContinuationImpl cancellableContinuationImpl;
        this.f7420c.g(Boolean.FALSE);
        if (!this.f7418a || (cancellableContinuationImpl = this.d) == null) {
            return;
        }
        cancellableContinuationImpl.cancel(null);
    }

    @Override // androidx.compose.material3.TooltipState
    public final boolean isVisible() {
        MutableTransitionState mutableTransitionState = this.f7420c;
        return ((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3906b).getF10755b()).booleanValue() || ((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3907c).getF10755b()).booleanValue();
    }
}

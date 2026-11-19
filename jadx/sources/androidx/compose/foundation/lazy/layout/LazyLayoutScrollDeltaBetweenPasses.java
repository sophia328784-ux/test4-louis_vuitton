package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;", "", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutScrollDeltaBetweenPasses {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Job f5511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimationState f5512b;

    public LazyLayoutScrollDeltaBetweenPasses() {
        TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f5512b = new AnimationState(twoWayConverter, fValueOf, (AnimationVector) twoWayConverter.getF4034a().invoke(fValueOf), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public final boolean a() {
        return !(((Number) ((SnapshotMutableStateImpl) this.f5512b.f3818c).getF10755b()).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final void b() {
        Job job = this.f5511a;
        if (job != null) {
            job.cancel(null);
        }
        this.f5512b = new AnimationState(VectorConvertersKt.f4036a, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), null, 0L, 0L, false, 60, null);
    }

    public final void c(float f2, Density density, CoroutineScope coroutineScope) {
        if (f2 <= density.u1(LazyLayoutScrollDeltaBetweenPassesKt.f5515a)) {
            return;
        }
        Snapshot.f8462e.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 f8547i = snapshotA != null ? snapshotA.getF8461f() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        try {
            float fFloatValue = ((Number) ((SnapshotMutableStateImpl) this.f5512b.f3818c).getF10755b()).floatValue();
            Job job = this.f5511a;
            if (job != null) {
                job.cancel(null);
            }
            AnimationState animationState = this.f5512b;
            if (animationState.g) {
                this.f5512b = AnimationStateKt.b(animationState, fFloatValue - f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 30);
            } else {
                this.f5512b = new AnimationState(VectorConvertersKt.f4036a, Float.valueOf(-f2), null, 0L, 0L, false, 60, null);
            }
            this.f5511a = BuildersKt.c(coroutineScope, null, null, new LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1(this, null), 3);
        } finally {
            Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
        }
    }
}

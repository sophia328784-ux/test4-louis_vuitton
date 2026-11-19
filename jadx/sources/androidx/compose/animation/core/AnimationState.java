package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0004BM\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00018\u0001\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/animation/core/AnimationState;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/runtime/State;", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "initialValue", "initialVelocityVector", "", "lastFrameTimeNanos", "finishedTimeNanos", "", "isRunning", "<init>", "(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimationState<T, V extends AnimationVector> implements State<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TwoWayConverter f3817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f3818c;
    public AnimationVector d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f3820f;
    public boolean g;

    public AnimationState(TwoWayConverter<T, V> twoWayConverter, T t, V v, long j2, long j3, boolean z) {
        AnimationVector animationVectorA;
        this.f3817b = twoWayConverter;
        this.f3818c = SnapshotStateKt.g(t);
        if (v != null) {
            animationVectorA = AnimationVectorsKt.a(v);
        } else {
            animationVectorA = (AnimationVector) twoWayConverter.getF4034a().invoke(t);
            animationVectorA.d();
        }
        this.d = animationVectorA;
        this.f3819e = j2;
        this.f3820f = j3;
        this.g = z;
    }

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: getValue */
    public final Object getF10755b() {
        return ((SnapshotMutableStateImpl) this.f3818c).getF10755b();
    }

    public final Object h() {
        return this.f3817b.getF4035b().invoke(this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AnimationState(value=");
        sb.append(((SnapshotMutableStateImpl) this.f3818c).getF10755b());
        sb.append(", velocity=");
        sb.append(h());
        sb.append(", isRunning=");
        sb.append(this.g);
        sb.append(", lastFrameTimeNanos=");
        sb.append(this.f3819e);
        sb.append(", finishedTimeNanos=");
        return fc.k(sb, this.f3820f, ')');
    }

    public /* synthetic */ AnimationState(TwoWayConverter twoWayConverter, Object obj, AnimationVector animationVector, long j2, long j3, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(twoWayConverter, obj, (i2 & 4) != 0 ? null : animationVector, (i2 & 8) != 0 ? Long.MIN_VALUE : j2, (i2 & 16) != 0 ? Long.MIN_VALUE : j3, (i2 & 32) != 0 ? false : z);
    }
}

package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004B[\b\u0000\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\b\u001a\u00028\u0001\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00028\u0000\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/animation/core/AnimationScope;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "initialValue", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "initialVelocityVector", "", "lastFrameTimeNanos", "targetValue", "startTimeNanos", "", "isRunning", "Lkotlin/Function0;", "", "onCancel", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JZLkotlin/jvm/functions/Function0;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimationScope<T, V extends AnimationVector> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwoWayConverter f3810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3812c;
    public final Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f3813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AnimationVector f3814f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3815h = Long.MIN_VALUE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f3816i;

    public AnimationScope(T t, TwoWayConverter<T, V> twoWayConverter, V v, long j2, T t2, long j3, boolean z, Function0<Unit> function0) {
        this.f3810a = twoWayConverter;
        this.f3811b = t2;
        this.f3812c = j3;
        this.d = function0;
        this.f3813e = SnapshotStateKt.g(t);
        this.f3814f = AnimationVectorsKt.a(v);
        this.g = j2;
        this.f3816i = SnapshotStateKt.g(Boolean.valueOf(z));
    }

    public final void a() {
        ((SnapshotMutableStateImpl) this.f3816i).setValue(Boolean.FALSE);
        this.d.mo47invoke();
    }

    public final Object b() {
        return this.f3810a.getF4035b().invoke(this.f3814f);
    }
}

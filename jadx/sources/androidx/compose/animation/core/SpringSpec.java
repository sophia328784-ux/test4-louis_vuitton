package androidx.compose.animation.core;

import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B'\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/core/SpringSpec;", "T", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "", "dampingRatio", "stiffness", "visibilityThreshold", "<init>", "(FFLjava/lang/Object;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SpringSpec<T> implements FiniteAnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f3969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3970c;

    public /* synthetic */ SpringSpec(float f2, float f3, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0f : f2, (i2 & 2) != 0 ? 1500.0f : f3, (i2 & 4) != 0 ? null : obj);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        Object obj = this.f3970c;
        return new VectorizedSpringSpec(this.f3968a, this.f3969b, obj == null ? null : (AnimationVector) twoWayConverter.getF4034a().invoke(obj));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SpringSpec) {
            SpringSpec springSpec = (SpringSpec) obj;
            if (springSpec.f3968a == this.f3968a && springSpec.f3969b == this.f3969b && Intrinsics.c(springSpec.f3970c, this.f3970c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f3970c;
        return Float.hashCode(this.f3969b) + pq0.b((obj != null ? obj.hashCode() : 0) * 31, 31, this.f3968a);
    }

    public SpringSpec(float f2, float f3, T t) {
        this.f3968a = f2;
        this.f3969b = f3;
        this.f3970c = t;
    }

    public SpringSpec() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 7, null);
    }
}

package androidx.compose.animation.core;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/core/AnimationVector2D;", "Landroidx/compose/animation/core/AnimationVector;", "", "v1", "v2", "<init>", "(FF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimationVector2D extends AnimationVector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f3824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3825c;

    public AnimationVector2D(float f2, float f3) {
        super(null);
        this.f3823a = f2;
        this.f3824b = f3;
        this.f3825c = 2;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final float a(int i2) {
        if (i2 != 0) {
            return i2 != 1 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : this.f3824b;
        }
        return this.f3823a;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF3825c() {
        return this.f3825c;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final AnimationVector c() {
        return new AnimationVector2D(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void d() {
        this.f3823a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f3824b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void e(float f2, int i2) {
        if (i2 == 0) {
            this.f3823a = f2;
        } else {
            if (i2 != 1) {
                return;
            }
            this.f3824b = f2;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AnimationVector2D)) {
            return false;
        }
        AnimationVector2D animationVector2D = (AnimationVector2D) obj;
        return animationVector2D.f3823a == this.f3823a && animationVector2D.f3824b == this.f3824b;
    }

    public final int hashCode() {
        return Float.hashCode(this.f3824b) + (Float.hashCode(this.f3823a) * 31);
    }

    public final String toString() {
        return "AnimationVector2D: v1 = " + this.f3823a + ", v2 = " + this.f3824b;
    }
}

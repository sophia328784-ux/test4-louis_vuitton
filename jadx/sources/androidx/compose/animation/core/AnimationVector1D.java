package androidx.compose.animation.core;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/core/AnimationVector1D;", "Landroidx/compose/animation/core/AnimationVector;", "", "initVal", "<init>", "(F)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimationVector1D extends AnimationVector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3822b;

    public AnimationVector1D(float f2) {
        super(null);
        this.f3821a = f2;
        this.f3822b = 1;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final float a(int i2) {
        return i2 == 0 ? this.f3821a : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF3825c() {
        return this.f3822b;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final AnimationVector c() {
        return new AnimationVector1D(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void d() {
        this.f3821a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void e(float f2, int i2) {
        if (i2 == 0) {
            this.f3821a = f2;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof AnimationVector1D) && ((AnimationVector1D) obj).f3821a == this.f3821a;
    }

    public final int hashCode() {
        return Float.hashCode(this.f3821a);
    }

    public final String toString() {
        return "AnimationVector1D: value = " + this.f3821a;
    }
}

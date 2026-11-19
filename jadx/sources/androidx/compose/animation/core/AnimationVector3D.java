package androidx.compose.animation.core;

import defpackage.pq0;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/core/AnimationVector3D;", "Landroidx/compose/animation/core/AnimationVector;", "", "v1", "v2", "v3", "<init>", "(FFF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimationVector3D extends AnimationVector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f3827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3828c;
    public final int d;

    public AnimationVector3D(float f2, float f3, float f4) {
        super(null);
        this.f3826a = f2;
        this.f3827b = f3;
        this.f3828c = f4;
        this.d = 3;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final float a(int i2) {
        if (i2 == 0) {
            return this.f3826a;
        }
        if (i2 != 1) {
            return i2 != 2 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : this.f3828c;
        }
        return this.f3827b;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getD() {
        return this.d;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final AnimationVector c() {
        return new AnimationVector3D(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void d() {
        this.f3826a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f3827b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f3828c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void e(float f2, int i2) {
        if (i2 == 0) {
            this.f3826a = f2;
        } else if (i2 == 1) {
            this.f3827b = f2;
        } else {
            if (i2 != 2) {
                return;
            }
            this.f3828c = f2;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AnimationVector3D)) {
            return false;
        }
        AnimationVector3D animationVector3D = (AnimationVector3D) obj;
        return animationVector3D.f3826a == this.f3826a && animationVector3D.f3827b == this.f3827b && animationVector3D.f3828c == this.f3828c;
    }

    public final int hashCode() {
        return Float.hashCode(this.f3828c) + pq0.b(Float.hashCode(this.f3826a) * 31, 31, this.f3827b);
    }

    public final String toString() {
        return "AnimationVector3D: v1 = " + this.f3826a + ", v2 = " + this.f3827b + ", v3 = " + this.f3828c;
    }
}

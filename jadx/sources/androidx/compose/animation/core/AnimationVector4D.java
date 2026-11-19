package androidx.compose.animation.core;

import defpackage.pq0;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/core/AnimationVector4D;", "Landroidx/compose/animation/core/AnimationVector;", "", "v1", "v2", "v3", "v4", "<init>", "(FFFF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimationVector4D extends AnimationVector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f3830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3831c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3832e;

    public AnimationVector4D(float f2, float f3, float f4, float f5) {
        super(null);
        this.f3829a = f2;
        this.f3830b = f3;
        this.f3831c = f4;
        this.d = f5;
        this.f3832e = 4;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final float a(int i2) {
        if (i2 == 0) {
            return this.f3829a;
        }
        if (i2 == 1) {
            return this.f3830b;
        }
        if (i2 != 2) {
            return i2 != 3 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : this.d;
        }
        return this.f3831c;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getD() {
        return this.f3832e;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final AnimationVector c() {
        return new AnimationVector4D(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void d() {
        this.f3829a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f3830b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f3831c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void e(float f2, int i2) {
        if (i2 == 0) {
            this.f3829a = f2;
            return;
        }
        if (i2 == 1) {
            this.f3830b = f2;
        } else if (i2 == 2) {
            this.f3831c = f2;
        } else {
            if (i2 != 3) {
                return;
            }
            this.d = f2;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AnimationVector4D)) {
            return false;
        }
        AnimationVector4D animationVector4D = (AnimationVector4D) obj;
        return animationVector4D.f3829a == this.f3829a && animationVector4D.f3830b == this.f3830b && animationVector4D.f3831c == this.f3831c && animationVector4D.d == this.d;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f3829a) * 31, 31, this.f3830b), 31, this.f3831c);
    }

    public final String toString() {
        return "AnimationVector4D: v1 = " + this.f3829a + ", v2 = " + this.f3830b + ", v3 = " + this.f3831c + ", v4 = " + this.d;
    }
}

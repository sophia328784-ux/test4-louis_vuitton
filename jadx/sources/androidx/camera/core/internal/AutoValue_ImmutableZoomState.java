package androidx.camera.core.internal;

import defpackage.d21;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_ImmutableZoomState extends ImmutableZoomState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f2461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2462c;
    public final float d;

    public AutoValue_ImmutableZoomState(float f2, float f3, float f4, float f5) {
        this.f2460a = f2;
        this.f2461b = f3;
        this.f2462c = f4;
        this.d = f5;
    }

    @Override // androidx.camera.core.ZoomState
    public final float a() {
        return this.f2461b;
    }

    @Override // androidx.camera.core.ZoomState
    public final float b() {
        return this.d;
    }

    @Override // androidx.camera.core.ZoomState
    public final float c() {
        return this.f2462c;
    }

    @Override // androidx.camera.core.ZoomState
    public final float d() {
        return this.f2460a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableZoomState) {
            AutoValue_ImmutableZoomState autoValue_ImmutableZoomState = (AutoValue_ImmutableZoomState) ((ImmutableZoomState) obj);
            if (Float.floatToIntBits(this.f2460a) == Float.floatToIntBits(autoValue_ImmutableZoomState.f2460a) && Float.floatToIntBits(this.f2461b) == Float.floatToIntBits(autoValue_ImmutableZoomState.f2461b) && Float.floatToIntBits(this.f2462c) == Float.floatToIntBits(autoValue_ImmutableZoomState.f2462c) && Float.floatToIntBits(this.d) == Float.floatToIntBits(autoValue_ImmutableZoomState.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.d) ^ ((((((Float.floatToIntBits(this.f2460a) ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.f2461b)) * 1000003) ^ Float.floatToIntBits(this.f2462c)) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmutableZoomState{zoomRatio=");
        sb.append(this.f2460a);
        sb.append(", maxZoomRatio=");
        sb.append(this.f2461b);
        sb.append(", minZoomRatio=");
        sb.append(this.f2462c);
        sb.append(", linearZoom=");
        return d21.e(this.d, "}", sb);
    }
}

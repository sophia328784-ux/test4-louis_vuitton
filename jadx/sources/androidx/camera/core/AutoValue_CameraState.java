package androidx.camera.core;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CameraState extends CameraState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraState.Type f1864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraState.StateError f1865b;

    public AutoValue_CameraState(CameraState.Type type, CameraState.StateError stateError) {
        if (type == null) {
            r81.d("Null type");
            throw null;
        }
        this.f1864a = type;
        this.f1865b = stateError;
    }

    @Override // androidx.camera.core.CameraState
    public final CameraState.StateError c() {
        return this.f1865b;
    }

    @Override // androidx.camera.core.CameraState
    public final CameraState.Type d() {
        return this.f1864a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CameraState)) {
            return false;
        }
        CameraState cameraState = (CameraState) obj;
        if (!this.f1864a.equals(cameraState.d())) {
            return false;
        }
        CameraState.StateError stateError = this.f1865b;
        if (stateError == null) {
            return cameraState.c() == null;
        }
        return stateError.equals(cameraState.c());
    }

    public final int hashCode() {
        int iHashCode = (this.f1864a.hashCode() ^ 1000003) * 1000003;
        CameraState.StateError stateError = this.f1865b;
        return (stateError == null ? 0 : stateError.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        return "CameraState{type=" + this.f1864a + ", error=" + this.f1865b + "}";
    }
}

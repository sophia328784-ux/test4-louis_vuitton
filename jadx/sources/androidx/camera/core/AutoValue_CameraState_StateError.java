package androidx.camera.core;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CameraState_StateError extends CameraState.StateError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f1867b;

    public AutoValue_CameraState_StateError(int i2, Throwable th) {
        this.f1866a = i2;
        this.f1867b = th;
    }

    @Override // androidx.camera.core.CameraState.StateError
    public final Throwable c() {
        return this.f1867b;
    }

    @Override // androidx.camera.core.CameraState.StateError
    public final int d() {
        return this.f1866a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CameraState.StateError)) {
            return false;
        }
        CameraState.StateError stateError = (CameraState.StateError) obj;
        if (this.f1866a != stateError.d()) {
            return false;
        }
        Throwable th = this.f1867b;
        if (th == null) {
            return stateError.c() == null;
        }
        return th.equals(stateError.c());
    }

    public final int hashCode() {
        int i2 = (this.f1866a ^ 1000003) * 1000003;
        Throwable th = this.f1867b;
        return (th == null ? 0 : th.hashCode()) ^ i2;
    }

    public final String toString() {
        return "StateError{code=" + this.f1866a + ", cause=" + this.f1867b + "}";
    }
}

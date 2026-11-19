package androidx.camera.camera2.internal.compat.params;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class OutputConfigurationCompatBaseImpl implements OutputConfigurationCompat.OutputConfigurationCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1722a;

    public OutputConfigurationCompatBaseImpl(Object obj) {
        this.f1722a = obj;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void a(long j2) {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof OutputConfigurationCompatBaseImpl)) {
            return false;
        }
        return Objects.equals(this.f1722a, ((OutputConfigurationCompatBaseImpl) obj).f1722a);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void f(int i2) {
    }

    public int hashCode() {
        return this.f1722a.hashCode();
    }
}

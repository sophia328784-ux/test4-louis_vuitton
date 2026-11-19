package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.OutputConfiguration;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
class OutputConfigurationCompatApi28Impl extends OutputConfigurationCompatApi26Impl {

    public static final class OutputConfigurationParamsApi28 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final OutputConfiguration f1720a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f1721b = 1;

        public OutputConfigurationParamsApi28(OutputConfiguration outputConfiguration) {
            this.f1720a = outputConfiguration;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof OutputConfigurationParamsApi28)) {
                return false;
            }
            OutputConfigurationParamsApi28 outputConfigurationParamsApi28 = (OutputConfigurationParamsApi28) obj;
            return this.f1720a.equals(outputConfigurationParamsApi28.f1720a) && this.f1721b == outputConfigurationParamsApi28.f1721b;
        }

        public final int hashCode() {
            int iHashCode = this.f1720a.hashCode() ^ 31;
            return Long.hashCode(this.f1721b) ^ ((iHashCode << 5) - iHashCode);
        }
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void c(long j2) {
        ((OutputConfigurationParamsApi28) this.f1722a).f1721b = j2;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void d(String str) {
        ((OutputConfiguration) g()).setPhysicalCameraId(str);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public Object g() {
        Object obj = this.f1722a;
        Preconditions.a(obj instanceof OutputConfigurationParamsApi28);
        return ((OutputConfigurationParamsApi28) obj).f1720a;
    }
}

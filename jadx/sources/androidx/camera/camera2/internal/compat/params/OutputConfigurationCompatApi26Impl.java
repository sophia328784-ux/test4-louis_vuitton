package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.OutputConfiguration;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
abstract class OutputConfigurationCompatApi26Impl extends OutputConfigurationCompatApi24Impl {
    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void b(Surface surface) {
        ((OutputConfiguration) g()).addSurface(surface);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void e() {
        ((OutputConfiguration) g()).enableSurfaceSharing();
    }
}

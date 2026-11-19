package defpackage;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.CameraCharacteristicsProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oi implements CameraCharacteristicsProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CameraCharacteristicsCompat f76792b;

    public /* synthetic */ oi(CameraCharacteristicsCompat cameraCharacteristicsCompat, int i2) {
        this.f76791a = i2;
        this.f76792b = cameraCharacteristicsCompat;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0004. Please report as an issue. */
    @Override // androidx.camera.camera2.internal.compat.workaround.CameraCharacteristicsProvider
    public final Object get() {
        int i2 = this.f76791a;
        CameraCharacteristicsCompat cameraCharacteristicsCompat = this.f76792b;
        switch (i2) {
        }
        return cameraCharacteristicsCompat.a(CameraCharacteristics.FLASH_INFO_AVAILABLE);
    }
}

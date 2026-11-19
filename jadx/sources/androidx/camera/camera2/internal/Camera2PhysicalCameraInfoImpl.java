package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LiveData;

/* JADX INFO: loaded from: classes.dex */
public class Camera2PhysicalCameraInfoImpl implements CameraInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Camera2CameraInfo f1525c = new Camera2CameraInfo(this);

    public Camera2PhysicalCameraInfoImpl(String str, CameraManagerCompat cameraManagerCompat) throws CameraAccessExceptionCompat {
        this.f1523a = str;
        this.f1524b = cameraManagerCompat.b(str);
    }

    @Override // androidx.camera.core.CameraInfo
    public final int d() {
        return t(0);
    }

    @Override // androidx.camera.core.CameraInfo
    public final int g() {
        Integer num = (Integer) this.f1524b.a(CameraCharacteristics.LENS_FACING);
        Preconditions.b(num != null, "Unable to get the lens facing of the camera.");
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return 0;
        }
        if (iIntValue == 1) {
            return 1;
        }
        if (iIntValue == 2) {
            return 2;
        }
        Logger.c(5, "LensFacingUtil");
        return -1;
    }

    @Override // androidx.camera.core.CameraInfo
    public final boolean i() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }

    @Override // androidx.camera.core.CameraInfo
    public final int t(int i2) {
        Integer num = (Integer) this.f1524b.a(CameraCharacteristics.SENSOR_ORIENTATION);
        num.getClass();
        return CameraOrientationUtil.a(CameraOrientationUtil.b(i2), num.intValue(), 1 == g());
    }

    @Override // androidx.camera.core.CameraInfo
    public final LiveData w() {
        throw new UnsupportedOperationException("Physical camera doesn't support this function");
    }
}

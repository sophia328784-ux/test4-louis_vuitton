package androidx.camera.camera2.internal.compat;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.util.ArrayMap;
import com.networkbench.agent.impl.logtrack.SendLogRunnable;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class CameraManagerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraManagerCompatImpl f1704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f1705b = new ArrayMap(4);

    public interface CameraManagerCompatImpl {
        Set a();

        String[] b();

        CameraManager c();
    }

    public CameraManagerCompat(CameraManagerCompatImpl cameraManagerCompatImpl) {
        this.f1704a = cameraManagerCompatImpl;
    }

    public static CameraManagerCompat a(Context context) {
        return new CameraManagerCompat(Build.VERSION.SDK_INT >= 30 ? new CameraManagerCompatApi30Impl(context) : new CameraManagerCompatApi29Impl(context));
    }

    public final CameraCharacteristicsCompat b(String str) {
        CameraCharacteristicsCompat cameraCharacteristicsCompat;
        synchronized (this.f1705b) {
            try {
                cameraCharacteristicsCompat = (CameraCharacteristicsCompat) this.f1705b.get(str);
                if (cameraCharacteristicsCompat == null) {
                    try {
                        CameraManagerCompatApi29Impl cameraManagerCompatApi29Impl = (CameraManagerCompatApi29Impl) this.f1704a;
                        cameraManagerCompatApi29Impl.getClass();
                        try {
                            CameraCharacteristicsCompat cameraCharacteristicsCompat2 = new CameraCharacteristicsCompat(cameraManagerCompatApi29Impl.f1706a.getCameraCharacteristics(str), str);
                            this.f1705b.put(str, cameraCharacteristicsCompat2);
                            cameraCharacteristicsCompat = cameraCharacteristicsCompat2;
                        } catch (CameraAccessException e2) {
                            throw new CameraAccessExceptionCompat(e2);
                        }
                    } catch (AssertionError e3) {
                        throw new CameraAccessExceptionCompat(SendLogRunnable.FINISH, e3.getMessage(), e3);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cameraCharacteristicsCompat;
    }

    public final void c(String str, Executor executor, CameraDevice.StateCallback stateCallback) throws CameraAccessExceptionCompat {
        CameraManagerCompatApi29Impl cameraManagerCompatApi29Impl = (CameraManagerCompatApi29Impl) this.f1704a;
        cameraManagerCompatApi29Impl.getClass();
        try {
            cameraManagerCompatApi29Impl.f1706a.openCamera(str, executor, stateCallback);
        } catch (CameraAccessException e2) {
            throw new CameraAccessExceptionCompat(e2);
        }
    }

    public final void d(Executor executor, CameraManager.AvailabilityCallback availabilityCallback) {
        ((CameraManagerCompatApi28Impl) this.f1704a).f1706a.registerAvailabilityCallback(executor, availabilityCallback);
    }

    public final void e(CameraManager.AvailabilityCallback availabilityCallback) {
        ((CameraManagerCompatApi28Impl) this.f1704a).f1706a.unregisterAvailabilityCallback(availabilityCallback);
    }
}

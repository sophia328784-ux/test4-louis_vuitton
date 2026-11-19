package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.lifecycle.MutableLiveData;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class LowLightBoostControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1597c;

    public LowLightBoostControl(Camera2CameraControlImpl camera2CameraControlImpl, CameraCharacteristicsCompat cameraCharacteristicsCompat, Executor executor) {
        new AtomicInteger(-1);
        this.f1595a = new Object();
        this.f1596b = executor;
        boolean zA = a(cameraCharacteristicsCompat);
        new MutableLiveData(-1);
        z zVar = new z();
        if (zA) {
            camera2CameraControlImpl.n(zVar);
        }
    }

    public static boolean a(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        int[] iArr;
        if (Build.VERSION.SDK_INT > 34 && (iArr = (int[]) cameraCharacteristicsCompat.a(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES)) != null) {
            for (int i2 : iArr) {
                if (i2 == 6) {
                    return true;
                }
            }
        }
        return false;
    }
}

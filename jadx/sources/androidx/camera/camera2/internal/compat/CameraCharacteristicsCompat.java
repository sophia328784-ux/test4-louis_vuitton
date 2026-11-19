package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import androidx.camera.camera2.internal.compat.workaround.OutputSizesCorrector;
import defpackage.md;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class CameraCharacteristicsCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraCharacteristicsCompatImpl f1700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1701c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f1699a = new HashMap();
    public StreamConfigurationMapCompat d = null;

    public interface CameraCharacteristicsCompatImpl {
    }

    public CameraCharacteristicsCompat(CameraCharacteristics cameraCharacteristics, String str) {
        this.f1700b = new CameraCharacteristicsApi28Impl(cameraCharacteristics);
        this.f1701c = str;
    }

    public final Object a(CameraCharacteristics.Key key) {
        if (key.equals(CameraCharacteristics.SENSOR_ORIENTATION)) {
            return ((CameraCharacteristicsBaseImpl) this.f1700b).f1698a.get(key);
        }
        synchronized (this) {
            try {
                Object obj = this.f1699a.get(key);
                if (obj != null) {
                    return obj;
                }
                Object obj2 = ((CameraCharacteristicsBaseImpl) this.f1700b).f1698a.get(key);
                if (obj2 != null) {
                    this.f1699a.put(key, obj2);
                }
                return obj2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int b() {
        Integer num = (!d() || Build.VERSION.SDK_INT < 35) ? null : (Integer) a(CameraCharacteristics.FLASH_TORCH_STRENGTH_DEFAULT_LEVEL);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    public final StreamConfigurationMapCompat c() {
        if (this.d == null) {
            try {
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (streamConfigurationMap == null) {
                    md.n("StreamConfigurationMap is null!");
                    return null;
                }
                this.d = new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(this.f1701c));
            } catch (AssertionError | NullPointerException e2) {
                md.n(e2.getMessage());
                return null;
            }
        }
        return this.d;
    }

    public final boolean d() {
        Boolean bool = (Boolean) a(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        return bool != null && bool.booleanValue();
    }

    public final boolean e() {
        int i2;
        if (!d() || (i2 = Build.VERSION.SDK_INT) < 35) {
            return false;
        }
        Integer num = (!d() || i2 < 35) ? null : (Integer) a(CameraCharacteristics.FLASH_TORCH_STRENGTH_MAX_LEVEL);
        return (num == null ? 1 : num.intValue()) > 1;
    }

    public final boolean f() {
        if (Build.VERSION.SDK_INT >= 34) {
            int[] iArr = (int[]) ((CameraCharacteristicsBaseImpl) this.f1700b).f1698a.get(CameraCharacteristics.CONTROL_AVAILABLE_SETTINGS_OVERRIDES);
            if (iArr != null) {
                for (int i2 : iArr) {
                    if (i2 == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final CameraCharacteristics g() {
        return ((CameraCharacteristicsBaseImpl) this.f1700b).f1698a;
    }
}

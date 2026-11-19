package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.os.Build;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.DynamicRange;
import androidx.core.util.Preconditions;
import defpackage.mt;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRangesCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicRangeProfilesCompatImpl f1713a;

    public interface DynamicRangeProfilesCompatImpl {
        Set a();

        DynamicRangeProfiles b();

        Set c(DynamicRange dynamicRange);
    }

    public DynamicRangesCompat(DynamicRangeProfilesCompatImpl dynamicRangeProfilesCompatImpl) {
        this.f1713a = dynamicRangeProfilesCompatImpl;
    }

    public static DynamicRangesCompat a(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        DynamicRangeProfiles dynamicRangeProfilesA;
        int i2 = Build.VERSION.SDK_INT;
        DynamicRangesCompat dynamicRangesCompat = null;
        if (i2 >= 33 && (dynamicRangeProfilesA = mt.a(cameraCharacteristicsCompat.a(CameraCharacteristics.REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES))) != null) {
            Preconditions.f("DynamicRangeProfiles can only be converted to DynamicRangesCompat on API 33 or higher.", i2 >= 33);
            dynamicRangesCompat = new DynamicRangesCompat(new DynamicRangesCompatApi33Impl(dynamicRangeProfilesA));
        }
        return dynamicRangesCompat == null ? DynamicRangesCompatBaseImpl.f1715a : dynamicRangesCompat;
    }

    public final Set b(DynamicRange dynamicRange) {
        return this.f1713a.c(dynamicRange);
    }

    public final Set c() {
        return this.f1713a.a();
    }

    public final DynamicRangeProfiles d() {
        Preconditions.f("DynamicRangesCompat can only be converted to DynamicRangeProfiles on API 33 or higher.", Build.VERSION.SDK_INT >= 33);
        return this.f1713a.b();
    }
}

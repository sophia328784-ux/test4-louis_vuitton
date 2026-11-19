package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class DynamicRangesCompatBaseImpl implements DynamicRangesCompat.DynamicRangeProfilesCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicRangesCompat f1715a = new DynamicRangesCompat(new DynamicRangesCompatBaseImpl());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f1716b = Collections.singleton(DynamicRange.d);

    @Override // androidx.camera.camera2.internal.compat.params.DynamicRangesCompat.DynamicRangeProfilesCompatImpl
    public final Set a() {
        return f1716b;
    }

    @Override // androidx.camera.camera2.internal.compat.params.DynamicRangesCompat.DynamicRangeProfilesCompatImpl
    public final DynamicRangeProfiles b() {
        return null;
    }

    @Override // androidx.camera.camera2.internal.compat.params.DynamicRangesCompat.DynamicRangeProfilesCompatImpl
    public final Set c(DynamicRange dynamicRange) {
        Preconditions.b(DynamicRange.d.equals(dynamicRange), "DynamicRange is not supported: " + dynamicRange);
        return f1716b;
    }
}

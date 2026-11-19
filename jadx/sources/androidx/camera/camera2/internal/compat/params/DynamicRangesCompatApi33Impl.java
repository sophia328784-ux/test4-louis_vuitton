package androidx.camera.camera2.internal.compat.params;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class DynamicRangesCompatApi33Impl implements DynamicRangesCompat.DynamicRangeProfilesCompatImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicRangeProfiles f1714a;

    public DynamicRangesCompatApi33Impl(Object obj) {
        this.f1714a = (DynamicRangeProfiles) obj;
    }

    public static Set d(Set set) {
        if (set.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        HashSet hashSet = new HashSet(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            l.longValue();
            DynamicRange dynamicRange = (DynamicRange) DynamicRangeConversions.f1711a.get(l);
            if (dynamicRange == null) {
                Logger.c(5, "DynamicRangesCompatApi33Impl");
            }
            if (dynamicRange != null) {
                hashSet.add(dynamicRange);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // androidx.camera.camera2.internal.compat.params.DynamicRangesCompat.DynamicRangeProfilesCompatImpl
    public final Set a() {
        return d(this.f1714a.getSupportedProfiles());
    }

    @Override // androidx.camera.camera2.internal.compat.params.DynamicRangesCompat.DynamicRangeProfilesCompatImpl
    public final DynamicRangeProfiles b() {
        return this.f1714a;
    }

    @Override // androidx.camera.camera2.internal.compat.params.DynamicRangesCompat.DynamicRangeProfilesCompatImpl
    public final Set c(DynamicRange dynamicRange) {
        Long lA = DynamicRangeConversions.a(dynamicRange, this.f1714a);
        Preconditions.b(lA != null, "DynamicRange is not supported: " + dynamicRange);
        return d(this.f1714a.getProfileCaptureRequestConstraints(lA.longValue()));
    }
}

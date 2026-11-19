package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.text.TextUtils;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.params.DynamicRangeConversions;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class DynamicRangeResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DynamicRangesCompat f1573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1574c;

    public static final class Api33Impl {
        public static DynamicRange a(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
            Long l = (Long) cameraCharacteristicsCompat.a(CameraCharacteristics.REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE);
            if (l != null) {
                return (DynamicRange) DynamicRangeConversions.f1711a.get(l);
            }
            return null;
        }
    }

    public DynamicRangeResolver(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        this.f1572a = cameraCharacteristicsCompat;
        this.f1573b = DynamicRangesCompat.a(cameraCharacteristicsCompat);
        int[] iArr = (int[]) cameraCharacteristicsCompat.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        boolean z = false;
        if (iArr != null) {
            for (int i2 : iArr) {
                if (i2 == 18) {
                    z = true;
                    break;
                }
            }
        }
        this.f1574c = z;
    }

    public static boolean a(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
        boolean zB = dynamicRange2.b();
        int i2 = dynamicRange2.f1918a;
        Preconditions.f("Fully specified range is not actually fully specified.", zB);
        int i3 = dynamicRange.f1918a;
        if (i3 == 2 && i2 == 1) {
            return false;
        }
        if (i3 != 2 && i3 != 0 && i3 != i2) {
            return false;
        }
        int i4 = dynamicRange.f1919b;
        return i4 == 0 || i4 == dynamicRange2.f1919b;
    }

    public static boolean b(DynamicRange dynamicRange, DynamicRange dynamicRange2, HashSet hashSet) {
        if (hashSet.contains(dynamicRange2)) {
            return a(dynamicRange, dynamicRange2);
        }
        dynamicRange.toString();
        Objects.toString(dynamicRange2);
        Logger.c(3, "DynamicRangeResolver");
        return false;
    }

    public static DynamicRange c(DynamicRange dynamicRange, LinkedHashSet linkedHashSet, HashSet hashSet) {
        if (dynamicRange.f1918a == 1) {
            return null;
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange2 = (DynamicRange) it.next();
            Preconditions.e(dynamicRange2, "Fully specified DynamicRange cannot be null.");
            int i2 = dynamicRange2.f1918a;
            Preconditions.f("Fully specified DynamicRange must have fully defined encoding.", dynamicRange2.b());
            if (i2 != 1 && b(dynamicRange, dynamicRange2, hashSet)) {
                return dynamicRange2;
            }
        }
        return null;
    }

    public static void d(HashSet hashSet, DynamicRange dynamicRange, DynamicRangesCompat dynamicRangesCompat) {
        Preconditions.f("Cannot update already-empty constraints.", !hashSet.isEmpty());
        Set setB = dynamicRangesCompat.b(dynamicRange);
        if (setB.isEmpty()) {
            return;
        }
        HashSet hashSet2 = new HashSet(hashSet);
        hashSet.retainAll(setB);
        if (hashSet.isEmpty()) {
            throw new IllegalArgumentException("Constraints of dynamic range cannot be combined with existing constraints.\nDynamic range:\n  " + dynamicRange + "\nConstraints:\n  " + TextUtils.join("\n  ", setB) + "\nExisting constraints:\n  " + TextUtils.join("\n  ", hashSet2));
        }
    }
}

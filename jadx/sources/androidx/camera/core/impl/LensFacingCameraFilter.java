package androidx.camera.core.impl;

import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LensFacingCameraFilter implements CameraFilter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2307b;

    public LensFacingCameraFilter(int i2) {
        this.f2307b = i2;
    }

    @Override // androidx.camera.core.CameraFilter
    public final ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CameraInfo cameraInfo = (CameraInfo) it.next();
            Preconditions.b(cameraInfo instanceof CameraInfoInternal, "The camera info doesn't contain internal implementation.");
            if (cameraInfo.g() == this.f2307b) {
                arrayList.add(cameraInfo);
            }
        }
        return arrayList;
    }
}

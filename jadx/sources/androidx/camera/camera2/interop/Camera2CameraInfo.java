package androidx.camera.camera2.interop;

import androidx.camera.camera2.internal.Camera2CameraInfoImpl;
import androidx.camera.camera2.internal.Camera2PhysicalCameraInfoImpl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Camera2CameraInfoImpl f1853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Camera2PhysicalCameraInfoImpl f1854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f1855c;

    public Camera2CameraInfo(Camera2CameraInfoImpl camera2CameraInfoImpl) {
        this.f1853a = camera2CameraInfoImpl;
    }

    public static Camera2CameraInfo a(CameraInfo cameraInfo) {
        if (cameraInfo instanceof Camera2PhysicalCameraInfoImpl) {
            return ((Camera2PhysicalCameraInfoImpl) cameraInfo).f1525c;
        }
        CameraInfoInternal implementation = ((CameraInfoInternal) cameraInfo).getImplementation();
        Preconditions.b(implementation instanceof Camera2CameraInfoImpl, "CameraInfo doesn't contain Camera2 implementation.");
        Camera2CameraInfo camera2CameraInfo = ((Camera2CameraInfoImpl) implementation).f1472c;
        if (!(cameraInfo instanceof AdapterCameraInfo) || ((AdapterCameraInfo) cameraInfo).f2157c == null) {
            return camera2CameraInfo;
        }
        Camera2CameraInfoImpl camera2CameraInfoImpl = camera2CameraInfo.f1853a;
        List list = Collections.EMPTY_LIST;
        Camera2CameraInfo camera2CameraInfo2 = new Camera2CameraInfo();
        camera2CameraInfo2.f1853a = camera2CameraInfoImpl;
        camera2CameraInfo2.f1855c = list;
        return camera2CameraInfo2;
    }

    public Camera2CameraInfo(Camera2PhysicalCameraInfoImpl camera2PhysicalCameraInfoImpl) {
        this.f1854b = camera2PhysicalCameraInfoImpl;
    }
}

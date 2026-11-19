package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.ForwardingCameraInfo;
import androidx.camera.core.impl.utils.TransformUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class VirtualCameraInfo extends ForwardingCameraInfo {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2669c;

    public VirtualCameraInfo(CameraInfoInternal cameraInfoInternal) {
        super(cameraInfoInternal);
        this.f2668b = "virtual-" + cameraInfoInternal.b() + "-" + UUID.randomUUID().toString();
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public final String b() {
        return this.f2668b;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.CameraInfo
    public final int d() {
        return t(0);
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.CameraInfo
    public final int t(int i2) {
        return TransformUtils.k(this.f2302a.t(i2) - this.f2669c);
    }
}

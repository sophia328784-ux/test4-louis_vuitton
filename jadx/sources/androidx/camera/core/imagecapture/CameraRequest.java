package androidx.camera.core.imagecapture;

import androidx.camera.core.impl.CaptureConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f2073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TakePictureCallback f2074b;

    public CameraRequest(List<CaptureConfig> list, TakePictureCallback takePictureCallback) {
        this.f2073a = list;
        this.f2074b = takePictureCallback;
    }
}

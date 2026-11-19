package androidx.camera.core.imagecapture;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.DngCreator;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.Operation;

/* JADX INFO: loaded from: classes.dex */
public class DngImage2Disk implements Operation<In, ImageCapture.OutputFileResults> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DngCreator f2087a;

    public static abstract class In {
    }

    public DngImage2Disk(CameraCharacteristics cameraCharacteristics, CaptureResult captureResult) {
        this.f2087a = new DngCreator(cameraCharacteristics, captureResult);
    }
}

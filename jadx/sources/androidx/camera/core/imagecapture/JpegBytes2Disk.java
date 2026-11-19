package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;

/* JADX INFO: loaded from: classes.dex */
public class JpegBytes2Disk implements Operation<In, ImageCapture.OutputFileResults> {

    public static abstract class In {
        public abstract ImageCapture.OutputFileOptions a();

        public abstract Packet b();
    }
}

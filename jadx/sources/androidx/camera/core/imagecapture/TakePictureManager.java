package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCaptureException;

/* JADX INFO: loaded from: classes.dex */
public interface TakePictureManager {

    public static abstract class CaptureError {
        public abstract ImageCaptureException a();

        public abstract int b();
    }

    public interface Provider {
        TakePictureManagerImpl a(ImageCaptureControl imageCaptureControl);
    }

    void a();

    void b(TakePictureRequest takePictureRequest);

    void c(ImagePipeline imagePipeline);

    void pause();

    void resume();
}

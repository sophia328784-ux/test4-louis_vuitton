package com.otaliastudios.cameraview.picture;

import android.hardware.Camera;
import androidx.exifinterface.media.ExifInterface;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.engine.Camera1Engine;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.engine.orchestrator.CameraState;
import com.otaliastudios.cameraview.frame.ByteBufferFrameManager;
import com.otaliastudios.cameraview.size.Size;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class Full1PictureRecorder extends FullPictureRecorder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Camera f39041f;
    public final Camera1Engine g;

    public Full1PictureRecorder(PictureResult.Stub stub, Camera1Engine camera1Engine, Camera camera) {
        super(stub, camera1Engine);
        this.g = camera1Engine;
        this.f39041f = camera;
        Camera.Parameters parameters = camera.getParameters();
        parameters.setRotation(this.f39051b.f38849c);
        camera.setParameters(parameters);
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public final void a() {
        FullPictureRecorder.f39050e.b(1, "dispatching result. Thread:", Thread.currentThread());
        super.a();
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public final void b() {
        CameraLogger cameraLogger = FullPictureRecorder.f39050e;
        cameraLogger.b(1, "take() called.");
        Camera camera = this.f39041f;
        camera.setPreviewCallbackWithBuffer(null);
        ((ByteBufferFrameManager) this.g.U()).c();
        try {
            camera.takePicture(new Camera.ShutterCallback() { // from class: com.otaliastudios.cameraview.picture.Full1PictureRecorder.1
                @Override // android.hardware.Camera.ShutterCallback
                public final void onShutter() {
                    FullPictureRecorder.f39050e.b(1, "take(): got onShutter callback.");
                    PictureRecorder.PictureResultListener pictureResultListener = Full1PictureRecorder.this.f39052c;
                    if (pictureResultListener != null) {
                        pictureResultListener.j(true);
                    }
                }
            }, null, null, new Camera.PictureCallback() { // from class: com.otaliastudios.cameraview.picture.Full1PictureRecorder.2
                @Override // android.hardware.Camera.PictureCallback
                public final void onPictureTaken(byte[] bArr, Camera camera2) {
                    Full1PictureRecorder full1PictureRecorder = Full1PictureRecorder.this;
                    Camera1Engine camera1Engine = full1PictureRecorder.g;
                    FullPictureRecorder.f39050e.b(1, "take(): got picture callback.");
                    int i2 = 0;
                    try {
                        switch (new ExifInterface(new ByteArrayInputStream(bArr)).e(1, "Orientation")) {
                            case 3:
                            case 4:
                                i2 = Sink.ORIENTATION_180;
                                break;
                            case 5:
                            case 6:
                                i2 = 90;
                                break;
                            case 7:
                            case 8:
                                i2 = Sink.ORIENTATION_270;
                                break;
                        }
                    } catch (IOException unused) {
                    }
                    PictureResult.Stub stub = full1PictureRecorder.f39051b;
                    stub.f38850e = bArr;
                    stub.f38849c = i2;
                    FullPictureRecorder.f39050e.b(1, "take(): starting preview again. ", Thread.currentThread());
                    if (camera1Engine.f38886e.f38958f.a(CameraState.PREVIEW)) {
                        camera2.setPreviewCallbackWithBuffer(camera1Engine);
                        Size sizeQ = camera1Engine.q(Reference.SENSOR);
                        if (sizeQ == null) {
                            md.k("Preview stream size should never be null here.");
                            return;
                        } else {
                            ((ByteBufferFrameManager) camera1Engine.U()).d(camera1Engine.m, sizeQ, camera1Engine.D);
                            camera2.startPreview();
                        }
                    }
                    full1PictureRecorder.a();
                }
            });
            cameraLogger.b(1, "take() returned.");
        } catch (Exception e2) {
            this.d = e2;
            a();
        }
    }
}

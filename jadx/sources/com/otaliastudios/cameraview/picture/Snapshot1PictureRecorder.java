package com.otaliastudios.cameraview.picture;

import android.graphics.Rect;
import android.graphics.YuvImage;
import android.hardware.Camera;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.engine.Camera1Engine;
import com.otaliastudios.cameraview.engine.offset.Reference;
import com.otaliastudios.cameraview.frame.ByteBufferFrameManager;
import com.otaliastudios.cameraview.internal.CropHelper;
import com.otaliastudios.cameraview.internal.WorkerHandler;
import com.otaliastudios.cameraview.size.AspectRatio;
import com.otaliastudios.cameraview.size.Size;
import defpackage.md;
import java.io.ByteArrayOutputStream;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class Snapshot1PictureRecorder extends SnapshotPictureRecorder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Camera1Engine f39053f;
    public Camera g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AspectRatio f39054h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f39055i;

    public Snapshot1PictureRecorder(PictureResult.Stub stub, Camera1Engine camera1Engine, Camera camera, AspectRatio aspectRatio) {
        super(stub, camera1Engine);
        this.f39053f = camera1Engine;
        this.g = camera;
        this.f39054h = aspectRatio;
        this.f39055i = camera.getParameters().getPreviewFormat();
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public final void a() {
        this.f39053f = null;
        this.g = null;
        this.f39054h = null;
        this.f39055i = 0;
        super.a();
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public final void b() {
        this.g.setOneShotPreviewCallback(new Camera.PreviewCallback() { // from class: com.otaliastudios.cameraview.picture.Snapshot1PictureRecorder.1
            @Override // android.hardware.Camera.PreviewCallback
            public final void onPreviewFrame(final byte[] bArr, Camera camera) {
                Snapshot1PictureRecorder snapshot1PictureRecorder = Snapshot1PictureRecorder.this;
                PictureRecorder.PictureResultListener pictureResultListener = snapshot1PictureRecorder.f39052c;
                if (pictureResultListener != null) {
                    pictureResultListener.j(false);
                }
                PictureResult.Stub stub = snapshot1PictureRecorder.f39051b;
                final int i2 = stub.f38849c;
                final Size size = stub.d;
                final Size sizeQ = snapshot1PictureRecorder.f39053f.q(Reference.SENSOR);
                if (sizeQ == null) {
                    md.k("Preview stream size should never be null here.");
                    return;
                }
                WorkerHandler.a("FallbackCameraThread").f39023c.post(new Runnable() { // from class: com.otaliastudios.cameraview.picture.Snapshot1PictureRecorder.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        byte[] bArr2;
                        byte[] bArr3 = bArr;
                        Size size2 = sizeQ;
                        int i3 = i2;
                        if (i3 == 0) {
                            bArr2 = bArr3;
                        } else {
                            if (i3 % 90 != 0 || i3 < 0 || i3 > 270) {
                                md.n("0 <= rotation < 360, rotation % 90 == 0");
                                return;
                            }
                            int i4 = size2.f39086b;
                            int i5 = size2.f39087c;
                            byte[] bArr4 = new byte[bArr3.length];
                            int i6 = i4 * i5;
                            boolean z = i3 % Sink.ORIENTATION_180 != 0;
                            boolean z2 = i3 % Sink.ORIENTATION_270 != 0;
                            boolean z3 = i3 >= 180;
                            for (int i7 = 0; i7 < i5; i7++) {
                                for (int i8 = 0; i8 < i4; i8++) {
                                    int i9 = (i7 * i4) + i8;
                                    int i10 = ((i7 >> 1) * i4) + i6 + (i8 & (-2));
                                    int i11 = i10 + 1;
                                    int i12 = z ? i5 : i4;
                                    int i13 = z ? i4 : i5;
                                    int i14 = z ? i7 : i8;
                                    int i15 = z ? i8 : i7;
                                    if (z2) {
                                        i14 = (i12 - i14) - 1;
                                    }
                                    if (z3) {
                                        i15 = (i13 - i15) - 1;
                                    }
                                    int i16 = (i15 * i12) + i14;
                                    int i17 = ((i15 >> 1) * i12) + i6 + (i14 & (-2));
                                    bArr4[i16] = (byte) (bArr3[i9] & 255);
                                    bArr4[i17] = (byte) (bArr3[i10] & 255);
                                    bArr4[i17 + 1] = (byte) (bArr3[i11] & 255);
                                }
                            }
                            bArr2 = bArr4;
                        }
                        int i18 = Snapshot1PictureRecorder.this.f39055i;
                        Size size3 = size;
                        YuvImage yuvImage = new YuvImage(bArr2, i18, size3.f39086b, size3.f39087c, null);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        Rect rectA = CropHelper.a(size, Snapshot1PictureRecorder.this.f39054h);
                        yuvImage.compressToJpeg(rectA, 90, byteArrayOutputStream);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        PictureResult.Stub stub2 = Snapshot1PictureRecorder.this.f39051b;
                        stub2.f38850e = byteArray;
                        stub2.d = new Size(rectA.width(), rectA.height());
                        Snapshot1PictureRecorder snapshot1PictureRecorder2 = Snapshot1PictureRecorder.this;
                        snapshot1PictureRecorder2.f39051b.f38849c = 0;
                        snapshot1PictureRecorder2.a();
                    }
                });
                camera.setPreviewCallbackWithBuffer(null);
                camera.setPreviewCallbackWithBuffer(snapshot1PictureRecorder.f39053f);
                ((ByteBufferFrameManager) snapshot1PictureRecorder.f39053f.U()).d(snapshot1PictureRecorder.f39055i, sizeQ, snapshot1PictureRecorder.f39053f.D);
            }
        });
    }
}

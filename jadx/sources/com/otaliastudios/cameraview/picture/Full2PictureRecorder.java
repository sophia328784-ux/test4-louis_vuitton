package com.otaliastudios.cameraview.picture;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.DngCreator;
import android.hardware.camera2.TotalCaptureResult;
import android.location.Location;
import android.media.Image;
import android.media.ImageReader;
import androidx.exifinterface.media.ExifInterface;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.PictureResult;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.engine.Camera2Engine;
import com.otaliastudios.cameraview.engine.action.Action;
import com.otaliastudios.cameraview.engine.action.ActionHolder;
import com.otaliastudios.cameraview.engine.action.BaseAction;
import com.otaliastudios.cameraview.internal.WorkerHandler;
import defpackage.md;
import defpackage.pq0;
import defpackage.x1;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class Full2PictureRecorder extends FullPictureRecorder implements ImageReader.OnImageAvailableListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Camera2Engine f39044f;
    public final Action g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageReader f39045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CaptureRequest.Builder f39046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DngCreator f39047j;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.picture.Full2PictureRecorder$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39049a;

        static {
            int[] iArr = new int[PictureFormat.values().length];
            f39049a = iArr;
            try {
                iArr[PictureFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39049a[PictureFormat.DNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Full2PictureRecorder(PictureResult.Stub stub, Camera2Engine camera2Engine, CaptureRequest.Builder builder, ImageReader imageReader) {
        super(stub, camera2Engine);
        this.f39044f = camera2Engine;
        this.f39046i = builder;
        this.f39045h = imageReader;
        imageReader.setOnImageAvailableListener(this, WorkerHandler.a("FallbackCameraThread").f39023c);
        this.g = new BaseAction() { // from class: com.otaliastudios.cameraview.picture.Full2PictureRecorder.1
            @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
            public final void b(ActionHolder actionHolder, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                int i2;
                Full2PictureRecorder full2PictureRecorder = Full2PictureRecorder.this;
                if (full2PictureRecorder.f39051b.f38851f == PictureFormat.DNG) {
                    DngCreator dngCreator = new DngCreator(actionHolder.i(), totalCaptureResult);
                    full2PictureRecorder.f39047j = dngCreator;
                    int i3 = full2PictureRecorder.f39051b.f38849c;
                    int i4 = (i3 + 360) % 360;
                    if (i4 == 0) {
                        i2 = 1;
                    } else if (i4 == 90) {
                        i2 = 6;
                    } else if (i4 == 180) {
                        i2 = 3;
                    } else {
                        if (i4 != 270) {
                            md.n(pq0.k(i3, "Invalid orientation: "));
                            return;
                        }
                        i2 = 8;
                    }
                    dngCreator.setOrientation(i2);
                    Location location = full2PictureRecorder.f39051b.f38848b;
                    if (location != null) {
                        full2PictureRecorder.f39047j.setLocation(location);
                    }
                }
            }

            @Override // com.otaliastudios.cameraview.engine.action.BaseAction, com.otaliastudios.cameraview.engine.action.Action
            public final void c(ActionHolder actionHolder, CaptureRequest captureRequest) {
                super.c(actionHolder, captureRequest);
                if (captureRequest.getTag() == 2) {
                    FullPictureRecorder.f39050e.b(1, "onCaptureStarted:", "Dispatching picture shutter.");
                    PictureRecorder.PictureResultListener pictureResultListener = Full2PictureRecorder.this.f39052c;
                    if (pictureResultListener != null) {
                        pictureResultListener.j(false);
                    }
                    l(Integer.MAX_VALUE);
                }
            }

            @Override // com.otaliastudios.cameraview.engine.action.BaseAction
            public final void i(ActionHolder actionHolder) {
                this.f38895c = actionHolder;
                Full2PictureRecorder full2PictureRecorder = Full2PictureRecorder.this;
                CaptureRequest.Builder builder2 = full2PictureRecorder.f39046i;
                builder2.addTarget(full2PictureRecorder.f39045h.getSurface());
                PictureResult.Stub stub2 = full2PictureRecorder.f39051b;
                if (stub2.f38851f == PictureFormat.JPEG) {
                    builder2.set(CaptureRequest.JPEG_ORIENTATION, Integer.valueOf(stub2.f38849c));
                }
                builder2.setTag(2);
                try {
                    actionHolder.d(builder2);
                } catch (CameraAccessException e2) {
                    full2PictureRecorder.f39051b = null;
                    full2PictureRecorder.d = e2;
                    full2PictureRecorder.a();
                    l(Integer.MAX_VALUE);
                }
            }
        };
    }

    @Override // com.otaliastudios.cameraview.picture.PictureRecorder
    public final void b() {
        ((BaseAction) this.g).m(this.f39044f);
    }

    public final void c(Image image) {
        int i2 = 0;
        ByteBuffer buffer = image.getPlanes()[0].getBuffer();
        byte[] bArr = new byte[buffer.remaining()];
        buffer.get(bArr);
        PictureResult.Stub stub = this.f39051b;
        stub.f38850e = bArr;
        stub.f38849c = 0;
        try {
            int iE = new ExifInterface(new ByteArrayInputStream(this.f39051b.f38850e)).e(1, "Orientation");
            PictureResult.Stub stub2 = this.f39051b;
            switch (iE) {
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
            stub2.f38849c = i2;
        } catch (IOException unused) {
        }
    }

    public final void d(Image image) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        try {
            this.f39047j.writeImage(bufferedOutputStream, image);
            bufferedOutputStream.flush();
            this.f39051b.f38850e = byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            this.f39047j.close();
            try {
                bufferedOutputStream.close();
            } catch (IOException unused) {
            }
            x1.m(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.media.Image] */
    /* JADX WARN: Type inference failed for: r1v4 */
    @Override // android.media.ImageReader.OnImageAvailableListener
    public final void onImageAvailable(ImageReader imageReader) throws Throwable {
        Image imageAcquireNextImage;
        CameraLogger cameraLogger = FullPictureRecorder.f39050e;
        cameraLogger.b(1, "onImageAvailable started.");
        ?? r1 = 0;
        try {
            try {
                imageAcquireNextImage = imageReader.acquireNextImage();
                try {
                    int i2 = AnonymousClass2.f39049a[this.f39051b.f38851f.ordinal()];
                    if (i2 == 1) {
                        c(imageAcquireNextImage);
                    } else {
                        if (i2 != 2) {
                            throw new IllegalStateException("Unknown format: " + this.f39051b.f38851f);
                        }
                        d(imageAcquireNextImage);
                    }
                    if (imageAcquireNextImage != null) {
                        imageAcquireNextImage.close();
                    }
                    cameraLogger.b(1, "onImageAvailable ended.");
                    a();
                } catch (Exception e2) {
                    e = e2;
                    this.f39051b = null;
                    this.d = e;
                    a();
                    if (imageAcquireNextImage != null) {
                        imageAcquireNextImage.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                r1 = imageReader;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            imageAcquireNextImage = null;
        } catch (Throwable th2) {
            th = th2;
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
    }
}

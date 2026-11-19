package com.sightcall.universal.internal.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.YuvImage;
import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Size;
import android.util.SparseArray;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Toast;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.vision.zzk;
import com.google.android.gms.internal.vision.zzl;
import com.google.android.gms.internal.vision.zzm;
import com.google.android.gms.internal.vision.zzs;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.barcode.Barcode;
import com.google.android.gms.vision.barcode.BarcodeDetector;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.internal.util.Snapshots;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.ocr.OcrClient;
import defpackage.md;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.internal.view.VideoProducerCameraView;
import net.rtccloud.sdk.util.CameraUtils;
import net.rtccloud.sdk.util.Dimension;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ScaleType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class MyVideoProducerCameraView extends TextureView implements VideoProducer, TextureView.SurfaceTextureListener, Camera.PreviewCallback, MyVideoProducer, MyScaleGestureDetector.OnScaleCallback {
    private static int frameCount;

    @Inject
    @Named
    ViewGroup advancedAnnotationsContainer;

    @Inject
    AdvancedAnnotationsWrapper advancedAnnotationsWrapper;
    private Call call;
    private Camera camera;
    private OnCameraCallback cameraCallback;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private DataChannelModule dc;
    private final RectF dst;
    private int internalCorrection;
    private boolean isCapturing;
    private boolean isPaused;
    private boolean isStarted;
    private boolean isSurfaceAvailable;
    private SharedPreferences liveQrPrefs;
    private final Matrix matrix;
    private final Dimension measureDim;
    private OrientationEventListener orientationEventListener;
    private Call.Parameters parameters;
    private Point previewSize;
    private Camera.Size previewSizeRaw;
    MyScaleGestureDetector scaleDetector;
    private ScaleType scaleType;
    private SenderHandler senderHandler;
    private Sink.Video sink;
    private final RectF src;
    private Handler uiHandler;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_PRODUCER);
    private static final WeakHashMap<Call, Pair<ByteBuffer, ByteBuffer>> buffers = new WeakHashMap<>(1);
    private static boolean isLiveQrActivated = false;
    private static Set<String> qrSet = new HashSet();
    private static String previousCode = "";

    public interface OnCameraCallback extends VideoProducerCameraView.OnCameraCallback {
        void onCameraSnapshot(File file);
    }

    public static class SenderHandler extends Handler {
        private static final int OCR = 9;
        private static final int PAUSE = 4;
        private static final int RESTART = 3;
        private static final int RESUME = 2;
        private static final int SNAPSHOT = 8;
        private static final int START = 1;
        private static final int STILL = 7;
        private static final int STOP = 5;
        private static final int TEARDOWN = 6;
        private final HandlerThread handlerThread;
        private byte[] lastFrame;
        private final WeakReference<MyVideoProducerCameraView> reference;
        private long timeout;

        public SenderHandler(MyVideoProducerCameraView myVideoProducerCameraView, HandlerThread handlerThread) {
            super(handlerThread.getLooper());
            this.timeout = 1000L;
            this.reference = new WeakReference<>(myVideoProducerCameraView);
            this.handlerThread = handlerThread;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendFrame(byte[] bArr) {
            MyVideoProducerCameraView myVideoProducerCameraView = this.reference.get();
            if (myVideoProducerCameraView == null) {
                return;
            }
            Sink.Video video = myVideoProducerCameraView.sink;
            Camera.Size size = myVideoProducerCameraView.previewSizeRaw;
            if (!myVideoProducerCameraView.isStarted || myVideoProducerCameraView.isPaused || video == null || size == null) {
                return;
            }
            this.lastFrame = bArr;
            myVideoProducerCameraView.detectQr(myVideoProducerCameraView.getContext().getApplicationContext(), bArr, size.width, size.height);
            video.push(bArr, size.width, size.height, 0, myVideoProducerCameraView.internalCorrection, 2);
            Camera camera = myVideoProducerCameraView.camera;
            if (camera != null) {
                camera.addCallbackBuffer(bArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendPause() {
            MyVideoProducerCameraView myVideoProducerCameraView = this.reference.get();
            if (myVideoProducerCameraView == null) {
                return;
            }
            Sink.Video video = myVideoProducerCameraView.sink;
            Camera.Size size = myVideoProducerCameraView.previewSizeRaw;
            if (!myVideoProducerCameraView.isStarted || !myVideoProducerCameraView.isPaused || this.lastFrame == null || video == null || size == null) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            boolean zPush = video.push(this.lastFrame, size.width, size.height, 0, myVideoProducerCameraView.internalCorrection, 2);
            long jMax = this.timeout;
            if (zPush) {
                jMax = Math.max(0L, jMax - (SystemClock.elapsedRealtime() - jElapsedRealtime));
            }
            sendEmptyMessageDelayed(7, jMax);
        }

        @Override // android.os.Handler
        public synchronized void handleMessage(Message message) {
            MyVideoProducerCameraView myVideoProducerCameraView = this.reference.get();
            if (myVideoProducerCameraView != null) {
                int i2 = message.what;
                if (i2 == 1) {
                    myVideoProducerCameraView.doStart();
                    return;
                }
                if (i2 == 2) {
                    myVideoProducerCameraView.doResume();
                    return;
                }
                if (i2 == 3) {
                    myVideoProducerCameraView.doStop();
                    myVideoProducerCameraView.doStart();
                    return;
                }
                if (i2 == 4) {
                    myVideoProducerCameraView.doPause();
                    return;
                }
                if (i2 == 5) {
                    myVideoProducerCameraView.doStop();
                    return;
                } else if (i2 == 8) {
                    myVideoProducerCameraView.doSnapshot(myVideoProducerCameraView.getContext().getApplicationContext());
                    return;
                } else if (i2 == 9) {
                    myVideoProducerCameraView.doOcr(myVideoProducerCameraView.getContext().getApplicationContext(), message.arg1);
                    return;
                }
            }
            int i3 = message.what;
            if (i3 == 6) {
                removeCallbacksAndMessages(null);
                this.lastFrame = null;
                this.handlerThread.quit();
            } else if (i3 != 7) {
                super.handleMessage(message);
            } else {
                sendPause();
            }
        }

        public void updateTimeout(Call.Parameters parameters) {
            this.timeout = (long) (1000.0f / parameters.videoFramerate());
        }
    }

    public MyVideoProducerCameraView(Context context) {
        super(context);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detectQr(Context context, byte[] bArr, int i2, int i3) {
        Barcode[] barcodeArrX0;
        if (isLiveQrActivated) {
            int i4 = frameCount + 1;
            frameCount = i4;
            if (i4 < 10) {
                return;
            }
            frameCount = 0;
            BarcodeDetector.Builder builder = new BarcodeDetector.Builder(context);
            zzk zzkVar = builder.f32180b;
            zzkVar.f31233b = 0;
            zzm zzmVar = new BarcodeDetector(new zzm(builder.f32179a, zzkVar)).f32178a;
            if (zzmVar.b() != null) {
                Frame.Builder builder2 = new Frame.Builder();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                if (byteBufferWrap == null) {
                    md.n("Null image data supplied.");
                    return;
                }
                if (byteBufferWrap.capacity() < i2 * i3) {
                    md.n("Invalid image data size.");
                    return;
                }
                Frame frame = builder2.f32123a;
                frame.f32122b = byteBufferWrap;
                Frame.Metadata metadata = frame.f32121a;
                metadata.f32124a = i2;
                metadata.f32125b = i3;
                zzs zzsVar = new zzs();
                zzsVar.f31296b = metadata.f32124a;
                zzsVar.f31297c = metadata.f32125b;
                zzsVar.f31299f = 0;
                zzsVar.d = 0;
                zzsVar.f31298e = 0L;
                ByteBuffer byteBuffer = frame.f32122b;
                Preconditions.h(byteBuffer);
                if (zzmVar.b() != null) {
                    try {
                        ObjectWrapper objectWrapper = new ObjectWrapper(byteBuffer);
                        zzl zzlVar = (zzl) zzmVar.b();
                        Preconditions.h(zzlVar);
                        barcodeArrX0 = zzlVar.X0(objectWrapper, zzsVar);
                    } catch (RemoteException unused) {
                        barcodeArrX0 = new Barcode[0];
                    }
                } else {
                    barcodeArrX0 = new Barcode[0];
                }
                SparseArray sparseArray = new SparseArray(barcodeArrX0.length);
                for (Barcode barcode : barcodeArrX0) {
                    sparseArray.append(barcode.f32127c.hashCode(), barcode);
                }
                for (int i5 = 0; i5 < sparseArray.size(); i5++) {
                    try {
                        Barcode barcode2 = (Barcode) sparseArray.get(sparseArray.keyAt(i5));
                        String str = barcode2.f32127c;
                        if (!qrSet.contains(str)) {
                            if (previousCode.equals(str)) {
                                String str2 = barcode2.f32126b == 256 ? "qr" : "bar";
                                Toast.makeText(context, str2 + ": " + str, 0).show();
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("type", str2);
                                jSONObject.put("content", str);
                                DataChannelAction.LIVE_QR_DETECTED.send(jSONObject.toString());
                                saveQr(str);
                            } else {
                                previousCode = str;
                            }
                        }
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doOcr(Context context, final int i2) {
        try {
            log.d("doOcr()");
            if (this.isCapturing && !this.isPaused && this.senderHandler != null && this.camera != null) {
                final Session session = Session.get();
                final VideoModule.CameraSource cameraSource = this.parameters.cameraSource();
                if (session != null && cameraSource != null) {
                    try {
                        this.camera.takePicture(emptyShutterCallback(), emptyPictureCallback(), new Camera.PictureCallback() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.10
                            @Override // android.hardware.Camera.PictureCallback
                            public void onPictureTaken(byte[] bArr, Camera camera) {
                                try {
                                    OcrClient.upload(session, bArr, cameraSource, i2, new OcrClient.UploadCallback() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.10.1
                                        @Override // com.sightcall.universal.ocr.OcrClient.UploadCallback
                                        public void onUploadError() {
                                            DataChannelAction.OCR_ERROR.send(MyVideoProducerCameraView.this.dc);
                                        }

                                        @Override // com.sightcall.universal.ocr.OcrClient.UploadCallback
                                        public void onUploadFailure() {
                                            DataChannelAction.OCR_ERROR.send(MyVideoProducerCameraView.this.dc);
                                        }

                                        @Override // com.sightcall.universal.ocr.OcrClient.UploadCallback
                                        public void onUploadSuccess() {
                                            DataChannelAction.OCR_SUCCESS.send(MyVideoProducerCameraView.this.dc);
                                        }
                                    });
                                } catch (Exception unused) {
                                    DataChannelAction.OCR_ERROR.send(MyVideoProducerCameraView.this.dc);
                                }
                                MyVideoProducerCameraView.this.doResume();
                            }
                        });
                    } catch (Exception e2) {
                        Universal.logger().e(e2);
                    }
                    return;
                }
                DataChannelAction.OCR_ERROR.send(this.dc);
                return;
            }
            DataChannelAction.OCR_ERROR.send(this.dc);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doPause() {
        Camera camera;
        log.d("doPause()");
        this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.DrawDrop);
        SenderHandler senderHandler = this.senderHandler;
        if (this.isCapturing && senderHandler != null && (camera = this.camera) != null) {
            this.isPaused = true;
            camera.stopPreview();
            senderHandler.sendPause();
            CameraUtils.setFlashEnabled(this.camera, false);
            this.capabilitiesRepository.pauseVideo();
            DataChannelAction.STARTED_HOLD.send(this.dc);
            this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.7
                @Override // java.lang.Runnable
                public void run() {
                    if (MyVideoProducerCameraView.this.cameraCallback != null) {
                        MyVideoProducerCameraView.this.cameraCallback.onCameraPause();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doResume() {
        try {
            log.d("doResume()");
            this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.Pointer);
            Camera camera = this.camera;
            SenderHandler senderHandler = this.senderHandler;
            if (this.isCapturing && senderHandler != null && camera != null) {
                this.isPaused = false;
                this.capabilitiesRepository.resumeVideo();
                senderHandler.removeCallbacksAndMessages(null);
                try {
                    camera.addCallbackBuffer(senderHandler.lastFrame);
                    camera.setPreviewCallbackWithBuffer(this);
                    camera.startPreview();
                    if (this.parameters.cameraFlash()) {
                        CameraUtils.setFlashEnabled(this.camera, true);
                    }
                    DataChannelAction.STOPPED_HOLD.send(this.dc);
                    this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.8
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MyVideoProducerCameraView.this.cameraCallback != null) {
                                MyVideoProducerCameraView.this.cameraCallback.onCameraResume();
                            }
                        }
                    });
                } catch (Exception e2) {
                    log.e("Error while resuming the preview", e2);
                    this.isCapturing = false;
                    this.camera = null;
                    this.previewSize = null;
                    this.previewSizeRaw = null;
                    camera.release();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doSnapshot(final Context context) {
        try {
            log.d("doSnapshot()");
            if (this.isCapturing && !this.isPaused && this.senderHandler != null && this.camera != null) {
                final VideoModule.CameraSource cameraSource = this.parameters.cameraSource();
                if (cameraSource == null) {
                    return;
                }
                try {
                    this.camera.takePicture(null, emptyPictureCallback(), new Camera.PictureCallback() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.9
                        @Override // android.hardware.Camera.PictureCallback
                        public void onPictureTaken(byte[] bArr, Camera camera) {
                            BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                            final File fileSaveSnapshot = MyVideoProducerCameraView.saveSnapshot(context, cameraSource, bArr, camera);
                            if (fileSaveSnapshot != null) {
                                MyVideoProducerCameraView.this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.9.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (MyVideoProducerCameraView.this.cameraCallback != null) {
                                            MyVideoProducerCameraView.this.cameraCallback.onCameraSnapshot(fileSaveSnapshot);
                                        }
                                    }
                                });
                            }
                            MyVideoProducerCameraView.this.doResume();
                        }
                    });
                } catch (Exception e2) {
                    Universal.logger().e(e2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doStart() {
        Camera cameraInitCamera;
        try {
            log.d("doStart()");
            if (this.isStarted && this.isSurfaceAvailable && !this.isCapturing) {
                Session session = Session.get();
                if (session != null && Utils.videoProducerToFullscreen(session, this.call)) {
                    this.advancedAnnotationsWrapper.setAnchor(this);
                    this.advancedAnnotationsWrapper.layoutOver(this, this);
                    this.advancedAnnotationsWrapper.resumeAnnotations(this);
                    this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.Pointer);
                }
                VideoModule.CameraSource cameraSource = this.parameters.cameraSource();
                if (cameraSource == null) {
                    return;
                }
                this.isCapturing = true;
                this.isPaused = false;
                Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
                try {
                    cameraInitCamera = CameraUtils.initCamera(this.parameters, session.usecase.takeUhdSnapshot ? new Size(2160, 3840) : new Size(Sink.Screenshare.MAX_DIMENSION_LOW, Sink.Screenshare.MAX_DIMENSION_HIGH), defaultDisplay);
                } catch (RuntimeException e2) {
                    log.e("Unable to init Camera", e2);
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(MyVideoProducerCameraView.this.getContext(), R.string.universal_error_camera_unavailable, 1).show();
                        }
                    });
                    cameraInitCamera = null;
                }
                if (cameraInitCamera == null) {
                    this.isCapturing = false;
                    log.e("Invalid Camera");
                    return;
                }
                try {
                    Camera.Size previewSize = cameraInitCamera.getParameters().getPreviewSize();
                    cameraInitCamera.setPreviewTexture(getSurfaceTexture());
                    WeakHashMap<Call, Pair<ByteBuffer, ByteBuffer>> weakHashMap = buffers;
                    Pair<ByteBuffer, ByteBuffer> pairCreate = weakHashMap.get(this.call);
                    if (pairCreate == null) {
                        pairCreate = Pair.create(CameraUtils.createYuvByteBuffer(previewSize.width, previewSize.height), CameraUtils.createYuvByteBuffer(previewSize.width, previewSize.height));
                        weakHashMap.put(this.call, pairCreate);
                    }
                    cameraInitCamera.addCallbackBuffer(((ByteBuffer) pairCreate.first).array());
                    cameraInitCamera.addCallbackBuffer(((ByteBuffer) pairCreate.second).array());
                    cameraInitCamera.setPreviewCallbackWithBuffer(this);
                    cameraInitCamera.startPreview();
                    cameraInitCamera.enableShutterSound(false);
                    this.camera = cameraInitCamera;
                    this.previewSizeRaw = previewSize;
                    this.internalCorrection = CameraUtils.getInternalPreviewCorrection(cameraSource, defaultDisplay);
                    int rotation = defaultDisplay.getRotation();
                    int i2 = cameraSource.orientation % Sink.ORIENTATION_180;
                    if ((i2 == 0 && (rotation == 0 || rotation == 2)) || (i2 == 90 && (rotation == 1 || rotation == 3))) {
                        this.previewSize = new Point(previewSize.width, previewSize.height);
                    } else {
                        this.previewSize = new Point(previewSize.height, previewSize.width);
                    }
                    DataChannelAction.STARTED_CAMERA.send();
                    (isFlashAvailable() ? DataChannelAction.TORCH_AVAILABLE : DataChannelAction.TORCH_UNAVAILABLE).send();
                    if (isFlashEnabled()) {
                        DataChannelAction.STARTED_LIGHT.send();
                    }
                    this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.5
                        @Override // java.lang.Runnable
                        public void run() {
                            MyVideoProducerCameraView.this.updateScaling();
                            MyVideoProducerCameraView.this.requestLayout();
                            if (MyVideoProducerCameraView.this.cameraCallback != null) {
                                MyVideoProducerCameraView.this.cameraCallback.onCameraStart();
                            }
                        }
                    });
                    this.orientationEventListener.enable();
                    boolean zIsFront = cameraSource.isFront();
                    AdvancedAnnotationsWrapper advancedAnnotationsWrapper = this.advancedAnnotationsWrapper;
                    if (zIsFront) {
                        advancedAnnotationsWrapper.pauseAnnotations(this);
                        this.capabilitiesRepository.frontCamera();
                    } else {
                        advancedAnnotationsWrapper.resumeAnnotations(this);
                        this.capabilitiesRepository.backCamera();
                    }
                } catch (Exception e3) {
                    log.e("Error while starting the preview", e3);
                    this.isCapturing = false;
                    cameraInitCamera.release();
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.4
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(MyVideoProducerCameraView.this.getContext(), R.string.universal_error_camera_unavailable, 1).show();
                        }
                    });
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doStop() {
        try {
            log.d("doStop()");
            if (this.isCapturing) {
                this.orientationEventListener.disable();
                this.isCapturing = false;
                this.isPaused = false;
                this.previewSize = null;
                this.previewSizeRaw = null;
                DataChannelAction.STOPPED_CAMERA.send();
                Camera camera = this.camera;
                if (camera != null) {
                    this.camera = null;
                    camera.setPreviewCallbackWithBuffer(null);
                    camera.stopPreview();
                    camera.release();
                }
                this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        MyVideoProducerCameraView.this.requestLayout();
                        if (MyVideoProducerCameraView.this.cameraCallback != null) {
                            MyVideoProducerCameraView.this.cameraCallback.onCameraStop();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private Camera.PictureCallback emptyPictureCallback() {
        return new Camera.PictureCallback() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.12
            @Override // android.hardware.Camera.PictureCallback
            public void onPictureTaken(byte[] bArr, Camera camera) {
            }
        };
    }

    private Camera.ShutterCallback emptyShutterCallback() {
        return new Camera.ShutterCallback() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.11
            @Override // android.hardware.Camera.ShutterCallback
            public void onShutter() {
            }
        };
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.uiHandler = new Handler();
        this.scaleDetector = new MyScaleGestureDetector(getContext(), this);
        setSurfaceTextureListener(this);
        this.liveQrPrefs = getContext().getSharedPreferences("sightcall_live_qr", 0);
        SDKInjector.getSdkInjector().getCallComponent().inject(this);
        this.orientationEventListener = new OrientationEventListener(getContext(), 3) { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.1
            private final Display display;
            private int previousRotation;

            {
                Display defaultDisplay = ((WindowManager) MyVideoProducerCameraView.this.getContext().getSystemService("window")).getDefaultDisplay();
                this.display = defaultDisplay;
                this.previousRotation = defaultDisplay.getRotation();
            }

            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i2) {
                if (i2 == -1) {
                    return;
                }
                int rotation = this.display.getRotation();
                if (Math.abs(this.previousRotation - rotation) == 2) {
                    MyVideoProducerCameraView.this.restartOnlyIfAlreadyStarted();
                }
                this.previousRotation = rotation;
            }
        };
    }

    private void loadQr() {
        if (!this.liveQrPrefs.getString("pincode", "").equals(this.call.key())) {
            qrSet.clear();
            this.liveQrPrefs.edit().clear().apply();
        }
        qrSet = new HashSet(this.liveQrPrefs.getStringSet("values", new HashSet()));
    }

    private void postRequestLayout() {
        post(new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.2
            @Override // java.lang.Runnable
            public void run() {
                MyVideoProducerCameraView.this.requestLayout();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartOnlyIfAlreadyStarted() {
        SenderHandler senderHandler;
        if (this.isStarted && this.isCapturing && (senderHandler = this.senderHandler) != null) {
            senderHandler.sendEmptyMessage(3);
        }
    }

    private void saveQr(String str) {
        qrSet.add(str);
        SharedPreferences.Editor editorEdit = this.liveQrPrefs.edit();
        editorEdit.putString("pincode", this.call.key());
        editorEdit.putStringSet("values", qrSet);
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File saveSnapshot(Context context, VideoModule.CameraSource cameraSource, byte[] bArr, Camera camera) {
        try {
            Camera.Size pictureSize = camera.getParameters().getPictureSize();
            OldLogger oldLogger = log;
            oldLogger.d("Snapshot PictureSize:" + pictureSize.width + "x" + pictureSize.height);
            StringBuilder sb = new StringBuilder("Snapshot orientation:");
            sb.append(cameraSource.orientation);
            oldLogger.d(sb.toString());
            try {
                File fileSave = Snapshots.save(context, bArr);
                Snapshots.setExifOrientation(context, fileSave, cameraSource);
                return fileSave;
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public static void shutdownLiveQr() {
        isLiveQrActivated = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScaling() {
        Point point = this.previewSize;
        if (point == null) {
            this.matrix.setScale(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            setTransform(this.matrix);
            return;
        }
        this.src.right = getWidth();
        this.src.bottom = getHeight();
        float f2 = point.x;
        float f3 = point.y;
        ScaleType scaleType = this.scaleType;
        RectF rectF = this.dst;
        RectF rectF2 = this.src;
        net.rtccloud.sdk.util.ViewUtils.applyScalingTo(scaleType, rectF, f2, f3, rectF2.right, rectF2.bottom);
        this.matrix.setRectToRect(this.src, this.dst, Matrix.ScaleToFit.FILL);
        setTransform(this.matrix);
    }

    public String dump() {
        return CameraUtils.dump(this.camera);
    }

    public String getColorEffect() {
        return CameraUtils.getEffect(this.camera);
    }

    public int getFramerate() {
        return this.parameters.videoFramerate();
    }

    @Override // com.sightcall.common.MyVideoProducer
    public Point getPreviewSize() {
        return this.previewSize;
    }

    public VideoModule.Profile getProfile() {
        return this.parameters.videoProfile();
    }

    public Bitmap getResizedBitmap(Bitmap bitmap, int i2) {
        int i3;
        float width = bitmap.getWidth() / bitmap.getHeight();
        if (width > 1.0f) {
            i3 = (int) (i2 / width);
        } else {
            i2 = (int) (i2 * width);
            i3 = i2;
        }
        return Bitmap.createScaledBitmap(bitmap, i2, i3, true);
    }

    public Bitmap getResizedBitmapFromMaxPixels(Bitmap bitmap, int i2) {
        float width = bitmap.getWidth() / bitmap.getHeight();
        double dSqrt = Math.sqrt(i2 / width);
        return Bitmap.createScaledBitmap(bitmap, (int) (((double) width) * dSqrt), (int) dSqrt, true);
    }

    public ScaleType getScaleType() {
        return this.scaleType;
    }

    public VideoModule.CameraSource getSource() {
        return this.parameters.cameraSource();
    }

    public float getZoom() {
        return CameraUtils.getZoom(this.camera);
    }

    public boolean isAutofocusAvailable() {
        return CameraUtils.isAutofocusAvailable(this.camera);
    }

    public boolean isAutofocusEnabled() {
        return CameraUtils.isAutoFocusEnabled(this.camera);
    }

    public boolean isColorEffectAvailable(String str) {
        return CameraUtils.isEffectAvailable(this.camera, str);
    }

    public boolean isFlashAvailable() {
        return CameraUtils.isFlashAvailable(this.camera);
    }

    public boolean isFlashEnabled() {
        return CameraUtils.isFlashEnabled(this.camera);
    }

    @Override // com.sightcall.common.MyVideoProducer
    public boolean isPaused() {
        return this.isPaused;
    }

    public boolean isStabilizationAvailable() {
        return CameraUtils.isStabilizationAvailable(this.camera);
    }

    public boolean isStabilizationEnabled() {
        return CameraUtils.isStabilizationEnabled(this.camera);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public boolean isStarted() {
        return this.isStarted;
    }

    public boolean isZoomAvailable() {
        return CameraUtils.isZoomAvailable(this.camera);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onBind(Call call, Sink.Video video) {
        log.d("onBind()");
        this.call = call;
        this.sink = video;
        this.parameters = call.parameters();
        this.dc = Rtcc.instance().dataChannel();
        this.scaleDetector.configure(call.parameters().cameraZoom());
        loadQr();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        Point point = this.previewSize;
        Call call = this.call;
        if (point != null) {
            net.rtccloud.sdk.util.ViewUtils.measureWithPreviewSize(this.measureDim, point, i2, i3);
        } else {
            Dimension dimension = this.measureDim;
            if (call != null) {
                net.rtccloud.sdk.util.ViewUtils.measureWithVideoProfile(dimension, call.parameters().videoProfile(), getResources().getBoolean(R.bool.universal_isPortrait), i2, i3);
            } else {
                net.rtccloud.sdk.util.ViewUtils.measureWithSpecs(dimension, i2, i3);
            }
        }
        Dimension dimension2 = this.measureDim;
        setMeasuredDimension(dimension2.width, dimension2.height);
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler == null || bArr == null) {
            return;
        }
        senderHandler.sendFrame(bArr);
    }

    public void onRequestFocus() {
        Universal.logger().d("onRequestFocus ");
        Camera.Parameters parameters = this.camera.getParameters();
        if (CameraUtils.isFocusModeAvailable(this.camera, "auto")) {
            parameters.setFocusMode("auto");
            this.camera.setParameters(parameters);
            this.camera.autoFocus(new Camera.AutoFocusCallback() { // from class: com.sightcall.universal.internal.view.MyVideoProducerCameraView.13
                @Override // android.hardware.Camera.AutoFocusCallback
                public void onAutoFocus(boolean z, Camera camera) {
                }
            });
        }
    }

    @Override // com.sightcall.universal.internal.view.MyScaleGestureDetector.OnScaleCallback
    public void onScale(float f2) {
        setZoom(f2);
    }

    @Override // android.view.TextureView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateScaling();
        this.advancedAnnotationsWrapper.layoutOver(this, this);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStartProducer() {
        log.d("onStart()");
        this.isStarted = true;
        this.capabilitiesRepository.activateVideo();
        HandlerThread handlerThread = new HandlerThread("SenderHandlerThread");
        handlerThread.start();
        SenderHandler senderHandler = new SenderHandler(this, handlerThread);
        this.senderHandler = senderHandler;
        senderHandler.updateTimeout(this.parameters);
        this.senderHandler.sendEmptyMessage(1);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStopProducer() {
        log.d("onStop()");
        this.isStarted = false;
        this.isPaused = false;
        this.capabilitiesRepository.stopVideo();
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(5);
            this.senderHandler.sendEmptyMessage(6);
            this.senderHandler = null;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onSurfaceTextureAvailable(%d, %d)", Integer.valueOf(i2), Integer.valueOf(i3));
        }
        this.isSurfaceAvailable = true;
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(1);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        log.d("onSurfaceTextureDestroyed() isStarted:" + this.isStarted + " isCapturing:" + this.isCapturing);
        this.isSurfaceAvailable = false;
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler == null) {
            return true;
        }
        senderHandler.sendEmptyMessage(5);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onSurfaceTextureSizeChanged(%d, %d)", Integer.valueOf(i2), Integer.valueOf(i3));
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onUnbind() {
        log.d("onUnbind()");
        this.parameters = new Call.Parameters();
        this.call = null;
        this.sink = null;
        this.dc = null;
        postRequestLayout();
    }

    @Override // com.sightcall.common.MyVideoProducer
    public void pause() {
        log.d("pause()");
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(4);
        }
    }

    public void requestOcr(int i2) {
        log.d("requestOcr()");
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendMessage(senderHandler.obtainMessage(9, i2, 0));
        }
    }

    public void requestSnapshot() {
        log.d("snapshot()");
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(8);
        }
    }

    public void resetZoom() {
        log.d("resetZoom()");
        this.scaleDetector.reset();
        setZoom(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // com.sightcall.common.MyVideoProducer
    public void resume() {
        log.d("resume()");
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(2);
        }
    }

    public void setAutoFocusEnabled(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setAutoFocusEnabled(%b)", Boolean.valueOf(z));
        }
        this.parameters.cameraAutofocus(z);
        CameraUtils.setAutoFocusEnabled(this.camera, z);
    }

    public void setColorEffect(String str) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setEffect(%s)", str);
        }
        this.parameters.cameraEffect(str);
        CameraUtils.setEffect(this.camera, str);
    }

    public void setFlashEnabled(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setFlashEnabled(%b)", Boolean.valueOf(z));
        }
        this.parameters.cameraFlash(z);
        CameraUtils.setFlashEnabled(this.camera, z);
    }

    public void setFramerate(int i2) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setFramerate(%d)", Integer.valueOf(i2));
        }
        this.parameters.videoFramerate(i2);
        CameraUtils.setPreviewFps(this.camera, i2);
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.updateTimeout(this.parameters);
        }
    }

    public void setOnCameraCallback(OnCameraCallback onCameraCallback) {
        this.cameraCallback = onCameraCallback;
    }

    public void setProfile(VideoModule.Profile profile) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setProfile(%s)", profile);
        }
        this.parameters.videoProfile(profile);
        restartOnlyIfAlreadyStarted();
    }

    public void setScaleType(ScaleType scaleType) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setScaleType(%s)", scaleType);
        }
        this.scaleType = scaleType;
        updateScaling();
    }

    public void setSource(VideoModule.CameraSource cameraSource) {
        log.d("setSource(%s)", cameraSource);
        this.parameters.cameraSource(cameraSource);
        if (cameraSource.isFront()) {
            DataChannelAction.SETTED_CAMERA_FRONT.send(this.dc);
        } else {
            DataChannelAction.SETTED_CAMERA_REAR.send(this.dc);
        }
        resetZoom();
        restartOnlyIfAlreadyStarted();
    }

    public void setStabilizationEnabled(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setStabilizationEnabled(%b)", Boolean.valueOf(z));
        }
        this.parameters.cameraStabilization(z);
        CameraUtils.setStabilizationEnabled(this.camera, z);
    }

    public void setZoom(float f2) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setZoom(%f)", Float.valueOf(f2));
        }
        this.parameters.cameraZoom(f2);
        if (this.isCapturing) {
            CameraUtils.setZoom(this.camera, f2);
            f2 = getZoom();
        }
        DataChannelAction.ZOOMED_CAMERA.send(this.dc, Integer.valueOf(ViewUtils.floatPercentToIntPercent(f2)));
    }

    public Bitmap snapshot() {
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler == null) {
            return null;
        }
        byte[] bArr = senderHandler.lastFrame;
        Camera.Size size = this.previewSizeRaw;
        if (bArr == null || bArr.length == 0 || size == null) {
            return null;
        }
        YuvImage yuvImage = new YuvImage(bArr, 17, size.width, size.height, null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(new Rect(0, 0, size.width, size.height), 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        net.rtccloud.sdk.util.Utils.closeSilently(byteArrayOutputStream);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inMutable = true;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        int i2 = this.internalCorrection;
        if (i2 == 90 || i2 == 180 || i2 == 270) {
            Matrix matrix = new Matrix();
            matrix.postRotate(this.internalCorrection);
            bitmapDecodeByteArray = Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, true);
        }
        this.advancedAnnotationsContainer.draw(new Canvas(bitmapDecodeByteArray));
        return bitmapDecodeByteArray;
    }

    public void startLiveQr() {
        isLiveQrActivated = true;
        DataChannelAction.LIVE_QR_STARTED.send();
    }

    public void stopLiveQr() {
        isLiveQrActivated = false;
        DataChannelAction.LIVE_QR_STOPPED.send();
    }

    public MyVideoProducerCameraView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }

    public MyVideoProducerCameraView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }
}

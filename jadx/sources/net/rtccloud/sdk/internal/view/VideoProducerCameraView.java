package net.rtccloud.sdk.internal.view;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.TextureView;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.CameraUtils;
import net.rtccloud.sdk.util.Dimension;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Permission;
import net.rtccloud.sdk.util.ScaleType;
import net.rtccloud.sdk.util.ViewUtils;

/* JADX INFO: loaded from: classes3.dex */
public class VideoProducerCameraView extends TextureView implements VideoProducer, TextureView.SurfaceTextureListener, Camera.PreviewCallback {
    private Call call;
    private Camera camera;
    private OnCameraCallback cameraCallback;
    private final RectF dst;
    private int internalCorrection;
    private boolean isCapturing;
    private boolean isPaused;
    private boolean isStarted;
    private boolean isSurfaceAvailable;
    private final Matrix matrix;
    private final Dimension measureDim;
    private OrientationEventListener orientationEventListener;
    private Call.Parameters parameters;
    private Point previewSize;
    private Camera.Size previewSizeRaw;
    private ScaleType scaleType;
    private SenderHandler senderHandler;
    private Sink.Video sink;
    private final RectF src;
    private Handler uiHandler;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_PRODUCER);
    private static final Permission[] PERMISSIONS = {Permission.CAMERA};
    private static final WeakHashMap<Call, Pair<ByteBuffer, ByteBuffer>> buffers = new WeakHashMap<>(1);

    public interface OnCameraCallback {
        void onCameraPause();

        void onCameraResume();

        void onCameraStart();

        void onCameraStop();
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
        private final WeakReference<VideoProducerCameraView> reference;
        private long timeout;

        public SenderHandler(VideoProducerCameraView videoProducerCameraView, HandlerThread handlerThread) {
            super(handlerThread.getLooper());
            this.timeout = 1000L;
            this.reference = new WeakReference<>(videoProducerCameraView);
            this.handlerThread = handlerThread;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendFrame(byte[] bArr) {
            VideoProducerCameraView videoProducerCameraView = this.reference.get();
            if (videoProducerCameraView == null) {
                return;
            }
            Sink.Video video = videoProducerCameraView.sink;
            Camera.Size size = videoProducerCameraView.previewSizeRaw;
            if (!videoProducerCameraView.isStarted || videoProducerCameraView.isPaused || video == null || size == null) {
                return;
            }
            this.lastFrame = bArr;
            video.push(bArr, size.width, size.height, 0, videoProducerCameraView.internalCorrection, 2);
            Camera camera = videoProducerCameraView.camera;
            if (camera != null) {
                camera.addCallbackBuffer(bArr);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendPause() {
            VideoProducerCameraView videoProducerCameraView = this.reference.get();
            if (videoProducerCameraView == null) {
                return;
            }
            Sink.Video video = videoProducerCameraView.sink;
            Camera.Size size = videoProducerCameraView.previewSizeRaw;
            if (!videoProducerCameraView.isStarted || !videoProducerCameraView.isPaused || this.lastFrame == null || video == null || size == null) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            boolean zPush = video.push(this.lastFrame, size.width, size.height, 0, videoProducerCameraView.internalCorrection, 2);
            long jMax = this.timeout;
            if (zPush) {
                jMax = Math.max(0L, jMax - (SystemClock.elapsedRealtime() - jElapsedRealtime));
            }
            sendEmptyMessageDelayed(7, jMax);
        }

        @Override // android.os.Handler
        public synchronized void handleMessage(Message message) {
            VideoProducerCameraView videoProducerCameraView = this.reference.get();
            if (videoProducerCameraView != null) {
                int i2 = message.what;
                if (i2 == 1) {
                    videoProducerCameraView.doStart();
                    return;
                }
                if (i2 == 2) {
                    videoProducerCameraView.doResume();
                    return;
                }
                if (i2 == 3) {
                    videoProducerCameraView.doStop();
                    videoProducerCameraView.doStart();
                    return;
                } else if (i2 == 4) {
                    videoProducerCameraView.doPause();
                    return;
                } else if (i2 == 5) {
                    videoProducerCameraView.doStop();
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

    public VideoProducerCameraView(Context context) {
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
    public synchronized void doPause() {
        Camera camera;
        log.d("doPause()");
        SenderHandler senderHandler = this.senderHandler;
        if (this.isCapturing && senderHandler != null && (camera = this.camera) != null) {
            this.isPaused = true;
            camera.stopPreview();
            senderHandler.sendPause();
            CameraUtils.setFlashEnabled(this.camera, false);
            this.uiHandler.post(new Runnable() { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.5
                @Override // java.lang.Runnable
                public void run() {
                    if (VideoProducerCameraView.this.cameraCallback != null) {
                        VideoProducerCameraView.this.cameraCallback.onCameraPause();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void doResume() {
        try {
            log.d("doResume()");
            Camera camera = this.camera;
            SenderHandler senderHandler = this.senderHandler;
            if (this.isCapturing && senderHandler != null && camera != null) {
                this.isPaused = false;
                senderHandler.removeCallbacksAndMessages(null);
                try {
                    camera.addCallbackBuffer(senderHandler.lastFrame);
                    camera.setPreviewCallbackWithBuffer(this);
                    camera.startPreview();
                    if (this.parameters.cameraFlash()) {
                        CameraUtils.setFlashEnabled(this.camera, true);
                    }
                    this.uiHandler.post(new Runnable() { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.6
                        @Override // java.lang.Runnable
                        public void run() {
                            if (VideoProducerCameraView.this.cameraCallback != null) {
                                VideoProducerCameraView.this.cameraCallback.onCameraResume();
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
    public synchronized void doStart() {
        OldLogger oldLogger = log;
        oldLogger.d("doStart()");
        if (this.isStarted && this.isSurfaceAvailable && !this.isCapturing) {
            Preconditions.enforcePermissions(oldLogger, getContext(), getClass().getSimpleName(), PERMISSIONS);
            this.isCapturing = true;
            this.isPaused = false;
            Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
            Camera cameraInitCamera = null;
            try {
                cameraInitCamera = CameraUtils.initCamera(this.parameters, null, defaultDisplay);
            } catch (RuntimeException e2) {
                log.e("Unable to init Camera", e2);
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
                this.camera = cameraInitCamera;
                this.previewSizeRaw = previewSize;
                this.internalCorrection = CameraUtils.getInternalPreviewCorrection(this.parameters.cameraSource(), defaultDisplay);
                int rotation = defaultDisplay.getRotation();
                int i2 = this.parameters.cameraSource().orientation % Sink.ORIENTATION_180;
                if ((i2 == 0 && (rotation == 0 || rotation == 2)) || (i2 == 90 && (rotation == 1 || rotation == 3))) {
                    this.previewSize = new Point(previewSize.width, previewSize.height);
                } else {
                    this.previewSize = new Point(previewSize.height, previewSize.width);
                }
                this.uiHandler.post(new Runnable() { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.3
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoProducerCameraView.this.updateScaling();
                        VideoProducerCameraView.this.requestLayout();
                        if (VideoProducerCameraView.this.cameraCallback != null) {
                            VideoProducerCameraView.this.cameraCallback.onCameraStart();
                        }
                    }
                });
                this.orientationEventListener.enable();
            } catch (Exception e3) {
                log.e("Error while starting the preview", e3);
                this.isCapturing = false;
                cameraInitCamera.release();
            }
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
                Camera camera = this.camera;
                if (camera != null) {
                    this.camera = null;
                    camera.setPreviewCallbackWithBuffer(null);
                    camera.stopPreview();
                    camera.release();
                }
                this.uiHandler.post(new Runnable() { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.4
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoProducerCameraView.this.requestLayout();
                        if (VideoProducerCameraView.this.cameraCallback != null) {
                            VideoProducerCameraView.this.cameraCallback.onCameraStop();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.uiHandler = new Handler();
        setSurfaceTextureListener(this);
        this.orientationEventListener = new OrientationEventListener(getContext(), 3) { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.1
            private final Display display;
            private int previousRotation;

            {
                Display defaultDisplay = ((WindowManager) VideoProducerCameraView.this.getContext().getSystemService("window")).getDefaultDisplay();
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
                    VideoProducerCameraView.this.restartOnlyIfAlreadyStarted();
                }
                this.previousRotation = rotation;
            }
        };
    }

    private void postRequestLayout() {
        post(new Runnable() { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.2
            @Override // java.lang.Runnable
            public void run() {
                VideoProducerCameraView.this.requestLayout();
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
        ViewUtils.applyScalingTo(scaleType, rectF, f2, f3, rectF2.right, rectF2.bottom);
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

    public Point getPreviewSize() {
        return this.previewSize;
    }

    public VideoModule.Profile getProfile() {
        return this.parameters.videoProfile();
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
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        Point point = this.previewSize;
        Call call = this.call;
        if (point != null) {
            ViewUtils.measureWithPreviewSize(this.measureDim, point, i2, i3);
        } else {
            Dimension dimension = this.measureDim;
            if (call != null) {
                ViewUtils.measureWithVideoProfile(dimension, call.parameters().videoProfile(), i2, i3);
            } else {
                ViewUtils.measureWithSpecs(dimension, i2, i3);
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
        log.d("onRequestFocus()");
        Camera.Parameters parameters = this.camera.getParameters();
        if (CameraUtils.isFocusModeAvailable(this.camera, "auto")) {
            parameters.setFocusMode("auto");
            this.camera.setParameters(parameters);
            this.camera.autoFocus(new Camera.AutoFocusCallback() { // from class: net.rtccloud.sdk.internal.view.VideoProducerCameraView.7
                @Override // android.hardware.Camera.AutoFocusCallback
                public void onAutoFocus(boolean z, Camera camera) {
                }
            });
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateScaling();
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStartProducer() {
        log.d("onStart()");
        this.isStarted = true;
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
        postRequestLayout();
    }

    public void pause() {
        log.d("pause()");
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(4);
        }
    }

    public void resetZoom() {
        log.d("resetZoom()");
        setZoom(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

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
        }
    }

    public VideoProducerCameraView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.parameters = new Call.Parameters();
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }

    public VideoProducerCameraView(Context context, AttributeSet attributeSet, int i2) {
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

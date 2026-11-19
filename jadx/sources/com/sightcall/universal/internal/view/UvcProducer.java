package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.Surface;
import android.view.TextureView;
import com.sightcall.common.DataChannelAction;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.internal.ui.ScreenshareProducerMode;
import com.sightcall.universal.internal.util.Snapshots;
import com.sightcall.universal.model.CallParameters;
import com.sightcall.universal.model.Session;
import com.sightcall.uvc.Camera;
import com.sightcall.uvc.Device;
import com.sightcall.uvc.DeviceListener;
import com.sightcall.uvc.DeviceManager;
import com.sightcall.uvc.FrameCallback;
import com.sightcall.uvc.Size;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.internal.view.VideoProducerCameraView;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class UvcProducer implements MyVideoProducer, DeviceListener, MyScaleGestureDetector.OnScaleCallback {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_PRODUCER);
    private Call call;
    private WeakReference<MyVideoProducerCameraView.OnCameraCallback> cameraCallback;
    private final Context context;
    private final Device device;
    private boolean isCapturing;
    private boolean isPaused;
    private boolean isStarted;
    private Point previewSize;
    MyScaleGestureDetector scaleDetector;
    private SenderHandler senderHandler;
    private final Session session;
    private Sink.Video sink;
    private Surface surface;
    private SurfaceTexture surfaceTexture;
    private Call.Parameters parameters = new Call.Parameters();
    private WeakReference<TextureView> textureViewReference = new WeakReference<>(null);
    private final Handler uiHandler = new Handler(Looper.getMainLooper());

    public static class SenderHandler extends Handler implements FrameCallback {
        private static final int ACTION_PAUSE = 3;
        private static final int ACTION_RESTART = 5;
        private static final int ACTION_RESUME = 4;
        private static final int ACTION_SEND_FRAME = 6;
        private static final int ACTION_SNAPSHOT = 7;
        private static final int ACTION_START = 1;
        private static final int ACTION_STOP = 2;
        private static final int ACTION_TEARDOWN = -1;
        private static final int ACTION_UPDATE = 8;
        private static final long TIMEOUT = 33;
        private final HandlerThread handlerThread;
        private ByteBuffer lastFrame;
        private final WeakReference<UvcProducer> reference;

        public SenderHandler(UvcProducer uvcProducer, HandlerThread handlerThread) {
            super(handlerThread.getLooper());
            this.reference = new WeakReference<>(uvcProducer);
            this.handlerThread = handlerThread;
        }

        private void sendPausedFrame(ByteBuffer byteBuffer) {
            Sink.Video video;
            Point point;
            UvcProducer uvcProducer = this.reference.get();
            if (uvcProducer == null || (video = uvcProducer.sink) == null || (point = uvcProducer.previewSize) == null || !uvcProducer.isStarted || !uvcProducer.isPaused) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            boolean zPush = video.push(byteBuffer, point.x, point.y, 0, 0, 2);
            long jMax = TIMEOUT;
            if (zPush) {
                jMax = Math.max(0L, TIMEOUT - (SystemClock.elapsedRealtime() - jElapsedRealtime));
            }
            sendMessageDelayed(Message.obtain(this, 6, byteBuffer), jMax);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            UvcProducer uvcProducer = this.reference.get();
            switch (message.what) {
                case -1:
                    removeCallbacksAndMessages(null);
                    this.lastFrame = null;
                    this.handlerThread.quit();
                    break;
                case 1:
                    removeMessages(1);
                    if (uvcProducer != null) {
                        uvcProducer.doStart();
                    }
                    break;
                case 2:
                    removeMessages(2);
                    if (uvcProducer != null) {
                        uvcProducer.doStop();
                    }
                    break;
                case 3:
                    if (uvcProducer != null) {
                        uvcProducer.doPause();
                    }
                    break;
                case 4:
                    if (uvcProducer != null) {
                        uvcProducer.doResume();
                    }
                    break;
                case 5:
                    if (uvcProducer != null) {
                        uvcProducer.doStop();
                        uvcProducer.doStart();
                    }
                    break;
                case 6:
                    Object obj = message.obj;
                    if (!(obj instanceof ByteBuffer)) {
                        ByteBuffer byteBuffer = this.lastFrame;
                        if (byteBuffer != null) {
                            sendPausedFrame(byteBuffer);
                        }
                    } else {
                        sendPausedFrame((ByteBuffer) obj);
                    }
                    break;
                case 7:
                    if (uvcProducer != null) {
                        uvcProducer.doSnapshot();
                    }
                    break;
                case 8:
                    if (uvcProducer != null) {
                        uvcProducer.doUpdate();
                    }
                    break;
            }
        }

        @Override // com.sightcall.uvc.FrameCallback
        public void onFrame(ByteBuffer byteBuffer) {
            Sink.Video video;
            Point point;
            UvcProducer uvcProducer = this.reference.get();
            if (uvcProducer == null || (video = uvcProducer.sink) == null || (point = uvcProducer.previewSize) == null || !uvcProducer.isStarted || uvcProducer.isPaused || byteBuffer == null) {
                return;
            }
            ByteBuffer byteBuffer2 = this.lastFrame;
            if (byteBuffer2 == null || byteBuffer2.capacity() != byteBuffer.capacity()) {
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(byteBuffer.capacity());
                this.lastFrame = byteBufferAllocateDirect;
                byteBufferAllocateDirect.order(byteBuffer.order());
            } else {
                this.lastFrame.rewind();
            }
            video.push(byteBuffer, point.x, point.y, 0, 0, 2);
            this.lastFrame.put(byteBuffer);
        }

        public void request(int i2) {
            sendEmptyMessage(i2);
        }
    }

    public UvcProducer(Context context, Device device, Session session) {
        this.context = context;
        this.device = device;
        this.scaleDetector = new MyScaleGestureDetector(context, this);
        this.session = session;
        DeviceManager.instance(context).addDeviceListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doPause() {
        Device device;
        Logger.INSTANCE.d("doPause() called", null);
        if (!this.isCapturing || this.senderHandler == null || (device = this.device) == null || !device.isConnected()) {
            return;
        }
        this.isPaused = true;
        this.device.getCamera().setPreviewDisplay((Surface) null);
        this.senderHandler.sendEmptyMessage(6);
        DataChannelAction.STARTED_HOLD.send();
        this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.UvcProducer.4
            @Override // java.lang.Runnable
            public void run() {
                VideoProducerCameraView.OnCameraCallback onCameraCallback;
                if (UvcProducer.this.cameraCallback == null || (onCameraCallback = (VideoProducerCameraView.OnCameraCallback) UvcProducer.this.cameraCallback.get()) == null) {
                    return;
                }
                onCameraCallback.onCameraPause();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doResume() {
        Logger logger = Logger.INSTANCE;
        logger.d("doResume() called", null);
        if (this.call == null) {
            logger.e("doResume: call is null", null);
            return;
        }
        if (!this.isStarted) {
            logger.e("doResume: !isStarted", null);
            return;
        }
        if (!this.isCapturing) {
            logger.e("doResume: !isCapturing", null);
            return;
        }
        if (this.surfaceTexture == null) {
            logger.e("doResume: surfaceTexture is null", null);
            return;
        }
        if (this.surface == null) {
            logger.e("doResume: surface is null", null);
            return;
        }
        Device device = this.device;
        if (device == null) {
            logger.e("doResume: device is null", null);
            return;
        }
        this.isPaused = false;
        try {
            device.getCamera().setPreviewDisplay(this.surface);
            DataChannelAction.STOPPED_HOLD.send();
        } catch (Exception e2) {
            log.e("Error while resuming the preview", e2);
            this.isCapturing = false;
            this.previewSize = null;
        }
        this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.UvcProducer.3
            @Override // java.lang.Runnable
            public void run() {
                VideoProducerCameraView.OnCameraCallback onCameraCallback;
                if (UvcProducer.this.cameraCallback == null || (onCameraCallback = (VideoProducerCameraView.OnCameraCallback) UvcProducer.this.cameraCallback.get()) == null) {
                    return;
                }
                onCameraCallback.onCameraResume();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSnapshot() {
        Device device;
        Logger.INSTANCE.d("doSnapshot() called", null);
        if (!this.isCapturing || this.senderHandler == null || (device = this.device) == null || !device.isConnected()) {
            return;
        }
        final File fileSaveSnapshot = saveSnapshot(this.context, this.senderHandler.lastFrame, this.previewSize);
        Call call = Rtcc.instance().call().get();
        if (call == null || fileSaveSnapshot == null || call.screenshare().isReceiving()) {
            return;
        }
        Session session = this.session;
        if (session != null) {
            CallParameters callParameters = session.parameters;
            callParameters.screenshareProducerMode = ScreenshareProducerMode.IMAGE_CAMERA;
            callParameters.screenshareContentUri = Uri.fromFile(fileSaveSnapshot);
        }
        this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.UvcProducer.5
            @Override // java.lang.Runnable
            public void run() {
                MyVideoProducerCameraView.OnCameraCallback onCameraCallback;
                if (UvcProducer.this.cameraCallback == null || (onCameraCallback = (MyVideoProducerCameraView.OnCameraCallback) UvcProducer.this.cameraCallback.get()) == null) {
                    return;
                }
                onCameraCallback.onCameraSnapshot(fileSaveSnapshot);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doStart() {
        int i2;
        Logger logger = Logger.INSTANCE;
        logger.d("doStart() called", null);
        if (this.call == null) {
            logger.e("doStart: call is null", null);
            return;
        }
        if (!this.isStarted) {
            logger.e("doStart: !isStarted", null);
            return;
        }
        if (this.isCapturing) {
            logger.e("doStart: isCapturing", null);
            return;
        }
        if (this.surfaceTexture == null) {
            logger.e("doStart: surfaceTexture is null", null);
            return;
        }
        if (this.surface == null) {
            logger.e("doStart: surface is null", null);
            return;
        }
        Device device = this.device;
        if (device == null) {
            logger.e("doStart: device is null", null);
            return;
        }
        if (!device.isConnected()) {
            logger.e("doStart: device is not connected", null);
            return;
        }
        Camera camera = this.device.getCamera();
        try {
            camera.setPreviewDisplay(this.surface);
            VideoModule.Profile profileVideoProfile = this.parameters.videoProfile();
            if (profileVideoProfile != null) {
                camera.setPreviewSize(profileVideoProfile.high, profileVideoProfile.low);
                Size previewSize = camera.getPreviewSize();
                if (previewSize != null && ((i2 = previewSize.width) != profileVideoProfile.high || previewSize.height != profileVideoProfile.low)) {
                    camera.setPreviewSize(i2, previewSize.height);
                }
            }
            camera.startPreview();
            camera.updateCameraParams();
            camera.setFrameCallback(this.senderHandler, 4);
            camera.setZoom((int) (this.parameters.cameraZoom() * 100.0f));
            camera.setAutoFocus(this.parameters.cameraAutofocus());
            this.isCapturing = true;
            this.isPaused = false;
            Size previewSize2 = camera.getPreviewSize();
            this.previewSize = previewSize2 == null ? new Point(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT) : new Point(previewSize2.width, previewSize2.height);
            DataChannelAction.STARTED_CAMERA.send();
            this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.UvcProducer.1
                @Override // java.lang.Runnable
                public void run() {
                    VideoProducerCameraView.OnCameraCallback onCameraCallback;
                    if (UvcProducer.this.cameraCallback == null || (onCameraCallback = (VideoProducerCameraView.OnCameraCallback) UvcProducer.this.cameraCallback.get()) == null) {
                        return;
                    }
                    onCameraCallback.onCameraStart();
                }
            });
        } catch (Exception e2) {
            Logger.INSTANCE.e("doStart: ", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doStop() {
        Logger logger = Logger.INSTANCE;
        logger.d("doStop() called", null);
        Device device = this.device;
        if (device == null) {
            logger.e("doStart: device is null", null);
            return;
        }
        if (!device.isConnected()) {
            logger.e("doStop: device is not connected", null);
            return;
        }
        DataChannelAction.STOPPED_CAMERA.send();
        Camera camera = this.device.getCamera();
        try {
            camera.setFrameCallback(null, 4);
            camera.stopPreview();
            this.isCapturing = false;
        } catch (Exception e2) {
            Logger.INSTANCE.e("doStop: ", e2);
        }
        this.previewSize = null;
        this.isPaused = false;
        this.uiHandler.post(new Runnable() { // from class: com.sightcall.universal.internal.view.UvcProducer.2
            @Override // java.lang.Runnable
            public void run() {
                VideoProducerCameraView.OnCameraCallback onCameraCallback;
                if (UvcProducer.this.cameraCallback == null || (onCameraCallback = (VideoProducerCameraView.OnCameraCallback) UvcProducer.this.cameraCallback.get()) == null) {
                    return;
                }
                onCameraCallback.onCameraStop();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doUpdate() {
        int i2;
        Logger logger = Logger.INSTANCE;
        logger.d("doUpdate() called", null);
        Device device = this.device;
        if (device == null) {
            logger.e("doStart: device is null", null);
            return;
        }
        if (!device.isConnected()) {
            logger.e("doUpdate: device is not connected", null);
            return;
        }
        if (!this.isCapturing) {
            logger.e("doUpdate: !isCapturing", null);
            return;
        }
        Camera camera = this.device.getCamera();
        if (!this.isPaused) {
            camera.stopPreview();
        }
        camera.setFrameCallback(null, 4);
        this.isCapturing = false;
        camera.setPreviewDisplay(this.surface);
        VideoModule.Profile profileVideoProfile = this.parameters.videoProfile();
        if (profileVideoProfile != null) {
            camera.setPreviewSize(profileVideoProfile.high, profileVideoProfile.low);
            Size previewSize = camera.getPreviewSize();
            if (previewSize != null && ((i2 = previewSize.width) != profileVideoProfile.high || previewSize.height != profileVideoProfile.low)) {
                camera.setPreviewSize(i2, previewSize.height);
            }
        }
        Size previewSize2 = camera.getPreviewSize();
        camera.startPreview();
        camera.updateCameraParams();
        camera.setFrameCallback(this.senderHandler, 4);
        camera.setZoom((int) (this.parameters.cameraZoom() * 100.0f));
        camera.setAutoFocus(this.parameters.cameraAutofocus());
        this.previewSize = previewSize2 == null ? new Point(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT) : new Point(previewSize2.width, previewSize2.height);
        this.isCapturing = true;
    }

    private void restartOnlyIfAlreadyStarted() {
        SenderHandler senderHandler;
        if (this.isStarted && this.isCapturing && (senderHandler = this.senderHandler) != null) {
            senderHandler.request(5);
        }
    }

    private static File saveSnapshot(Context context, ByteBuffer byteBuffer, Point point) {
        log.d("Snapshot PictureSize:" + point.x + "x" + point.y);
        try {
            return Snapshots.save(context, byteBuffer, point);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void update() {
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(8);
        }
    }

    public Device device() {
        return this.device;
    }

    @Override // com.sightcall.common.MyVideoProducer
    public Point getPreviewSize() {
        return this.previewSize;
    }

    public VideoModule.Profile getProfile() {
        return this.parameters.videoProfile();
    }

    public float getZoom() {
        Device device = this.device;
        return (device == null || !device.isConnected()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : this.device.getCamera().getZoom() / 100.0f;
    }

    public boolean isAutofocusAvailable() {
        return true;
    }

    public boolean isAutofocusEnabled() {
        return this.parameters.cameraAutofocus();
    }

    @Override // com.sightcall.common.MyVideoProducer
    public boolean isPaused() {
        return this.isPaused;
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public boolean isStarted() {
        return this.isStarted;
    }

    public boolean isZoomAvailable() {
        return isStarted();
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onBind(Call call, Sink.Video video) {
        Logger.INSTANCE.d("onBind() called with: call = [" + call + "], sink = [" + video + "]", null);
        this.call = call;
        this.sink = video;
        this.parameters = call.parameters();
        this.scaleDetector.configure(call.parameters().cameraZoom());
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceAttached(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceDetached(Device device) {
        if (this.device != device) {
            return;
        }
        DeviceManager.instance(this.context).removeDeviceListener(this);
        Call call = this.call;
        if (call != null) {
            VideoModule videoModuleVideo = call.video();
            if (videoModuleVideo.producer() == this) {
                videoModuleVideo.releaseProducer();
            }
        }
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionDenied(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionGranted(Device device) {
        Logger.INSTANCE.d("onDevicePermissionGranted() called with: device = [" + device + "]", null);
        if (!this.isStarted || this.isCapturing) {
            return;
        }
        this.senderHandler.request(1);
    }

    @Override // com.sightcall.universal.internal.view.MyScaleGestureDetector.OnScaleCallback
    public void onScale(float f2) {
        setZoom(f2);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStartProducer() {
        Logger.INSTANCE.d("onStart() called", null);
        this.isStarted = true;
        HandlerThread handlerThread = new HandlerThread("UsbSenderHandlerThread");
        handlerThread.start();
        SenderHandler senderHandler = new SenderHandler(this, handlerThread);
        this.senderHandler = senderHandler;
        senderHandler.request(1);
        DataChannelAction.USB_CAMERA_ENABLED.send();
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onStopProducer() {
        Logger logger = Logger.INSTANCE;
        logger.d("onStop() called", null);
        this.isStarted = false;
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.request(2);
            this.senderHandler.request(-1);
            this.senderHandler = null;
        }
        this.textureViewReference.clear();
        if (this.surfaceTexture != null) {
            this.surfaceTexture = null;
        }
        if (this.surface != null) {
            logger.d("onStop: surface.release()", null);
            this.surface.release();
            this.surface = null;
        }
    }

    public void onSurfaceTextureAvailable(TextureView textureView, SurfaceTexture surfaceTexture) {
        Logger.INSTANCE.d("onSurfaceTextureAvailable() called with: textureView = [" + textureView + "], surface = [" + surfaceTexture + "]", null);
        this.textureViewReference = new WeakReference<>(textureView);
        if (this.surfaceTexture != surfaceTexture) {
            this.surfaceTexture = surfaceTexture;
            this.surface = new Surface(surfaceTexture);
        }
        if (!this.isStarted || this.isCapturing) {
            return;
        }
        this.senderHandler.request(1);
    }

    @Override // net.rtccloud.sdk.VideoProducer
    public void onUnbind() {
        Logger.INSTANCE.d("onUnbind() called", null);
        this.call = null;
        this.sink = null;
        this.parameters = new Call.Parameters();
        WeakReference<MyVideoProducerCameraView.OnCameraCallback> weakReference = this.cameraCallback;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    @Override // com.sightcall.common.MyVideoProducer
    public void pause() {
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(3);
        }
    }

    public void resetZoom() {
        log.d("resetZoom()");
        this.scaleDetector.reset();
        setZoom(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // com.sightcall.common.MyVideoProducer
    public void resume() {
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(4);
        }
    }

    public void setAutoFocusEnabled(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setAutoFocusEnabled(%b)", Boolean.valueOf(z));
        }
        this.parameters.cameraAutofocus(z);
        update();
    }

    public void setOnCameraCallback(MyVideoProducerCameraView.OnCameraCallback onCameraCallback) {
        this.cameraCallback = new WeakReference<>(onCameraCallback);
    }

    public void setProfile(VideoModule.Profile profile) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setProfile(%s)", profile);
        }
        this.parameters.videoProfile(profile);
        update();
    }

    public void setZoom(float f2) {
        Device device;
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setZoom(%f)", Float.valueOf(f2));
        }
        this.parameters.cameraZoom(f2);
        if (this.isCapturing && (device = this.device) != null && device.isConnected()) {
            this.device.getCamera().setZoom((int) (f2 * 100.0f));
            f2 = getZoom();
        }
        DataChannelAction.ZOOMED_CAMERA.send(Integer.valueOf(ViewUtils.floatPercentToIntPercent(f2)));
    }

    public void snapshot() {
        SenderHandler senderHandler = this.senderHandler;
        if (senderHandler != null) {
            senderHandler.sendEmptyMessage(7);
        }
    }

    public SurfaceTexture surfaceTexture() {
        return this.surfaceTexture;
    }
}

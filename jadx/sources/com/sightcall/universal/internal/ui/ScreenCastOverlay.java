package com.sightcall.universal.internal.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.di.SDKInjector;
import java.nio.ByteBuffer;
import java.util.concurrent.Semaphore;
import javax.inject.Inject;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.ScreenshareProducer;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenCastOverlay implements ScreenshareProducer {
    private static volatile ScreenCastOverlay singleton;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private boolean isStarted;
    private final Recorder recorder;

    public static class Recorder {
        private final Context context;
        private Intent data;
        private Handler handler;
        private HandlerThread handlerThread;
        private ImageReader imageReader;
        private boolean isRecording;
        private final Object lock = new Object();
        private final MediaProjection.Callback mediaProjectionCallback = new MediaProjection.Callback() { // from class: com.sightcall.universal.internal.ui.ScreenCastOverlay.Recorder.1
            @Override // android.media.projection.MediaProjection.Callback
            public void onStop() {
                Logger.INSTANCE.e("screenShare stopped");
                super.onStop();
            }
        };
        private ScreenshareModule.Profile profile;
        private MediaProjection projection;
        private int resultCode;
        private Sink.Screenshare sink;
        private VirtualDisplay virtualDisplay;

        public Recorder(Context context) {
            this.context = context;
        }

        private static Point getRecordingSize(DisplayMetrics displayMetrics, ScreenshareModule.Profile profile) {
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            if (i2 * i3 <= (profile == null ? 2073600 : Math.min(Sink.Screenshare.MAX_RESOLUTION, profile.high * profile.low))) {
                return new Point(i2, i3);
            }
            double dScalingFactor = Sink.scalingFactor(i2, i3, Sink.Screenshare.MAX_RESOLUTION);
            return new Point((int) (((double) i2) * dScalingFactor), (int) (((double) i3) * dScalingFactor));
        }

        public boolean isReady() {
            return this.data != null;
        }

        public void load(int i2, Intent intent) {
            this.resultCode = i2;
            this.data = intent;
        }

        public void onBind(Sink.Screenshare screenshare) {
            this.sink = screenshare;
        }

        public void onUnbind() {
            this.sink = null;
        }

        public boolean restart() {
            if (!isReady()) {
                return false;
            }
            if (this.isRecording) {
                stop();
            }
            start();
            return true;
        }

        public void setProfile(ScreenshareModule.Profile profile) {
            this.profile = profile;
        }

        public boolean start() {
            if (!isReady() || this.isRecording) {
                return false;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
            Point recordingSize = getRecordingSize(displayMetrics, this.profile);
            int i2 = recordingSize.x;
            int i3 = recordingSize.y;
            HandlerThread handlerThread = new HandlerThread("ScreencastHandlerThread");
            this.handlerThread = handlerThread;
            handlerThread.start();
            this.handler = new Handler(this.handlerThread.getLooper());
            MediaProjection mediaProjection = ((MediaProjectionManager) this.context.getSystemService("media_projection")).getMediaProjection(this.resultCode, this.data);
            this.projection = mediaProjection;
            mediaProjection.registerCallback(this.mediaProjectionCallback, this.handler);
            ImageReader imageReaderNewInstance = ImageReader.newInstance(i2, i3, 1, 2);
            this.imageReader = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.sightcall.universal.internal.ui.ScreenCastOverlay.Recorder.2
                private final Semaphore semaphore = new Semaphore(1);

                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader imageReader) {
                    synchronized (Recorder.this.lock) {
                        Semaphore semaphore = null;
                        try {
                            Image imageAcquireLatestImage = imageReader.acquireLatestImage();
                            if (imageAcquireLatestImage == null) {
                                if (imageAcquireLatestImage != null) {
                                }
                            }
                            try {
                                if (Recorder.this.isRecording && this.semaphore.tryAcquire()) {
                                    semaphore = this.semaphore;
                                    int height = imageReader.getHeight();
                                    int width = imageReader.getWidth();
                                    Image.Plane plane = imageAcquireLatestImage.getPlanes()[0];
                                    ByteBuffer buffer = plane.getBuffer();
                                    if (Recorder.this.sink != null && buffer != null) {
                                        Recorder.this.sink.push(buffer, width, height, plane.getRowStride(), 0, 3);
                                    }
                                    imageAcquireLatestImage.close();
                                    if (semaphore != null) {
                                        semaphore.release();
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                try {
                                    imageAcquireLatestImage.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                            imageAcquireLatestImage.close();
                        } catch (Exception e2) {
                            Universal.logger().e(e2);
                        }
                    }
                }
            }, this.handler);
            this.virtualDisplay = this.projection.createVirtualDisplay("universal_screencast", i2, i3, displayMetrics.densityDpi, 8, this.imageReader.getSurface(), null, null);
            this.isRecording = true;
            return true;
        }

        public boolean stop() {
            if (!this.isRecording) {
                return false;
            }
            this.isRecording = false;
            this.imageReader.setOnImageAvailableListener(null, null);
            synchronized (this.lock) {
                this.virtualDisplay.release();
                this.virtualDisplay = null;
                this.projection.stop();
                this.projection = null;
                this.imageReader.close();
                this.imageReader = null;
                this.handlerThread.quit();
                this.handlerThread = null;
                this.handler = null;
            }
            return true;
        }

        public void unload() {
            this.resultCode = 0;
            this.data = null;
        }
    }

    public enum Status {
        SCREEN_CAST_STARTED,
        SCREEN_CAST_STOPPED
    }

    private ScreenCastOverlay(Context context) {
        SDKInjector.getSdkInjector().inject(this);
        this.recorder = new Recorder(context);
    }

    private void doStart() {
        if (this.recorder.start()) {
            DataChannelAction.STARTED_SCREENCAST.send();
            notifyScreenCastEvent(Status.SCREEN_CAST_STARTED);
        }
    }

    private void doStop() {
        if (this.recorder.stop()) {
            DataChannelAction.STOPPED_SCREENCAST.send();
            notifyScreenCastEvent(Status.SCREEN_CAST_STOPPED);
        }
    }

    public static ScreenCastOverlay instance(Context context) {
        if (singleton == null) {
            synchronized (ScreenCastOverlay.class) {
                try {
                    if (singleton == null) {
                        singleton = new ScreenCastOverlay(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return singleton;
    }

    public static void load(Context context, int i2, Intent intent, ScreenshareModule screenshareModule) {
        ScreenCastOverlay screenCastOverlayInstance = instance(context);
        screenCastOverlayInstance.recorder.load(i2, intent);
        screenshareModule.producer(screenCastOverlayInstance);
    }

    public static void unload(Context context) {
        instance(context).recorder.unload();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public boolean isStarted() {
        return this.isStarted;
    }

    public void notifyScreenCastEvent(Status status) {
        Context context = Universal.context();
        Intent intent = new Intent("com.sightcall.SCREENCAST_EVENT");
        intent.setPackage(context.getPackageName());
        intent.putExtra("status", status.name());
        context.getApplicationContext().sendBroadcast(intent);
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onBind(Call call, Sink.Screenshare screenshare) {
        this.recorder.onBind(screenshare);
        this.recorder.setProfile(call.parameters().shareProfile());
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onStart() {
        this.isStarted = true;
        this.capabilitiesRepository.activateScreencast();
        doStart();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onStop() {
        doStop();
        this.isStarted = false;
        this.capabilitiesRepository.stopScreencast();
    }

    @Override // net.rtccloud.sdk.ScreenshareProducer
    public void onUnbind() {
        this.recorder.onUnbind();
    }
}

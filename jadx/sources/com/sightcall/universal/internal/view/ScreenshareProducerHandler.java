package com.sightcall.universal.internal.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenshareProducerHandler extends Handler {
    private static final int CAPTURE = 1;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREEN_SHARE);
    private Bitmap bitmap;
    private Canvas canvas;
    private boolean isTeardown;
    private final SenderHandler senderHandler;
    private final HandlerThread senderHandlerThread;
    private final Sink.Screenshare sink;
    private final WeakReference<View> view;

    public interface ScreenshareProducerHandlerCallback {
        void onScreenshareProducerSend(boolean z);

        void onScreenshareProducerSize(int i2, int i3);

        void onScreenshareProducerSize(int i2, int i3, int i4, int i5);
    }

    public class SenderHandler extends Handler {
        public static final int FINISH = 0;
        public static final int SEND = 1;
        private long timeout;

        public SenderHandler(Looper looper) {
            super(looper);
            this.timeout = 200L;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                if (ScreenshareProducerHandler.this.bitmap != null) {
                    ScreenshareProducerHandler.this.bitmap.recycle();
                    ScreenshareProducerHandler.this.bitmap = null;
                }
                if (ScreenshareProducerHandler.this.canvas != null) {
                    ScreenshareProducerHandler.this.canvas = null;
                }
                ScreenshareProducerHandler.this.senderHandlerThread.quit();
                ScreenshareProducerHandler.this.view.clear();
                return;
            }
            if (i2 != 1) {
                super.handleMessage(message);
                return;
            }
            if (ScreenshareProducerHandler.this.isTeardown) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Sink.Screenshare screenshare = ScreenshareProducerHandler.this.sink;
            Bitmap bitmap = (Bitmap) message.obj;
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            boolean zPush = screenshare.push(bitmap);
            if (bitmap != ScreenshareProducerHandler.this.bitmap) {
                bitmap.recycle();
            }
            if (ScreenshareProducerHandler.this.isTeardown) {
                return;
            }
            long jMax = this.timeout;
            if (zPush) {
                jMax = Math.max(0L, jMax - (SystemClock.elapsedRealtime() - jElapsedRealtime));
            }
            ScreenshareProducerHandler.this.sendEmptyMessageDelayed(1, jMax);
        }

        public void setFps(int i2) {
            this.timeout = 1000 / ((long) i2);
        }
    }

    public ScreenshareProducerHandler(View view, Sink.Screenshare screenshare) {
        super(Looper.getMainLooper());
        this.sink = screenshare;
        this.view = new WeakReference<>(view);
        HandlerThread handlerThread = new HandlerThread("ScreenshareSenderHandlerThread");
        this.senderHandlerThread = handlerThread;
        handlerThread.start();
        SenderHandler senderHandler = new SenderHandler(handlerThread.getLooper());
        this.senderHandler = senderHandler;
        if (view instanceof WebView) {
            senderHandler.setFps(1);
        }
        sendEmptyMessage(1);
    }

    private synchronized void doCapture() {
        double dScalingFactor;
        try {
            if (this.isTeardown) {
                return;
            }
            Bitmap bitmapCreateBitmap = this.bitmap;
            Canvas canvas = this.canvas;
            View view = this.view.get();
            if (view == null) {
                return;
            }
            boolean z = view instanceof WebView;
            int width = view.getWidth();
            int height = view.getHeight();
            int i2 = width * height;
            if (width > 0 && height > 0) {
                if (i2 > 2073600) {
                    dScalingFactor = Sink.scalingFactor(width, height, Sink.Screenshare.MAX_RESOLUTION);
                    width = (int) (((double) width) * dScalingFactor);
                    height = (int) (((double) height) * dScalingFactor);
                } else {
                    dScalingFactor = 1.0d;
                }
                if (canvas == null) {
                    canvas = new Canvas();
                }
                if (bitmapCreateBitmap == null || bitmapCreateBitmap.getWidth() != width || bitmapCreateBitmap.getHeight() != height) {
                    if (bitmapCreateBitmap != null) {
                        bitmapCreateBitmap.recycle();
                    }
                    bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    bitmapCreateBitmap.setHasAlpha(false);
                    canvas.setBitmap(bitmapCreateBitmap);
                }
                if (z) {
                    canvas.save();
                    float f2 = (float) dScalingFactor;
                    canvas.translate((-view.getScrollX()) * f2, (-view.getScrollY()) * f2);
                }
                if (dScalingFactor < 1.0d) {
                    canvas.save();
                    float f3 = (float) dScalingFactor;
                    canvas.scale(f3, f3);
                }
                view.draw(canvas);
                if (dScalingFactor < 1.0d) {
                    canvas.restore();
                }
                if (z) {
                    canvas.restore();
                }
                this.bitmap = bitmapCreateBitmap;
                this.canvas = canvas;
                this.senderHandler.removeMessages(1);
                if (!this.isTeardown) {
                    removeMessages(1);
                    SenderHandler senderHandler = this.senderHandler;
                    senderHandler.sendMessage(senderHandler.obtainMessage(1, bitmapCreateBitmap));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            super.handleMessage(message);
        } else {
            doCapture();
        }
    }

    public void teardown() {
        if (this.isTeardown) {
            return;
        }
        this.isTeardown = true;
        removeCallbacksAndMessages(null);
        this.senderHandler.removeCallbacksAndMessages(null);
        this.senderHandler.sendEmptyMessage(0);
    }
}

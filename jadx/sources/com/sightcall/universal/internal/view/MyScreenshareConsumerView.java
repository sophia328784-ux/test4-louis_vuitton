package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewConfiguration;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.universal.di.SDKInjector;
import javax.inject.Inject;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Frame;
import net.rtccloud.sdk.ScreenshareConsumer;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ScaleType;

/* JADX INFO: loaded from: classes3.dex */
public class MyScreenshareConsumerView extends View implements ScreenshareConsumer {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREENSHARE_CONSUMER);
    private Bitmap bitmap;
    private final Paint bitmapPaint;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private DragGestureDetector dragGestureDetector;
    private DrawingZoneListener drawingZoneListener;
    private final RectF dst;
    private final RectF dstCopy;
    private boolean isStarted;
    private final Runnable requestLayoutRunnable;
    private ScaleGestureDetector scaleGestureDetector;
    private ScaleGestureListener scaleGestureListener;
    private final ScaleType scaleType;
    private ScreenshareModule screenshare;
    private String who;

    public class DragGestureDetector {
        boolean dragging = false;
        float initialSpan;
        float initialX;
        float initialY;
        float lastX;
        float lastY;
        float offsetX;
        float offsetY;
        int touchSlope;

        public DragGestureDetector() {
            this.touchSlope = ViewConfiguration.get(MyScreenshareConsumerView.this.getContext()).getScaledTouchSlop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void constraintsRect() {
            float fHeight = MyScreenshareConsumerView.this.dstCopy.height();
            float height = MyScreenshareConsumerView.this.getHeight();
            MyScreenshareConsumerView myScreenshareConsumerView = MyScreenshareConsumerView.this;
            if (fHeight <= height) {
                float height2 = (myScreenshareConsumerView.getHeight() / 2) - MyScreenshareConsumerView.this.dstCopy.centerY();
                MyScreenshareConsumerView.this.dstCopy.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, height2);
                this.offsetY += height2;
            } else if (myScreenshareConsumerView.dstCopy.top < Call.Parameters.DEFAULT_CAMERA_ZOOM && MyScreenshareConsumerView.this.dstCopy.bottom < MyScreenshareConsumerView.this.getHeight()) {
                float height3 = MyScreenshareConsumerView.this.getHeight() - MyScreenshareConsumerView.this.dstCopy.bottom;
                MyScreenshareConsumerView.this.dstCopy.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, height3);
                this.offsetY += height3;
            } else if (MyScreenshareConsumerView.this.dstCopy.bottom > MyScreenshareConsumerView.this.getHeight() && MyScreenshareConsumerView.this.dstCopy.top > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f2 = -MyScreenshareConsumerView.this.dstCopy.top;
                MyScreenshareConsumerView.this.dstCopy.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2);
                this.offsetY += f2;
            }
            float fWidth = MyScreenshareConsumerView.this.dstCopy.width();
            float width = MyScreenshareConsumerView.this.getWidth();
            MyScreenshareConsumerView myScreenshareConsumerView2 = MyScreenshareConsumerView.this;
            if (fWidth < width) {
                float width2 = (myScreenshareConsumerView2.getWidth() / 2) - MyScreenshareConsumerView.this.dstCopy.centerX();
                MyScreenshareConsumerView.this.dstCopy.offset(width2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                this.offsetX += width2;
            } else if (myScreenshareConsumerView2.dstCopy.left < Call.Parameters.DEFAULT_CAMERA_ZOOM && MyScreenshareConsumerView.this.dstCopy.right < MyScreenshareConsumerView.this.getWidth()) {
                float width3 = MyScreenshareConsumerView.this.getWidth() - MyScreenshareConsumerView.this.dstCopy.right;
                MyScreenshareConsumerView.this.dstCopy.offset(width3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                this.offsetX += width3;
            } else {
                if (MyScreenshareConsumerView.this.dstCopy.right <= MyScreenshareConsumerView.this.getWidth() || MyScreenshareConsumerView.this.dstCopy.left <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    return;
                }
                float f3 = -MyScreenshareConsumerView.this.dstCopy.left;
                MyScreenshareConsumerView.this.dstCopy.offset(f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                this.offsetX += f3;
            }
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            int pointerCount = motionEvent.getPointerCount();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.lastX = x;
                this.lastY = y;
            } else if (actionMasked == 1) {
                this.dragging = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    this.dragging = false;
                } else if (actionMasked == 5) {
                    this.initialX = x;
                    this.initialY = y;
                    this.initialSpan = MyScreenshareConsumerView.this.scaleGestureDetector.getCurrentSpan();
                    MyScreenshareConsumerView.this.scaleGestureDetector.getFocusX();
                    MyScreenshareConsumerView.this.scaleGestureDetector.getFocusY();
                }
            } else if (pointerCount != 1) {
                float f2 = x - this.initialX;
                float f3 = y - this.initialY;
                if (this.dragging || Math.abs(f2) > this.touchSlope || Math.abs(f3) > this.touchSlope) {
                    this.dragging = true;
                    this.offsetX = (x - this.lastX) + this.offsetX;
                    this.offsetY = (y - this.lastY) + this.offsetY;
                    MyScreenshareConsumerView.this.postInvalidate();
                }
                this.lastX = x;
                this.lastY = y;
            }
            return true;
        }
    }

    public interface DrawingZoneListener {
        void onDrawingZoneUpdated(RectF rectF);
    }

    public class ScaleGestureListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private float scale = 1.0f;
        private float minScale = 1.0f;
        private float maxScale = 1.0f;
        private boolean threshold = false;

        public ScaleGestureListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            if (Math.abs(scaleGestureDetector.getScaleFactor() - 1.0f) < (this.threshold ? 0.001d : 0.15d)) {
                return false;
            }
            this.threshold = true;
            this.scale = Math.min(Math.max(this.minScale, scaleGestureDetector.getScaleFactor() * this.scale), this.maxScale);
            MyScreenshareConsumerView.this.postInvalidate();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            this.threshold = false;
            super.onScaleEnd(scaleGestureDetector);
        }

        public void setAspect(float f2) {
            this.scale = 1.0f;
            this.minScale = 1.0f;
            this.maxScale = Math.max(1.0f, 1.0f / f2) * 2.0f;
        }
    }

    public MyScreenshareConsumerView(Context context) {
        super(context);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.dstCopy = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.view.MyScreenshareConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyScreenshareConsumerView.this.requestLayout();
            }
        };
        init();
    }

    private void init() {
        SDKInjector.getSdkInjector().inject(this);
        if (isInEditMode()) {
            return;
        }
        this.who = com.sightcall.universal.util.ViewUtils.whoami(this);
        this.bitmapPaint.setAntiAlias(false);
        this.scaleGestureListener = new ScaleGestureListener();
        this.scaleGestureDetector = new ScaleGestureDetector(getContext(), this.scaleGestureListener);
        this.dragGestureDetector = new DragGestureDetector();
        this.scaleGestureDetector.setQuickScaleEnabled(false);
    }

    private void postRequestLayout() {
        post(this.requestLayoutRunnable);
    }

    private static void scale(RectF rectF, float f2) {
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float f3 = ((fWidth * f2) - fWidth) / 2.0f;
        float f4 = ((f2 * fHeight) - fHeight) / 2.0f;
        rectF.set(rectF.left - f3, rectF.top - f4, rectF.right + f3, rectF.bottom + f4);
    }

    private void updateScaling() {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            return;
        }
        this.scaleGestureListener.setAspect(net.rtccloud.sdk.util.ViewUtils.applyScalingTo(this.scaleType, this.dst, bitmap.getWidth(), bitmap.getHeight(), getWidth(), getHeight()));
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public ScaleType getScaleType() {
        return this.scaleType;
    }

    public boolean isFilterBitmap() {
        return this.bitmapPaint.isFilterBitmap();
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public boolean isStarted() {
        return this.isStarted;
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onBind(Call call) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onBind() %s", this.who);
        }
        this.screenshare = call.screenshare();
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.dstCopy.set(this.dst);
        RectF rectF = this.dstCopy;
        DragGestureDetector dragGestureDetector = this.dragGestureDetector;
        rectF.offset(dragGestureDetector.offsetX, dragGestureDetector.offsetY);
        scale(this.dstCopy, this.scaleGestureListener.scale);
        this.dragGestureDetector.constraintsRect();
        DrawingZoneListener drawingZoneListener = this.drawingZoneListener;
        if (drawingZoneListener != null) {
            drawingZoneListener.onDrawingZoneUpdated(this.dstCopy);
        }
        net.rtccloud.sdk.util.ViewUtils.safeDrawBitmap(canvas, bitmap, (Rect) null, this.dstCopy, this.bitmapPaint);
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onFrame(Frame frame) {
        Bitmap bitmap = this.bitmap;
        Bitmap bitmap2 = frame.bitmap;
        int width = bitmap2.getWidth();
        int height = bitmap2.getHeight();
        this.bitmap = bitmap2;
        if (bitmap != null && bitmap.getWidth() == width && bitmap.getHeight() == height) {
            postInvalidate();
        } else {
            updateScaling();
            postRequestLayout();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateScaling();
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onStart() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStart() %s", this.who);
        }
        this.isStarted = true;
        this.capabilitiesRepository.activateScreenShare();
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onStop() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStop() %s", this.who);
        }
        this.isStarted = false;
        this.capabilitiesRepository.stopScreenShare();
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.scaleGestureDetector.onTouchEvent(motionEvent);
        this.dragGestureDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onUnbind() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onUnbind() %s", this.who);
        }
        this.screenshare = null;
        this.bitmap = null;
        this.dst.setEmpty();
        postRequestLayout();
        postInvalidate();
    }

    public void setDrawingZoneListener(DrawingZoneListener drawingZoneListener) {
        this.drawingZoneListener = drawingZoneListener;
    }

    public void setFilterBitmap(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setFilterBitmap(%b) %s", Boolean.valueOf(z), this.who);
        }
        this.bitmapPaint.setFilterBitmap(z);
        invalidate();
    }

    public Bitmap snapshot() {
        return SnapshotKt.getSnapshot(this);
    }

    public MyScreenshareConsumerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.dstCopy = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.view.MyScreenshareConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyScreenshareConsumerView.this.requestLayout();
            }
        };
        init();
    }

    public MyScreenshareConsumerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.dstCopy = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.view.MyScreenshareConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyScreenshareConsumerView.this.requestLayout();
            }
        };
        init();
    }
}

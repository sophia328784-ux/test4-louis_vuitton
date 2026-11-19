package net.rtccloud.sdk.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Frame;
import net.rtccloud.sdk.ScreenshareConsumer;
import net.rtccloud.sdk.util.Dimension;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ScaleType;
import net.rtccloud.sdk.util.ViewUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ScreenshareConsumerView extends View implements ScreenshareConsumer {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREENSHARE_CONSUMER);
    private Bitmap bitmap;
    private final Paint bitmapPaint;
    private final RectF dst;
    private boolean isStarted;
    private final Runnable requestLayoutRunnable;
    private ScaleType scaleType;
    private String who;

    public ScreenshareConsumerView(Context context) {
        super(context);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: net.rtccloud.sdk.internal.view.ScreenshareConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenshareConsumerView.this.requestLayout();
            }
        };
        init();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.who = ViewUtils.whoami(this);
        this.bitmapPaint.setAntiAlias(false);
    }

    private void postRequestLayout() {
        post(this.requestLayoutRunnable);
    }

    private void updateScaling() {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            return;
        }
        ViewUtils.applyScalingTo(this.scaleType, this.dst, bitmap.getWidth(), bitmap.getHeight(), getWidth(), getHeight());
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
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        ViewUtils.safeDrawBitmap(canvas, this.bitmap, (Rect) null, this.dst, this.bitmapPaint);
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
    public void onMeasure(int i2, int i3) {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            super.onMeasure(i2, i3);
        } else {
            Dimension measuredDimension = ViewUtils.getMeasuredDimension(i2, i3, bitmap.getWidth(), bitmap.getHeight());
            setMeasuredDimension(measuredDimension.width, measuredDimension.height);
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
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onStop() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStop() %s", this.who);
        }
        this.isStarted = false;
        postInvalidate();
    }

    @Override // net.rtccloud.sdk.ScreenshareConsumer
    public void onUnbind() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onUnbind() %s", this.who);
        }
        this.bitmap = null;
        this.dst.setEmpty();
        postRequestLayout();
        postInvalidate();
    }

    public void setFilterBitmap(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setFilterBitmap(%b) %s", Boolean.valueOf(z), this.who);
        }
        this.bitmapPaint.setFilterBitmap(z);
        invalidate();
    }

    public void setScaleType(ScaleType scaleType) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setScaleType(%s) %s", scaleType, this.who);
        }
        this.scaleType = scaleType;
        updateScaling();
        invalidate();
    }

    public ScreenshareConsumerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: net.rtccloud.sdk.internal.view.ScreenshareConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenshareConsumerView.this.requestLayout();
            }
        };
        init();
    }

    public ScreenshareConsumerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: net.rtccloud.sdk.internal.view.ScreenshareConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                ScreenshareConsumerView.this.requestLayout();
            }
        };
        init();
    }
}

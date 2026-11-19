package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.uvc.Camera;
import com.sightcall.uvc.Device;
import com.sightcall.uvc.DeviceListener;
import com.sightcall.uvc.DeviceManager;
import net.rtccloud.sdk.util.Dimension;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ScaleType;

/* JADX INFO: loaded from: classes3.dex */
public class UvcPreview extends TextureView implements TextureView.SurfaceTextureListener, DeviceListener {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_PRODUCER);
    private final RectF dst;
    private final Matrix matrix;
    private final Dimension measureDim;
    private UvcProducer producer;
    private final ScaleType scaleType;
    private final RectF src;

    public UvcPreview(Context context) {
        super(context);
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        setSurfaceTextureListener(this);
    }

    private void updateScaling() {
        Point previewSize = getPreviewSize();
        this.src.right = getWidth();
        this.src.bottom = getHeight();
        float f2 = previewSize.x;
        float f3 = previewSize.y;
        ScaleType scaleType = this.scaleType;
        RectF rectF = this.dst;
        RectF rectF2 = this.src;
        net.rtccloud.sdk.util.ViewUtils.applyScalingTo(scaleType, rectF, f2, f3, rectF2.right, rectF2.bottom);
        this.matrix.setRectToRect(this.src, this.dst, Matrix.ScaleToFit.FILL);
        setTransform(this.matrix);
    }

    public Point getPreviewSize() {
        Point previewSize;
        UvcProducer uvcProducer = this.producer;
        return (uvcProducer == null || (previewSize = uvcProducer.getPreviewSize()) == null) ? new Point(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT) : previewSize;
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Logger.INSTANCE.d("onAttachedToWindow() called", null);
        if (isInEditMode()) {
            return;
        }
        DeviceManager.instance(getContext().getApplicationContext()).addDeviceListener(this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Logger.INSTANCE.d("onDetachedFromWindow() called", null);
        if (isInEditMode()) {
            return;
        }
        DeviceManager.instance(getContext().getApplicationContext()).removeDeviceListener(this);
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceAttached(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceDetached(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionDenied(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionGranted(Device device) {
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        net.rtccloud.sdk.util.ViewUtils.measureWithPreviewSize(this.measureDim, getPreviewSize(), i2, i3);
        Dimension dimension = this.measureDim;
        setMeasuredDimension(dimension.width, dimension.height);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        Logger.INSTANCE.d("onSurfaceTextureAvailable() called with: surface = [" + surfaceTexture + "], width = [" + i2 + "], height = [" + i3 + "]", null);
        trigger();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Logger logger = Logger.INSTANCE;
        logger.d("onSurfaceTextureDestroyed() called with: surface = [" + surfaceTexture + "]", null);
        UvcProducer uvcProducer = this.producer;
        boolean z = uvcProducer == null || !uvcProducer.isStarted();
        logger.d("onSurfaceTextureDestroyed: release surface = " + z, null);
        return z;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void restore(UvcProducer uvcProducer) {
        Logger logger = Logger.INSTANCE;
        logger.d("restore() called with: producer = [" + uvcProducer + "]", null);
        if (this.producer == uvcProducer) {
            logger.d("restore: ignore same producer", null);
            return;
        }
        this.producer = uvcProducer;
        SurfaceTexture surfaceTexture = uvcProducer.surfaceTexture();
        if (surfaceTexture == null) {
            trigger();
            return;
        }
        logger.d("restore: override texture [" + surfaceTexture + "]", null);
        try {
            setSurfaceTexture(surfaceTexture);
        } catch (Exception e2) {
            log.e(e2);
        }
    }

    public void trigger() {
        Logger logger = Logger.INSTANCE;
        logger.d("trigger() called", null);
        if (this.producer == null) {
            logger.w("onSurfaceTextureAvailable: producer == null", null);
        } else if (isAvailable()) {
            this.producer.onSurfaceTextureAvailable(this, getSurfaceTexture());
            requestLayout();
            updateScaling();
        }
    }

    public UvcPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }

    public UvcPreview(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.scaleType = ScaleType.FIT;
        this.matrix = new Matrix();
        this.src = new RectF();
        this.dst = new RectF();
        this.measureDim = new Dimension();
        init();
    }
}

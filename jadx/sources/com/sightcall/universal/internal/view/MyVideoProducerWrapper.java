package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.SystemUiHelper;
import javax.inject.Inject;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.util.Dimension;

/* JADX INFO: loaded from: classes3.dex */
public class MyVideoProducerWrapper extends FrameLayout {
    private MyVideoProducer activeProducer;

    @Inject
    AdvancedAnnotationsWrapper advancedAnnotationsWrapper;
    private Call call;
    private MyVideoProducerCameraView cameraProducer;
    private final Collimator collimator;
    private FloatingListener floatingListener;
    private final Rect floatingRect;
    private final Dimension measureDim;
    private Session session;
    private SystemBarConfig systemBarConfig;
    private SystemUiHelper systemUiHelper;
    private VideoPlayerWrapper videoPlayerWrapper;

    public MyVideoProducerWrapper(Context context) {
        super(context);
        this.collimator = new Collimator();
        this.measureDim = new Dimension();
        this.floatingRect = new Rect();
        init();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        setWillNotDraw(false);
        this.collimator.init(this);
        SDKInjector.getSdkInjector().getCallComponent().inject(this);
    }

    public void configure(Call call, SystemUiHelper systemUiHelper, SystemBarConfig systemBarConfig, Session session, VideoPlayerWrapper videoPlayerWrapper) {
        this.call = call;
        this.systemUiHelper = systemUiHelper;
        this.systemBarConfig = systemBarConfig;
        this.session = session;
        this.videoPlayerWrapper = videoPlayerWrapper;
        Usecase usecase = session.usecase;
        Float fOcrRatio = usecase.ocrRatio();
        if (fOcrRatio != null) {
            this.collimator.ratio(fOcrRatio.floatValue());
        }
        Float fOcrSafeArea = usecase.ocrSafeArea();
        if (fOcrSafeArea != null) {
            this.collimator.safeArea(fOcrSafeArea.floatValue() / 2.0f);
        }
        this.collimator.show(session.parameters.showCollimator);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        try {
            super.dispatchDraw(canvas);
        } catch (Exception e2) {
            Universal.logger().e(e2);
        }
        this.collimator.draw(canvas);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.cameraProducer = (MyVideoProducerCameraView) findViewById(R.id.universal_video_producer_camera);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        MyVideoProducer myVideoProducer = this.activeProducer;
        Call call = this.call;
        if (myVideoProducer == null) {
            net.rtccloud.sdk.util.ViewUtils.measureWithSpecs(this.measureDim, i2, i3);
        } else {
            Point previewSize = myVideoProducer.getPreviewSize();
            if (previewSize != null) {
                net.rtccloud.sdk.util.ViewUtils.measureWithPreviewSize(this.measureDim, previewSize, i2, i3);
            } else if (!(myVideoProducer instanceof MyVideoProducerCameraView) || call == null) {
                net.rtccloud.sdk.util.ViewUtils.measureWithSpecs(this.measureDim, i2, i3);
            } else {
                net.rtccloud.sdk.util.ViewUtils.measureWithVideoProfile(this.measureDim, call.parameters().videoProfile(), getResources().getBoolean(R.bool.universal_isPortrait), i2, i3);
            }
        }
        Dimension dimension = this.measureDim;
        setMeasuredDimension(dimension.width, dimension.height);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        FloatingListener floatingListener = this.floatingListener;
        if (floatingListener != null) {
            floatingListener.fixPosition(true);
        }
        this.collimator.updateRect(i2, i3);
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.floatingListener != null) {
            return super.onTouchEvent(motionEvent);
        }
        MyVideoProducer myVideoProducer = this.activeProducer;
        if (myVideoProducer == null || !myVideoProducer.isStarted()) {
            return super.onTouchEvent(motionEvent);
        }
        this.advancedAnnotationsWrapper.processTouch(new AdvancedAnnotationsAPI.Touch(motionEvent), this);
        if (!myVideoProducer.isPaused()) {
            MyVideoProducerCameraView myVideoProducerCameraView = this.cameraProducer;
            if (myVideoProducer == myVideoProducerCameraView) {
                myVideoProducerCameraView.scaleDetector.onTouchEvent(motionEvent);
                this.cameraProducer.scaleDetector.isInProgress();
                return true;
            }
            if (myVideoProducer instanceof UvcProducer) {
                MyScaleGestureDetector myScaleGestureDetector = ((UvcProducer) myVideoProducer).scaleDetector;
                myScaleGestureDetector.onTouchEvent(motionEvent);
                myScaleGestureDetector.isInProgress();
            }
        }
        return true;
    }

    public void onVisibilityChange() {
        if (this.floatingListener != null) {
            FloatingListener.getSafeRect(this.floatingListener, this.floatingRect, getResources().getDimensionPixelSize(R.dimen.universal_call_video_consumer_margin), this.systemUiHelper, this.systemBarConfig, this.videoPlayerWrapper, getContext());
            this.floatingListener.restart(this.floatingRect);
        }
    }

    public void setActiveProducer(MyVideoProducer myVideoProducer) {
        this.activeProducer = myVideoProducer;
    }

    public void showCollimator(boolean z) {
        this.collimator.show(z);
        invalidate();
    }

    public void updatePosition() {
        boolean zVideoProducerToFullscreen = Utils.videoProducerToFullscreen(this.session, this.call);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (zVideoProducerToFullscreen) {
            layoutParams.gravity = 17;
            layoutParams.width = -1;
            layoutParams.height = -1;
            FloatingListener floatingListener = this.floatingListener;
            if (floatingListener != null) {
                floatingListener.stop();
                this.floatingListener = null;
            }
            setLayoutParams(layoutParams);
        } else {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.universal_call_video_producer_size);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.universal_call_video_producer_margin);
            layoutParams.gravity = 85;
            layoutParams.width = dimensionPixelSize;
            layoutParams.height = dimensionPixelSize;
            setLayoutParams(layoutParams);
            if (this.floatingListener == null) {
                FloatingListener floatingListener2 = new FloatingListener(this, true, this.session.config.role() == Session.Role.HOST);
                this.floatingListener = floatingListener2;
                FloatingListener.getSafeRect(floatingListener2, this.floatingRect, dimensionPixelSize2, this.systemUiHelper, this.systemBarConfig, this.videoPlayerWrapper, getContext());
                this.floatingListener.start(this.floatingRect);
            }
        }
        ViewUtils.applyThumbnailEffects(this, !zVideoProducerToFullscreen);
    }

    public MyVideoProducerWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.collimator = new Collimator();
        this.measureDim = new Dimension();
        this.floatingRect = new Rect();
        init();
    }

    public MyVideoProducerWrapper(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.collimator = new Collimator();
        this.measureDim = new Dimension();
        this.floatingRect = new Rect();
        init();
    }
}

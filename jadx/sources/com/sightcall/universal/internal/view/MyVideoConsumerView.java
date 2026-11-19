package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.R;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.internal.model.RemoteState;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.SystemUiHelper;
import javax.inject.Inject;
import javax.inject.Named;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.Frame;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.VideoConsumer;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ScaleType;

/* JADX INFO: loaded from: classes3.dex */
public class MyVideoConsumerView extends View implements VideoConsumer, MyScaleGestureDetector.OnScaleCallback {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_CONSUMER);

    @Inject
    @Named
    ViewGroup advancedAnnotationsContainer;

    @Inject
    AdvancedAnnotationsWrapper advancedAnnotationsWrapper;
    private boolean allowLiveHoverAndPointer;
    private Bitmap bitmap;
    private final Paint bitmapPaint;
    private Call call;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private DataChannelModule dc;
    private final RectF dst;
    private FloatingListener floatingListener;
    private final Rect floatingRect;
    private boolean isStarted;
    private Participant participant;
    private RemoteState remoteState;
    private final Runnable requestLayoutRunnable;
    MyScaleGestureDetector scaleDetector;
    private ScaleType scaleType;
    private Session session;
    private SystemBarConfig systemBarConfig;
    private SystemUiHelper systemUiHelper;
    private VideoPlayerWrapper videoPlayerWrapper;
    private String who;

    public MyVideoConsumerView(Context context) {
        super(context);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyVideoConsumerView.this.requestLayout();
            }
        };
        this.floatingRect = new Rect();
        init();
    }

    private int findAnnotationsFrom() {
        Call call = this.call;
        if (call == null || !call.isConference()) {
            return 0;
        }
        return this.call.conference().myself().id();
    }

    private int findAnnotationsTo() {
        Participant participant;
        Call call = this.call;
        if (call == null || !call.isConference() || (participant = this.participant) == null) {
            return 1;
        }
        return participant.id();
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.who = com.sightcall.universal.util.ViewUtils.whoami(this);
        this.bitmapPaint.setAntiAlias(false);
        this.scaleDetector = new MyScaleGestureDetector(getContext(), this);
        updateCameraZoom();
        SDKInjector.getSdkInjector().getCallComponent().inject(this);
    }

    private void postRequestLayout() {
        post(this.requestLayoutRunnable);
    }

    private void updateScaling() {
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            return;
        }
        net.rtccloud.sdk.util.ViewUtils.applyScalingTo(this.scaleType, this.dst, bitmap.getWidth(), bitmap.getHeight(), getWidth(), getHeight());
    }

    public void configure(DataChannelModule dataChannelModule, SystemUiHelper systemUiHelper, SystemBarConfig systemBarConfig, Session session, VideoPlayerWrapper videoPlayerWrapper, RemoteState remoteState) {
        this.dc = dataChannelModule;
        this.systemUiHelper = systemUiHelper;
        this.systemBarConfig = systemBarConfig;
        this.session = session;
        this.videoPlayerWrapper = videoPlayerWrapper;
        this.remoteState = remoteState;
        this.allowLiveHoverAndPointer = session.usecase.videoOutPointer(session.config);
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

    @Override // net.rtccloud.sdk.VideoConsumer
    public boolean isStarted() {
        return this.isStarted;
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onBind(Call call, Participant participant) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onBind(%d) %s", Integer.valueOf(participant.id()), this.who);
        }
        this.call = call;
        this.participant = participant;
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        net.rtccloud.sdk.util.ViewUtils.safeDrawBitmap(canvas, this.bitmap, (Rect) null, this.dst, this.bitmapPaint);
    }

    @Override // net.rtccloud.sdk.VideoConsumer
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
            setMeasuredDimension(0, 0);
            return;
        }
        int width = bitmap.getWidth();
        float f2 = width;
        float height = bitmap.getHeight();
        float fMin = Math.min(View.MeasureSpec.getSize(i2) / f2, View.MeasureSpec.getSize(i3) / height);
        setMeasuredDimension(Math.round(f2 * fMin), Math.round(height * fMin));
    }

    @Override // com.sightcall.universal.internal.view.MyScaleGestureDetector.OnScaleCallback
    public void onScale(float f2) {
        DataChannelAction.ZOOM_CAMERA.send(this.dc, Integer.valueOf(ViewUtils.floatPercentToIntPercent(f2)));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        updateScaling();
        FloatingListener floatingListener = this.floatingListener;
        if (floatingListener != null) {
            floatingListener.fixPosition(true);
        }
        this.advancedAnnotationsWrapper.layoutOver(this, this);
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onStart() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStart() %s", this.who);
        }
        this.isStarted = true;
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onStop() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onStop() %s", this.who);
        }
        this.isStarted = false;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.floatingListener == null && isStarted()) {
            if (this.remoteState == null) {
                return this.allowLiveHoverAndPointer || super.onTouchEvent(motionEvent);
            }
            boolean zProcessTouch = this.advancedAnnotationsWrapper.processTouch(new AdvancedAnnotationsAPI.Touch(motionEvent), this);
            if ((!this.remoteState.isCameraEnabled() || !this.remoteState.isCameraPaused()) && ((!this.remoteState.isPlayerEnabled() || !this.remoteState.isPlayerPaused()) && this.remoteState.isCameraEnabled() && this.session.config.role() == Session.Role.HOST)) {
                this.scaleDetector.onTouchEvent(motionEvent);
                if (this.scaleDetector.isInProgress()) {
                    return true;
                }
            }
            if (this.allowLiveHoverAndPointer) {
                return true;
            }
            return zProcessTouch;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public void onUnbind() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("onUnbind() %s", this.who);
        }
        this.call = null;
        this.participant = null;
        this.bitmap = null;
        this.dst.setEmpty();
        postRequestLayout();
        postInvalidate();
    }

    public void onVisibilityChange() {
        if (this.floatingListener != null) {
            FloatingListener.getSafeRect(this.floatingListener, this.floatingRect, getResources().getDimensionPixelSize(R.dimen.universal_call_video_consumer_margin), this.systemUiHelper, this.systemBarConfig, this.videoPlayerWrapper, getContext());
            this.floatingListener.restart(this.floatingRect);
        }
    }

    @Override // net.rtccloud.sdk.VideoConsumer
    public Participant participant() {
        return this.participant;
    }

    public void paused() {
        this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.DrawDrop);
    }

    public void resumed() {
        this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.Pointer);
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

    public Bitmap snapshot() {
        return SnapshotKt.getSnapshot(this);
    }

    public void updateCameraZoom() {
        if (this.remoteState == null || this.scaleDetector.isInProgress()) {
            return;
        }
        this.scaleDetector.configure(this.remoteState.cameraZoom());
    }

    public void updatePosition() {
        boolean zVideoConsumerToFullscreen = Utils.videoConsumerToFullscreen(this.session, this.call);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (zVideoConsumerToFullscreen) {
            layoutParams.gravity = 17;
            layoutParams.width = -1;
            layoutParams.height = -1;
            FloatingListener floatingListener = this.floatingListener;
            if (floatingListener != null) {
                floatingListener.stop();
                this.floatingListener = null;
            }
            setLayoutParams(layoutParams);
            this.advancedAnnotationsWrapper.setAnchor(this);
            this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.Pointer);
            this.advancedAnnotationsWrapper.layoutOver(this, this);
            this.advancedAnnotationsWrapper.resumeAnnotations(this);
        } else {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.universal_call_video_consumer_size);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.universal_call_video_consumer_margin);
            layoutParams.gravity = 83;
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
        ViewUtils.applyThumbnailEffects(this, !zVideoConsumerToFullscreen);
    }

    public MyVideoConsumerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyVideoConsumerView.this.requestLayout();
            }
        };
        this.floatingRect = new Rect();
        init();
    }

    public MyVideoConsumerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.bitmapPaint = new Paint();
        this.dst = new RectF();
        this.scaleType = ScaleType.FIT;
        this.requestLayoutRunnable = new Runnable() { // from class: com.sightcall.universal.internal.view.MyVideoConsumerView.1
            @Override // java.lang.Runnable
            public void run() {
                MyVideoConsumerView.this.requestLayout();
            }
        };
        this.floatingRect = new Rect();
        init();
    }
}

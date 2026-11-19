package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.SystemUiHelper;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class MyVideoConsumerThumbnailContainer extends HorizontalScrollView {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.VIDEO_CONSUMER);
    private ViewGroup container;
    private FloatingListener floatingListener;
    private final Rect floatingRect;
    private int initialY;
    private boolean isConfigured;
    private boolean isDragging;
    private boolean scrollable;
    private Session session;
    private SystemBarConfig systemBarConfig;
    private SystemUiHelper systemUiHelper;
    private int touchSlop;
    private VideoPlayerWrapper videoPlayerWrapper;

    public MyVideoConsumerThumbnailContainer(Context context) {
        super(context);
        this.floatingRect = new Rect();
        this.scrollable = true;
        this.isConfigured = false;
        init();
    }

    private void addThumbnail(Participant participant) {
        MyVideoConsumerThumbnailView myVideoConsumerThumbnailViewCreateThumbnail = createThumbnail();
        this.container.addView(myVideoConsumerThumbnailViewCreateThumbnail, new LinearLayout.LayoutParams(-2, -1));
        participant.videoConsumer(myVideoConsumerThumbnailViewCreateThumbnail);
    }

    private boolean canScroll() {
        ViewGroup viewGroup = this.container;
        if (viewGroup != null) {
            int width = viewGroup.getWidth();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            if (getWidth() < ((getPaddingRight() + (getPaddingLeft() + width)) - layoutParams.leftMargin) - layoutParams.rightMargin) {
                return true;
            }
        }
        return false;
    }

    private MyVideoConsumerThumbnailView createThumbnail() {
        MyVideoConsumerThumbnailView myVideoConsumerThumbnailView = new MyVideoConsumerThumbnailView(getContext());
        myVideoConsumerThumbnailView.setVisibility(8);
        return myVideoConsumerThumbnailView;
    }

    private void init() {
        if (isInEditMode()) {
            return;
        }
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private void removeThumbnails(int i2) {
        ViewGroup viewGroup = this.container;
        viewGroup.removeViews(i2, viewGroup.getChildCount() - i2);
    }

    public void configure(SystemUiHelper systemUiHelper, SystemBarConfig systemBarConfig, VideoPlayerWrapper videoPlayerWrapper, Session session) {
        this.systemUiHelper = systemUiHelper;
        this.systemBarConfig = systemBarConfig;
        this.videoPlayerWrapper = videoPlayerWrapper;
        this.isConfigured = true;
        this.session = session;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.container = (ViewGroup) getChildAt(0);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002d  */
    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.scrollable = canScroll();
            this.initialY = (int) motionEvent.getY();
        } else if (action == 1) {
            this.isDragging = false;
        } else if (action != 2) {
            if (action == 3) {
                this.isDragging = false;
            }
        } else if (Math.abs(((int) motionEvent.getY()) - this.initialY) > this.touchSlop) {
            this.scrollable = false;
            this.isDragging = true;
        }
        if (this.scrollable && !this.isDragging) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        FloatingListener floatingListener;
        super.onSizeChanged(i2, i3, i4, i5);
        if (this.isConfigured && (floatingListener = this.floatingListener) != null) {
            floatingListener.fixPosition(true);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (motionEvent.getAction() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        if (!this.scrollable || this.isDragging) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void onVisibilityChange() {
        FloatingListener floatingListener;
        if (this.isConfigured && (floatingListener = this.floatingListener) != null) {
            FloatingListener.getSafeRect(floatingListener, this.floatingRect, 0, this.systemUiHelper, this.systemBarConfig, this.videoPlayerWrapper, getContext());
            this.floatingListener.restart(this.floatingRect);
        }
    }

    public void updateConsumers(Participant[] participantArr, boolean z) {
        int i2 = !z ? 1 : 0;
        int iMax = Math.max(this.container.getChildCount(), z ? participantArr.length : participantArr.length - 1);
        int i3 = 0;
        while (i3 < iMax) {
            MyVideoConsumerThumbnailView myVideoConsumerThumbnailView = (MyVideoConsumerThumbnailView) this.container.getChildAt(i3);
            Participant participant = i2 < participantArr.length ? participantArr[i2] : null;
            if (myVideoConsumerThumbnailView == null && participant == null) {
                return;
            }
            if (myVideoConsumerThumbnailView == null) {
                addThumbnail(participant);
            } else if (participant == null) {
                removeThumbnails(i3);
                return;
            } else if (participant.videoConsumer() != myVideoConsumerThumbnailView) {
                participant.videoConsumer(myVideoConsumerThumbnailView);
            } else {
                myVideoConsumerThumbnailView.postInvalidate();
            }
            i3++;
            i2++;
        }
    }

    public void updatePosition() {
        if (this.isConfigured && this.floatingListener == null) {
            FloatingListener floatingListener = new FloatingListener(this, true, this.session.config.role() == Session.Role.HOST);
            this.floatingListener = floatingListener;
            FloatingListener.getSafeRect(floatingListener, this.floatingRect, 0, this.systemUiHelper, this.systemBarConfig, this.videoPlayerWrapper, getContext());
            this.floatingListener.start(this.floatingRect);
        }
    }

    public MyVideoConsumerThumbnailContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.floatingRect = new Rect();
        this.scrollable = true;
        this.isConfigured = false;
        init();
    }

    public MyVideoConsumerThumbnailContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.floatingRect = new Rect();
        this.scrollable = true;
        this.isConfigured = false;
        init();
    }
}

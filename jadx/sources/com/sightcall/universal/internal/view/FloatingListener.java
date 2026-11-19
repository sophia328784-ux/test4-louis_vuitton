package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.HorizontalScrollView;
import com.sightcall.universal.R;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.universal.util.SystemUiHelper;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class FloatingListener implements View.OnTouchListener {
    private boolean exitTouchSlop;
    private final boolean hasLocalBar;
    private final boolean hasRemoteBar;
    private boolean isDragging;
    private final View parent;
    private final Rect rect = new Rect();
    private float startRawX;
    private float startRawY;
    private float startX;
    private float startY;
    private final int touchSlop;
    private final View view;

    public FloatingListener(View view, boolean z, boolean z2) {
        this.view = view;
        this.parent = (View) view.getParent();
        this.touchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.hasLocalBar = z;
        this.hasRemoteBar = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animatePosition(Rect rect) {
        float f2;
        float f3;
        int width = this.parent.getWidth();
        int height = this.parent.getHeight();
        int width2 = this.view.getWidth();
        int height2 = this.view.getHeight();
        float x = this.view.getX();
        float y = this.view.getY();
        Rect rect2 = this.rect;
        boolean z = x <= ((float) rect2.left);
        boolean z2 = y <= ((float) rect2.top);
        int i2 = width - width2;
        boolean z3 = x >= ((float) (i2 - rect2.right));
        int i3 = height - height2;
        boolean z4 = y >= ((float) (i3 - rect2.bottom));
        rect2.set(rect);
        Rect rect3 = this.rect;
        int i4 = rect3.left;
        int i5 = i2 - rect3.right;
        int i6 = rect3.top;
        int i7 = i3 - rect3.bottom;
        float f4 = i4;
        if (z) {
            f2 = f4;
        } else {
            f2 = z3 ? i5 : x;
        }
        float fMinMax = minMax(f4, f2, i5);
        float f5 = i6;
        if (z2) {
            f3 = f5;
        } else {
            f3 = z4 ? i7 : y;
        }
        float fMinMax2 = minMax(f5, f3, i7);
        if (this.isDragging) {
            return;
        }
        if (x == fMinMax && y == fMinMax2) {
            return;
        }
        this.view.animate().cancel();
        animateViewPosition(fMinMax, fMinMax2);
    }

    private void animateViewPosition(float f2, float f3) {
        this.view.animate().x(f2).y(f3).setInterpolator(new AccelerateDecelerateInterpolator());
    }

    public static void getSafeRect(FloatingListener floatingListener, Rect rect, int i2, SystemUiHelper systemUiHelper, SystemBarConfig systemBarConfig, VideoPlayerWrapper videoPlayerWrapper, Context context) {
        int pixelInsetTop;
        boolean zIsShowing = systemUiHelper.isShowing();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.universal_call_button_bar_height);
        rect.left = i2;
        int i3 = 0;
        if (zIsShowing) {
            pixelInsetTop = systemBarConfig.getPixelInsetTop(false) + (floatingListener.hasRemoteBar ? dimensionPixelSize : 0);
        } else {
            pixelInsetTop = 0;
        }
        rect.top = pixelInsetTop + i2;
        rect.right = (zIsShowing ? systemBarConfig.getPixelInsetRight() : 0) + i2;
        if (zIsShowing) {
            int pixelInsetBottom = systemBarConfig.getPixelInsetBottom() + (floatingListener.hasLocalBar ? dimensionPixelSize : 0);
            if (!videoPlayerWrapper.isPlayerBarShowings()) {
                dimensionPixelSize = 0;
            }
            i3 = pixelInsetBottom + dimensionPixelSize;
        }
        rect.bottom = i2 + i3;
    }

    private static float minMax(float f2, float f3, float f4) {
        return Math.max(f2, Math.min(f3, f4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPosition(Rect rect) {
        this.rect.set(rect);
        fixPosition(false);
    }

    public void fixPosition(boolean z) {
        int width = this.view.getWidth();
        int height = this.view.getHeight();
        int width2 = this.parent.getWidth();
        int height2 = this.parent.getHeight();
        Rect rect = this.rect;
        int i2 = rect.left;
        int i3 = (width2 - width) - rect.right;
        int i4 = rect.top;
        int i5 = (height2 - height) - rect.bottom;
        float fMinMax = minMax(i2, this.view.getX(), i3);
        float fMinMax2 = minMax(i4, this.view.getY(), i5);
        this.view.animate().cancel();
        if (z) {
            animateViewPosition(fMinMax, fMinMax2);
        } else {
            this.view.setX(fMinMax);
            this.view.setY(fMinMax2);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.view.animate().cancel();
            this.isDragging = true;
            this.startX = this.view.getX();
            this.startY = this.view.getY();
            this.startRawX = motionEvent.getRawX();
            this.startRawY = motionEvent.getRawY();
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                float f2 = rawX - this.startRawX;
                float f3 = rawY - this.startRawY;
                float fMax = Math.max(Math.abs(f2), Math.abs(f3));
                if (!this.exitTouchSlop && fMax < this.touchSlop) {
                    return false;
                }
                this.exitTouchSlop = true;
                int width = this.parent.getWidth();
                int height = this.parent.getHeight();
                int width2 = this.view.getWidth();
                int height2 = this.view.getHeight();
                View view2 = this.view;
                Rect rect = this.rect;
                view2.setX(minMax(rect.left, this.startX + f2, (width - width2) - rect.right));
                View view3 = this.view;
                Rect rect2 = this.rect;
                view3.setY(minMax(rect2.top, this.startY + f3, (height - height2) - rect2.bottom));
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        this.isDragging = false;
        this.exitTouchSlop = false;
        return true;
    }

    public void restart(final Rect rect) {
        if (this.parent.getWidth() <= 0 || this.parent.getHeight() <= 0) {
            this.view.post(new Runnable() { // from class: com.sightcall.universal.internal.view.FloatingListener.2
                @Override // java.lang.Runnable
                public void run() {
                    FloatingListener.this.animatePosition(rect);
                }
            });
        } else {
            animatePosition(rect);
        }
    }

    public void start(final Rect rect) {
        View childAt = this.view;
        if (childAt instanceof HorizontalScrollView) {
            childAt = ((HorizontalScrollView) childAt).getChildAt(0);
        }
        childAt.setOnTouchListener(this);
        if (this.parent.getWidth() <= 0 || this.parent.getHeight() <= 0) {
            this.view.post(new Runnable() { // from class: com.sightcall.universal.internal.view.FloatingListener.1
                @Override // java.lang.Runnable
                public void run() {
                    FloatingListener.this.setPosition(rect);
                }
            });
        } else {
            setPosition(rect);
        }
    }

    public void stop() {
        View childAt = this.view;
        if (childAt instanceof HorizontalScrollView) {
            childAt = ((HorizontalScrollView) childAt).getChildAt(0);
        }
        childAt.setOnTouchListener(null);
        this.view.animate().cancel();
        this.view.setTranslationX(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.view.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}

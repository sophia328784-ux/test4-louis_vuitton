package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;

/* JADX INFO: loaded from: classes2.dex */
abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    public Runnable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OverScroller f32270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f32271f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32272h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32273i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public VelocityTracker f32274j;

    public class FlingRunnable implements Runnable {
        private final V layout;
        private final CoordinatorLayout parent;

        public FlingRunnable(CoordinatorLayout coordinatorLayout, V v) {
            this.parent = coordinatorLayout;
            this.layout = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.layout == null || (overScroller = HeaderBehavior.this.f32270e) == null) {
                return;
            }
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            HeaderBehavior headerBehavior = HeaderBehavior.this;
            CoordinatorLayout coordinatorLayout = this.parent;
            if (!zComputeScrollOffset) {
                headerBehavior.D(coordinatorLayout, this.layout);
            } else {
                headerBehavior.F(coordinatorLayout, this.layout, headerBehavior.f32270e.getCurrY());
                this.layout.postOnAnimation(this);
            }
        }
    }

    public HeaderBehavior() {
        this.g = -1;
        this.f32273i = -1;
    }

    public boolean A(View view) {
        return false;
    }

    public int B(View view) {
        return -view.getHeight();
    }

    public int C(View view) {
        return view.getHeight();
    }

    public void D(CoordinatorLayout coordinatorLayout, View view) {
    }

    public int E(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
        int iB;
        int iW = w();
        if (i3 == 0 || iW < i3 || iW > i4 || iW == (iB = MathUtils.b(i2, i3, i4))) {
            return 0;
        }
        z(iB);
        return iW - iB;
    }

    public final void F(CoordinatorLayout coordinatorLayout, View view, int i2) {
        E(coordinatorLayout, view, i2, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Code duplicated, block: B:26:0x0060  */
    /* JADX WARN: Code duplicated, block: B:29:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0071  */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int y;
        boolean z;
        OverScroller overScroller;
        int iFindPointerIndex;
        if (this.f32273i < 0) {
            this.f32273i = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f32271f) {
            int i2 = this.g;
            if (i2 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i2)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.f32272h) > this.f32273i) {
                    this.f32272h = y2;
                    return true;
                }
                if (motionEvent.getActionMasked() == 0) {
                    this.g = -1;
                    int x = (int) motionEvent.getX();
                    y = (int) motionEvent.getY();
                    if (A(view)) {
                        z = false;
                    } else {
                        z = false;
                    }
                    this.f32271f = z;
                    if (z) {
                        this.f32272h = y;
                        this.g = motionEvent.getPointerId(0);
                        if (this.f32274j == null) {
                            this.f32274j = VelocityTracker.obtain();
                        }
                        overScroller = this.f32270e;
                        if (overScroller != null) {
                            this.f32270e.abortAnimation();
                            return true;
                        }
                    }
                }
                velocityTracker = this.f32274j;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                }
            }
        } else {
            if (motionEvent.getActionMasked() == 0) {
                this.g = -1;
                int x2 = (int) motionEvent.getX();
                y = (int) motionEvent.getY();
                if (A(view) || !coordinatorLayout.l(view, x2, y)) {
                    z = false;
                } else {
                    z = true;
                }
                this.f32271f = z;
                if (z) {
                    this.f32272h = y;
                    this.g = motionEvent.getPointerId(0);
                    if (this.f32274j == null) {
                        this.f32274j = VelocityTracker.obtain();
                    }
                    overScroller = this.f32270e;
                    if (overScroller != null && !overScroller.isFinished()) {
                        this.f32270e.abortAnimation();
                        return true;
                    }
                }
            }
            velocityTracker = this.f32274j;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8 A[ADDED_TO_REGION] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.g);
                if (iFindPointerIndex != -1) {
                    int y = (int) motionEvent.getY(iFindPointerIndex);
                    int i2 = this.f32272h - y;
                    this.f32272h = y;
                    E(coordinatorLayout, view, x() - i2, B(view), 0);
                }
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i3 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.g = motionEvent.getPointerId(i3);
                    this.f32272h = (int) (motionEvent.getY(i3) + 0.5f);
                }
            }
            z = false;
            velocityTracker2 = this.f32274j;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return !this.f32271f || z;
        }
        VelocityTracker velocityTracker3 = this.f32274j;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.f32274j.computeCurrentVelocity(1000);
            float yVelocity = this.f32274j.getYVelocity(this.g);
            int i4 = -C(view);
            Runnable runnable = this.d;
            if (runnable != null) {
                view.removeCallbacks(runnable);
                this.d = null;
            }
            if (this.f32270e == null) {
                this.f32270e = new OverScroller(view.getContext());
            }
            this.f32270e.fling(0, w(), 0, Math.round(yVelocity), 0, 0, i4, 0);
            if (this.f32270e.computeScrollOffset()) {
                FlingRunnable flingRunnable = new FlingRunnable(coordinatorLayout, view);
                this.d = flingRunnable;
                view.postOnAnimation(flingRunnable);
            } else {
                D(coordinatorLayout, view);
            }
            z = true;
        }
        this.f32271f = false;
        this.g = -1;
        velocityTracker = this.f32274j;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f32274j = null;
        }
        velocityTracker2 = this.f32274j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f32271f) {
        }
        z = false;
        this.f32271f = false;
        this.g = -1;
        velocityTracker = this.f32274j;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f32274j = null;
        }
        velocityTracker2 = this.f32274j;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (this.f32271f) {
        }
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = -1;
        this.f32273i = -1;
    }
}

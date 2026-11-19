package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import androidx.core.content.ContextCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {
    public static final int[] K = {R.attr.enabled};
    public Animation A;
    public Animation B;
    public Animation C;
    public Animation D;
    public boolean E;
    public int F;
    public OnChildScrollUpCallback G;
    public final Animation.AnimationListener H;
    public final Animation I;
    public final Animation J;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f19947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OnRefreshListener f19948c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f19950f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NestedScrollingParentHelper f19951h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NestedScrollingChildHelper f19952i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f19953j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f19954k;
    public boolean l;
    public final int m;
    public int n;
    public float o;
    public float p;
    public boolean q;
    public int r;
    public final DecelerateInterpolator s;
    public final CircleImageView t;
    public int u;
    public int v;
    public final int w;
    public final int x;
    public int y;
    public final CircularProgressDrawable z;

    /* JADX INFO: renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$3, reason: invalid class name */
    class AnonymousClass3 extends Animation {
        public AnonymousClass3() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f2, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f2);
        }
    }

    public interface OnChildScrollUpCallback {
        boolean a();
    }

    public interface OnRefreshListener {
        void c();
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = false;
        this.f19950f = -1.0f;
        this.f19953j = new int[2];
        this.f19954k = new int[2];
        this.r = -1;
        this.u = -1;
        this.H = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                OnRefreshListener onRefreshListener;
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                if (!swipeRefreshLayout.d) {
                    swipeRefreshLayout.f();
                    return;
                }
                swipeRefreshLayout.z.setAlpha(255);
                swipeRefreshLayout.z.start();
                if (swipeRefreshLayout.E && (onRefreshListener = swipeRefreshLayout.f19948c) != null) {
                    onRefreshListener.c();
                }
                swipeRefreshLayout.n = swipeRefreshLayout.t.getTop();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.I = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f2, Transformation transformation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                int iAbs = swipeRefreshLayout.x - Math.abs(swipeRefreshLayout.w);
                int i2 = swipeRefreshLayout.v;
                swipeRefreshLayout.setTargetOffsetTopAndBottom((i2 + ((int) ((iAbs - i2) * f2))) - swipeRefreshLayout.t.getTop());
                CircularProgressDrawable circularProgressDrawable = swipeRefreshLayout.z;
                float f3 = 1.0f - f2;
                CircularProgressDrawable.Ring ring = circularProgressDrawable.f19930b;
                if (f3 != ring.p) {
                    ring.p = f3;
                }
                circularProgressDrawable.invalidateSelf();
            }
        };
        this.J = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f2, Transformation transformation) {
                SwipeRefreshLayout.this.e(f2);
            }
        };
        this.f19949e = ViewConfiguration.get(context).getScaledTouchSlop();
        this.m = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.s = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.F = (int) (displayMetrics.density * 40.0f);
        CircleImageView circleImageView = new CircleImageView(getContext());
        float f2 = circleImageView.getContext().getResources().getDisplayMetrics().density;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        circleImageView.setElevation(f2 * 4.0f);
        shapeDrawable.getPaint().setColor(-328966);
        circleImageView.setBackground(shapeDrawable);
        this.t = circleImageView;
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getContext());
        this.z = circularProgressDrawable;
        circularProgressDrawable.c(1);
        this.t.setImageDrawable(this.z);
        this.t.setVisibility(8);
        addView(this.t);
        setChildrenDrawingOrderEnabled(true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.x = i2;
        this.f19950f = i2;
        this.f19951h = new NestedScrollingParentHelper(this);
        this.f19952i = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i3 = -this.F;
        this.n = i3;
        this.w = i3;
        e(1.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, K);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void setColorViewAlpha(int i2) {
        this.t.getBackground().setAlpha(i2);
        this.z.setAlpha(i2);
    }

    public final boolean a() {
        OnChildScrollUpCallback onChildScrollUpCallback = this.G;
        View view = this.f19947b;
        if (onChildScrollUpCallback != null) {
            return onChildScrollUpCallback.a();
        }
        return view instanceof ListView ? ((ListView) view).canScrollList(-1) : view.canScrollVertically(-1);
    }

    public final void b() {
        if (this.f19947b == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.t)) {
                    this.f19947b = childAt;
                    return;
                }
            }
        }
    }

    public final void c(float f2) {
        if (f2 > this.f19950f) {
            h(true, true);
            return;
        }
        this.d = false;
        CircularProgressDrawable circularProgressDrawable = this.z;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.f19930b;
        ring.f19941e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring.f19942f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        circularProgressDrawable.invalidateSelf();
        Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.5
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                AnonymousClass3 anonymousClass3 = swipeRefreshLayout.new AnonymousClass3();
                swipeRefreshLayout.B = anonymousClass3;
                anonymousClass3.setDuration(150L);
                CircleImageView circleImageView = swipeRefreshLayout.t;
                circleImageView.f19926b = null;
                circleImageView.clearAnimation();
                swipeRefreshLayout.t.startAnimation(swipeRefreshLayout.B);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        };
        this.v = this.n;
        Animation animation = this.J;
        animation.reset();
        animation.setDuration(200L);
        animation.setInterpolator(this.s);
        CircleImageView circleImageView = this.t;
        circleImageView.f19926b = animationListener;
        circleImageView.clearAnimation();
        circleImageView.startAnimation(animation);
        CircularProgressDrawable.Ring ring2 = circularProgressDrawable.f19930b;
        if (ring2.n) {
            ring2.n = false;
        }
        circularProgressDrawable.invalidateSelf();
    }

    public final void d(float f2) {
        Animation animation;
        Animation animation2;
        CircularProgressDrawable circularProgressDrawable = this.z;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.f19930b;
        if (!ring.n) {
            ring.n = true;
        }
        circularProgressDrawable.invalidateSelf();
        float fMin = Math.min(1.0f, Math.abs(f2 / this.f19950f));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f2) - this.f19950f;
        int i2 = this.y;
        if (i2 <= 0) {
            i2 = this.x;
        }
        float f3 = i2;
        double dMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(fAbs, f3 * 2.0f) / f3) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        int i3 = this.w + ((int) ((f3 * fMin) + (f3 * fPow * 2.0f)));
        CircleImageView circleImageView = this.t;
        if (circleImageView.getVisibility() != 0) {
            circleImageView.setVisibility(0);
        }
        circleImageView.setScaleX(1.0f);
        circleImageView.setScaleY(1.0f);
        if (f2 < this.f19950f) {
            final int i4 = 76;
            if (circularProgressDrawable.f19930b.t > 76 && ((animation2 = this.C) == null || !animation2.hasStarted() || animation2.hasEnded())) {
                final int i5 = circularProgressDrawable.f19930b.t;
                Animation animation3 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f4, Transformation transformation) {
                        CircularProgressDrawable circularProgressDrawable2 = SwipeRefreshLayout.this.z;
                        int i6 = i5;
                        circularProgressDrawable2.setAlpha((int) (((i4 - i6) * f4) + i6));
                    }
                };
                animation3.setDuration(300L);
                circleImageView.f19926b = null;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(animation3);
                this.C = animation3;
            }
        } else {
            final int i6 = 255;
            if (circularProgressDrawable.f19930b.t < 255 && ((animation = this.D) == null || !animation.hasStarted() || animation.hasEnded())) {
                final int i7 = circularProgressDrawable.f19930b.t;
                Animation animation4 = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.4
                    @Override // android.view.animation.Animation
                    public final void applyTransformation(float f4, Transformation transformation) {
                        CircularProgressDrawable circularProgressDrawable2 = SwipeRefreshLayout.this.z;
                        int i8 = i7;
                        circularProgressDrawable2.setAlpha((int) (((i6 - i8) * f4) + i8));
                    }
                };
                animation4.setDuration(300L);
                circleImageView.f19926b = null;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(animation4);
                this.D = animation4;
            }
        }
        float fMin2 = Math.min(0.8f, fMax * 0.8f);
        CircularProgressDrawable.Ring ring2 = circularProgressDrawable.f19930b;
        ring2.f19941e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        ring2.f19942f = fMin2;
        circularProgressDrawable.invalidateSelf();
        float fMin3 = Math.min(1.0f, fMax);
        CircularProgressDrawable.Ring ring3 = circularProgressDrawable.f19930b;
        if (fMin3 != ring3.p) {
            ring3.p = fMin3;
        }
        circularProgressDrawable.invalidateSelf();
        circularProgressDrawable.f19930b.g = ((fPow * 2.0f) + ((fMax * 0.4f) - 0.25f)) * 0.5f;
        circularProgressDrawable.invalidateSelf();
        setTargetOffsetTopAndBottom(i3 - this.n);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return this.f19952i.a(f2, f3, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f2, float f3) {
        return this.f19952i.b(f2, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.f19952i.c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.f19952i.d(i2, i3, i4, i5, iArr, 0, null);
    }

    public final void e(float f2) {
        int i2 = this.v;
        setTargetOffsetTopAndBottom((i2 + ((int) ((this.w - i2) * f2))) - this.t.getTop());
    }

    public final void f() {
        this.t.clearAnimation();
        this.z.stop();
        this.t.setVisibility(8);
        setColorViewAlpha(255);
        setTargetOffsetTopAndBottom(this.w - this.n);
        this.n = this.t.getTop();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i2, int i3) {
        int i4 = this.u;
        if (i4 < 0) {
            return i3;
        }
        if (i3 == i2 - 1) {
            return i4;
        }
        return i3 >= i4 ? i3 + 1 : i3;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.f19951h;
        return nestedScrollingParentHelper.f12180b | nestedScrollingParentHelper.f12179a;
    }

    public int getProgressCircleDiameter() {
        return this.F;
    }

    public int getProgressViewEndOffset() {
        return this.x;
    }

    public int getProgressViewStartOffset() {
        return this.w;
    }

    public final void h(boolean z, boolean z2) {
        if (this.d != z) {
            this.E = z2;
            b();
            this.d = z;
            CircleImageView circleImageView = this.t;
            Animation.AnimationListener animationListener = this.H;
            if (!z) {
                AnonymousClass3 anonymousClass3 = new AnonymousClass3();
                this.B = anonymousClass3;
                anonymousClass3.setDuration(150L);
                circleImageView.f19926b = animationListener;
                circleImageView.clearAnimation();
                circleImageView.startAnimation(this.B);
                return;
            }
            this.v = this.n;
            Animation animation = this.I;
            animation.reset();
            animation.setDuration(200L);
            animation.setInterpolator(this.s);
            if (animationListener != null) {
                circleImageView.f19926b = animationListener;
            }
            circleImageView.clearAnimation();
            circleImageView.startAnimation(animation);
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f19952i.f(0);
    }

    public final void i(float f2) {
        float f3 = this.p;
        float f4 = f2 - f3;
        float f5 = this.f19949e;
        if (f4 <= f5 || this.q) {
            return;
        }
        this.o = f3 + f5;
        this.q = true;
        this.z.setAlpha(76);
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f19952i.d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0058  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        b();
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !a() && !this.d && !this.l) {
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    this.q = false;
                    this.r = -1;
                } else if (actionMasked == 2) {
                    int i2 = this.r;
                    if (i2 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i2)) >= 0) {
                        i(motionEvent.getY(iFindPointerIndex));
                    }
                } else if (actionMasked == 3) {
                    this.q = false;
                    this.r = -1;
                } else if (actionMasked == 6) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == this.r) {
                        this.r = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    }
                }
                return this.q;
            }
            setTargetOffsetTopAndBottom(this.w - this.t.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.r = pointerId;
            this.q = false;
            int iFindPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex2 >= 0) {
                this.p = motionEvent.getY(iFindPointerIndex2);
                return this.q;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f19947b == null) {
            b();
        }
        View view = this.f19947b;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.t.getMeasuredWidth();
        int measuredHeight2 = this.t.getMeasuredHeight();
        int i6 = measuredWidth / 2;
        int i7 = measuredWidth2 / 2;
        int i8 = this.n;
        this.t.layout(i6 - i7, i8, i6 + i7, measuredHeight2 + i8);
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f19947b == null) {
            b();
        }
        View view = this.f19947b;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.t.measure(View.MeasureSpec.makeMeasureSpec(this.F, 1073741824), View.MeasureSpec.makeMeasureSpec(this.F, 1073741824));
        this.u = -1;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if (getChildAt(i4) == this.t) {
                this.u = i4;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        return this.f19952i.a(f2, f3, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return this.f19952i.b(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        if (i3 > 0) {
            float f2 = this.g;
            if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f3 = i3;
                if (f3 > f2) {
                    iArr[1] = i3 - ((int) f2);
                    this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    this.g = f2 - f3;
                    iArr[1] = i3;
                }
                d(this.g);
            }
        }
        int i4 = i2 - iArr[0];
        int i5 = i3 - iArr[1];
        int[] iArr2 = this.f19953j;
        if (dispatchNestedPreScroll(i4, i5, iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        dispatchNestedScroll(i2, i3, i4, i5, this.f19954k);
        int i6 = i5 + this.f19954k[1];
        if (i6 >= 0 || a()) {
            return;
        }
        float fAbs = this.g + Math.abs(i6);
        this.g = fAbs;
        d(fAbs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        this.f19951h.f12179a = i2;
        startNestedScroll(i2 & 2);
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.l = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        return (!isEnabled() || this.d || (i2 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        this.f19951h.f12179a = 0;
        this.l = false;
        float f2 = this.g;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            c(f2);
            this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !a() && !this.d && !this.l) {
            if (actionMasked == 0) {
                this.r = motionEvent.getPointerId(0);
                this.q = false;
                return true;
            }
            if (actionMasked == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.r);
                if (iFindPointerIndex >= 0) {
                    if (this.q) {
                        float y = (motionEvent.getY(iFindPointerIndex) - this.o) * 0.5f;
                        this.q = false;
                        c(y);
                    }
                    this.r = -1;
                    return false;
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.r);
                if (iFindPointerIndex2 >= 0) {
                    float y2 = motionEvent.getY(iFindPointerIndex2);
                    i(y2);
                    if (this.q) {
                        float f2 = (y2 - this.o) * 0.5f;
                        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            d(f2);
                        }
                    }
                    return true;
                }
            } else if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.r) {
                            this.r = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            return true;
                        }
                    }
                    return true;
                }
                int actionIndex2 = motionEvent.getActionIndex();
                if (actionIndex2 >= 0) {
                    this.r = motionEvent.getPointerId(actionIndex2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        View view = this.f19947b;
        if (view != null) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            if (!view.isNestedScrollingEnabled()) {
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void setAnimationProgress(float f2) {
        this.t.setScaleX(f2);
        this.t.setScaleY(f2);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        b();
        CircularProgressDrawable circularProgressDrawable = this.z;
        CircularProgressDrawable.Ring ring = circularProgressDrawable.f19930b;
        ring.f19944i = iArr;
        ring.a(0);
        ring.a(0);
        circularProgressDrawable.invalidateSelf();
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = ContextCompat.getColor(context, iArr[i2]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i2) {
        this.f19950f = i2;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        f();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f19952i.g(z);
    }

    public void setOnChildScrollUpCallback(OnChildScrollUpCallback onChildScrollUpCallback) {
        this.G = onChildScrollUpCallback;
    }

    public void setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.f19948c = onRefreshListener;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i2) {
        setProgressBackgroundColorSchemeResource(i2);
    }

    public void setProgressBackgroundColorSchemeColor(int i2) {
        this.t.setBackgroundColor(i2);
    }

    public void setProgressBackgroundColorSchemeResource(int i2) {
        setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setRefreshing(boolean z) {
        if (!z || this.d == z) {
            h(z, false);
            return;
        }
        this.d = z;
        setTargetOffsetTopAndBottom((this.x + this.w) - this.n);
        this.E = false;
        CircleImageView circleImageView = this.t;
        circleImageView.setVisibility(0);
        this.z.setAlpha(255);
        Animation animation = new Animation() { // from class: androidx.swiperefreshlayout.widget.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f2, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f2);
            }
        };
        this.A = animation;
        animation.setDuration(this.m);
        Animation.AnimationListener animationListener = this.H;
        if (animationListener != null) {
            circleImageView.f19926b = animationListener;
        }
        circleImageView.clearAnimation();
        circleImageView.startAnimation(this.A);
    }

    public void setSize(int i2) {
        if (i2 == 0 || i2 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i2 == 0) {
                this.F = (int) (displayMetrics.density * 56.0f);
            } else {
                this.F = (int) (displayMetrics.density * 40.0f);
            }
            this.t.setImageDrawable(null);
            this.z.c(i2);
            this.t.setImageDrawable(this.z);
        }
    }

    public void setSlingshotDistance(int i2) {
        this.y = i2;
    }

    public void setTargetOffsetTopAndBottom(int i2) {
        CircleImageView circleImageView = this.t;
        circleImageView.bringToFront();
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        circleImageView.offsetTopAndBottom(i2);
        this.n = circleImageView.getTop();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i2) {
        return this.f19952i.h(i2, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        this.f19952i.i(0);
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }
}

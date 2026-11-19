package androidx.customview.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import defpackage.lc0;
import defpackage.md;
import java.util.Arrays;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ViewDragHelper {
    public static final Interpolator v = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12567b;
    public float[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f12569e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f12570f;
    public float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f12571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f12572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f12573j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12574k;
    public VelocityTracker l;
    public final float m;
    public final float n;
    public final int o;
    public final OverScroller p;
    public final Callback q;
    public View r;
    public boolean s;
    public final CoordinatorLayout t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12568c = -1;
    public final Runnable u = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.m(0);
        }
    };

    /* JADX INFO: renamed from: androidx.customview.widget.ViewDragHelper$1, reason: invalid class name */
    public class AnonymousClass1 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public static abstract class Callback {
        public int a(int i2, View view) {
            return 0;
        }

        public int b(int i2, View view) {
            return 0;
        }

        public int c(View view) {
            return 0;
        }

        public int d() {
            return 0;
        }

        public void e(int i2, View view) {
        }

        public void f(int i2) {
        }

        public void g(View view, int i2, int i3) {
        }

        public void h(View view, float f2, float f3) {
        }

        public abstract boolean i(int i2, View view);
    }

    public ViewDragHelper(Context context, CoordinatorLayout coordinatorLayout, Callback callback) {
        if (callback == null) {
            md.n("Callback may not be null");
            throw null;
        }
        this.t = coordinatorLayout;
        this.q = callback;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f12567b = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = new OverScroller(context, v);
    }

    public final void a() {
        this.f12568c = -1;
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Arrays.fill(this.f12569e, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Arrays.fill(this.f12570f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Arrays.fill(this.g, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            Arrays.fill(this.f12571h, 0);
            Arrays.fill(this.f12572i, 0);
            Arrays.fill(this.f12573j, 0);
            this.f12574k = 0;
        }
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public final void b(int i2, View view) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.t;
        if (parent != coordinatorLayout) {
            lc0.n("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (", coordinatorLayout, ")");
            return;
        }
        this.r = view;
        this.f12568c = i2;
        this.q.e(i2, view);
        m(1);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0040 A[RETURN] */
    public final boolean c(View view, float f2, float f3) {
        if (view != null) {
            Callback callback = this.q;
            boolean z = callback.c(view) > 0;
            boolean z2 = callback.d() > 0;
            int i2 = this.f12567b;
            if (z && z2) {
                if ((f3 * f3) + (f2 * f2) > i2 * i2) {
                    return true;
                }
            } else if (!z ? !(!z2 || Math.abs(f3) <= i2) : Math.abs(f2) > i2) {
                return true;
            }
        }
        return false;
    }

    public final void d(int i2) {
        float[] fArr = this.d;
        if (fArr != null) {
            int i3 = this.f12574k;
            int i4 = 1 << i2;
            if ((i3 & i4) != 0) {
                fArr[i2] = 0.0f;
                this.f12569e[i2] = 0.0f;
                this.f12570f[i2] = 0.0f;
                this.g[i2] = 0.0f;
                this.f12571h[i2] = 0;
                this.f12572i[i2] = 0;
                this.f12573j[i2] = 0;
                this.f12574k = (~i4) & i3;
            }
        }
    }

    public final int e(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.t.getWidth();
        float f2 = width / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i2) / width) - 0.5f) * 0.47123894f)) * f2) + f2;
        int iAbs = Math.abs(i3);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f12566a == 2) {
            OverScroller overScroller = this.p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.r.getLeft();
            int top = currY - this.r.getTop();
            if (left != 0) {
                View view = this.r;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.offsetLeftAndRight(left);
            }
            if (top != 0) {
                View view2 = this.r;
                WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                view2.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.q.g(this.r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.t.post(this.u);
            }
        }
        return this.f12566a == 2;
    }

    public final View g(int i2, int i3) {
        CoordinatorLayout coordinatorLayout = this.t;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.q.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int left = this.r.getLeft();
        int top = this.r.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        OverScroller overScroller = this.p;
        if (i6 == 0 && i7 == 0) {
            overScroller.abortAnimation();
            m(0);
            return false;
        }
        View view = this.r;
        int i8 = (int) this.n;
        int i9 = (int) this.m;
        int iAbs = Math.abs(i4);
        if (iAbs < i8) {
            i4 = 0;
        } else if (iAbs > i9) {
            i4 = i4 > 0 ? i9 : -i9;
        }
        int iAbs2 = Math.abs(i5);
        if (iAbs2 < i8) {
            i5 = 0;
        } else if (iAbs2 > i9) {
            i5 = i5 > 0 ? i9 : -i9;
        }
        int iAbs3 = Math.abs(i6);
        int iAbs4 = Math.abs(i7);
        int iAbs5 = Math.abs(i4);
        int iAbs6 = Math.abs(i5);
        int i10 = iAbs5 + iAbs6;
        int i11 = iAbs3 + iAbs4;
        if (i4 != 0) {
            f2 = iAbs5;
            f3 = i10;
        } else {
            f2 = iAbs3;
            f3 = i11;
        }
        float f6 = f2 / f3;
        if (i5 != 0) {
            f4 = iAbs6;
            f5 = i10;
        } else {
            f4 = iAbs4;
            f5 = i11;
        }
        float f7 = f4 / f5;
        Callback callback = this.q;
        overScroller.startScroll(left, top, i6, i7, (int) ((e(i7, i5, callback.d()) * f7) + (e(i6, i4, callback.c(view)) * f6)));
        m(2);
        return true;
    }

    public final void i(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x, (int) y);
            k(x, y, pointerId);
            p(pointerId, viewG);
            int i4 = this.f12571h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f12566a == 1) {
                j();
            }
            a();
            return;
        }
        Callback callback = this.q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f12566a == 1) {
                    this.s = true;
                    callback.h(this.r, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    this.s = false;
                    if (this.f12566a == 1) {
                        m(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                k(x2, y2, pointerId2);
                if (this.f12566a == 0) {
                    p(pointerId2, g((int) x2, (int) y2));
                    int i5 = this.f12571h[pointerId2];
                    return;
                }
                int i6 = (int) x2;
                int i7 = (int) y2;
                View view = this.r;
                if (view != null && i6 >= view.getLeft() && i6 < view.getRight() && i7 >= view.getTop() && i7 < view.getBottom()) {
                    p(pointerId2, this.r);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f12566a == 1 && pointerId3 == this.f12568c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i3 >= pointerCount) {
                        i2 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i3);
                    if (pointerId4 != this.f12568c) {
                        View viewG2 = g((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                        View view2 = this.r;
                        if (viewG2 == view2 && p(pointerId4, view2)) {
                            i2 = this.f12568c;
                            break;
                        }
                    }
                    i3++;
                }
                if (i2 == -1) {
                    j();
                }
            }
            d(pointerId3);
            return;
        }
        if (this.f12566a == 1) {
            int i8 = this.f12568c;
            if ((this.f12574k & (1 << i8)) != 0) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i8);
                float x3 = motionEvent.getX(iFindPointerIndex);
                float y3 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f12570f;
                int i9 = this.f12568c;
                int i10 = (int) (x3 - fArr[i9]);
                int i11 = (int) (y3 - this.g[i9]);
                int left = this.r.getLeft() + i10;
                int top = this.r.getTop() + i11;
                int left2 = this.r.getLeft();
                int top2 = this.r.getTop();
                if (i10 != 0) {
                    left = callback.a(left, this.r);
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    this.r.offsetLeftAndRight(left - left2);
                }
                if (i11 != 0) {
                    top = callback.b(top, this.r);
                    WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                    this.r.offsetTopAndBottom(top - top2);
                }
                if (i10 != 0 || i11 != 0) {
                    callback.g(this.r, left, top);
                }
                l(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i3 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i3);
            if ((this.f12574k & (1 << pointerId5)) != 0) {
                float x4 = motionEvent.getX(i3);
                float y4 = motionEvent.getY(i3);
                float f2 = x4 - this.d[pointerId5];
                float f3 = y4 - this.f12569e[pointerId5];
                Math.abs(f2);
                Math.abs(f3);
                int i12 = this.f12571h[pointerId5];
                Math.abs(f3);
                Math.abs(f2);
                int i13 = this.f12571h[pointerId5];
                Math.abs(f2);
                Math.abs(f3);
                int i14 = this.f12571h[pointerId5];
                Math.abs(f3);
                Math.abs(f2);
                int i15 = this.f12571h[pointerId5];
                if (this.f12566a != 1) {
                    View viewG3 = g((int) x4, (int) y4);
                    if (c(viewG3, f2, f3) && p(pointerId5, viewG3)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i3++;
        }
        l(motionEvent);
    }

    public final void j() {
        VelocityTracker velocityTracker = this.l;
        float f2 = this.m;
        velocityTracker.computeCurrentVelocity(1000, f2);
        float xVelocity = this.l.getXVelocity(this.f12568c);
        float fAbs = Math.abs(xVelocity);
        float f3 = this.n;
        if (fAbs < f3) {
            xVelocity = 0.0f;
        } else if (fAbs > f2) {
            xVelocity = xVelocity > Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 : -f2;
        }
        float yVelocity = this.l.getYVelocity(this.f12568c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 < f3) {
            f2 = 0.0f;
        } else if (fAbs2 <= f2) {
            f2 = yVelocity;
        } else if (yVelocity <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 = -f2;
        }
        this.s = true;
        this.q.h(this.r, xVelocity, f2);
        this.s = false;
        if (this.f12566a == 1) {
            m(0);
        }
    }

    public final void k(float f2, float f3, int i2) {
        float[] fArr = this.d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f12569e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f12570f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f12571h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f12572i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f12573j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.f12569e = fArr3;
            this.f12570f = fArr4;
            this.g = fArr5;
            this.f12571h = iArr;
            this.f12572i = iArr2;
            this.f12573j = iArr3;
        }
        float[] fArr9 = this.d;
        this.f12570f[i2] = f2;
        fArr9[i2] = f2;
        float[] fArr10 = this.f12569e;
        this.g[i2] = f3;
        fArr10[i2] = f3;
        int[] iArr7 = this.f12571h;
        int i4 = (int) f2;
        int i5 = (int) f3;
        CoordinatorLayout coordinatorLayout = this.t;
        int left = coordinatorLayout.getLeft();
        int i6 = this.o;
        int i7 = i4 < left + i6 ? 1 : 0;
        if (i5 < coordinatorLayout.getTop() + i6) {
            i7 |= 4;
        }
        if (i4 > coordinatorLayout.getRight() - i6) {
            i7 |= 2;
        }
        if (i5 > coordinatorLayout.getBottom() - i6) {
            i7 |= 8;
        }
        iArr7[i2] = i7;
        this.f12574k |= 1 << i2;
    }

    public final void l(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if ((this.f12574k & (1 << pointerId)) != 0) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.f12570f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    public final void m(int i2) {
        this.t.removeCallbacks(this.u);
        if (this.f12566a != i2) {
            this.f12566a = i2;
            this.q.f(i2);
            if (this.f12566a == 0) {
                this.r = null;
            }
        }
    }

    public final boolean n(int i2, int i3) {
        if (this.s) {
            return h(i2, i3, (int) this.l.getXVelocity(this.f12568c), (int) this.l.getYVelocity(this.f12568c));
        }
        md.k("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:60:0x0113  */
    public final boolean o(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            k(x, y, pointerId);
            View viewG2 = g((int) x, (int) y);
            if (viewG2 == this.r && this.f12566a == 2) {
                p(pointerId, viewG2);
            }
            int i2 = this.f12571h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                k(x2, y2, pointerId2);
                int i3 = this.f12566a;
                if (i3 == 0) {
                    int i4 = this.f12571h[pointerId2];
                } else if (i3 == 2 && (viewG = g((int) x2, (int) y2)) == this.r) {
                    p(pointerId2, viewG);
                }
            } else if (actionMasked == 6) {
                d(motionEvent.getPointerId(actionIndex));
            }
        } else if (this.d != null && this.f12569e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i5 = 0; i5 < pointerCount; i5++) {
                int pointerId3 = motionEvent.getPointerId(i5);
                if ((this.f12574k & (1 << pointerId3)) != 0) {
                    float x3 = motionEvent.getX(i5);
                    float y3 = motionEvent.getY(i5);
                    float f2 = x3 - this.d[pointerId3];
                    float f3 = y3 - this.f12569e[pointerId3];
                    View viewG3 = g((int) x3, (int) y3);
                    boolean z = viewG3 != null && c(viewG3, f2, f3);
                    if (!z) {
                        Math.abs(f2);
                        Math.abs(f3);
                        int i6 = this.f12571h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f2);
                        int i7 = this.f12571h[pointerId3];
                        Math.abs(f2);
                        Math.abs(f3);
                        int i8 = this.f12571h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f2);
                        int i9 = this.f12571h[pointerId3];
                        if (this.f12566a != 1) {
                            break;
                        }
                    } else {
                        int left = viewG3.getLeft();
                        Callback callback = this.q;
                        int iA = callback.a(((int) f2) + left, viewG3);
                        int top = viewG3.getTop();
                        int iB = callback.b(((int) f3) + top, viewG3);
                        int iC = callback.c(viewG3);
                        int iD = callback.d();
                        if ((iC == 0 || (iC > 0 && iA == left)) && (iD == 0 || (iD > 0 && iB == top))) {
                            break;
                        }
                        Math.abs(f2);
                        Math.abs(f3);
                        int i10 = this.f12571h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f2);
                        int i11 = this.f12571h[pointerId3];
                        Math.abs(f2);
                        Math.abs(f3);
                        int i12 = this.f12571h[pointerId3];
                        Math.abs(f3);
                        Math.abs(f2);
                        int i13 = this.f12571h[pointerId3];
                        if (this.f12566a != 1 || (z && p(pointerId3, viewG3))) {
                            break;
                        }
                    }
                }
            }
            l(motionEvent);
        }
        return this.f12566a == 1;
    }

    public final boolean p(int i2, View view) {
        if (view == this.r && this.f12568c == i2) {
            return true;
        }
        if (view == null || !this.q.i(i2, view)) {
            return false;
        }
        this.f12568c = i2;
        b(i2, view);
        return true;
    }
}

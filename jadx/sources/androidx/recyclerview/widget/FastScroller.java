package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class FastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final Runnable B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f19177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f19179c;
    public final Drawable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f19181f;
    public final StateListDrawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f19182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f19183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f19184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f19185k;
    public int l;
    public float m;
    public int n;
    public int o;
    public float p;
    public final RecyclerView s;
    public final ValueAnimator z;
    public int q = 0;
    public int r = 0;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];

    public class AnimatorListener extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f19187a = false;

        public AnimatorListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f19187a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f19187a) {
                this.f19187a = false;
                return;
            }
            FastScroller fastScroller = FastScroller.this;
            if (((Float) fastScroller.z.getAnimatedValue()).floatValue() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fastScroller.A = 0;
                fastScroller.i(0);
            } else {
                fastScroller.A = 2;
                fastScroller.s.invalidate();
            }
        }
    }

    public class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        public AnimatorUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller fastScroller = FastScroller.this;
            fastScroller.f19179c.setAlpha(iFloatValue);
            fastScroller.d.setAlpha(iFloatValue);
            fastScroller.s.invalidate();
        }
    }

    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        this.z = valueAnimatorOfFloat;
        this.A = 0;
        Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller fastScroller = FastScroller.this;
                ValueAnimator valueAnimator = fastScroller.z;
                int i5 = fastScroller.A;
                if (i5 == 1) {
                    valueAnimator.cancel();
                } else if (i5 != 2) {
                    return;
                }
                fastScroller.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                valueAnimator.setDuration(500L);
                valueAnimator.start();
            }
        };
        this.B = runnable;
        RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.FastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView2, int i5, int i6) {
                int iComputeHorizontalScrollOffset = recyclerView2.computeHorizontalScrollOffset();
                int iComputeVerticalScrollOffset = recyclerView2.computeVerticalScrollOffset();
                FastScroller fastScroller = FastScroller.this;
                int i7 = fastScroller.f19177a;
                int iComputeVerticalScrollRange = fastScroller.s.computeVerticalScrollRange();
                int i8 = fastScroller.r;
                fastScroller.t = iComputeVerticalScrollRange - i8 > 0 && i8 >= i7;
                int iComputeHorizontalScrollRange = fastScroller.s.computeHorizontalScrollRange();
                int i9 = fastScroller.q;
                boolean z = iComputeHorizontalScrollRange - i9 > 0 && i9 >= i7;
                fastScroller.u = z;
                boolean z2 = fastScroller.t;
                if (!z2 && !z) {
                    if (fastScroller.v != 0) {
                        fastScroller.i(0);
                        return;
                    }
                    return;
                }
                if (z2) {
                    float f2 = i8;
                    fastScroller.l = (int) ((((f2 / 2.0f) + iComputeVerticalScrollOffset) * f2) / iComputeVerticalScrollRange);
                    fastScroller.f19185k = Math.min(i8, (i8 * i8) / iComputeVerticalScrollRange);
                }
                if (fastScroller.u) {
                    float f3 = iComputeHorizontalScrollOffset;
                    float f4 = i9;
                    fastScroller.o = (int) ((((f4 / 2.0f) + f3) * f4) / iComputeHorizontalScrollRange);
                    fastScroller.n = Math.min(i9, (i9 * i9) / iComputeHorizontalScrollRange);
                }
                int i10 = fastScroller.v;
                if (i10 == 0 || i10 == 1) {
                    fastScroller.i(1);
                }
            }
        };
        this.f19179c = stateListDrawable;
        this.d = drawable;
        this.g = stateListDrawable2;
        this.f19182h = drawable2;
        this.f19180e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f19181f = Math.max(i2, drawable.getIntrinsicWidth());
        this.f19183i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.f19184j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.f19177a = i3;
        this.f19178b = i4;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new AnimatorListener());
        valueAnimatorOfFloat.addUpdateListener(new AnimatorUpdater());
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.s.removeOnItemTouchListener(this);
            this.s.removeOnScrollListener(onScrollListener);
            this.s.removeCallbacks(runnable);
        }
        this.s = recyclerView;
        recyclerView.addItemDecoration(this);
        this.s.addOnItemTouchListener(this);
        this.s.addOnScrollListener(onScrollListener);
    }

    public static int h(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 != 0) {
            int i6 = i2 - i4;
            int i7 = (int) (((f3 - f2) / i5) * i6);
            int i8 = i3 + i7;
            if (i8 < i6 && i8 >= 0) {
                return i7;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public final void a(MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zG = g(motionEvent.getX(), motionEvent.getY());
            boolean zF = f(motionEvent.getX(), motionEvent.getY());
            if (zG || zF) {
                if (zF) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zG) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                i(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.p = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            i(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            j();
            int i2 = this.w;
            RecyclerView recyclerView = this.s;
            int i3 = this.f19178b;
            if (i2 == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.y;
                iArr[0] = i3;
                int i4 = this.q - i3;
                iArr[1] = i4;
                float fMax = Math.max(i3, Math.min(i4, x));
                if (Math.abs(this.o - fMax) >= 2.0f) {
                    int iH = h(this.p, fMax, iArr, recyclerView.computeHorizontalScrollRange(), recyclerView.computeHorizontalScrollOffset(), this.q);
                    if (iH != 0) {
                        recyclerView.scrollBy(iH, 0);
                    }
                    this.p = fMax;
                }
            }
            if (this.w == 2) {
                float y = motionEvent.getY();
                int[] iArr2 = this.x;
                iArr2[0] = i3;
                int i5 = this.r - i3;
                iArr2[1] = i5;
                float fMax2 = Math.max(i3, Math.min(i5, y));
                if (Math.abs(this.l - fMax2) < 2.0f) {
                    return;
                }
                int iH2 = h(this.m, fMax2, iArr2, recyclerView.computeVerticalScrollRange(), recyclerView.computeVerticalScrollOffset(), this.r);
                if (iH2 != 0) {
                    recyclerView.scrollBy(0, iH2);
                }
                this.m = fMax2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public final void d(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public final boolean e(MotionEvent motionEvent) {
        int i2 = this.v;
        if (i2 != 1) {
            return i2 == 2;
        }
        boolean zG = g(motionEvent.getX(), motionEvent.getY());
        boolean zF = f(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() != 0) {
            return false;
        }
        if (!zG && !zF) {
            return false;
        }
        if (zF) {
            this.w = 1;
            this.p = (int) motionEvent.getX();
        } else if (zG) {
            this.w = 2;
            this.m = (int) motionEvent.getY();
        }
        i(2);
        return true;
    }

    public final boolean f(float f2, float f3) {
        if (f3 < this.r - this.f19183i) {
            return false;
        }
        int i2 = this.o;
        int i3 = this.n;
        return f2 >= ((float) (i2 - (i3 / 2))) && f2 <= ((float) ((i3 / 2) + i2));
    }

    public final boolean g(float f2, float f3) {
        int layoutDirection = this.s.getLayoutDirection();
        int i2 = this.f19180e;
        if (layoutDirection == 1) {
            if (f2 > i2) {
                return false;
            }
        } else if (f2 < this.q - i2) {
            return false;
        }
        int i3 = this.l;
        int i4 = this.f19185k / 2;
        return f3 >= ((float) (i3 - i4)) && f3 <= ((float) (i4 + i3));
    }

    public final void i(int i2) {
        RecyclerView recyclerView = this.s;
        Runnable runnable = this.B;
        StateListDrawable stateListDrawable = this.f19179c;
        if (i2 == 2 && this.v != 2) {
            stateListDrawable.setState(C);
            recyclerView.removeCallbacks(runnable);
        }
        if (i2 == 0) {
            recyclerView.invalidate();
        } else {
            j();
        }
        if (this.v == 2 && i2 != 2) {
            stateListDrawable.setState(D);
            recyclerView.removeCallbacks(runnable);
            recyclerView.postDelayed(runnable, 1200L);
        } else if (i2 == 1) {
            recyclerView.removeCallbacks(runnable);
            recyclerView.postDelayed(runnable, 1500L);
        }
        this.v = i2;
    }

    public final void j() {
        int i2 = this.A;
        ValueAnimator valueAnimator = this.z;
        if (i2 != 0) {
            if (i2 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int i2 = this.q;
        RecyclerView recyclerView2 = this.s;
        if (i2 != recyclerView2.getWidth() || this.r != recyclerView2.getHeight()) {
            this.q = recyclerView2.getWidth();
            this.r = recyclerView2.getHeight();
            i(0);
            return;
        }
        if (this.A != 0) {
            if (this.t) {
                int i3 = this.q;
                int i4 = this.f19180e;
                int i5 = i3 - i4;
                int i6 = this.l;
                int i7 = this.f19185k;
                int i8 = i6 - (i7 / 2);
                StateListDrawable stateListDrawable = this.f19179c;
                stateListDrawable.setBounds(0, 0, i4, i7);
                int i9 = this.f19181f;
                int i10 = this.r;
                Drawable drawable = this.d;
                drawable.setBounds(0, 0, i9, i10);
                if (recyclerView2.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i4, i8);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i4, -i8);
                } else {
                    canvas.translate(i5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    drawable.draw(canvas);
                    canvas.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, i8);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i5, -i8);
                }
            }
            if (this.u) {
                int i11 = this.r;
                int i12 = this.f19183i;
                int i13 = i11 - i12;
                int i14 = this.o;
                int i15 = this.n;
                int i16 = i14 - (i15 / 2);
                StateListDrawable stateListDrawable2 = this.g;
                stateListDrawable2.setBounds(0, 0, i15, i12);
                int i17 = this.q;
                int i18 = this.f19184j;
                Drawable drawable2 = this.f19182h;
                drawable2.setBounds(0, 0, i17, i18);
                canvas.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, i13);
                drawable2.draw(canvas);
                canvas.translate(i16, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i16, -i13);
            }
        }
    }
}

package com.batch.android.j0;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class f extends FrameLayout implements GestureDetector.OnGestureListener {
    private static final int n = 1500;
    private static final float o = 0.5f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f23527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GestureDetector f23528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f23529c;
    private c d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScrollView f23530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f23531f;
    private float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f23532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Object f23533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f23534j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f23535k;
    private int l;
    private int m;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (f.this.d != null) {
                f.this.d.a(f.this);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public enum b {
        TOP,
        BOTTOM
    }

    public interface c {
        void a(f fVar);
    }

    public f(Context context) {
        super(context);
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23532h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        c();
    }

    private void a() {
        Object obj = this.f23533i;
        if (obj instanceof ValueAnimator) {
            ((ValueAnimator) obj).cancel();
            this.f23533i = null;
        } else if (this.f23527a && (obj instanceof DynamicAnimation)) {
            ((DynamicAnimation) obj).b();
            this.f23533i = null;
        }
    }

    private void d() {
        if (!this.f23527a) {
            e();
            return;
        }
        SpringForce springForce = new SpringForce(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        springForce.a(o);
        springForce.b(200.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, DynamicAnimation.n, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        springAnimation.u = springForce;
        springAnimation.h();
        this.f23533i = springAnimation;
    }

    private void e() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getTranslationY(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        objectAnimatorOfFloat.setInterpolator(new OvershootInterpolator());
        objectAnimatorOfFloat.setDuration(this.f23535k);
        objectAnimatorOfFloat.setAutoCancel(true);
        objectAnimatorOfFloat.start();
        this.f23533i = objectAnimatorOfFloat;
    }

    public void b() {
        a();
        float height = getHeight();
        if (this.f23529c == b.TOP) {
            height *= -1.0f;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getTranslationY(), height);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setDuration(this.l);
        objectAnimatorOfFloat.addListener(new a());
        try {
            Class.forName("android.animation.ValueAnimator").getMethod("setDurationScale", Float.TYPE).invoke(null, Float.valueOf(1.0f));
        } catch (Throwable unused) {
        }
        objectAnimatorOfFloat.start();
    }

    public void c() {
        this.f23528b = new GestureDetector(getContext(), this);
        this.f23529c = b.TOP;
        this.f23535k = 500;
        this.l = 100;
        this.f23534j = false;
        this.m = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.d = null;
        try {
            DynamicAnimation.ViewProperty viewProperty = DynamicAnimation.m;
            int i2 = SpringAnimation.x;
            this.f23527a = true;
        } catch (ClassNotFoundException unused) {
            this.f23527a = false;
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        float translationY = getTranslationY();
        b bVar = this.f23529c;
        b bVar2 = b.TOP;
        if ((bVar == bVar2 && translationY > Call.Parameters.DEFAULT_CAMERA_ZOOM) || (bVar == b.BOTTOM && translationY < Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
            return true;
        }
        if (bVar == bVar2) {
            f3 *= -1.0f;
        }
        if (f3 > 1500.0f) {
            b();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f23531f) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.f23534j = false;
            return false;
        }
        if (action != 0) {
            if (action == 2) {
            }
            return false;
        }
        this.f23532h = motionEvent.getY();
        if (this.f23534j) {
            return true;
        }
        if (this.f23530e != null) {
            float y = motionEvent.getY() - this.f23532h;
            if (this.f23530e.canScrollVertically(1) && y < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            if (this.f23530e.canScrollVertically(-1) && y > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return super.onInterceptTouchEvent(motionEvent);
            }
        }
        if (a(motionEvent.getY(), this.f23532h)) {
            a(this.f23532h);
            return true;
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float y;
        b bVar;
        if (!this.f23531f) {
            return super.onTouchEvent(motionEvent);
        }
        super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            a(motionEvent.getY());
        } else if (action == 1) {
            this.f23534j = false;
            float translationY = getTranslationY();
            if (this.f23529c == b.TOP) {
                translationY *= -1.0f;
            }
            if (translationY > getHeight() * o) {
                b();
            } else {
                d();
            }
        } else if (action == 2) {
            float y2 = motionEvent.getY();
            if (this.f23534j) {
                motionEvent.offsetLocation(Call.Parameters.DEFAULT_CAMERA_ZOOM, getTranslationY());
                y = motionEvent.getY() - this.g;
                bVar = this.f23529c;
                if ((bVar != b.BOTTOM && y < Call.Parameters.DEFAULT_CAMERA_ZOOM) || (bVar == b.TOP && y > Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                }
                setTranslationY(y);
            } else if (a(y2, this.g)) {
                this.f23534j = true;
                float f2 = this.g;
                int i2 = this.m;
                if (y2 < f2) {
                    this.g = f2 - i2;
                } else {
                    this.g = f2 + i2;
                }
                motionEvent.offsetLocation(Call.Parameters.DEFAULT_CAMERA_ZOOM, getTranslationY());
                y = motionEvent.getY() - this.g;
                bVar = this.f23529c;
                y = bVar != b.BOTTOM ? y * 0.25f : y * 0.25f;
                setTranslationY(y);
            }
        } else if (action == 3) {
            this.f23534j = false;
            d();
        }
        this.f23528b.onTouchEvent(motionEvent);
        return true;
    }

    public void setDismissDirection(b bVar) {
        this.f23529c = bVar;
    }

    public void setDismissListener(c cVar) {
        this.d = cVar;
    }

    public void setNestedScrollView(ScrollView scrollView) {
        this.f23530e = scrollView;
    }

    public void setPannable(boolean z) {
        this.f23531f = z;
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23532h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        c();
    }

    public f(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f23532h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        c();
    }

    private boolean a(float f2, float f3) {
        return Math.abs(f2 - f3) > ((float) this.m);
    }

    private void a(float f2) {
        this.g = f2;
        a();
    }
}

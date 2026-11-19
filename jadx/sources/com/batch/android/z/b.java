package com.batch.android.z;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.OvershootInterpolator;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b implements GestureDetector.OnGestureListener, com.batch.android.j0.b.a {
    private static final long o = 500;
    private static final long p = 200;
    private static final float q = 0.4f;
    private static final float r = 2.0E-4f;
    private static final float s = 0.6f;
    private static final float t = 1500.0f;
    private static final float u = 0.85f;
    private static final float v = 0.96f;
    private static final float w = 800.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f24232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private GestureDetector f24233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f24234c;
    private Vibrator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f24235e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Object[] f24239j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f24240k;
    private int l;
    private boolean n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f24236f = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private float g = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f24237h = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f24238i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    private boolean m = false;

    public interface a {
        void e();
    }

    public b(Context context, boolean z) {
        this.f24233b = new GestureDetector(context, this);
        this.l = ViewConfiguration.get(context).getScaledTouchSlop();
        this.d = (Vibrator) context.getSystemService("vibrator");
        try {
            DynamicAnimation.ViewProperty viewProperty = DynamicAnimation.m;
            int i2 = SpringAnimation.x;
            this.f24235e = true;
        } catch (ClassNotFoundException unused) {
            this.f24235e = false;
        }
        this.n = z;
    }

    private boolean b(float f2, float f3) {
        return Math.abs(f2 - f3) > ((float) this.l);
    }

    private void c() {
        this.f24234c.animate().alpha(this.m ? s : 1.0f).setDuration(p).start();
        f();
    }

    private void d() {
        if (!this.f24235e) {
            e();
            return;
        }
        SpringForce springForce = new SpringForce(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        springForce.a(0.5f);
        springForce.b(w);
        SpringForce springForce2 = new SpringForce(1.0f);
        springForce2.a(0.5f);
        springForce2.b(w);
        SpringAnimation springAnimation = new SpringAnimation(this.f24234c, DynamicAnimation.m, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        springAnimation.u = springForce;
        SpringAnimation springAnimation2 = new SpringAnimation(this.f24234c, DynamicAnimation.n, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        springAnimation2.u = springForce;
        SpringAnimation springAnimation3 = new SpringAnimation(this.f24234c, DynamicAnimation.o, 1.0f);
        springAnimation3.u = springForce2;
        springAnimation3.h();
        SpringAnimation springAnimation4 = new SpringAnimation(this.f24234c, DynamicAnimation.p, 1.0f);
        springAnimation4.u = springForce2;
        springAnimation4.h();
        this.f24239j = new Object[]{springAnimation, springAnimation2};
        springAnimation.h();
        springAnimation2.h();
    }

    private void e() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f24234c, PropertyValuesHolder.ofFloat("translationX", this.f24234c.getTranslationY(), Call.Parameters.DEFAULT_CAMERA_ZOOM), PropertyValuesHolder.ofFloat("translationY", this.f24234c.getTranslationY(), Call.Parameters.DEFAULT_CAMERA_ZOOM), PropertyValuesHolder.ofFloat("scaleX", this.f24234c.getScaleX(), 1.0f), PropertyValuesHolder.ofFloat("scaleY", this.f24234c.getScaleY(), 1.0f));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(new OvershootInterpolator());
        objectAnimatorOfPropertyValuesHolder.setDuration(o);
        objectAnimatorOfPropertyValuesHolder.setAutoCancel(true);
        objectAnimatorOfPropertyValuesHolder.start();
        this.f24239j = new Object[]{objectAnimatorOfPropertyValuesHolder};
    }

    private void f() {
        this.d.vibrate(VibrationEffect.createOneShot(25L, -1));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00af  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ce  */
    @Override // com.batch.android.j0.b.a
    public boolean a(MotionEvent motionEvent, com.batch.android.j0.b bVar, boolean z) {
        float x;
        float y;
        float fMin;
        boolean z2;
        if (!this.f24240k) {
            bVar.a(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            a(motionEvent.getX(), motionEvent.getY());
        } else if (action == 1) {
            this.f24240k = false;
            if (this.m) {
                b();
            } else {
                d();
            }
        } else if (action == 2) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (this.f24240k) {
                motionEvent.offsetLocation(this.f24234c.getTranslationX(), this.f24234c.getTranslationY());
                x = motionEvent.getX() - this.f24236f;
                y = motionEvent.getY() - this.g;
                fMin = Math.min(1.0f, Math.max(u, (Math.abs(y) * (-1.0f) * r) + 1.0f));
                if (!Float.isNaN(fMin)) {
                    z2 = this.m;
                    if (fMin <= v) {
                        if (!z2) {
                            this.m = true;
                            c();
                        }
                    } else if (z2) {
                        this.m = false;
                        c();
                    }
                    if (this.n) {
                        this.f24234c.setTranslationX(x * q);
                    }
                    this.f24234c.setTranslationY(y * q);
                    this.f24234c.setScaleX(fMin);
                    this.f24234c.setScaleY(fMin);
                }
            } else {
                boolean zB = b(x2, this.f24236f);
                boolean zB2 = b(y2, this.g);
                if (zB || zB2) {
                    this.f24240k = true;
                    if (z) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setAction(3);
                        bVar.a(motionEventObtain);
                    }
                    if (zB) {
                        float f2 = this.f24236f;
                        int i2 = this.l;
                        if (x2 < f2) {
                            this.f24236f = f2 - i2;
                        } else {
                            this.f24236f = f2 + i2;
                        }
                    }
                    if (zB2) {
                        float f3 = this.g;
                        int i3 = this.l;
                        if (y2 < f3) {
                            this.g = f3 - i3;
                        } else {
                            this.g = f3 + i3;
                        }
                    }
                    motionEvent.offsetLocation(this.f24234c.getTranslationX(), this.f24234c.getTranslationY());
                    x = motionEvent.getX() - this.f24236f;
                    y = motionEvent.getY() - this.g;
                    fMin = Math.min(1.0f, Math.max(u, (Math.abs(y) * (-1.0f) * r) + 1.0f));
                    if (!Float.isNaN(fMin)) {
                        z2 = this.m;
                        if (fMin <= v) {
                            if (!z2) {
                                this.m = true;
                                c();
                            }
                        } else if (z2) {
                            this.m = false;
                            c();
                        }
                        if (this.n) {
                            this.f24234c.setTranslationX(x * q);
                        }
                        this.f24234c.setTranslationY(y * q);
                        this.f24234c.setScaleX(fMin);
                        this.f24234c.setScaleY(fMin);
                    }
                }
            }
        } else if (action == 3) {
            this.f24240k = false;
            d();
        }
        this.f24233b.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        if (Math.abs(f3) > t) {
            b();
        }
        if (!this.n || Math.abs(f2) <= t) {
            return true;
        }
        b();
        return true;
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

    public void b() {
        a aVar = this.f24232a;
        if (aVar != null) {
            aVar.e();
        }
    }

    public void a(a aVar) {
        this.f24232a = aVar;
    }

    private void a(float f2, float f3) {
        this.m = false;
        this.f24236f = f2;
        this.g = f3;
        a();
    }

    private void a() {
        Object[] objArr = this.f24239j;
        if (objArr == null) {
            return;
        }
        for (Object obj : objArr) {
            if (obj instanceof ValueAnimator) {
                ((ValueAnimator) obj).cancel();
            } else if (this.f24235e && (obj instanceof DynamicAnimation)) {
                ((DynamicAnimation) obj).b();
            }
        }
        this.f24239j = null;
    }

    @Override // com.batch.android.j0.b.a
    public boolean a(MotionEvent motionEvent, com.batch.android.j0.b bVar) {
        int action = motionEvent.getAction();
        if (action != 3 && action != 1) {
            if (action != 0) {
                if (action == 2) {
                }
                return false;
            }
            this.f24237h = motionEvent.getX();
            this.f24238i = motionEvent.getY();
            if (this.f24240k) {
                return true;
            }
            if (b(motionEvent.getY(), this.f24238i)) {
                a(this.f24237h, this.f24238i);
                return true;
            }
            if (this.n && b(motionEvent.getX(), this.f24237h)) {
                a(this.f24237h, this.f24238i);
                return true;
            }
            return false;
        }
        this.f24240k = false;
        return false;
    }

    public void a(com.batch.android.j0.b bVar, View view) {
        bVar.setTouchEventDelegate(this);
        this.f24234c = view;
    }
}

package androidx.dynamicanimation.animation;

import android.util.AndroidRuntimeException;
import defpackage.md;
import defpackage.mt;

/* JADX INFO: loaded from: classes.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    public static final /* synthetic */ int x = 0;
    public SpringForce u;
    public float v;
    public boolean w;

    public SpringAnimation(FloatValueHolder floatValueHolder, float f2) {
        super(floatValueHolder);
        this.u = null;
        this.v = Float.MAX_VALUE;
        this.w = false;
        this.u = new SpringForce(f2);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final void b() {
        if (!DynamicAnimation.d().f13031e.b()) {
            throw new AndroidRuntimeException("Animations may only be canceled from the same thread as the animation handler");
        }
        if (this.f13043f) {
            c(true);
        }
        float f2 = this.v;
        if (f2 != Float.MAX_VALUE) {
            SpringForce springForce = this.u;
            if (springForce == null) {
                this.u = new SpringForce(f2);
            } else {
                springForce.f13058i = f2;
            }
            this.v = Float.MAX_VALUE;
        }
    }

    public final void f(float f2) {
        if (this.f13043f) {
            this.v = f2;
            return;
        }
        if (this.u == null) {
            this.u = new SpringForce(f2);
        }
        this.u.f13058i = f2;
        h();
    }

    public final void g() {
        if (this.u.f13053b <= 0.0d) {
            mt.i("Spring animations can only come to an end when there is damping");
        } else {
            if (!DynamicAnimation.d().f13031e.b()) {
                throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
            }
            if (this.f13043f) {
                this.w = true;
            }
        }
    }

    public final void h() {
        SpringForce springForce = this.u;
        if (springForce == null) {
            mt.i("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
            return;
        }
        double d = (float) springForce.f13058i;
        if (d > this.g) {
            mt.i("Final position of the spring cannot be greater than the max value.");
            return;
        }
        if (d < this.f13044h) {
            mt.i("Final position of the spring cannot be less than the min value.");
            return;
        }
        double dAbs = Math.abs(this.f13046j * 0.75f);
        springForce.d = dAbs;
        springForce.f13055e = dAbs * 62.5d;
        if (!DynamicAnimation.d().f13031e.b()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        boolean z = this.f13043f;
        if (z || z) {
            return;
        }
        this.f13043f = true;
        if (!this.f13041c) {
            this.f13040b = this.f13042e.a(this.d);
        }
        float f2 = this.f13040b;
        if (f2 > this.g || f2 < this.f13044h) {
            md.n("Starting value need to be in between min value and max value");
        } else {
            DynamicAnimation.d().a(this);
        }
    }

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.u = null;
        this.v = Float.MAX_VALUE;
        this.w = false;
    }

    public <K> SpringAnimation(K k2, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k2, floatPropertyCompat);
        this.u = null;
        this.v = Float.MAX_VALUE;
        this.w = false;
    }

    public <K> SpringAnimation(K k2, FloatPropertyCompat<K> floatPropertyCompat, float f2) {
        super(k2, floatPropertyCompat);
        this.u = null;
        this.v = Float.MAX_VALUE;
        this.w = false;
        this.u = new SpringForce(f2);
    }
}

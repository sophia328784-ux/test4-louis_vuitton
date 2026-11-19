package androidx.dynamicanimation.animation;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import java.util.ArrayList;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements AnimationHandler.AnimationFrameCallback {
    public static final ViewProperty m = new AnonymousClass1("translationX");
    public static final ViewProperty n = new AnonymousClass2("translationY");
    public static final ViewProperty o;
    public static final ViewProperty p;
    public static final ViewProperty q;
    public static final ViewProperty r;
    public static final ViewProperty s;
    public static final ViewProperty t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f13039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f13040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13041c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FloatPropertyCompat f13042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13043f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f13044h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f13045i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f13046j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f13047k;
    public final ArrayList l;

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$1, reason: invalid class name */
    public class AnonymousClass1 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getTranslationX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setTranslationX(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$10, reason: invalid class name */
    public class AnonymousClass10 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setY(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$11, reason: invalid class name */
    public class AnonymousClass11 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            return ((View) obj).getZ();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            ((View) obj).setZ(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$12, reason: invalid class name */
    public class AnonymousClass12 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getAlpha();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setAlpha(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$13, reason: invalid class name */
    public class AnonymousClass13 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getScrollX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setScrollX((int) f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$14, reason: invalid class name */
    public class AnonymousClass14 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getScrollY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setScrollY((int) f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$2, reason: invalid class name */
    public class AnonymousClass2 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getTranslationY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setTranslationY(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$3, reason: invalid class name */
    public class AnonymousClass3 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            return ((View) obj).getTranslationZ();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            ((View) obj).setTranslationZ(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$4, reason: invalid class name */
    public class AnonymousClass4 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getScaleX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setScaleX(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$5, reason: invalid class name */
    public class AnonymousClass5 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getScaleY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setScaleY(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$6, reason: invalid class name */
    public class AnonymousClass6 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getRotation();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setRotation(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$7, reason: invalid class name */
    public class AnonymousClass7 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getRotationX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setRotationX(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$8, reason: invalid class name */
    public class AnonymousClass8 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getRotationY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setRotationY(f2);
        }
    }

    /* JADX INFO: renamed from: androidx.dynamicanimation.animation.DynamicAnimation$9, reason: invalid class name */
    public class AnonymousClass9 extends ViewProperty {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((View) obj).getX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((View) obj).setX(f2);
        }
    }

    public static class MassState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f13049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f13050b;
    }

    public interface OnAnimationEndListener {
        void a(float f2, boolean z);
    }

    public interface OnAnimationUpdateListener {
        void l(float f2);
    }

    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
    }

    static {
        new AnonymousClass3("translationZ");
        o = new AnonymousClass4("scaleX");
        p = new AnonymousClass5("scaleY");
        q = new AnonymousClass6("rotation");
        r = new AnonymousClass7("rotationX");
        s = new AnonymousClass8("rotationY");
        new AnonymousClass9("x");
        new AnonymousClass10("y");
        new AnonymousClass11("z");
        t = new AnonymousClass12("alpha");
        new AnonymousClass13("scrollX");
        new AnonymousClass14("scrollY");
    }

    public DynamicAnimation(Object obj, FloatPropertyCompat floatPropertyCompat) {
        this.f13039a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f13040b = Float.MAX_VALUE;
        this.f13041c = false;
        this.f13043f = false;
        this.g = Float.MAX_VALUE;
        this.f13044h = -Float.MAX_VALUE;
        this.f13045i = 0L;
        this.f13047k = new ArrayList();
        this.l = new ArrayList();
        this.d = obj;
        this.f13042e = floatPropertyCompat;
        if (floatPropertyCompat == q || floatPropertyCompat == r || floatPropertyCompat == s) {
            this.f13046j = 0.1f;
            return;
        }
        if (floatPropertyCompat == t) {
            this.f13046j = 0.00390625f;
        } else if (floatPropertyCompat == o || floatPropertyCompat == p) {
            this.f13046j = 0.002f;
        } else {
            this.f13046j = 1.0f;
        }
    }

    public static AnimationHandler d() {
        ThreadLocal threadLocal = AnimationHandler.f13027i;
        if (threadLocal.get() == null) {
            threadLocal.set(new AnimationHandler(new AnimationHandler.FrameCallbackScheduler16()));
        }
        return (AnimationHandler) threadLocal.get();
    }

    @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallback
    public final boolean a(long j2) {
        long j3 = this.f13045i;
        if (j3 == 0) {
            this.f13045i = j2;
            e(this.f13040b);
            return false;
        }
        long j4 = j2 - j3;
        this.f13045i = j2;
        float f2 = d().g;
        long j5 = f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 2147483647L : (long) (j4 / f2);
        SpringAnimation springAnimation = (SpringAnimation) this;
        boolean z = springAnimation.w;
        float f3 = springAnimation.v;
        boolean z2 = true;
        if (z) {
            if (f3 != Float.MAX_VALUE) {
                springAnimation.u.f13058i = f3;
                springAnimation.v = Float.MAX_VALUE;
            }
            springAnimation.f13040b = (float) springAnimation.u.f13058i;
            springAnimation.f13039a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            springAnimation.w = false;
        } else {
            SpringForce springForce = springAnimation.u;
            float f4 = springAnimation.f13040b;
            float f5 = springAnimation.f13039a;
            if (f3 != Float.MAX_VALUE) {
                long j6 = j5 / 2;
                MassState massStateC = springForce.c(j6, f4, f5);
                SpringForce springForce2 = springAnimation.u;
                springForce2.f13058i = springAnimation.v;
                springAnimation.v = Float.MAX_VALUE;
                MassState massStateC2 = springForce2.c(j6, massStateC.f13049a, massStateC.f13050b);
                springAnimation.f13040b = massStateC2.f13049a;
                springAnimation.f13039a = massStateC2.f13050b;
            } else {
                MassState massStateC3 = springForce.c(j5, f4, f5);
                springAnimation.f13040b = massStateC3.f13049a;
                springAnimation.f13039a = massStateC3.f13050b;
            }
            float fMax = Math.max(springAnimation.f13040b, springAnimation.f13044h);
            springAnimation.f13040b = fMax;
            float fMin = Math.min(fMax, springAnimation.g);
            springAnimation.f13040b = fMin;
            float f6 = springAnimation.f13039a;
            SpringForce springForce3 = springAnimation.u;
            springForce3.getClass();
            if (Math.abs(f6) >= springForce3.f13055e || Math.abs(fMin - ((float) springForce3.f13058i)) >= springForce3.d) {
                z2 = false;
            } else {
                springAnimation.f13040b = (float) springAnimation.u.f13058i;
                springAnimation.f13039a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        }
        float fMin2 = Math.min(this.f13040b, this.g);
        this.f13040b = fMin2;
        float fMax2 = Math.max(fMin2, this.f13044h);
        this.f13040b = fMax2;
        e(fMax2);
        if (z2) {
            c(false);
        }
        return z2;
    }

    public abstract void b();

    public final void c(boolean z) {
        ArrayList arrayList;
        int i2 = 0;
        this.f13043f = false;
        AnimationHandler animationHandlerD = d();
        animationHandlerD.f13028a.remove(this);
        ArrayList arrayList2 = animationHandlerD.f13029b;
        int iIndexOf = arrayList2.indexOf(this);
        if (iIndexOf >= 0) {
            arrayList2.set(iIndexOf, null);
            animationHandlerD.f13032f = true;
        }
        this.f13045i = 0L;
        this.f13041c = false;
        while (true) {
            arrayList = this.f13047k;
            if (i2 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i2) != null) {
                ((OnAnimationEndListener) arrayList.get(i2)).a(this.f13040b, z);
            }
            i2++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    public final void e(float f2) {
        ArrayList arrayList;
        this.f13042e.b(this.d, f2);
        int i2 = 0;
        while (true) {
            arrayList = this.l;
            if (i2 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i2) != null) {
                ((OnAnimationUpdateListener) arrayList.get(i2)).l(this.f13040b);
            }
            i2++;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    public DynamicAnimation(final FloatValueHolder floatValueHolder) {
        this.f13039a = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f13040b = Float.MAX_VALUE;
        this.f13041c = false;
        this.f13043f = false;
        this.g = Float.MAX_VALUE;
        this.f13044h = -3.4028235E38f;
        this.f13045i = 0L;
        this.f13047k = new ArrayList();
        this.l = new ArrayList();
        this.d = null;
        this.f13042e = new FloatPropertyCompat() { // from class: androidx.dynamicanimation.animation.DynamicAnimation.15
            {
                super("FloatValueHolder");
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public final float a(Object obj) {
                return floatValueHolder.f13051a;
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public final void b(Object obj, float f2) {
                floatValueHolder.f13051a = f2;
            }
        };
        this.f13046j = 1.0f;
    }
}

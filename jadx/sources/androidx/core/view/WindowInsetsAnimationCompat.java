package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.Insets;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.vuitton.android.R;
import defpackage.eq;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Impl f12222a;

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        WindowInsetsCompat mDispachedInsets;
        private final int mDispatchMode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface DispatchMode {
        }

        public Callback(int i2) {
            this.mDispatchMode = i2;
        }

        public final int getDispatchMode() {
            return this.mDispatchMode;
        }

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list);

        public BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }

    public static class Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f12226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Interpolator f12227c;
        public final long d;

        public Impl(int i2, Interpolator interpolator, long j2) {
            this.f12225a = i2;
            this.f12227c = interpolator;
            this.d = j2;
        }

        public float a() {
            return 1.0f;
        }

        public long b() {
            return this.d;
        }

        public float c() {
            return this.f12226b;
        }

        public float d() {
            float f2 = this.f12226b;
            Interpolator interpolator = this.f12227c;
            return interpolator != null ? interpolator.getInterpolation(f2) : f2;
        }

        public Interpolator e() {
            return this.f12227c;
        }

        public int f() {
            return this.f12225a;
        }

        public void g(float f2) {
            this.f12226b = f2;
        }
    }

    public static class Impl21 extends Impl {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final PathInterpolator f12228e = new PathInterpolator(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.1f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FastOutLinearInInterpolator f12229f = new FastOutLinearInInterpolator();
        public static final DecelerateInterpolator g = new DecelerateInterpolator(1.5f);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final AccelerateInterpolator f12230h = new AccelerateInterpolator(1.5f);

        public static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Callback f12231a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public WindowInsetsCompat f12232b;

            public Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                this.f12231a = callback;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                WindowInsetsCompat windowInsetsCompatA = ViewCompat.Api23Impl.a(view);
                this.f12232b = windowInsetsCompatA != null ? new WindowInsetsCompat.Builder(windowInsetsCompatA).f12245a.h() : null;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                Interpolator interpolator;
                if (!view.isLaidOut()) {
                    this.f12232b = WindowInsetsCompat.r(windowInsets, view);
                    PathInterpolator pathInterpolator = Impl21.f12228e;
                    return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompatR = WindowInsetsCompat.r(windowInsets, view);
                WindowInsetsCompat.Impl impl = windowInsetsCompatR.f12244a;
                if (this.f12232b == null) {
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    this.f12232b = ViewCompat.Api23Impl.a(view);
                }
                if (this.f12232b == null) {
                    this.f12232b = windowInsetsCompatR;
                    PathInterpolator pathInterpolator2 = Impl21.f12228e;
                    if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                        return view.onApplyWindowInsets(windowInsets);
                    }
                } else {
                    Callback callbackL = Impl21.l(view);
                    if (callbackL == null || !Objects.equals(callbackL.mDispachedInsets, windowInsetsCompatR)) {
                        int[] iArr = new int[1];
                        int[] iArr2 = new int[1];
                        WindowInsetsCompat windowInsetsCompat = this.f12232b;
                        int i2 = 1;
                        while (i2 <= 512) {
                            Insets insetsI = impl.i(i2);
                            Insets insetsI2 = windowInsetsCompat.f12244a.i(i2);
                            int i3 = insetsI.f12054a;
                            int i4 = insetsI.d;
                            int i5 = insetsI.f12056c;
                            int i6 = insetsI.f12055b;
                            int i7 = insetsI2.f12054a;
                            int i8 = insetsI2.d;
                            int[] iArr3 = iArr;
                            int i9 = insetsI2.f12056c;
                            int i10 = insetsI2.f12055b;
                            boolean z = i3 > i7 || i6 > i10 || i5 > i9 || i4 > i8;
                            if (z != (i3 < i7 || i6 < i10 || i5 < i9 || i4 < i8)) {
                                if (z) {
                                    iArr3[0] = iArr3[0] | i2;
                                } else {
                                    iArr2[0] = iArr2[0] | i2;
                                }
                            }
                            i2 <<= 1;
                            iArr = iArr3;
                            iArr2 = iArr2;
                        }
                        int i11 = iArr[0];
                        int i12 = iArr2[0];
                        final int i13 = i11 | i12;
                        if (i13 == 0) {
                            this.f12232b = windowInsetsCompatR;
                            if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                                return view.onApplyWindowInsets(windowInsets);
                            }
                        } else {
                            final WindowInsetsCompat windowInsetsCompat2 = this.f12232b;
                            if ((i11 & 8) != 0) {
                                interpolator = Impl21.f12228e;
                            } else if ((i12 & 8) != 0) {
                                interpolator = Impl21.f12229f;
                            } else if ((i11 & 519) != 0) {
                                interpolator = Impl21.g;
                            } else {
                                interpolator = (i12 & 519) != 0 ? Impl21.f12230h : null;
                            }
                            final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i13, interpolator, (i13 & 8) != 0 ? 160L : 250L);
                            windowInsetsAnimationCompat.f12222a.g(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            final ValueAnimator duration = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f).setDuration(windowInsetsAnimationCompat.f12222a.b());
                            Insets insetsI3 = impl.i(i13);
                            Insets insetsI4 = windowInsetsCompat2.f12244a.i(i13);
                            int iMin = Math.min(insetsI3.f12054a, insetsI4.f12054a);
                            int i14 = insetsI3.f12055b;
                            int i15 = insetsI4.f12055b;
                            int iMin2 = Math.min(i14, i15);
                            int i16 = insetsI3.f12056c;
                            int i17 = insetsI4.f12056c;
                            int iMin3 = Math.min(i16, i17);
                            int i18 = insetsI3.d;
                            int i19 = insetsI4.d;
                            final BoundsCompat boundsCompat = new BoundsCompat(Insets.c(iMin, iMin2, iMin3, Math.min(i18, i19)), Insets.c(Math.max(insetsI3.f12054a, insetsI4.f12054a), Math.max(i14, i15), Math.max(i16, i17), Math.max(i18, i19)));
                            Impl21.i(view, windowInsetsAnimationCompat, windowInsetsCompatR, false);
                            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    float animatedFraction = valueAnimator.getAnimatedFraction();
                                    WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = windowInsetsAnimationCompat;
                                    Impl impl2 = windowInsetsAnimationCompat2.f12222a;
                                    impl2.g(animatedFraction);
                                    float fD = impl2.d();
                                    PathInterpolator pathInterpolator3 = Impl21.f12228e;
                                    WindowInsetsCompat windowInsetsCompat3 = windowInsetsCompatR;
                                    WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat3);
                                    for (int i20 = 1; i20 <= 512; i20 <<= 1) {
                                        int i21 = i13 & i20;
                                        WindowInsetsCompat.Impl impl3 = windowInsetsCompat3.f12244a;
                                        if (i21 == 0) {
                                            builder.b(i20, impl3.i(i20));
                                        } else {
                                            Insets insetsI5 = impl3.i(i20);
                                            Insets insetsI6 = windowInsetsCompat2.f12244a.i(i20);
                                            float f2 = 1.0f - fD;
                                            builder.b(i20, WindowInsetsCompat.m(insetsI5, (int) (((double) ((insetsI5.f12054a - insetsI6.f12054a) * f2)) + 0.5d), (int) (((double) ((insetsI5.f12055b - insetsI6.f12055b) * f2)) + 0.5d), (int) (((double) ((insetsI5.f12056c - insetsI6.f12056c) * f2)) + 0.5d), (int) (((double) ((insetsI5.d - insetsI6.d) * f2)) + 0.5d)));
                                        }
                                    }
                                    Impl21.j(view, builder.f12245a.h(), Collections.singletonList(windowInsetsAnimationCompat2));
                                }
                            });
                            duration.addListener(new AnimatorListenerAdapter() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = windowInsetsAnimationCompat;
                                    windowInsetsAnimationCompat2.f12222a.g(1.0f);
                                    Impl21.h(view, windowInsetsAnimationCompat2);
                                }
                            });
                            OneShotPreDrawListener.a(view, new Runnable() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    Impl21.k(view, windowInsetsAnimationCompat, boundsCompat);
                                    duration.start();
                                }
                            });
                            this.f12232b = windowInsetsCompatR;
                            if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                                return view.onApplyWindowInsets(windowInsets);
                            }
                        }
                    } else if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                        return view.onApplyWindowInsets(windowInsets);
                    }
                }
                return windowInsets;
            }
        }

        public static void h(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callbackL = l(view);
            if (callbackL != null) {
                callbackL.onEnd(windowInsetsAnimationCompat);
                if (callbackL.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    h(viewGroup.getChildAt(i2), windowInsetsAnimationCompat);
                }
            }
        }

        public static void i(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, boolean z) {
            Callback callbackL = l(view);
            if (callbackL != null) {
                callbackL.mDispachedInsets = windowInsetsCompat;
                if (!z) {
                    callbackL.onPrepare(windowInsetsAnimationCompat);
                    z = callbackL.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    i(viewGroup.getChildAt(i2), windowInsetsAnimationCompat, windowInsetsCompat, z);
                }
            }
        }

        public static void j(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback callbackL = l(view);
            if (callbackL != null) {
                windowInsetsCompat = callbackL.onProgress(windowInsetsCompat, list);
                if (callbackL.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    j(viewGroup.getChildAt(i2), windowInsetsCompat, list);
                }
            }
        }

        public static void k(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callbackL = l(view);
            if (callbackL != null) {
                callbackL.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (callbackL.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    k(viewGroup.getChildAt(i2), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        public static Callback l(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).f12231a;
            }
            return null;
        }
    }

    public static class Impl30 extends Impl {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final WindowInsetsAnimation f12239e;

        public static class ProxyCallback extends WindowInsetsAnimation$Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Callback f12240a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List f12241b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ArrayList f12242c;
            public final HashMap d;

            public ProxyCallback(Callback callback) {
                super(callback.getDispatchMode());
                this.d = new HashMap();
                this.f12240a = callback;
            }

            public final WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                HashMap map = this.d;
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) map.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = new WindowInsetsAnimationCompat(0, null, 0L);
                windowInsetsAnimationCompat2.f12222a = new Impl30(windowInsetsAnimation);
                map.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                return windowInsetsAnimationCompat2;
            }

            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.f12240a.onEnd(a(windowInsetsAnimation));
                this.d.remove(windowInsetsAnimation);
            }

            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.f12240a.onPrepare(a(windowInsetsAnimation));
            }

            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                ArrayList arrayList = this.f12242c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.f12242c = arrayList2;
                    this.f12241b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
                    WindowInsetsAnimationCompat windowInsetsAnimationCompatA = a(windowInsetsAnimation);
                    windowInsetsAnimationCompatA.f12222a.g(windowInsetsAnimation.getFraction());
                    this.f12242c.add(windowInsetsAnimationCompatA);
                }
                return this.f12240a.onProgress(WindowInsetsCompat.r(windowInsets, null), this.f12241b).q();
            }

            public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                BoundsCompat boundsCompatOnStart = this.f12240a.onStart(a(windowInsetsAnimation), new BoundsCompat(bounds));
                boundsCompatOnStart.getClass();
                eq.d();
                return eq.a(boundsCompatOnStart.f12223a.e(), boundsCompatOnStart.f12224b.e());
            }
        }

        public Impl30(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f12239e = windowInsetsAnimation;
        }

        public static Insets h(WindowInsetsAnimation.Bounds bounds) {
            return Insets.d(bounds.getUpperBound());
        }

        public static Insets i(WindowInsetsAnimation.Bounds bounds) {
            return Insets.d(bounds.getLowerBound());
        }

        public static void j(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new ProxyCallback(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float a() {
            return this.f12239e.getAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final long b() {
            return this.f12239e.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float c() {
            return this.f12239e.getFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float d() {
            return this.f12239e.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final Interpolator e() {
            return this.f12239e.getInterpolator();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final int f() {
            return this.f12239e.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final void g(float f2) {
            this.f12239e.setFraction(f2);
        }
    }

    public WindowInsetsAnimationCompat(int i2, Interpolator interpolator, long j2) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f12222a = new Impl30(eq.b(i2, interpolator, j2));
        } else {
            this.f12222a = new Impl21(i2, interpolator, j2);
        }
    }

    public final float a() {
        return this.f12222a.a();
    }

    public final long b() {
        return this.f12222a.b();
    }

    public final float c() {
        return this.f12222a.c();
    }

    public final float d() {
        return this.f12222a.d();
    }

    public final Interpolator e() {
        return this.f12222a.e();
    }

    public final int f() {
        return this.f12222a.f();
    }

    public static final class BoundsCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Insets f12223a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Insets f12224b;

        public BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.f12223a = Impl30.i(bounds);
            this.f12224b = Impl30.h(bounds);
        }

        public final String toString() {
            return "Bounds{lower=" + this.f12223a + " upper=" + this.f12224b + "}";
        }

        public BoundsCompat(Insets insets, Insets insets2) {
            this.f12223a = insets;
            this.f12224b = insets2;
        }
    }
}

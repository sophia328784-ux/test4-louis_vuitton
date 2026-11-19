package com.airbnb.lottie.animation.keyframe;

import android.view.animation.Interpolator;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseKeyframeAnimation<K, A> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KeyframesWrapper f21885c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LottieValueCallback f21886e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f21883a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f21884b = false;
    public float d = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f21887f = null;
    public float g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f21888h = -1.0f;

    public interface AnimationListener {
        void a();
    }

    public static final class EmptyKeyframeWrapper<T> implements KeyframesWrapper<T> {
        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean a(float f2) {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final Keyframe b() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean c(float f2) {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float d() {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float e() {
            return 1.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean isEmpty() {
            return true;
        }
    }

    public interface KeyframesWrapper<T> {
        boolean a(float f2);

        Keyframe b();

        boolean c(float f2);

        float d();

        float e();

        boolean isEmpty();
    }

    public static final class KeyframesWrapperImpl<T> implements KeyframesWrapper<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f21889a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Keyframe f21891c = null;
        public float d = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Keyframe f21890b = f(Call.Parameters.DEFAULT_CAMERA_ZOOM);

        public KeyframesWrapperImpl(List list) {
            this.f21889a = list;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean a(float f2) {
            Keyframe keyframe = this.f21891c;
            Keyframe keyframe2 = this.f21890b;
            if (keyframe == keyframe2 && this.d == f2) {
                return true;
            }
            this.f21891c = keyframe2;
            this.d = f2;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final Keyframe b() {
            return this.f21890b;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean c(float f2) {
            Keyframe keyframe = this.f21890b;
            if (f2 >= keyframe.b() && f2 < keyframe.a()) {
                return !this.f21890b.c();
            }
            this.f21890b = f(f2);
            return true;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float d() {
            return ((Keyframe) this.f21889a.get(0)).b();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float e() {
            return ((Keyframe) fc.e(1, this.f21889a)).a();
        }

        public final Keyframe f(float f2) {
            List list = this.f21889a;
            Keyframe keyframe = (Keyframe) fc.e(1, list);
            if (f2 >= keyframe.b()) {
                return keyframe;
            }
            for (int size = list.size() - 2; size >= 1; size--) {
                Keyframe keyframe2 = (Keyframe) list.get(size);
                if (this.f21890b != keyframe2 && f2 >= keyframe2.b() && f2 < keyframe2.a()) {
                    return keyframe2;
                }
            }
            return (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean isEmpty() {
            return false;
        }
    }

    public static final class SingleKeyframeWrapper<T> implements KeyframesWrapper<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Keyframe f21892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f21893b = -1.0f;

        public SingleKeyframeWrapper(List list) {
            this.f21892a = (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean a(float f2) {
            if (this.f21893b == f2) {
                return true;
            }
            this.f21893b = f2;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final Keyframe b() {
            return this.f21892a;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean c(float f2) {
            return !this.f21892a.c();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float d() {
            return this.f21892a.b();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final float e() {
            return this.f21892a.a();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public final boolean isEmpty() {
            return false;
        }
    }

    public BaseKeyframeAnimation(List list) {
        KeyframesWrapper singleKeyframeWrapper;
        if (list.isEmpty()) {
            singleKeyframeWrapper = new EmptyKeyframeWrapper();
        } else {
            singleKeyframeWrapper = list.size() == 1 ? new SingleKeyframeWrapper(list) : new KeyframesWrapperImpl(list);
        }
        this.f21885c = singleKeyframeWrapper;
    }

    public final void a(AnimationListener animationListener) {
        this.f21883a.add(animationListener);
    }

    public final Keyframe b() {
        AsyncUpdates asyncUpdates = L.f21740a;
        return this.f21885c.b();
    }

    public float c() {
        if (this.f21888h == -1.0f) {
            this.f21888h = this.f21885c.e();
        }
        return this.f21888h;
    }

    public final float d() {
        Interpolator interpolator;
        Keyframe keyframeB = b();
        return (keyframeB == null || keyframeB.c() || (interpolator = keyframeB.d) == null) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : interpolator.getInterpolation(e());
    }

    public final float e() {
        if (this.f21884b) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        Keyframe keyframeB = b();
        return keyframeB.c() ? Call.Parameters.DEFAULT_CAMERA_ZOOM : (this.d - keyframeB.b()) / (keyframeB.a() - keyframeB.b());
    }

    public Object f() {
        float fE = e();
        if (this.f21886e == null && this.f21885c.a(fE) && !l()) {
            return this.f21887f;
        }
        Keyframe keyframeB = b();
        Interpolator interpolator = keyframeB.f22319e;
        Interpolator interpolator2 = keyframeB.f22320f;
        Object objG = (interpolator == null || interpolator2 == null) ? g(keyframeB, d()) : h(keyframeB, fE, interpolator.getInterpolation(fE), interpolator2.getInterpolation(fE));
        this.f21887f = objG;
        return objG;
    }

    public abstract Object g(Keyframe keyframe, float f2);

    public Object h(Keyframe keyframe, float f2, float f3, float f4) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void i() {
        AsyncUpdates asyncUpdates = L.f21740a;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f21883a;
            if (i2 >= arrayList.size()) {
                AsyncUpdates asyncUpdates2 = L.f21740a;
                return;
            } else {
                ((AnimationListener) arrayList.get(i2)).a();
                i2++;
            }
        }
    }

    public void j(float f2) {
        AsyncUpdates asyncUpdates = L.f21740a;
        KeyframesWrapper keyframesWrapper = this.f21885c;
        if (keyframesWrapper.isEmpty()) {
            return;
        }
        if (this.g == -1.0f) {
            this.g = keyframesWrapper.d();
        }
        float f3 = this.g;
        if (f2 < f3) {
            if (f3 == -1.0f) {
                this.g = keyframesWrapper.d();
            }
            f2 = this.g;
        } else if (f2 > c()) {
            f2 = c();
        }
        if (f2 == this.d) {
            return;
        }
        this.d = f2;
        if (keyframesWrapper.c(f2)) {
            i();
        }
    }

    public final void k(LottieValueCallback lottieValueCallback) {
        LottieValueCallback lottieValueCallback2 = this.f21886e;
        if (lottieValueCallback2 != null) {
            lottieValueCallback2.getClass();
        }
        this.f21886e = lottieValueCallback;
    }

    public boolean l() {
        return false;
    }
}

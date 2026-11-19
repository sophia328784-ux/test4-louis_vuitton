package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.collection.SimpleArrayMap;
import androidx.dynamicanimation.animation.AnimationHandler;
import defpackage.n6;
import defpackage.o6;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AnimationHandler {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ThreadLocal f13027i = new ThreadLocal();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameCallbackScheduler f13031e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DurationScaleChangeListener33 f13033h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f13028a = new SimpleArrayMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f13029b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimationCallbackDispatcher f13030c = new AnimationCallbackDispatcher();
    public final a d = new Runnable() { // from class: androidx.dynamicanimation.animation.a
        @Override // java.lang.Runnable
        public final void run() {
            AnimationHandler animationHandler = AnimationHandler.this;
            long jUptimeMillis = SystemClock.uptimeMillis();
            ArrayList arrayList = animationHandler.f13029b;
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                AnimationHandler.AnimationFrameCallback animationFrameCallback = (AnimationHandler.AnimationFrameCallback) arrayList.get(i2);
                if (animationFrameCallback != null) {
                    SimpleArrayMap simpleArrayMap = animationHandler.f13028a;
                    Long l = (Long) simpleArrayMap.get(animationFrameCallback);
                    if (l == null) {
                        animationFrameCallback.a(jUptimeMillis);
                    } else if (l.longValue() < jUptimeMillis2) {
                        simpleArrayMap.remove(animationFrameCallback);
                        animationFrameCallback.a(jUptimeMillis);
                    }
                }
            }
            if (animationHandler.f13032f) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                if (arrayList.size() == 0 && Build.VERSION.SDK_INT >= 33) {
                    animationHandler.f13033h.a();
                }
                animationHandler.f13032f = false;
            }
            if (arrayList.size() > 0) {
                animationHandler.f13031e.a(animationHandler.d);
            }
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13032f = false;
    public float g = 1.0f;

    public class AnimationCallbackDispatcher {
        public AnimationCallbackDispatcher() {
        }
    }

    public interface AnimationFrameCallback {
        boolean a(long j2);
    }

    public interface DurationScaleChangeListener {
    }

    public class DurationScaleChangeListener33 implements DurationScaleChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public n6 f13035a;

        public DurationScaleChangeListener33() {
        }

        public final boolean a() {
            boolean zUnregisterDurationScaleChangeListener = ValueAnimator.unregisterDurationScaleChangeListener(this.f13035a);
            this.f13035a = null;
            return zUnregisterDurationScaleChangeListener;
        }
    }

    public static final class FrameCallbackScheduler16 implements FrameCallbackScheduler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Choreographer f13037a = Choreographer.getInstance();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Looper f13038b = Looper.myLooper();

        @Override // androidx.dynamicanimation.animation.FrameCallbackScheduler
        public final void a(a aVar) {
            this.f13037a.postFrameCallback(new o6(aVar, 0));
        }

        @Override // androidx.dynamicanimation.animation.FrameCallbackScheduler
        public final boolean b() {
            return Thread.currentThread() == this.f13038b.getThread();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.dynamicanimation.animation.a] */
    public AnimationHandler(FrameCallbackScheduler frameCallbackScheduler) {
        this.f13031e = frameCallbackScheduler;
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [android.animation.ValueAnimator$DurationScaleChangeListener, n6] */
    public final void a(SpringAnimation springAnimation) {
        ArrayList arrayList = this.f13029b;
        if (arrayList.size() == 0) {
            this.f13031e.a(this.d);
            if (Build.VERSION.SDK_INT >= 33) {
                this.g = ValueAnimator.getDurationScale();
                if (this.f13033h == null) {
                    this.f13033h = new DurationScaleChangeListener33();
                }
                final DurationScaleChangeListener33 durationScaleChangeListener33 = this.f13033h;
                if (durationScaleChangeListener33.f13035a == null) {
                    ?? r1 = new ValueAnimator.DurationScaleChangeListener() { // from class: n6
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f2) {
                            AnimationHandler.this.g = f2;
                        }
                    };
                    durationScaleChangeListener33.f13035a = r1;
                    ValueAnimator.registerDurationScaleChangeListener(r1);
                }
            }
        }
        if (arrayList.contains(springAnimation)) {
            return;
        }
        arrayList.add(springAnimation);
    }
}

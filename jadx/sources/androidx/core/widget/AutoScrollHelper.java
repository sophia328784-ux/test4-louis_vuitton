package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import androidx.core.view.ViewCompat;
import defpackage.v7;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClampedScroller f12320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AccelerateInterpolator f12321c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float[] f12323f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f12324h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12325i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f12326j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float[] f12327k;
    public final float[] l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;

    public static class ClampedScroller {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f12330c;
        public float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f12331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f12332f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f12333h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f12334i;

        public final float a(long j2) {
            long j3 = this.f12331e;
            if (j2 < j3) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            long j4 = this.g;
            if (j4 < 0 || j2 < j4) {
                return AutoScrollHelper.c((j2 - j3) / this.f12328a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) * 0.5f;
            }
            float f2 = this.f12333h;
            return (AutoScrollHelper.c((j2 - j4) / this.f12334i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f) * f2) + (1.0f - f2);
        }
    }

    public class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.p) {
                if (autoScrollHelper.n) {
                    autoScrollHelper.n = false;
                    ClampedScroller clampedScroller = autoScrollHelper.f12320b;
                    long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                    clampedScroller.f12331e = jCurrentAnimationTimeMillis;
                    clampedScroller.g = -1L;
                    clampedScroller.f12332f = jCurrentAnimationTimeMillis;
                    clampedScroller.f12333h = 0.5f;
                }
                ClampedScroller clampedScroller2 = AutoScrollHelper.this.f12320b;
                if ((clampedScroller2.g > 0 && AnimationUtils.currentAnimationTimeMillis() > clampedScroller2.g + ((long) clampedScroller2.f12334i)) || !AutoScrollHelper.this.g()) {
                    AutoScrollHelper.this.p = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.o) {
                    autoScrollHelper2.o = false;
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0);
                    autoScrollHelper2.d.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (clampedScroller2.f12332f == 0) {
                    v7.h("Cannot compute scroll delta before calling start()");
                    return;
                }
                long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                float fA = clampedScroller2.a(jCurrentAnimationTimeMillis2);
                long j2 = jCurrentAnimationTimeMillis2 - clampedScroller2.f12332f;
                clampedScroller2.f12332f = jCurrentAnimationTimeMillis2;
                AutoScrollHelper.this.f((int) (j2 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * clampedScroller2.d));
                View view = AutoScrollHelper.this.d;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.postOnAnimation(this);
            }
        }
    }

    public AutoScrollHelper(View view) {
        ClampedScroller clampedScroller = new ClampedScroller();
        clampedScroller.f12331e = Long.MIN_VALUE;
        clampedScroller.g = -1L;
        clampedScroller.f12332f = 0L;
        this.f12320b = clampedScroller;
        this.f12321c = new AccelerateInterpolator();
        float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.f12323f = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.g = fArr2;
        float[] fArr3 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.f12326j = fArr3;
        float[] fArr4 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        this.f12327k = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.l = fArr5;
        this.d = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = ((int) ((1575.0f * f2) + 0.5f)) / 1000.0f;
        fArr5[0] = f3;
        fArr5[1] = f3;
        float f4 = ((int) ((f2 * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f4;
        fArr4[1] = f4;
        this.f12324h = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f12325i = r;
        clampedScroller.f12328a = 500;
        clampedScroller.f12329b = 500;
    }

    public static float c(float f2, float f3, float f4) {
        if (f2 > f4) {
            return f4;
        }
        return f2 < f3 ? f3 : f2;
    }

    public abstract boolean a(int i2);

    /* JADX WARN: Code duplicated, block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    /* JADX WARN: Code duplicated, block: B:15:0x004b  */
    /* JADX WARN: Code duplicated, block: B:17:0x0051  */
    public final float b(float f2, float f3, float f4, int i2) {
        float fC;
        float interpolation;
        float fC2 = c(this.f12323f[i2] * f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, this.g[i2]);
        float fD = d(f3 - f2, fC2) - d(f2, fC2);
        AccelerateInterpolator accelerateInterpolator = this.f12321c;
        if (fD >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (fD > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                interpolation = accelerateInterpolator.getInterpolation(fD);
            } else {
                fC = 0.0f;
            }
            if (fC == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            float f5 = this.f12326j[i2];
            float f6 = this.f12327k[i2];
            float f7 = this.l[i2];
            float f8 = f5 * f4;
            return fC > Call.Parameters.DEFAULT_CAMERA_ZOOM ? c(fC * f8, f6, f7) : -c((-fC) * f8, f6, f7);
        }
        interpolation = -accelerateInterpolator.getInterpolation(-fD);
        fC = c(interpolation, -1.0f, 1.0f);
        if (fC == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f9 = this.f12326j[i2];
        float f10 = this.f12327k[i2];
        float f11 = this.l[i2];
        float f12 = f9 * f4;
        if (fC > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
        }
    }

    public final float d(float f2, float f3) {
        if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            int i2 = this.f12324h;
            if (i2 == 0 || i2 == 1) {
                if (f2 < f3) {
                    if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        return 1.0f - (f2 / f3);
                    }
                    if (this.p && i2 == 1) {
                        return 1.0f;
                    }
                }
            } else if (i2 == 2 && f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return f2 / (-f3);
            }
        }
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void e() {
        int i2 = 0;
        if (this.n) {
            this.p = false;
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        ClampedScroller clampedScroller = this.f12320b;
        int i3 = (int) (jCurrentAnimationTimeMillis - clampedScroller.f12331e);
        int i4 = clampedScroller.f12329b;
        if (i3 > i4) {
            i2 = i4;
        } else if (i3 >= 0) {
            i2 = i3;
        }
        clampedScroller.f12334i = i2;
        clampedScroller.f12333h = clampedScroller.a(jCurrentAnimationTimeMillis);
        clampedScroller.g = jCurrentAnimationTimeMillis;
    }

    public abstract void f(int i2);

    public final boolean g() {
        ClampedScroller clampedScroller = this.f12320b;
        float f2 = clampedScroller.d;
        int iAbs = (int) (f2 / Math.abs(f2));
        Math.abs(clampedScroller.f12330c);
        return iAbs != 0 && a(iAbs);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.q
            r1 = 0
            if (r0 != 0) goto L7
            goto L7c
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7c
        L17:
            r7.e()
            return r1
        L1b:
            r7.o = r2
            r7.m = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r7.d
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.b(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.b(r9, r8, r3, r2)
            androidx.core.widget.AutoScrollHelper$ClampedScroller r9 = r7.f12320b
            r9.f12330c = r0
            r9.d = r8
            boolean r8 = r7.p
            if (r8 != 0) goto L7c
            boolean r8 = r7.g()
            if (r8 == 0) goto L7c
            java.lang.Runnable r8 = r7.f12322e
            if (r8 != 0) goto L60
            androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable r8 = new androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable
            r8.<init>()
            r7.f12322e = r8
        L60:
            r7.p = r2
            r7.n = r2
            boolean r8 = r7.m
            if (r8 != 0) goto L75
            int r8 = r7.f12325i
            if (r8 <= 0) goto L75
            java.lang.Runnable r9 = r7.f12322e
            long r5 = (long) r8
            java.util.WeakHashMap r8 = androidx.core.view.ViewCompat.f12200a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7a
        L75:
            java.lang.Runnable r8 = r7.f12322e
            r8.run()
        L7a:
            r7.m = r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}

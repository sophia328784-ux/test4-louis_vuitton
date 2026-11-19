package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Choreographer$VsyncCallback;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class VideoFrameReleaseHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f15967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public VSyncSampler f15968c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Surface f15969e;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f15971h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15974k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FixedFrameRateEstimator f15966a = new FixedFrameRateEstimator();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f15970f = -1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f15972i = 1.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15973j = 0;

    public static final class Api30 {
        public static void a(Surface surface, float f2) {
            try {
                surface.setFrameRate(f2, f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : 1);
            } catch (IllegalStateException e2) {
                Log.e("Failed to call Surface.setFrameRate", e2);
            }
        }
    }

    public static abstract class VSyncSampler implements DisplayManager.DisplayListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Choreographer f15975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DisplayManager f15976c;
        public volatile long d = -9223372036854775807L;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile long f15977e = -9223372036854775807L;

        public VSyncSampler(Choreographer choreographer, DisplayManager displayManager) {
            this.f15975b = choreographer;
            this.f15976c = displayManager;
        }

        public abstract void a();

        public abstract void b();

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i2) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i2) {
        }
    }

    public static final class VSyncSamplerBase extends VSyncSampler implements Choreographer.FrameCallback {
        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void a() {
            long refreshRate;
            this.f15976c.registerDisplayListener(this, Util.r(null));
            this.f15975b.postFrameCallback(this);
            Display display = this.f15976c.getDisplay(0);
            if (display != null) {
                refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            } else {
                Log.g("Unable to query display refresh rate");
                refreshRate = -9223372036854775807L;
            }
            this.f15977e = refreshRate;
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void b() {
            this.f15976c.unregisterDisplayListener(this);
            this.f15975b.removeFrameCallback(this);
            this.d = -9223372036854775807L;
            this.f15977e = -9223372036854775807L;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j2) {
            this.d = j2;
            this.f15975b.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i2) {
            long refreshRate;
            if (i2 == 0) {
                this.f15975b.postFrameCallback(this);
                Display display = this.f15976c.getDisplay(0);
                if (display != null) {
                    refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
                } else {
                    Log.g("Unable to query display refresh rate");
                    refreshRate = -9223372036854775807L;
                }
                this.f15977e = refreshRate;
            }
        }
    }

    public static final class VSyncSamplerV33 extends VSyncSampler implements Choreographer$VsyncCallback {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Handler f15978f;

        public VSyncSamplerV33(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
            this.f15978f = Util.r(null);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void a() {
            this.f15976c.registerDisplayListener(this, Util.r(null));
            this.f15975b.postVsyncCallback(this);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void b() {
            this.f15976c.unregisterDisplayListener(this);
            this.f15978f.removeCallbacksAndMessages(null);
            this.f15975b.removeVsyncCallback(this);
            this.d = -9223372036854775807L;
            this.f15977e = -9223372036854775807L;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i2) {
            if (i2 == 0) {
                this.f15975b.postVsyncCallback(this);
            }
        }

        public final void onVsync(Choreographer.FrameData frameData) {
            this.d = frameData.getFrameTimeNanos();
            Choreographer.FrameTimeline[] frameTimelines = frameData.getFrameTimelines();
            int i2 = 1;
            if (frameTimelines.length >= 2) {
                long expectedPresentationTimeNanos = frameTimelines[1].getExpectedPresentationTimeNanos() - frameTimelines[0].getExpectedPresentationTimeNanos();
                this.f15977e = expectedPresentationTimeNanos != 0 ? expectedPresentationTimeNanos : -9223372036854775807L;
            } else {
                this.f15977e = -9223372036854775807L;
            }
            this.f15978f.postDelayed(new a(this, i2), 500L);
        }
    }

    public VideoFrameReleaseHelper(Context context) {
        this.f15967b = context;
    }

    public final void a() {
        Surface surface;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.f15969e) == null || this.f15973j == Integer.MIN_VALUE || this.f15971h == Call.Parameters.DEFAULT_CAMERA_ZOOM || !surface.isValid()) {
            return;
        }
        this.f15971h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Api30.a(this.f15969e, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final void b() {
        this.m = 0L;
        this.q = -1L;
        this.n = -1L;
        this.f15974k = 0L;
        this.l = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0071  */
    public final void c() {
        float f2;
        float f3;
        if (Build.VERSION.SDK_INT < 30 || this.f15969e == null) {
            return;
        }
        FixedFrameRateEstimator fixedFrameRateEstimator = this.f15966a;
        if (!fixedFrameRateEstimator.f15880a.a()) {
            f2 = this.f15970f;
        } else if (fixedFrameRateEstimator.f15880a.a()) {
            FixedFrameRateEstimator.Matcher matcher = fixedFrameRateEstimator.f15880a;
            long j2 = matcher.f15887e;
            f2 = (float) (1.0E9d / (j2 != 0 ? matcher.f15888f / j2 : 0L));
        } else {
            f2 = -1.0f;
        }
        float f4 = this.g;
        if (f2 == f4) {
            return;
        }
        if (f2 != -1.0f && f4 != -1.0f) {
            if (fixedFrameRateEstimator.f15880a.a()) {
                if ((fixedFrameRateEstimator.f15880a.a() ? fixedFrameRateEstimator.f15880a.f15888f : -9223372036854775807L) >= 5000000000L) {
                    f3 = 0.1f;
                } else {
                    f3 = 1.0f;
                }
            } else {
                f3 = 1.0f;
            }
            if (Math.abs(f2 - this.g) < f3) {
                return;
            }
        } else if (f2 == -1.0f && fixedFrameRateEstimator.f15883e < 30) {
            return;
        }
        this.g = f2;
        d(false);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    public final void d(boolean z) {
        Surface surface;
        float f2;
        if (Build.VERSION.SDK_INT < 30 || (surface = this.f15969e) == null || this.f15973j == Integer.MIN_VALUE || !surface.isValid()) {
            return;
        }
        if (this.d) {
            float f3 = this.g;
            if (f3 != -1.0f) {
                f2 = f3 * this.f15972i;
            } else {
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        } else {
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        if (z || this.f15971h != f2) {
            this.f15971h = f2;
            Api30.a(this.f15969e, f2);
        }
    }
}

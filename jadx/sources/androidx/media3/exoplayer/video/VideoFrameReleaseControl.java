package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Choreographer;
import android.view.Surface;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class VideoFrameReleaseControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameTimingEvaluator f15952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VideoFrameReleaseHelper f15953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15954c;
    public boolean d;
    public long g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f15959j;
    public boolean m;
    public boolean n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15955e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f15956f = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15957h = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15958i = -9223372036854775807L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f15960k = 1.0f;
    public Clock l = Clock.f14143a;
    public final boolean o = true;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameReleaseAction {
    }

    public static class FrameReleaseInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f15961a = -9223372036854775807L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f15962b = -9223372036854775807L;
    }

    public interface FrameTimingEvaluator {
        boolean E(long j2, boolean z);

        boolean t(long j2, long j3);

        boolean w(long j2, long j3, boolean z, boolean z2);
    }

    public VideoFrameReleaseControl(Context context, FrameTimingEvaluator frameTimingEvaluator, long j2) {
        this.f15952a = frameTimingEvaluator;
        this.f15954c = j2;
        this.f15953b = new VideoFrameReleaseHelper(context);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0082  */
    /* JADX WARN: Code duplicated, block: B:65:0x0124  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final int a(long j2, long j3, long j4, long j5, boolean z, boolean z2, FrameReleaseInfo frameReleaseInfo) {
        long j6;
        long j7;
        long j8;
        boolean z3;
        int i2;
        int i3;
        long j9;
        long j10;
        long j11;
        float f2;
        float f3;
        long j12;
        frameReleaseInfo.f15961a = -9223372036854775807L;
        frameReleaseInfo.f15962b = -9223372036854775807L;
        if (this.d && this.f15956f == -9223372036854775807L) {
            this.f15956f = j3;
        }
        int i4 = 1;
        if (this.f15957h != j2) {
            VideoFrameReleaseHelper videoFrameReleaseHelper = this.f15953b;
            j6 = -9223372036854775807L;
            long j13 = videoFrameReleaseHelper.n;
            if (j13 != -1) {
                videoFrameReleaseHelper.q = j13;
                videoFrameReleaseHelper.r = videoFrameReleaseHelper.o;
                videoFrameReleaseHelper.s = videoFrameReleaseHelper.p;
                videoFrameReleaseHelper.f15974k = videoFrameReleaseHelper.l;
            }
            videoFrameReleaseHelper.m++;
            FixedFrameRateEstimator fixedFrameRateEstimator = videoFrameReleaseHelper.f15966a;
            j7 = 1000;
            long j14 = j2 * 1000;
            fixedFrameRateEstimator.f15880a.b(j14);
            if (fixedFrameRateEstimator.f15880a.a()) {
                fixedFrameRateEstimator.f15882c = false;
                j8 = 0;
            } else {
                j8 = 0;
                if (fixedFrameRateEstimator.d != -9223372036854775807L) {
                    if (fixedFrameRateEstimator.f15882c) {
                        FixedFrameRateEstimator.Matcher matcher = fixedFrameRateEstimator.f15881b;
                        long j15 = matcher.d;
                        if (j15 == 0 ? false : matcher.g[(int) ((j15 - 1) % 15)]) {
                            fixedFrameRateEstimator.f15881b.c();
                            fixedFrameRateEstimator.f15881b.b(fixedFrameRateEstimator.d);
                        }
                    } else {
                        fixedFrameRateEstimator.f15881b.c();
                        fixedFrameRateEstimator.f15881b.b(fixedFrameRateEstimator.d);
                    }
                    fixedFrameRateEstimator.f15882c = true;
                    fixedFrameRateEstimator.f15881b.b(j14);
                }
            }
            if (fixedFrameRateEstimator.f15882c && fixedFrameRateEstimator.f15881b.a()) {
                FixedFrameRateEstimator.Matcher matcher2 = fixedFrameRateEstimator.f15880a;
                fixedFrameRateEstimator.f15880a = fixedFrameRateEstimator.f15881b;
                fixedFrameRateEstimator.f15881b = matcher2;
                fixedFrameRateEstimator.f15882c = false;
            }
            fixedFrameRateEstimator.d = j14;
            fixedFrameRateEstimator.f15883e = fixedFrameRateEstimator.f15880a.a() ? 0 : fixedFrameRateEstimator.f15883e + 1;
            videoFrameReleaseHelper.c();
            this.f15957h = j2;
        } else {
            j6 = -9223372036854775807L;
            j7 = 1000;
            j8 = 0;
        }
        long jR = (long) ((j2 - j3) / ((double) this.f15960k));
        if (this.d) {
            jR -= Util.R(this.l.b()) - j4;
        }
        frameReleaseInfo.f15961a = jR;
        if (!z || z2) {
            if (this.m || !this.o) {
                if (!this.o) {
                    this.n = true;
                }
                int i5 = 2;
                if (this.f15958i == j6 || this.f15959j) {
                    int i6 = this.f15955e;
                    if (i6 != 0) {
                        if (i6 != 1) {
                            if (i6 != 2) {
                                if (i6 != 3) {
                                    r81.b();
                                    return 0;
                                }
                                long jR2 = Util.R(this.l.b()) - this.g;
                                if (this.d) {
                                    long j16 = this.f15956f;
                                    if (j16 == j6 || j16 == j3 || !this.f15952a.t(jR, jR2)) {
                                    }
                                }
                                z3 = false;
                            } else if (j3 < j5) {
                                z3 = false;
                            }
                        }
                        z3 = true;
                    } else {
                        z3 = this.d;
                    }
                } else {
                    z3 = false;
                }
                if (z3) {
                    return 0;
                }
                if (!this.d || j3 == this.f15956f) {
                    return 5;
                }
                long jC = this.l.c();
                VideoFrameReleaseHelper videoFrameReleaseHelper2 = this.f15953b;
                long j17 = (frameReleaseInfo.f15961a * j7) + jC;
                if (videoFrameReleaseHelper2.q != -1) {
                    if (videoFrameReleaseHelper2.f15966a.f15880a.a()) {
                        FixedFrameRateEstimator fixedFrameRateEstimator2 = videoFrameReleaseHelper2.f15966a;
                        if (fixedFrameRateEstimator2.f15880a.a()) {
                            FixedFrameRateEstimator.Matcher matcher3 = fixedFrameRateEstimator2.f15880a;
                            i2 = 3;
                            i3 = 5;
                            long j18 = matcher3.f15887e;
                            j12 = j18 == j8 ? j8 : matcher3.f15888f / j18;
                        } else {
                            i2 = 3;
                            i3 = 5;
                            j12 = j6;
                        }
                        f2 = (videoFrameReleaseHelper2.m - videoFrameReleaseHelper2.q) * j12;
                        f3 = videoFrameReleaseHelper2.f15972i;
                    } else {
                        i2 = 3;
                        i3 = 5;
                        f2 = (j2 - videoFrameReleaseHelper2.s) * j7;
                        f3 = videoFrameReleaseHelper2.f15972i;
                    }
                    long j19 = videoFrameReleaseHelper2.r + ((long) (f2 / f3));
                    if (Math.abs(j17 - j19) <= 20000000) {
                        j17 = j19;
                    } else {
                        videoFrameReleaseHelper2.b();
                    }
                } else {
                    i2 = 3;
                    i3 = 5;
                    i4 = 1;
                    i5 = 2;
                }
                videoFrameReleaseHelper2.n = videoFrameReleaseHelper2.m;
                videoFrameReleaseHelper2.o = j17;
                videoFrameReleaseHelper2.p = j2;
                VideoFrameReleaseHelper.VSyncSampler vSyncSampler = videoFrameReleaseHelper2.f15968c;
                if (vSyncSampler != null) {
                    long j20 = vSyncSampler.d;
                    long j21 = videoFrameReleaseHelper2.f15968c.f15977e;
                    if (j20 != j6 && j21 != j6) {
                        long j22 = (((j17 - j20) / j21) * j21) + j20;
                        if (j17 <= j22) {
                            j9 = j22 - j21;
                        } else {
                            j22 += j21;
                            j9 = j22;
                        }
                        long j23 = j22 - j17;
                        long j24 = j17 - j9;
                        long jAbs = Math.abs(j23 - j24);
                        if (jAbs < j21 / 2) {
                            j11 = j23;
                            long j25 = j21 / 4;
                            if (jAbs < j25) {
                                j10 = j9;
                                long j26 = videoFrameReleaseHelper2.f15974k;
                                if (j26 != j8) {
                                    videoFrameReleaseHelper2.l = j26;
                                } else {
                                    if (j11 < j24) {
                                        j25 = -j25;
                                    }
                                    videoFrameReleaseHelper2.l = j25;
                                }
                            } else {
                                j10 = j9;
                                videoFrameReleaseHelper2.l = j8;
                            }
                        } else {
                            j10 = j9;
                            j11 = j23;
                            videoFrameReleaseHelper2.l = videoFrameReleaseHelper2.f15974k;
                        }
                        if (j11 + videoFrameReleaseHelper2.l >= j24) {
                            j22 = j10;
                        }
                        j17 = j22 - ((j21 * 80) / 100);
                    }
                }
                frameReleaseInfo.f15962b = j17;
                long j27 = (j17 - jC) / j7;
                frameReleaseInfo.f15961a = j27;
                boolean z4 = (this.f15958i == j6 || this.f15959j) ? 0 : i4;
                if (this.f15952a.w(j27, j3, z2, z4)) {
                    return 4;
                }
                if (this.f15952a.E(frameReleaseInfo.f15961a, z2)) {
                    return z4 != 0 ? i2 : i5;
                }
                return frameReleaseInfo.f15961a > 50000 ? i3 : i4;
            }
            if (this.f15952a.w(jR, j3, z2, true)) {
                return 4;
            }
            if (!this.d || frameReleaseInfo.f15961a >= 30000) {
                this.n = true;
                return 5;
            }
        }
        return 3;
    }

    public final boolean b(boolean z) {
        if (z && (this.f15955e == 3 || (this.n && (!this.m || !this.o)))) {
            this.f15958i = -9223372036854775807L;
            return true;
        }
        if (this.f15958i == -9223372036854775807L) {
            return false;
        }
        if (this.l.b() < this.f15958i) {
            return true;
        }
        this.f15958i = -9223372036854775807L;
        return false;
    }

    public final void c(boolean z) {
        this.f15959j = z;
        long j2 = this.f15954c;
        this.f15958i = j2 > 0 ? this.l.b() + j2 : -9223372036854775807L;
    }

    public final void d() {
        this.d = true;
        this.g = Util.R(this.l.b());
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.f15953b;
        videoFrameReleaseHelper.d = true;
        videoFrameReleaseHelper.b();
        DisplayManager displayManager = (DisplayManager) videoFrameReleaseHelper.f15967b.getSystemService("display");
        VideoFrameReleaseHelper.VSyncSampler vSyncSamplerV33 = null;
        if (displayManager != null) {
            try {
                Choreographer choreographer = Choreographer.getInstance();
                vSyncSamplerV33 = Build.VERSION.SDK_INT >= 33 ? new VideoFrameReleaseHelper.VSyncSamplerV33(choreographer, displayManager) : new VideoFrameReleaseHelper.VSyncSamplerBase(choreographer, displayManager);
            } catch (RuntimeException e2) {
                Log.h("Vsync sampling disabled due to platform error", e2);
            }
        }
        videoFrameReleaseHelper.f15968c = vSyncSamplerV33;
        if (vSyncSamplerV33 != null) {
            vSyncSamplerV33.a();
        }
        videoFrameReleaseHelper.d(false);
    }

    public final void e(int i2) {
        if (i2 == 0) {
            this.f15955e = 1;
        } else if (i2 == 1) {
            this.f15955e = 0;
        } else {
            if (i2 != 2) {
                r81.b();
                return;
            }
            this.f15955e = Math.min(this.f15955e, 2);
        }
        this.f15953b.b();
    }

    public final void f(float f2) {
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.f15953b;
        videoFrameReleaseHelper.f15970f = f2;
        FixedFrameRateEstimator fixedFrameRateEstimator = videoFrameReleaseHelper.f15966a;
        fixedFrameRateEstimator.f15880a.c();
        fixedFrameRateEstimator.f15881b.c();
        fixedFrameRateEstimator.f15882c = false;
        fixedFrameRateEstimator.d = -9223372036854775807L;
        fixedFrameRateEstimator.f15883e = 0;
        videoFrameReleaseHelper.c();
    }

    public final void g(Surface surface) {
        this.m = surface != null;
        this.n = false;
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.f15953b;
        if (videoFrameReleaseHelper.f15969e != surface) {
            videoFrameReleaseHelper.a();
            videoFrameReleaseHelper.f15969e = surface;
            videoFrameReleaseHelper.d(true);
        }
        this.f15955e = Math.min(this.f15955e, 1);
    }

    public final void h(float f2) {
        Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (f2 == this.f15960k) {
            return;
        }
        this.f15960k = f2;
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.f15953b;
        videoFrameReleaseHelper.f15972i = f2;
        videoFrameReleaseHelper.d(false);
    }
}

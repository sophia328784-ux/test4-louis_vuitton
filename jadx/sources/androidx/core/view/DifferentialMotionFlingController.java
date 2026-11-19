package androidx.core.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.util.Map;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class DifferentialMotionFlingController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DifferentialMotionFlingTarget f12160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public VelocityTracker f12161c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12162e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12163f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f12164h = {Integer.MAX_VALUE, 0};

    public interface DifferentialVelocityProvider {
    }

    public interface FlingVelocityThresholdCalculator {
    }

    public DifferentialMotionFlingController(Context context, DifferentialMotionFlingTarget differentialMotionFlingTarget) {
        this.f12159a = context;
        this.f12160b = differentialMotionFlingTarget;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0079  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:81:0x0164  */
    public final void a(MotionEvent motionEvent, int i2) {
        int i3;
        int i4;
        int scaledMinimumFlingVelocity;
        int scaledMaximumFlingVelocity;
        boolean z;
        float f2;
        float yVelocity;
        long j2;
        int i5;
        float fSqrt;
        float f3;
        float[] fArr;
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        int i6 = this.f12163f;
        int[] iArr = this.f12164h;
        if (i6 == source && this.g == deviceId && this.f12162e == i2) {
            z = false;
            i3 = 1;
            i4 = 0;
        } else {
            Context context = this.f12159a;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int deviceId2 = motionEvent.getDeviceId();
            int source2 = motionEvent.getSource();
            i3 = 1;
            int i7 = Build.VERSION.SDK_INT;
            i4 = 0;
            if (i7 >= 34) {
                scaledMinimumFlingVelocity = ViewConfigurationCompat$Api34Impl.b(viewConfiguration, deviceId2, i2, source2);
            } else {
                InputDevice device = InputDevice.getDevice(deviceId2);
                if (device == null || device.getMotionRange(i2, source2) == null) {
                    scaledMinimumFlingVelocity = Integer.MAX_VALUE;
                } else {
                    Resources resources = context.getResources();
                    int identifier = (source2 == 4194304 && i2 == 26) ? resources.getIdentifier("config_viewMinRotaryEncoderFlingVelocity", "dimen", ReferenceApiV3ConstKt.OS_NAME) : -1;
                    Objects.requireNonNull(viewConfiguration);
                    if (identifier == -1) {
                        scaledMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
                    } else if (identifier == 0 || (scaledMinimumFlingVelocity = resources.getDimensionPixelSize(identifier)) < 0) {
                        scaledMinimumFlingVelocity = Integer.MAX_VALUE;
                    }
                }
            }
            iArr[0] = scaledMinimumFlingVelocity;
            int deviceId3 = motionEvent.getDeviceId();
            int source3 = motionEvent.getSource();
            if (i7 >= 34) {
                scaledMaximumFlingVelocity = ViewConfigurationCompat$Api34Impl.a(viewConfiguration, deviceId3, i2, source3);
            } else {
                InputDevice device2 = InputDevice.getDevice(deviceId3);
                if (device2 == null || device2.getMotionRange(i2, source3) == null) {
                    scaledMaximumFlingVelocity = Integer.MIN_VALUE;
                } else {
                    Resources resources2 = context.getResources();
                    int identifier2 = (source3 == 4194304 && i2 == 26) ? resources2.getIdentifier("config_viewMaxRotaryEncoderFlingVelocity", "dimen", ReferenceApiV3ConstKt.OS_NAME) : -1;
                    Objects.requireNonNull(viewConfiguration);
                    if (identifier2 == -1) {
                        scaledMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
                    } else if (identifier2 == 0 || (scaledMaximumFlingVelocity = resources2.getDimensionPixelSize(identifier2)) < 0) {
                        scaledMaximumFlingVelocity = Integer.MIN_VALUE;
                    }
                }
            }
            iArr[1] = scaledMaximumFlingVelocity;
            this.f12163f = source;
            this.g = deviceId;
            this.f12162e = i2;
            z = true;
        }
        int i8 = iArr[i4];
        VelocityTracker velocityTracker = this.f12161c;
        if (i8 == Integer.MAX_VALUE) {
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f12161c = null;
                return;
            }
            return;
        }
        if (velocityTracker == null) {
            this.f12161c = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker2 = this.f12161c;
        Map map = VelocityTrackerCompat.f12195a;
        velocityTracker2.addMovement(motionEvent);
        int i9 = Build.VERSION.SDK_INT;
        float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i10 = 20;
        if (i9 < 34 && motionEvent.getSource() == 4194304) {
            Map map2 = VelocityTrackerCompat.f12195a;
            if (!map2.containsKey(velocityTracker2)) {
                map2.put(velocityTracker2, new VelocityTrackerFallback());
            }
            VelocityTrackerFallback velocityTrackerFallback = (VelocityTrackerFallback) map2.get(velocityTracker2);
            long[] jArr = velocityTrackerFallback.f12197b;
            long eventTime = motionEvent.getEventTime();
            if (velocityTrackerFallback.d != 0 && eventTime - jArr[velocityTrackerFallback.f12199e] > 40) {
                velocityTrackerFallback.d = i4;
                velocityTrackerFallback.f12198c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            int i11 = (velocityTrackerFallback.f12199e + 1) % 20;
            velocityTrackerFallback.f12199e = i11;
            int i12 = velocityTrackerFallback.d;
            if (i12 != 20) {
                velocityTrackerFallback.d = i12 + 1;
            }
            velocityTrackerFallback.f12196a[i11] = motionEvent.getAxisValue(26);
            jArr[velocityTrackerFallback.f12199e] = eventTime;
        }
        velocityTracker2.computeCurrentVelocity(1000, Float.MAX_VALUE);
        VelocityTrackerFallback velocityTrackerFallback2 = (VelocityTrackerFallback) VelocityTrackerCompat.f12195a.get(velocityTracker2);
        if (velocityTrackerFallback2 != null) {
            float[] fArr2 = velocityTrackerFallback2.f12196a;
            long[] jArr2 = velocityTrackerFallback2.f12197b;
            int i13 = velocityTrackerFallback2.d;
            if (i13 < 2) {
                fSqrt = 0.0f;
                f2 = 0.0f;
            } else {
                int i14 = velocityTrackerFallback2.f12199e;
                int i15 = ((i14 + 20) - (i13 - 1)) % 20;
                long j3 = jArr2[i14];
                while (true) {
                    j2 = jArr2[i15];
                    long j4 = j3 - j2;
                    i5 = velocityTrackerFallback2.d;
                    if (j4 <= 100) {
                        break;
                    }
                    velocityTrackerFallback2.d = i5 - 1;
                    i15 = (i15 + 1) % 20;
                }
                if (i5 < 2) {
                    fSqrt = 0.0f;
                    f2 = 0.0f;
                } else if (i5 == 2) {
                    int i16 = (i15 + 1) % 20;
                    long j5 = jArr2[i16];
                    if (j2 == j5) {
                        fSqrt = 0.0f;
                        f2 = 0.0f;
                    } else {
                        fSqrt = fArr2[i16] / (j5 - j2);
                        f2 = 0.0f;
                    }
                } else {
                    float fAbs = 0.0f;
                    int i17 = 0;
                    int i18 = 0;
                    while (true) {
                        if (i18 >= velocityTrackerFallback2.d - 1) {
                            break;
                        }
                        int i19 = i18 + i15;
                        long j6 = jArr2[i19 % 20];
                        int i20 = (i19 + 1) % i10;
                        if (jArr2[i20] == j6) {
                            f3 = f4;
                            fArr = fArr2;
                        } else {
                            i17++;
                            f3 = f4;
                            fArr = fArr2;
                            float fSqrt2 = (fAbs < f4 ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(fAbs) * 2.0f));
                            float f5 = fArr[i20] / (jArr2[i20] - j6);
                            fAbs += Math.abs(f5) * (f5 - fSqrt2);
                            if (i17 == i3) {
                                fAbs *= 0.5f;
                            }
                        }
                        i18++;
                        f4 = f3;
                        fArr2 = fArr;
                        i10 = 20;
                        i3 = 1;
                    }
                    f2 = f4;
                    fSqrt = (fAbs < f2 ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(fAbs) * 2.0f));
                }
            }
            float f6 = fSqrt * 1000.0f;
            velocityTrackerFallback2.f12198c = f6;
            if (f6 < (-Math.abs((float) r4))) {
                velocityTrackerFallback2.f12198c = -Math.abs(Float.MAX_VALUE);
            } else if (velocityTrackerFallback2.f12198c > Math.abs((float) r4)) {
                velocityTrackerFallback2.f12198c = Math.abs((float) r4);
            }
        } else {
            f2 = 0.0f;
        }
        if (Build.VERSION.SDK_INT >= 34) {
            yVelocity = VelocityTrackerCompat.Api34Impl.a(velocityTracker2, i2);
        } else if (i2 == 0) {
            yVelocity = velocityTracker2.getXVelocity();
        } else if (i2 == 1) {
            yVelocity = velocityTracker2.getYVelocity();
        } else {
            VelocityTrackerFallback velocityTrackerFallback3 = (VelocityTrackerFallback) VelocityTrackerCompat.f12195a.get(velocityTracker2);
            yVelocity = (velocityTrackerFallback3 == null || i2 != 26) ? f2 : velocityTrackerFallback3.f12198c;
        }
        DifferentialMotionFlingTarget differentialMotionFlingTarget = this.f12160b;
        float fB = differentialMotionFlingTarget.b() * yVelocity;
        float fSignum = Math.signum(fB);
        if (z || (fSignum != Math.signum(this.d) && fSignum != f2)) {
            differentialMotionFlingTarget.c();
        }
        if (Math.abs(fB) < iArr[0]) {
            return;
        }
        int i21 = iArr[1];
        float fMax = Math.max(-i21, Math.min(fB, i21));
        this.d = differentialMotionFlingTarget.a(fMax) ? fMax : f2;
    }
}

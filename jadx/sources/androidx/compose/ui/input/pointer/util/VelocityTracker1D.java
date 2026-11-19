package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\tB\u001d\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;", "", "", "isDataDifferential", "Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;", "strategy", "<init>", "(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V", "(Z)V", "Strategy", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VelocityTracker1D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f9404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Strategy f9405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9406c;
    public final DataPointAtTime[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float[] f9408f;
    public final float[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f9409h;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;", "", "Lsq2", "Impulse", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Strategy {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Strategy[] $VALUES;
        public static final Strategy Impulse;
        public static final Strategy Lsq2;

        static {
            Strategy strategy = new Strategy("Lsq2", 0);
            Lsq2 = strategy;
            Strategy strategy2 = new Strategy("Impulse", 1);
            Impulse = strategy2;
            Strategy[] strategyArr = {strategy, strategy2};
            $VALUES = strategyArr;
            $ENTRIES = EnumEntriesKt.a(strategyArr);
        }

        public static Strategy valueOf(String str) {
            return (Strategy) Enum.valueOf(Strategy.class, str);
        }

        public static Strategy[] values() {
            return (Strategy[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9410a;

        static {
            int[] iArr = new int[Strategy.values().length];
            try {
                iArr[Strategy.Impulse.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Strategy.Lsq2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f9410a = iArr;
        }
    }

    public VelocityTracker1D(boolean z, Strategy strategy) {
        this.f9404a = z;
        this.f9405b = strategy;
        if (z && strategy.equals(Strategy.Lsq2)) {
            md.k("Lsq2 not (yet) supported for differential axes");
            throw null;
        }
        int i2 = WhenMappings.f9410a[strategy.ordinal()];
        int i3 = 2;
        if (i2 != 1) {
            if (i2 != 2) {
                v40.g();
                throw null;
            }
            i3 = 3;
        }
        this.f9406c = i3;
        this.d = new DataPointAtTime[20];
        this.f9408f = new float[20];
        this.g = new float[20];
        this.f9409h = new float[3];
    }

    public final void a(float f2, long j2) {
        int i2 = (this.f9407e + 1) % 20;
        this.f9407e = i2;
        DataPointAtTime[] dataPointAtTimeArr = this.d;
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i2];
        if (dataPointAtTime == null) {
            dataPointAtTimeArr[i2] = new DataPointAtTime(j2, f2);
        } else {
            dataPointAtTime.f9396a = j2;
            dataPointAtTime.f9397b = f2;
        }
    }

    public final float b(float f2) {
        Strategy strategy;
        float[] fArr;
        float[] fArr2;
        float f3;
        boolean z;
        int i2;
        float f4;
        float fSignum;
        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.c("maximumVelocity should be a positive value. You specified=" + f2);
        }
        int i3 = this.f9407e;
        DataPointAtTime[] dataPointAtTimeArr = this.d;
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i3];
        if (dataPointAtTime == null) {
            f4 = 0.0f;
            f3 = 0.0f;
        } else {
            int i4 = 0;
            DataPointAtTime dataPointAtTime2 = dataPointAtTime;
            while (true) {
                DataPointAtTime dataPointAtTime3 = dataPointAtTimeArr[i3];
                boolean z2 = this.f9404a;
                strategy = this.f9405b;
                fArr = this.f9408f;
                fArr2 = this.g;
                if (dataPointAtTime3 == null) {
                    f3 = f5;
                    z = z2;
                    i2 = 1;
                    break;
                }
                long j2 = dataPointAtTime.f9396a;
                f3 = f5;
                int i5 = i3;
                long j3 = dataPointAtTime3.f9396a;
                float f6 = j2 - j3;
                z = z2;
                i2 = 1;
                float fAbs = Math.abs(j3 - dataPointAtTime2.f9396a);
                dataPointAtTime2 = (strategy == Strategy.Lsq2 || z) ? dataPointAtTime3 : dataPointAtTime;
                if (f6 > 100.0f || fAbs > 40.0f) {
                    break;
                }
                fArr[i4] = dataPointAtTime3.f9397b;
                fArr2[i4] = -f6;
                i3 = (i5 == 0 ? 20 : i5) - 1;
                i4++;
                if (i4 >= 20) {
                    break;
                }
                f5 = f3;
            }
            if (i4 >= this.f9406c) {
                int i6 = WhenMappings.f9410a[strategy.ordinal()];
                if (i6 == i2) {
                    int i7 = i4 - i2;
                    float f7 = fArr2[i7];
                    int i8 = i7;
                    float fAbs2 = f3;
                    while (i8 > 0) {
                        int i9 = i8 - 1;
                        float f8 = fArr2[i9];
                        if (f7 != f8) {
                            float f9 = (z ? -fArr[i9] : fArr[i8] - fArr[i9]) / (f7 - f8);
                            fAbs2 += Math.abs(f9) * (f9 - (Math.signum(fAbs2) * ((float) Math.sqrt(Math.abs(fAbs2) * 2.0f))));
                            if (i8 == i7) {
                                fAbs2 *= 0.5f;
                            }
                        }
                        i8--;
                        f7 = f8;
                    }
                    fSignum = Math.signum(fAbs2) * ((float) Math.sqrt(Math.abs(fAbs2) * 2.0f));
                } else {
                    if (i6 != 2) {
                        v40.g();
                        return f3;
                    }
                    try {
                        float[] fArr3 = this.f9409h;
                        VelocityTrackerKt.c(i4, fArr2, fArr, fArr3);
                        fSignum = fArr3[i2];
                    } catch (IllegalArgumentException unused) {
                        fSignum = f3;
                    }
                }
                f4 = fSignum * 1000.0f;
            } else {
                f4 = f3;
            }
        }
        if (f4 == f3 || Float.isNaN(f4)) {
            return f3;
        }
        if (f4 <= f3) {
            float f10 = -f2;
            if (f4 < f10) {
                return f10;
            }
        } else if (f4 > f2) {
            f4 = f2;
        }
        return f4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VelocityTracker1D() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ VelocityTracker1D(boolean z, Strategy strategy, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? Strategy.Lsq2 : strategy);
    }

    public VelocityTracker1D(boolean z) {
        this(z, Strategy.Impulse);
    }
}

package androidx.media3.exoplayer.video;

import android.util.Range;
import com.google.common.base.Preconditions;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class VideoFrameReleaseEarlyTimeForecaster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f15964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public double f15965c;
    public Range d;

    public VideoFrameReleaseEarlyTimeForecaster(float f2) {
        Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Range range = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f2)));
        this.d = range;
        this.f15965c = ((Double) range.getUpper()).doubleValue();
        this.f15963a = -9223372036854775807L;
        this.f15964b = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    public final void a(long j2, long j3) {
        double dDoubleValue;
        Preconditions.g(j2 != -9223372036854775807L);
        Preconditions.g(j3 != -9223372036854775807L);
        long j4 = this.f15963a;
        if (j4 != -9223372036854775807L) {
            long j5 = this.f15964b;
            if (j5 == -9223372036854775807L || j2 == j4) {
                dDoubleValue = ((Double) this.d.getUpper()).doubleValue();
            } else {
                dDoubleValue = (j3 - j5) / (j2 - j4);
            }
        } else {
            dDoubleValue = ((Double) this.d.getUpper()).doubleValue();
        }
        this.f15965c = (((Double) this.d.clamp(Double.valueOf(dDoubleValue))).doubleValue() * 0.20000000298023224d) + (this.f15965c * 0.800000011920929d);
        this.f15963a = j2;
        this.f15964b = j3;
    }

    public final void b() {
        this.f15965c = ((Double) this.d.getUpper()).doubleValue();
        this.f15963a = -9223372036854775807L;
        this.f15964b = -9223372036854775807L;
    }

    public final void c(float f2) {
        Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.d = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f2)));
        b();
    }
}

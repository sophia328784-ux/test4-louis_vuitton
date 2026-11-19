package androidx.camera.video;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AudioStats extends AudioStats {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f2719c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f2720e;

    public AutoValue_AudioStats(int i2, double d, long j2, Throwable th) {
        this.f2718b = i2;
        this.f2719c = d;
        this.d = j2;
        this.f2720e = th;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AudioStats) {
            AutoValue_AudioStats autoValue_AudioStats = (AutoValue_AudioStats) ((AudioStats) obj);
            if (this.f2718b == autoValue_AudioStats.f2718b && Double.doubleToLongBits(this.f2719c) == Double.doubleToLongBits(autoValue_AudioStats.f2719c) && this.d == autoValue_AudioStats.d) {
                Throwable th = autoValue_AudioStats.f2720e;
                Throwable th2 = this.f2720e;
                if (th2 != null ? th2.equals(th) : th == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (this.f2718b ^ 1000003) * 1000003;
        double d = this.f2719c;
        int iDoubleToLongBits = (i2 ^ ((int) (Double.doubleToLongBits(d) ^ (Double.doubleToLongBits(d) >>> 32)))) * 1000003;
        long j2 = this.d;
        int i3 = (iDoubleToLongBits ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        Throwable th = this.f2720e;
        return (th == null ? 0 : th.hashCode()) ^ i3;
    }

    public final String toString() {
        return "AudioStats{audioState=" + this.f2718b + ", audioAmplitudeInternal=" + this.f2719c + ", audioBytesRecorded=" + this.d + ", errorCause=" + this.f2720e + "}";
    }
}

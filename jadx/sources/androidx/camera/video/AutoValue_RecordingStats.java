package androidx.camera.video;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_RecordingStats extends RecordingStats {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AudioStats f2745c;

    public AutoValue_RecordingStats(long j2, long j3, AudioStats audioStats) {
        this.f2743a = j2;
        this.f2744b = j3;
        this.f2745c = audioStats;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecordingStats)) {
            return false;
        }
        AutoValue_RecordingStats autoValue_RecordingStats = (AutoValue_RecordingStats) ((RecordingStats) obj);
        return this.f2743a == autoValue_RecordingStats.f2743a && this.f2744b == autoValue_RecordingStats.f2744b && this.f2745c.equals(autoValue_RecordingStats.f2745c);
    }

    public final int hashCode() {
        long j2 = this.f2743a;
        int i2 = (((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003;
        long j3 = this.f2744b;
        return this.f2745c.hashCode() ^ ((i2 ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003);
    }

    public final String toString() {
        return "RecordingStats{recordedDurationNanos=" + this.f2743a + ", numBytesRecorded=" + this.f2744b + ", audioStats=" + this.f2745c + "}";
    }
}

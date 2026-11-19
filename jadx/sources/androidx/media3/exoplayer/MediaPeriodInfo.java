package androidx.media3.exoplayer;

import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class MediaPeriodInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSource.MediaPeriodId f14718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14720c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f14721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f14722f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f14723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f14724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f14725j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f14726k;

    public MediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6 = true;
        Preconditions.g(!z5 || z3);
        Preconditions.g(!z4 || z3);
        if (z2 && (z3 || z4 || z5)) {
            z6 = false;
        }
        Preconditions.g(z6);
        this.f14718a = mediaPeriodId;
        this.f14719b = j2;
        this.f14720c = j3;
        this.d = j4;
        this.f14721e = j5;
        this.f14722f = j6;
        this.g = z;
        this.f14723h = z2;
        this.f14724i = z3;
        this.f14725j = z4;
        this.f14726k = z5;
    }

    public final MediaPeriodInfo a(long j2) {
        if (j2 == this.d) {
            return this;
        }
        return new MediaPeriodInfo(this.f14718a, this.f14719b, this.f14720c, j2, this.f14721e, this.f14722f, this.g, this.f14723h, this.f14724i, this.f14725j, this.f14726k);
    }

    public final MediaPeriodInfo b(long j2, long j3) {
        if (j2 == this.f14719b && j3 == this.f14720c) {
            return this;
        }
        return new MediaPeriodInfo(this.f14718a, j2, j3, this.d, this.f14721e, this.f14722f, this.g, this.f14723h, this.f14724i, this.f14725j, this.f14726k);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MediaPeriodInfo.class == obj.getClass()) {
            MediaPeriodInfo mediaPeriodInfo = (MediaPeriodInfo) obj;
            if (this.f14719b == mediaPeriodInfo.f14719b && this.d == mediaPeriodInfo.d && this.f14721e == mediaPeriodInfo.f14721e && this.f14722f == mediaPeriodInfo.f14722f && this.g == mediaPeriodInfo.g && this.f14723h == mediaPeriodInfo.f14723h && this.f14724i == mediaPeriodInfo.f14724i && this.f14725j == mediaPeriodInfo.f14725j && this.f14726k == mediaPeriodInfo.f14726k && Objects.equals(this.f14718a, mediaPeriodInfo.f14718a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f14718a.hashCode() + 527) * 31) + ((int) this.f14719b)) * 31) + ((int) this.d)) * 31) + ((int) this.f14721e)) * 31) + ((int) this.f14722f)) * 31) + (this.g ? 1 : 0)) * 31) + (this.f14723h ? 1 : 0)) * 31) + (this.f14724i ? 1 : 0)) * 31) + (this.f14725j ? 1 : 0)) * 31) + (this.f14726k ? 1 : 0);
    }
}

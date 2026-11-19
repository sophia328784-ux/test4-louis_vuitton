package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class SinglePeriodTimeline extends Timeline {
    public static final Object r = new Object();
    public static final MediaItem s;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f15600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15601f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f15603i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f15604j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f15605k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final Object o;
    public final MediaItem p;
    public final MediaItem.LiveConfiguration q;

    static {
        MediaItem.Builder builder = new MediaItem.Builder();
        builder.f13795a = "SinglePeriodTimeline";
        builder.f13796b = Uri.EMPTY;
        s = builder.a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public SinglePeriodTimeline(long j2, long j3, long j4, long j5, long j6, long j7, long j8, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        MediaItem mediaItem = s;
        MediaItem.Builder builderA = mediaItem.a();
        builderA.f13802j = obj2;
        this(j2, j3, j4, j5, j6, j7, j8, z, z2, false, obj, builderA.a(), z3 ? mediaItem.f13789c : null);
    }

    @Override // androidx.media3.common.Timeline
    public final int b(Object obj) {
        return r != obj ? -1 : 0;
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
        Preconditions.j(i2, 1);
        Object obj = z ? r : null;
        long j2 = -this.f15604j;
        period.getClass();
        period.i(null, obj, 0, this.f15602h, j2, AdPlaybackState.g, false);
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final int h() {
        return 1;
    }

    @Override // androidx.media3.common.Timeline
    public final Object l(int i2) {
        Preconditions.j(i2, 1);
        return r;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002d A[PHI: r1
      0x002d: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v4 long) binds: [B:3:0x000c, B:5:0x0010, B:7:0x0016, B:12:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media3.common.Timeline
    public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
        long j3;
        Preconditions.j(i2, 1);
        long j4 = this.f15605k;
        boolean z = this.m;
        if (!z || this.n || j2 == 0) {
            j3 = j4;
        } else {
            long j5 = this.f15603i;
            if (j5 != -9223372036854775807L) {
                j4 += j2;
                if (j4 <= j5) {
                    j3 = j4;
                }
            }
            j3 = -9223372036854775807L;
        }
        window.b(Timeline.Window.q, this.p, this.o, this.f15600e, this.f15601f, this.g, this.l, z, this.q, j3, this.f15603i, 0, 0, this.f15604j);
        return window;
    }

    @Override // androidx.media3.common.Timeline
    public final int o() {
        return 1;
    }

    public SinglePeriodTimeline(long j2, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(j2, j2, 0L, 0L, z, z2, z3, obj, mediaItem);
    }

    @Deprecated
    public SinglePeriodTimeline(long j2, long j3, long j4, long j5, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j2, j3, j4, j5, z, z2, z3, obj, obj2);
    }

    public SinglePeriodTimeline(long j2, long j3, long j4, long j5, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j2, j3, j4, j5, z, z2, false, obj, mediaItem, z3 ? mediaItem.f13789c : null);
    }

    @Deprecated
    public SinglePeriodTimeline(long j2, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(j2, j2, 0L, 0L, z, z2, z3, obj, obj2);
    }

    @Deprecated
    public SinglePeriodTimeline(long j2, long j3, long j4, long j5, long j6, long j7, long j8, boolean z, boolean z2, Object obj, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
        this(j2, j3, j4, j5, j6, j7, j8, z, z2, false, obj, mediaItem, liveConfiguration);
    }

    public SinglePeriodTimeline(long j2, long j3, long j4, long j5, long j6, long j7, long j8, boolean z, boolean z2, boolean z3, Object obj, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
        this.f15600e = j2;
        this.f15601f = j3;
        this.g = j4;
        this.f15602h = j5;
        this.f15603i = j6;
        this.f15604j = j7;
        this.f15605k = j8;
        this.l = z;
        this.m = z2;
        this.n = z3;
        this.o = obj;
        mediaItem.getClass();
        this.p = mediaItem;
        this.q = liveConfiguration;
    }
}

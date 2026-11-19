package androidx.media3.exoplayer.source;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ClippingMediaSource extends WrappingMediaSource {
    public final long l;
    public final long m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final ArrayList r;
    public final Timeline.Window s;
    public ClippingTimeline t;
    public IllegalClippingException u;
    public long v;
    public long w;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSource f15456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f15457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f15458c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f15459e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f15460f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f15461h;

        public Builder(MediaSource mediaSource) {
            mediaSource.getClass();
            this.f15456a = mediaSource;
            this.d = true;
            this.f15458c = Long.MIN_VALUE;
        }

        public final void a(long j2) {
            Preconditions.g(j2 >= 0);
            Preconditions.q(!this.f15461h);
            this.f15457b = j2;
        }
    }

    public static final class ClippingTimeline extends ForwardingTimeline {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f15462f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f15463h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f15464i;

        public ClippingTimeline(Timeline timeline, long j2, long j3, boolean z) throws IllegalClippingException {
            super(timeline);
            if (j3 != Long.MIN_VALUE && j3 < j2) {
                throw new IllegalClippingException(2, j2, j3);
            }
            boolean z2 = false;
            if (timeline.h() != 1) {
                throw new IllegalClippingException(0);
            }
            Timeline.Window windowM = timeline.m(0, new Timeline.Window(), 0L);
            long jMax = Math.max(0L, j2);
            if (!z && !windowM.f13975k && jMax != 0 && !windowM.f13972h) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j3 == Long.MIN_VALUE ? windowM.m : Math.max(0L, j3);
            long j4 = windowM.m;
            if (j4 != -9223372036854775807L) {
                jMax2 = jMax2 > j4 ? j4 : jMax2;
                if (jMax > jMax2) {
                    jMax = jMax2;
                }
            }
            this.f15462f = jMax;
            this.g = jMax2;
            this.f15463h = jMax2 == -9223372036854775807L ? -9223372036854775807L : jMax2 - jMax;
            if (windowM.f13973i && (jMax2 == -9223372036854775807L || (j4 != -9223372036854775807L && jMax2 == j4))) {
                z2 = true;
            }
            this.f15464i = z2;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
            this.f15491e.f(0, period, z);
            long j2 = period.f13962e - this.f15462f;
            long j3 = this.f15463h;
            period.i(period.f13959a, period.f13960b, 0, j3 != -9223372036854775807L ? j3 - j2 : -9223372036854775807L, j2, AdPlaybackState.g, false);
            return period;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
            this.f15491e.m(0, window, 0L);
            long j3 = window.p;
            long j4 = this.f15462f;
            window.p = j3 + j4;
            window.m = this.f15463h;
            window.f13973i = this.f15464i;
            long j5 = window.l;
            if (j5 != -9223372036854775807L) {
                long jMax = Math.max(j5, j4);
                window.l = jMax;
                long j6 = this.g;
                if (j6 != -9223372036854775807L) {
                    jMax = Math.min(jMax, j6);
                }
                window.l = jMax - j4;
            }
            long jF0 = Util.f0(j4);
            long j7 = window.f13970e;
            if (j7 != -9223372036854775807L) {
                window.f13970e = j7 + jF0;
            }
            long j8 = window.f13971f;
            if (j8 != -9223372036854775807L) {
                window.f13971f = j8 + jF0;
            }
            return window;
        }
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j2, long j3, boolean z, boolean z2, boolean z3) {
        Builder builder = new Builder(mediaSource);
        builder.a(j2);
        Preconditions.q(!builder.f15461h);
        builder.f15458c = j3;
        Preconditions.q(!builder.f15461h);
        builder.d = z;
        Preconditions.q(!builder.f15461h);
        builder.f15459e = z2;
        Preconditions.q(!builder.f15461h);
        builder.f15460f = z3;
        this(builder);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public final void D(Timeline timeline) {
        if (this.u != null) {
            return;
        }
        G(timeline);
    }

    public final void G(Timeline timeline) {
        long j2;
        long j3;
        long j4;
        Timeline.Window window = this.s;
        timeline.n(0, window);
        long j5 = window.p;
        ClippingTimeline clippingTimeline = this.t;
        long j6 = this.m;
        ArrayList arrayList = this.r;
        if (clippingTimeline == null || arrayList.isEmpty() || this.o) {
            boolean z = this.p;
            j2 = this.l;
            if (z) {
                long j7 = window.l;
                j2 += j7;
                j3 = j7 + j6;
            } else {
                j3 = j6;
            }
            this.v = j5 + j2;
            this.w = j6 != Long.MIN_VALUE ? j5 + j3 : Long.MIN_VALUE;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((ClippingMediaPeriod) arrayList.get(i2)).r(this.v, this.w);
            }
            j4 = j3;
        } else {
            j2 = this.v - j5;
            j4 = j6 != Long.MIN_VALUE ? this.w - j5 : Long.MIN_VALUE;
        }
        try {
            ClippingTimeline clippingTimeline2 = new ClippingTimeline(timeline, j2, j4, this.q);
            this.t = clippingTimeline2;
            v(clippingTimeline2);
        } catch (IllegalClippingException e2) {
            this.u = e2;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                ((ClippingMediaPeriod) arrayList.get(i3)).f15451j = this.u;
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaPeriod c(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.f15639k.c(mediaPeriodId, allocator, j2), this.n, this.v, this.w, false);
        this.r.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        ArrayList arrayList = this.r;
        Preconditions.q(arrayList.remove(mediaPeriod));
        this.f15639k.g(((ClippingMediaPeriod) mediaPeriod).f15445b);
        if (!arrayList.isEmpty() || this.o) {
            return;
        }
        ClippingTimeline clippingTimeline = this.t;
        clippingTimeline.getClass();
        G(clippingTimeline.f15491e);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public final void n() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.u;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.n();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean q(MediaItem mediaItem) {
        MediaSource mediaSource = this.f15639k;
        return mediaSource.d().f13790e.equals(mediaItem.f13790e) && mediaSource.q(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public final void w() {
        super.w();
        this.u = null;
        this.t = null;
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j2, long j3) {
        Builder builder = new Builder(mediaSource);
        builder.a(j2);
        Preconditions.q(!builder.f15461h);
        builder.f15458c = j3;
        this(builder);
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j2) {
        Builder builder = new Builder(mediaSource);
        Preconditions.q(!builder.f15461h);
        builder.f15458c = j2;
        Preconditions.q(!builder.f15461h);
        builder.f15460f = true;
        this(builder);
    }

    public ClippingMediaSource(Builder builder) {
        super(builder.f15456a);
        this.l = builder.f15457b;
        this.m = builder.f15458c;
        this.n = builder.d;
        this.o = builder.f15459e;
        this.p = builder.f15460f;
        this.q = builder.g;
        this.r = new ArrayList();
        this.s = new Timeline.Window();
    }

    public static final class IllegalClippingException extends IOException {

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public IllegalClippingException(int i2, long j2, long j3) {
            String str;
            if (i2 != 0) {
                if (i2 == 1) {
                    str = "not seekable to start";
                } else if (i2 != 2) {
                    str = "unknown";
                } else {
                    Preconditions.q((j2 == -9223372036854775807L || j3 == -9223372036854775807L) ? false : true);
                    str = "start exceeds end. Start time: " + j2 + ", End time: " + j3;
                }
            } else {
                str = "invalid period count";
            }
            super("Illegal clipping: ".concat(str));
        }

        public IllegalClippingException(int i2) {
            this(i2, -9223372036854775807L, -9223372036854775807L);
        }
    }
}

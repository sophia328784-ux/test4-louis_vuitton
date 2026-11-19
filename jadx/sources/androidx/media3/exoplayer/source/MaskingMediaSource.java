package androidx.media3.exoplayer.source;

import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MaskingMediaSource extends WrappingMediaSource {
    public final boolean l;
    public final Timeline.Window m;
    public final Timeline.Period n;
    public MaskingTimeline o;
    public MaskingMediaPeriod p;
    public boolean q;
    public boolean r;
    public boolean s;

    public static final class MaskingTimeline extends ForwardingTimeline {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Object f15507h = new Object();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Object f15508f;
        public final Object g;

        public MaskingTimeline(Timeline timeline, Object obj, Object obj2) {
            super(timeline);
            this.f15508f = obj;
            this.g = obj2;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final int b(Object obj) {
            Object obj2;
            if (f15507h == obj && (obj2 = this.g) != null) {
                obj = obj2;
            }
            return this.f15491e.b(obj);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
            this.f15491e.f(i2, period, z);
            if (Objects.equals(period.f13960b, this.g) && z) {
                period.f13960b = f15507h;
            }
            return period;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Object l(int i2) {
            Object objL = this.f15491e.l(i2);
            return Objects.equals(objL, this.g) ? f15507h : objL;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
            this.f15491e.m(i2, window, j2);
            if (Objects.equals(window.f13967a, this.f15508f)) {
                window.f13967a = Timeline.Window.q;
            }
            return window;
        }
    }

    public static final class PlaceholderTimeline extends Timeline {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaItem f15509e;

        public PlaceholderTimeline(MediaItem mediaItem) {
            this.f15509e = mediaItem;
        }

        @Override // androidx.media3.common.Timeline
        public final int b(Object obj) {
            return obj == MaskingTimeline.f15507h ? 0 : -1;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
            period.i(z ? 0 : null, z ? MaskingTimeline.f15507h : null, 0, -9223372036854775807L, 0L, AdPlaybackState.g, true);
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public final int h() {
            return 1;
        }

        @Override // androidx.media3.common.Timeline
        public final Object l(int i2) {
            return MaskingTimeline.f15507h;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
            window.b(Timeline.Window.q, this.f15509e, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            window.f13975k = true;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public final int o() {
            return 1;
        }
    }

    public MaskingMediaSource(MediaSource mediaSource, boolean z) {
        super(mediaSource);
        this.l = z && mediaSource.o();
        this.m = new Timeline.Window();
        this.n = new Timeline.Period();
        Timeline timelineP = mediaSource.p();
        if (timelineP == null) {
            this.o = new MaskingTimeline(new PlaceholderTimeline(mediaSource.d()), Timeline.Window.q, MaskingTimeline.f15507h);
        } else {
            this.o = new MaskingTimeline(timelineP, null, null);
            this.s = true;
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public final MediaSource.MediaPeriodId C(MediaSource.MediaPeriodId mediaPeriodId) {
        Object obj = mediaPeriodId.f15516a;
        Object obj2 = this.o.g;
        if (obj2 != null && obj2.equals(obj)) {
            obj = MaskingTimeline.f15507h;
        }
        return mediaPeriodId.a(obj);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public final void D(Timeline timeline) {
        long j2;
        MaskingTimeline maskingTimeline;
        MediaSource.MediaPeriodId mediaPeriodIdA;
        MaskingTimeline maskingTimeline2;
        if (this.r) {
            MaskingTimeline maskingTimeline3 = this.o;
            this.o = new MaskingTimeline(timeline, maskingTimeline3.f15508f, maskingTimeline3.g);
            MaskingMediaPeriod maskingMediaPeriod = this.p;
            if (maskingMediaPeriod != null) {
                H(maskingMediaPeriod.f15506i);
            }
        } else {
            if (!timeline.p()) {
                Timeline.Window window = this.m;
                timeline.n(0, window);
                long j3 = window.l;
                Object obj = window.f13967a;
                MaskingMediaPeriod maskingMediaPeriod2 = this.p;
                if (maskingMediaPeriod2 != null) {
                    long j4 = maskingMediaPeriod2.f15502c;
                    MaskingTimeline maskingTimeline4 = this.o;
                    Object obj2 = maskingMediaPeriod2.f15501b.f15516a;
                    Timeline.Period period = this.n;
                    maskingTimeline4.g(obj2, period);
                    long j5 = period.f13962e + j4;
                    this.o.m(0, window, 0L);
                    if (j5 != window.l) {
                        j2 = j5;
                    } else {
                        j2 = j3;
                    }
                } else {
                    j2 = j3;
                }
                Pair pairI = timeline.i(this.m, this.n, 0, j2);
                Object obj3 = pairI.first;
                long jLongValue = ((Long) pairI.second).longValue();
                if (this.s) {
                    MaskingTimeline maskingTimeline5 = this.o;
                    maskingTimeline = new MaskingTimeline(timeline, maskingTimeline5.f15508f, maskingTimeline5.g);
                } else {
                    maskingTimeline = new MaskingTimeline(timeline, obj, obj3);
                }
                this.o = maskingTimeline;
                MaskingMediaPeriod maskingMediaPeriod3 = this.p;
                if (maskingMediaPeriod3 != null && H(jLongValue)) {
                    MediaSource.MediaPeriodId mediaPeriodId = maskingMediaPeriod3.f15501b;
                    Object obj4 = mediaPeriodId.f15516a;
                    if (this.o.g != null && obj4.equals(MaskingTimeline.f15507h)) {
                        obj4 = this.o.g;
                    }
                    mediaPeriodIdA = mediaPeriodId.a(obj4);
                }
                this.s = true;
                this.r = true;
                v(this.o);
                if (mediaPeriodIdA != null) {
                    MaskingMediaPeriod maskingMediaPeriod4 = this.p;
                    maskingMediaPeriod4.getClass();
                    maskingMediaPeriod4.h(mediaPeriodIdA);
                }
            }
            if (this.s) {
                MaskingTimeline maskingTimeline6 = this.o;
                maskingTimeline2 = new MaskingTimeline(timeline, maskingTimeline6.f15508f, maskingTimeline6.g);
            } else {
                maskingTimeline2 = new MaskingTimeline(timeline, Timeline.Window.q, MaskingTimeline.f15507h);
            }
            this.o = maskingTimeline2;
        }
        mediaPeriodIdA = null;
        this.s = true;
        this.r = true;
        v(this.o);
        if (mediaPeriodIdA != null) {
            MaskingMediaPeriod maskingMediaPeriod5 = this.p;
            maskingMediaPeriod5.getClass();
            maskingMediaPeriod5.h(mediaPeriodIdA);
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public final void F() {
        if (this.l) {
            return;
        }
        this.q = true;
        E();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final MaskingMediaPeriod c(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        MaskingMediaPeriod maskingMediaPeriod = new MaskingMediaPeriod(mediaPeriodId, allocator, j2);
        Preconditions.q(maskingMediaPeriod.f15503e == null);
        maskingMediaPeriod.f15503e = this.f15639k;
        if (!this.r) {
            this.p = maskingMediaPeriod;
            if (!this.q) {
                this.q = true;
                E();
            }
            return maskingMediaPeriod;
        }
        Object obj = mediaPeriodId.f15516a;
        if (this.o.g != null && obj.equals(MaskingTimeline.f15507h)) {
            obj = this.o.g;
        }
        maskingMediaPeriod.h(mediaPeriodId.a(obj));
        return maskingMediaPeriod;
    }

    public final boolean H(long j2) {
        MaskingMediaPeriod maskingMediaPeriod = this.p;
        int iB = this.o.b(maskingMediaPeriod.f15501b.f15516a);
        if (iB == -1) {
            return false;
        }
        MaskingTimeline maskingTimeline = this.o;
        Timeline.Period period = this.n;
        maskingTimeline.f(iB, period, false);
        long j3 = period.d;
        if (j3 != -9223372036854775807L && j2 >= j3) {
            j2 = Math.max(0L, j3 - 1);
        }
        maskingMediaPeriod.f15506i = j2;
        return true;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        MaskingMediaPeriod maskingMediaPeriod = (MaskingMediaPeriod) mediaPeriod;
        if (maskingMediaPeriod.f15504f != null) {
            MediaSource mediaSource = maskingMediaPeriod.f15503e;
            mediaSource.getClass();
            mediaSource.g(maskingMediaPeriod.f15504f);
        }
        if (mediaPeriod == this.p) {
            this.p = null;
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public final void k(MediaItem mediaItem) {
        if (this.s) {
            MaskingTimeline maskingTimeline = this.o;
            Timeline timeline = maskingTimeline.f15491e;
            this.o = new MaskingTimeline(timeline instanceof TimelineWithUpdatedMediaItem ? new TimelineWithUpdatedMediaItem(((TimelineWithUpdatedMediaItem) timeline).f15491e, mediaItem) : new TimelineWithUpdatedMediaItem(timeline, mediaItem), maskingTimeline.f15508f, maskingTimeline.g);
        } else {
            this.o = new MaskingTimeline(new PlaceholderTimeline(mediaItem), Timeline.Window.q, MaskingTimeline.f15507h);
        }
        this.f15639k.k(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean q(MediaItem mediaItem) {
        return this.f15639k.q(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public final void w() {
        this.r = false;
        this.q = false;
        super.w();
    }
}

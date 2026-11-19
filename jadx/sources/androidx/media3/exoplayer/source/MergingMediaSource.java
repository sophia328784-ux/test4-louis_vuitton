package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.Multimap;
import com.google.common.collect.MultimapBuilder;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MergingMediaSource extends CompositeMediaSource<Integer> {
    public static final MediaItem w;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f15535k;
    public final boolean l;
    public final MediaSource[] m;
    public final ArrayList n;
    public final Timeline[] o;
    public final ArrayList p;
    public final CompositeSequenceableLoaderFactory q;
    public final HashMap r;
    public final Multimap s;
    public int t;
    public long[][] u;
    public IllegalMergeException v;

    public static final class ClippedTimeline extends ForwardingTimeline {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long[] f15536f;
        public final long[] g;

        public ClippedTimeline(Timeline timeline, Map<Object, Long> map) {
            super(timeline);
            int iO = timeline.o();
            this.g = new long[timeline.o()];
            Timeline.Window window = new Timeline.Window();
            for (int i2 = 0; i2 < iO; i2++) {
                this.g[i2] = timeline.m(i2, window, 0L).m;
            }
            int iH = timeline.h();
            this.f15536f = new long[iH];
            Timeline.Period period = new Timeline.Period();
            for (int i3 = 0; i3 < iH; i3++) {
                timeline.f(i3, period, true);
                Long l = map.get(period.f13960b);
                l.getClass();
                long jLongValue = l.longValue();
                long[] jArr = this.f15536f;
                jLongValue = jLongValue == Long.MIN_VALUE ? period.d : jLongValue;
                jArr[i3] = jLongValue;
                long j2 = period.d;
                if (j2 != -9223372036854775807L) {
                    long[] jArr2 = this.g;
                    int i4 = period.f13961c;
                    jArr2[i4] = jArr2[i4] - (j2 - jLongValue);
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
            super.f(i2, period, z);
            period.d = this.f15536f[i2];
            return period;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x001e  */
        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
            long jMin;
            super.m(i2, window, j2);
            long j3 = this.g[i2];
            window.m = j3;
            if (j3 != -9223372036854775807L) {
                long j4 = window.l;
                if (j4 == -9223372036854775807L) {
                    jMin = window.l;
                } else {
                    jMin = Math.min(j4, j3);
                }
            } else {
                jMin = window.l;
            }
            window.l = jMin;
            return window;
        }
    }

    public static final class IllegalMergeException extends IOException {

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalMergeException(int i2) {
        }
    }

    public static final class MediaPeriodAndId {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSource.MediaPeriodId f15537a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaPeriod f15538b;

        public MediaPeriodAndId(MediaSource.MediaPeriodId mediaPeriodId, MediaPeriod mediaPeriod) {
            this.f15537a = mediaPeriodId;
            this.f15538b = mediaPeriod;
        }
    }

    static {
        MediaItem.Builder builder = new MediaItem.Builder();
        builder.f13795a = "MergingMediaSource";
        w = builder.a();
    }

    public MergingMediaSource(boolean z, boolean z2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, MediaSource... mediaSourceArr) {
        this.f15535k = z;
        this.l = z2;
        this.m = mediaSourceArr;
        this.q = compositeSequenceableLoaderFactory;
        this.p = new ArrayList(Arrays.asList(mediaSourceArr));
        this.t = -1;
        this.n = new ArrayList(mediaSourceArr.length);
        for (int i2 = 0; i2 < mediaSourceArr.length; i2++) {
            this.n.add(new ArrayList());
        }
        this.o = new Timeline[mediaSourceArr.length];
        this.u = new long[0][];
        this.r = new HashMap();
        this.s = MultimapBuilder.a().a().c();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public final void A(Object obj, BaseMediaSource baseMediaSource, Timeline timeline) {
        HashMap map;
        Integer num = (Integer) obj;
        if (this.v != null) {
            return;
        }
        if (this.t == -1) {
            this.t = timeline.h();
        } else if (timeline.h() != this.t) {
            this.v = new IllegalMergeException(0);
            return;
        }
        int length = this.u.length;
        Timeline[] timelineArr = this.o;
        if (length == 0) {
            this.u = (long[][]) Array.newInstance((Class<?>) Long.TYPE, this.t, timelineArr.length);
        }
        ArrayList arrayList = this.p;
        arrayList.remove(baseMediaSource);
        timelineArr[num.intValue()] = timeline;
        if (arrayList.isEmpty()) {
            if (this.f15535k) {
                Timeline.Period period = new Timeline.Period();
                for (int i2 = 0; i2 < this.t; i2++) {
                    long j2 = -timelineArr[0].f(i2, period, false).f13962e;
                    for (int i3 = 1; i3 < timelineArr.length; i3++) {
                        this.u[i2][i3] = j2 - (-timelineArr[i3].f(i2, period, false).f13962e);
                    }
                }
            }
            Timeline clippedTimeline = timelineArr[0];
            if (this.l) {
                Timeline.Period period2 = new Timeline.Period();
                int i4 = 0;
                while (true) {
                    int i5 = this.t;
                    map = this.r;
                    if (i4 >= i5) {
                        break;
                    }
                    long j3 = Long.MIN_VALUE;
                    for (int i6 = 0; i6 < timelineArr.length; i6++) {
                        long j4 = timelineArr[i6].f(i4, period2, false).d;
                        if (j4 != -9223372036854775807L) {
                            long j5 = j4 + this.u[i4][i6];
                            if (j3 == Long.MIN_VALUE || j5 < j3) {
                                j3 = j5;
                            }
                        }
                    }
                    Object objL = timelineArr[0].l(i4);
                    map.put(objL, Long.valueOf(j3));
                    Iterator it = this.s.get(objL).iterator();
                    while (it.hasNext()) {
                        ((ClippingMediaPeriod) it.next()).r(0L, j3);
                    }
                    i4++;
                }
                clippedTimeline = new ClippedTimeline(clippedTimeline, map);
            }
            v(clippedTimeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaPeriod c(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        MediaSource[] mediaSourceArr = this.m;
        int length = mediaSourceArr.length;
        MediaPeriod[] mediaPeriodArr = new MediaPeriod[length];
        Timeline[] timelineArr = this.o;
        Timeline timeline = timelineArr[0];
        Object obj = mediaPeriodId.f15516a;
        int iB = timeline.b(obj);
        for (int i2 = 0; i2 < length; i2++) {
            MediaSource.MediaPeriodId mediaPeriodIdA = mediaPeriodId.a(timelineArr[i2].l(iB));
            mediaPeriodArr[i2] = mediaSourceArr[i2].c(mediaPeriodIdA, allocator, j2 - this.u[iB][i2]);
            ((List) this.n.get(i2)).add(new MediaPeriodAndId(mediaPeriodIdA, mediaPeriodArr[i2]));
        }
        MergingMediaPeriod mergingMediaPeriod = new MergingMediaPeriod(this.q, this.u[iB], mediaPeriodArr);
        if (!this.l) {
            return mergingMediaPeriod;
        }
        Long l = (Long) this.r.get(obj);
        l.getClass();
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(mergingMediaPeriod, false, 0L, l.longValue(), false);
        this.s.put(obj, clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaItem d() {
        MediaSource[] mediaSourceArr = this.m;
        return mediaSourceArr.length > 0 ? mediaSourceArr[0].d() : w;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        if (this.l) {
            ClippingMediaPeriod clippingMediaPeriod = (ClippingMediaPeriod) mediaPeriod;
            Multimap multimap = this.s;
            for (Map.Entry entry : multimap.f()) {
                if (((ClippingMediaPeriod) entry.getValue()).equals(clippingMediaPeriod)) {
                    multimap.remove(entry.getKey(), entry.getValue());
                    break;
                }
            }
            mediaPeriod = clippingMediaPeriod.f15445b;
        }
        MergingMediaPeriod mergingMediaPeriod = (MergingMediaPeriod) mediaPeriod;
        int i2 = 0;
        while (true) {
            MediaSource[] mediaSourceArr = this.m;
            if (i2 >= mediaSourceArr.length) {
                return;
            }
            List list = (List) this.n.get(i2);
            boolean[] zArr = mergingMediaPeriod.f15527c;
            MediaPeriod[] mediaPeriodArr = mergingMediaPeriod.f15526b;
            MediaPeriod mediaPeriod2 = zArr[i2] ? ((TimeOffsetMediaPeriod) mediaPeriodArr[i2]).f15630b : mediaPeriodArr[i2];
            for (int i3 = 0; i3 < list.size(); i3++) {
                if (((MediaPeriodAndId) list.get(i3)).f15538b.equals(mediaPeriod2)) {
                    list.remove(i3);
                    break;
                }
            }
            mediaSourceArr[i2].g(mergingMediaPeriod.f15527c[i2] ? ((TimeOffsetMediaPeriod) mediaPeriodArr[i2]).f15630b : mediaPeriodArr[i2]);
            i2++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void k(MediaItem mediaItem) {
        this.m[0].k(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public final void n() throws IllegalMergeException {
        IllegalMergeException illegalMergeException = this.v;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.n();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean q(MediaItem mediaItem) {
        MediaSource[] mediaSourceArr = this.m;
        return mediaSourceArr.length > 0 && mediaSourceArr[0].q(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void u(TransferListener transferListener) {
        this.f15467j = transferListener;
        this.f15466i = Util.r(null);
        int i2 = 0;
        while (true) {
            MediaSource[] mediaSourceArr = this.m;
            if (i2 >= mediaSourceArr.length) {
                return;
            }
            B(Integer.valueOf(i2), mediaSourceArr[i2]);
            i2++;
        }
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public final void w() {
        super.w();
        Arrays.fill(this.o, (Object) null);
        this.t = -1;
        this.v = null;
        ArrayList arrayList = this.p;
        arrayList.clear();
        Collections.addAll(arrayList, this.m);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public final MediaSource.MediaPeriodId x(Object obj, MediaSource.MediaPeriodId mediaPeriodId) {
        int iIntValue = ((Integer) obj).intValue();
        ArrayList arrayList = this.n;
        List list = (List) arrayList.get(iIntValue);
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (((MediaPeriodAndId) list.get(i2)).f15537a.equals(mediaPeriodId)) {
                return ((MediaPeriodAndId) ((List) arrayList.get(0)).get(i2)).f15537a;
            }
        }
        return null;
    }

    public MergingMediaSource(boolean z, MediaSource... mediaSourceArr) {
        this(z, false, mediaSourceArr);
    }

    public MergingMediaSource(boolean z, boolean z2, MediaSource... mediaSourceArr) {
        this(z, z2, new DefaultCompositeSequenceableLoaderFactory(), mediaSourceArr);
    }

    public MergingMediaSource(MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }
}

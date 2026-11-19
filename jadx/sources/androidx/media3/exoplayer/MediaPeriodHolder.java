package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.source.ClippingMediaPeriod;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class MediaPeriodHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaPeriod f14709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SampleStream[] f14711c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f14713f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaPeriodInfo f14714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14715i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean[] f14716j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RendererCapabilities[] f14717k;
    public final TrackSelector l;
    public final MediaSourceList m;
    public MediaPeriodHolder n;
    public TrackGroupArray o;
    public TrackSelectorResult p;
    public long q;

    public interface Factory {
        MediaPeriodHolder a(MediaPeriodInfo mediaPeriodInfo, long j2);
    }

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j2, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, MediaPeriodInfo mediaPeriodInfo, TrackSelectorResult trackSelectorResult, long j3) {
        this.f14717k = rendererCapabilitiesArr;
        this.q = j2;
        this.l = trackSelector;
        this.m = mediaSourceList;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f14718a;
        this.f14710b = mediaPeriodId.f15516a;
        this.f14714h = mediaPeriodInfo;
        this.d = j3;
        this.o = TrackGroupArray.d;
        this.p = trackSelectorResult;
        this.f14711c = new SampleStream[rendererCapabilitiesArr.length];
        this.f14716j = new boolean[rendererCapabilitiesArr.length];
        long j4 = mediaPeriodInfo.f14719b;
        long j5 = mediaPeriodInfo.f14721e;
        boolean z = mediaPeriodInfo.g;
        mediaSourceList.getClass();
        Object obj = mediaPeriodId.f15516a;
        int i2 = AbstractConcatenatedTimeline.f14559h;
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        MediaSource.MediaPeriodId mediaPeriodIdA = mediaPeriodId.a(pair.second);
        MediaSourceList.MediaSourceHolder mediaSourceHolder = (MediaSourceList.MediaSourceHolder) mediaSourceList.d.get(obj2);
        mediaSourceHolder.getClass();
        mediaSourceList.g.add(mediaSourceHolder);
        MediaSourceList.MediaSourceAndListener mediaSourceAndListener = (MediaSourceList.MediaSourceAndListener) mediaSourceList.f14740f.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.f14747a.j(mediaSourceAndListener.f14748b);
        }
        mediaSourceHolder.f14752c.add(mediaPeriodIdA);
        MediaPeriod mediaPeriodC = mediaSourceHolder.f14750a.c(mediaPeriodIdA, allocator, j4);
        mediaSourceList.f14738c.put(mediaPeriodC, mediaSourceHolder);
        mediaSourceList.c();
        if (j5 != -9223372036854775807L) {
            mediaPeriodC = new ClippingMediaPeriod(mediaPeriodC, !z, 0L, j5);
        }
        this.f14709a = mediaPeriodC;
    }

    public final long a(TrackSelectorResult trackSelectorResult, long j2, boolean z, boolean[] zArr) {
        RendererCapabilities[] rendererCapabilitiesArr;
        SampleStream[] sampleStreamArr;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= trackSelectorResult.f15732a) {
                break;
            }
            if (z || !trackSelectorResult.a(this.p, i2)) {
                z2 = false;
            }
            this.f14716j[i2] = z2;
            i2++;
        }
        int i3 = 0;
        while (true) {
            rendererCapabilitiesArr = this.f14717k;
            int length = rendererCapabilitiesArr.length;
            sampleStreamArr = this.f14711c;
            if (i3 >= length) {
                break;
            }
            if (rendererCapabilitiesArr[i3].f() == -2) {
                sampleStreamArr[i3] = null;
            }
            i3++;
        }
        b();
        this.p = trackSelectorResult;
        c();
        long jF = this.f14709a.f(trackSelectorResult.f15734c, this.f14716j, this.f14711c, zArr, j2);
        for (int i4 = 0; i4 < rendererCapabilitiesArr.length; i4++) {
            if (rendererCapabilitiesArr[i4].f() == -2 && this.p.b(i4)) {
                sampleStreamArr[i4] = new EmptySampleStream();
            }
        }
        this.g = false;
        for (int i5 = 0; i5 < sampleStreamArr.length; i5++) {
            if (sampleStreamArr[i5] != null) {
                Preconditions.q(trackSelectorResult.b(i5));
                if (rendererCapabilitiesArr[i5].f() != -2) {
                    this.g = true;
                }
            } else {
                Preconditions.q(trackSelectorResult.f15734c[i5] == null);
            }
        }
        return jF;
    }

    public final void b() {
        if (this.n != null) {
            return;
        }
        int i2 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.p;
            if (i2 >= trackSelectorResult.f15732a) {
                return;
            }
            boolean zB = trackSelectorResult.b(i2);
            ExoTrackSelection exoTrackSelection = this.p.f15734c[i2];
            if (zB && exoTrackSelection != null) {
                exoTrackSelection.c();
            }
            i2++;
        }
    }

    public final void c() {
        if (this.n != null) {
            return;
        }
        int i2 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.p;
            if (i2 >= trackSelectorResult.f15732a) {
                return;
            }
            boolean zB = trackSelectorResult.b(i2);
            ExoTrackSelection exoTrackSelection = this.p.f15734c[i2];
            if (zB && exoTrackSelection != null) {
                exoTrackSelection.p();
            }
            i2++;
        }
    }

    public final long d() {
        if (!this.f14713f) {
            return this.f14714h.f14719b;
        }
        long jS = this.g ? this.f14709a.s() : Long.MIN_VALUE;
        return jS == Long.MIN_VALUE ? this.f14714h.f14722f : jS;
    }

    public final long e() {
        return this.f14714h.f14719b + this.q;
    }

    public final void f(float f2, Timeline timeline, boolean z) {
        this.f14713f = true;
        this.o = this.f14709a.p();
        TrackSelectorResult trackSelectorResultJ = j(f2, timeline, z);
        MediaPeriodInfo mediaPeriodInfo = this.f14714h;
        long jMax = mediaPeriodInfo.f14719b;
        long j2 = mediaPeriodInfo.f14722f;
        if (j2 != -9223372036854775807L && jMax >= j2) {
            jMax = Math.max(0L, j2 - 1);
        }
        long jA = a(trackSelectorResultJ, jMax, false, new boolean[this.f14717k.length]);
        long j3 = this.q;
        MediaPeriodInfo mediaPeriodInfo2 = this.f14714h;
        this.q = (mediaPeriodInfo2.f14719b - jA) + j3;
        this.f14714h = mediaPeriodInfo2.b(jA, mediaPeriodInfo2.f14720c);
    }

    public final boolean g() {
        if (this.f14713f) {
            return !this.g || this.f14709a.s() == Long.MIN_VALUE;
        }
        return false;
    }

    public final boolean h() {
        if (this.f14713f) {
            return g() || d() - this.f14714h.f14719b >= this.d;
        }
        return false;
    }

    public final void i() {
        b();
        MediaPeriod mediaPeriod = this.f14709a;
        try {
            boolean z = mediaPeriod instanceof ClippingMediaPeriod;
            MediaSourceList mediaSourceList = this.m;
            if (z) {
                mediaSourceList.f(((ClippingMediaPeriod) mediaPeriod).f15445b);
            } else {
                mediaSourceList.f(mediaPeriod);
            }
        } catch (RuntimeException e2) {
            Log.e("Period release failed.", e2);
        }
    }

    public final TrackSelectorResult j(float f2, Timeline timeline, boolean z) {
        ExoTrackSelection[] exoTrackSelectionArr;
        TrackGroupArray trackGroupArray = this.o;
        MediaSource.MediaPeriodId mediaPeriodId = this.f14714h.f14718a;
        TrackSelector trackSelector = this.l;
        RendererCapabilities[] rendererCapabilitiesArr = this.f14717k;
        TrackSelectorResult trackSelectorResultF = trackSelector.f(rendererCapabilitiesArr, trackGroupArray, mediaPeriodId, timeline);
        int i2 = 0;
        while (true) {
            int i3 = trackSelectorResultF.f15732a;
            exoTrackSelectionArr = trackSelectorResultF.f15734c;
            if (i2 >= i3) {
                break;
            }
            boolean z2 = true;
            if (trackSelectorResultF.b(i2)) {
                if (exoTrackSelectionArr[i2] == null && rendererCapabilitiesArr[i2].f() != -2) {
                    z2 = false;
                }
                Preconditions.q(z2);
            } else {
                Preconditions.q(exoTrackSelectionArr[i2] == null);
            }
            i2++;
        }
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                exoTrackSelection.i(f2);
                exoTrackSelection.o(z);
            }
        }
        return trackSelectorResultF;
    }

    public final void k() {
        MediaPeriod mediaPeriod = this.f14709a;
        if (mediaPeriod instanceof ClippingMediaPeriod) {
            long j2 = this.f14714h.f14721e;
            if (j2 == -9223372036854775807L) {
                j2 = Long.MIN_VALUE;
            }
            ((ClippingMediaPeriod) mediaPeriod).r(0L, j2);
        }
    }
}

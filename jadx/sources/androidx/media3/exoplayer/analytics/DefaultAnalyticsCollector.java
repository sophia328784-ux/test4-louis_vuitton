package androidx.media3.exoplayer.analytics;

import android.os.Looper;
import android.util.SparseArray;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import defpackage.c8;
import defpackage.ks;
import defpackage.ls;
import defpackage.ms;
import defpackage.os;
import defpackage.p3;
import defpackage.ps;
import defpackage.s3;
import defpackage.wp;
import defpackage.ym;
import defpackage.z1;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DefaultAnalyticsCollector implements AnalyticsCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f14814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Timeline.Period f14815c;
    public final Timeline.Window d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaPeriodQueueTracker f14816e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseArray f14817f;
    public ListenerSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Player f14818h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public HandlerWrapper f14819i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f14820j;

    public static final class MediaPeriodQueueTracker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Timeline.Period f14821a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImmutableList f14822b = ImmutableList.x();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImmutableMap f14823c = ImmutableMap.h();
        public MediaSource.MediaPeriodId d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public MediaSource.MediaPeriodId f14824e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public MediaSource.MediaPeriodId f14825f;

        public MediaPeriodQueueTracker(Timeline.Period period) {
            this.f14821a = period;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static MediaSource.MediaPeriodId b(Player player, ImmutableList immutableList, MediaSource.MediaPeriodId mediaPeriodId, Timeline.Period period) {
            Timeline timelineP = player.p();
            int iN0 = player.n0();
            Object objL = timelineP.p() ? null : timelineP.l(iN0);
            int iB = (player.j() || timelineP.p()) ? -1 : timelineP.f(iN0, period, false).b(Util.R(player.getCurrentPosition()) - period.f13962e);
            for (int i2 = 0; i2 < immutableList.size(); i2++) {
                MediaSource.MediaPeriodId mediaPeriodId2 = (MediaSource.MediaPeriodId) immutableList.get(i2);
                if (c(mediaPeriodId2, objL, player.j(), player.W(), player.v0(), iB)) {
                    return mediaPeriodId2;
                }
            }
            if (immutableList.isEmpty() && mediaPeriodId != null && c(mediaPeriodId, objL, player.j(), player.W(), player.v0(), iB)) {
                return mediaPeriodId;
            }
            return null;
        }

        public static boolean c(MediaSource.MediaPeriodId mediaPeriodId, Object obj, boolean z, int i2, int i3, int i4) {
            Object obj2 = mediaPeriodId.f15516a;
            int i5 = mediaPeriodId.f15517b;
            if (!obj2.equals(obj)) {
                return false;
            }
            if (z && i5 == i2 && mediaPeriodId.f15518c == i3) {
                return true;
            }
            return !z && i5 == -1 && mediaPeriodId.f15519e == i4;
        }

        public final void a(ImmutableMap.Builder builder, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            if (mediaPeriodId == null) {
                return;
            }
            if (timeline.b(mediaPeriodId.f15516a) != -1) {
                builder.d(mediaPeriodId, timeline);
                return;
            }
            Timeline timeline2 = (Timeline) this.f14823c.get(mediaPeriodId);
            if (timeline2 != null) {
                builder.d(mediaPeriodId, timeline2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void d(Timeline timeline) {
            ImmutableList immutableList;
            ImmutableMap.Builder builder = new ImmutableMap.Builder();
            if (this.f14822b.isEmpty()) {
                a(builder, this.f14824e, timeline);
                if (!Objects.equals(this.f14825f, this.f14824e)) {
                    a(builder, this.f14825f, timeline);
                }
                if (!Objects.equals(this.d, this.f14824e) && !Objects.equals(this.d, this.f14825f)) {
                    a(builder, this.d, timeline);
                }
            } else {
                int i2 = 0;
                while (true) {
                    int size = this.f14822b.size();
                    immutableList = this.f14822b;
                    if (i2 >= size) {
                        break;
                    }
                    a(builder, (MediaSource.MediaPeriodId) immutableList.get(i2), timeline);
                    i2++;
                }
                if (!immutableList.contains(this.d)) {
                    a(builder, this.d, timeline);
                }
            }
            this.f14823c = builder.a(true);
        }
    }

    public DefaultAnalyticsCollector(Clock clock) {
        clock.getClass();
        this.f14814b = clock;
        String str = Util.f14242a;
        Looper looperMyLooper = Looper.myLooper();
        this.g = new ListenerSet(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper);
        Timeline.Period period = new Timeline.Period();
        this.f14815c = period;
        this.d = new Timeline.Window();
        this.f14816e = new MediaPeriodQueueTracker(period);
        this.f14817f = new SparseArray();
    }

    @Override // androidx.media3.common.Player.Listener
    public final void A(int i2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 8, new os(eventTimeY0, i2, 5));
    }

    public final AnalyticsListener.EventTime A0(MediaSource.MediaPeriodId mediaPeriodId) {
        this.f14818h.getClass();
        Timeline timeline = mediaPeriodId == null ? null : (Timeline) this.f14816e.f14823c.get(mediaPeriodId);
        if (mediaPeriodId != null && timeline != null) {
            return z0(timeline, timeline.g(mediaPeriodId.f15516a, this.f14815c).f13961c, mediaPeriodId);
        }
        int iV = this.f14818h.v();
        Timeline timelineP = this.f14818h.p();
        if (iV >= timelineP.o()) {
            timelineP = Timeline.f13952a;
        }
        return z0(timelineP, iV, null);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void B(CueGroup cueGroup) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 27, new ks(eventTimeY0, cueGroup, 18));
    }

    public final AnalyticsListener.EventTime B0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        this.f14818h.getClass();
        if (mediaPeriodId != null) {
            return ((Timeline) this.f14816e.f14823c.get(mediaPeriodId)) != null ? A0(mediaPeriodId) : z0(Timeline.f13952a, i2, mediaPeriodId);
        }
        Timeline timelineP = this.f14818h.p();
        if (i2 >= timelineP.o()) {
            timelineP = Timeline.f13952a;
        }
        return z0(timelineP, i2, null);
    }

    @Override // androidx.media3.common.Player.Listener
    public final void C(Metadata metadata) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 28, new wp(eventTimeY0, metadata, 26));
    }

    public final AnalyticsListener.EventTime C0() {
        return A0(this.f14816e.f14825f);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void D(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1017, new ks(eventTimeC0, format, decoderReuseEvaluation, 10));
    }

    public final void D0(AnalyticsListener.EventTime eventTime, int i2, ListenerSet.Event event) {
        this.f14817f.put(i2, eventTime);
        this.g.f(i2, event);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void E(Exception exc) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1029, new ks(eventTimeC0, exc, 15));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void F(long j2, long j3, String str) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1016, new ks(eventTimeC0, str, j3, j2));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void G(int i2, long j2, long j3) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1011, new ks(eventTimeC0, i2, j2, j3));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void H(int i2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 6, new wp(eventTimeY0, i2));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void I(boolean z) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void J(List list, MediaSource.MediaPeriodId mediaPeriodId) {
        Player player = this.f14818h;
        player.getClass();
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.f14816e;
        mediaPeriodQueueTracker.getClass();
        mediaPeriodQueueTracker.f14822b = ImmutableList.t(list);
        if (!list.isEmpty()) {
            mediaPeriodQueueTracker.f14824e = (MediaSource.MediaPeriodId) list.get(0);
            mediaPeriodId.getClass();
            mediaPeriodQueueTracker.f14825f = mediaPeriodId;
        }
        if (mediaPeriodQueueTracker.d == null) {
            mediaPeriodQueueTracker.d = MediaPeriodQueueTracker.b(player, mediaPeriodQueueTracker.f14822b, mediaPeriodQueueTracker.f14824e, mediaPeriodQueueTracker.f14821a);
        }
        mediaPeriodQueueTracker.d(player.p());
    }

    @Override // androidx.media3.common.Player.Listener
    public final void K(int i2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 4, new ks(eventTimeY0, i2, 9, (char) 0));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void L(int i2, MediaItem mediaItem) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 1, new wp(eventTimeY0, mediaItem, i2));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void M() {
        if (this.f14820j) {
            return;
        }
        AnalyticsListener.EventTime eventTimeY0 = y0();
        this.f14820j = true;
        D0(eventTimeY0, -1, new ks(eventTimeY0, 12));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void N(boolean z) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 9, new os(eventTimeY0, z, 9));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void O(int i2, boolean z) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 30, new ks(eventTimeY0, i2, z));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void P(long j2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 16, new os(eventTimeY0, j2, 10));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void Q(MediaMetadata mediaMetadata) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 14, new ks(eventTimeY0, mediaMetadata, 27));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void R(TrackSelectionParameters trackSelectionParameters) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 19, new ks(eventTimeY0, trackSelectionParameters, 21));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void S() {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void T(int i2, MediaSource.MediaPeriodId mediaPeriodId, KeyRequestInfo keyRequestInfo) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1023, new os(eventTimeB0, keyRequestInfo, 13));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void U(int i2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 1034, new ks(eventTimeY0, i2, 6, (char) 0));
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void V(int i2, MediaSource.MediaPeriodId mediaPeriodId, int i3) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1022, new os(eventTimeB0, i3, 0));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void W(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1003, new s3(eventTimeB0, loadEventInfo, mediaLoadData, iOException, z));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void X(int i2, int i3) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 24, new ks(eventTimeC0, i2, i3));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void Y(Player.Commands commands) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 13, new os(eventTimeY0, commands, 20));
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void Z(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1026, new os(eventTimeB0, 14));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void a(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeA0 = A0(this.f14816e.f14824e);
        D0(eventTimeA0, 1020, new s3(eventTimeA0, decoderCounters));
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void a0(int i2, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1024, new os(eventTimeB0, exc, 15));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void b(VideoSize videoSize) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 25, new ps(eventTimeC0, videoSize));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void b0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1002, new ks(eventTimeB0, (Object) loadEventInfo, (Object) mediaLoadData, 29));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void c(String str) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1019, new ks(eventTimeC0, str, 0));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void c0(MediaMetricsListener mediaMetricsListener) {
        this.g.a(mediaMetricsListener);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void d(AudioSink.AudioTrackConfig audioTrackConfig) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1031, new ks(eventTimeC0, audioTrackConfig, 11));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void d0(int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
        if (i2 == 1) {
            this.f14820j = false;
        }
        Player player = this.f14818h;
        player.getClass();
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.f14816e;
        mediaPeriodQueueTracker.d = MediaPeriodQueueTracker.b(player, mediaPeriodQueueTracker.f14822b, mediaPeriodQueueTracker.f14824e, mediaPeriodQueueTracker.f14821a);
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 11, new ms(eventTimeY0, i2, positionInfo, positionInfo2));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void e(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1005, new os(eventTimeB0, mediaLoadData, 7));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void e0(boolean z) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 3, new os(eventTimeY0, z, 16));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void f(int i2) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 21, new os(eventTimeC0, i2, 3));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void f0(Player player, Player.Events events) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void g(String str) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1012, new os(eventTimeC0, str, 19));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void g0(int i2, boolean z) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 5, new ks(eventTimeY0, z, i2));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void h(PlaybackParameters playbackParameters) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 12, new wp(eventTimeY0, playbackParameters, 21));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void h0(float f2) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 22, new ks(eventTimeC0, f2));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void i(AudioSink.AudioTrackConfig audioTrackConfig) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1032, new os(eventTimeC0, audioTrackConfig, 18));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void i0(AudioAttributes audioAttributes) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 20, new wp(eventTimeC0, audioAttributes, 25));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void j(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1007, new os(eventTimeC0, decoderCounters, 6));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void j0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1001, new os(eventTimeB0, loadEventInfo, mediaLoadData));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void k(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1015, new ks(eventTimeC0, decoderCounters, 14));
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void k0(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1004, new p3(eventTimeB0, mediaLoadData, 9));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void l(boolean z) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 23, new ks(eventTimeC0, z));
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void l0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1025, new os(eventTimeB0, 17));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void m(Exception exc) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1014, new ks(eventTimeC0, exc, 17));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void m0(Timeline timeline, int i2) {
        Player player = this.f14818h;
        player.getClass();
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.f14816e;
        mediaPeriodQueueTracker.d = MediaPeriodQueueTracker.b(player, mediaPeriodQueueTracker.f14822b, mediaPeriodQueueTracker.f14824e, mediaPeriodQueueTracker.f14821a);
        mediaPeriodQueueTracker.d(player.p());
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 0, new os(eventTimeY0, i2, 21));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void n(List list) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 27, new c8(eventTimeY0, list));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void n0(int i2, int i3, boolean z) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1033, new ks(eventTimeC0, i2, i3, z));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void o(long j2) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1010, new ks(eventTimeC0, j2));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void o0(MediaMetadata mediaMetadata) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 15, new os(eventTimeY0, mediaMetadata, 4));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void p(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1009, new ks(eventTimeC0, format, decoderReuseEvaluation, 13));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void p0(long j2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 17, new os(eventTimeY0, j2, 12));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void q(Exception exc) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1030, new wp(eventTimeC0, exc, 23));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void q0(Tracks tracks) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 2, new ks(eventTimeY0, tracks, 1));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void r(long j2, Object obj) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 26, new ym(eventTimeC0, obj, j2));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void r0(DeviceInfo deviceInfo) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 29, new os(eventTimeY0, deviceInfo, 1));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void release() {
        HandlerWrapper handlerWrapper = this.f14819i;
        handlerWrapper.getClass();
        handlerWrapper.k(new z1(this, 26));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void s(PlaybackException playbackException) {
        MediaSource.MediaPeriodId mediaPeriodId;
        AnalyticsListener.EventTime eventTimeY0 = (!(playbackException instanceof ExoPlaybackException) || (mediaPeriodId = ((ExoPlaybackException) playbackException).p) == null) ? y0() : A0(mediaPeriodId);
        D0(eventTimeY0, 10, new ls(eventTimeY0, playbackException));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void s0(int i2, boolean z) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, -1, new wp(eventTimeY0, z, i2));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void t(DecoderCounters decoderCounters) {
        AnalyticsListener.EventTime eventTimeA0 = A0(this.f14816e.f14824e);
        D0(eventTimeA0, 1013, new ks(eventTimeA0, decoderCounters, 8));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void t0(PlaybackException playbackException) {
        MediaSource.MediaPeriodId mediaPeriodId;
        AnalyticsListener.EventTime eventTimeY0 = (!(playbackException instanceof ExoPlaybackException) || (mediaPeriodId = ((ExoPlaybackException) playbackException).p) == null) ? y0() : A0(mediaPeriodId);
        D0(eventTimeY0, 10, new ks(eventTimeY0, playbackException, 3));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void u(long j2, long j3, String str) {
        AnalyticsListener.EventTime eventTimeC0 = C0();
        D0(eventTimeC0, 1008, new wp(eventTimeC0, str, j3, j2));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void u0(long j2) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 18, new os(eventTimeY0, j2, 11));
    }

    @Override // androidx.media3.common.Player.Listener
    public final void v(int i2) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public final void v0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1027, new os(eventTimeB0, 8));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void w(int i2, long j2) {
        AnalyticsListener.EventTime eventTimeA0 = A0(this.f14816e.f14824e);
        D0(eventTimeA0, 1021, new ks(eventTimeA0, j2, i2));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void w0(Player player, Looper looper) {
        Preconditions.q(this.f14818h == null || this.f14816e.f14822b.isEmpty());
        this.f14818h = player;
        Clock clock = this.f14814b;
        this.f14819i = clock.e(looper, null);
        ListenerSet listenerSet = this.g;
        p3 p3Var = new p3(this, player, 8);
        listenerSet.getClass();
        this.g = new ListenerSet(listenerSet.f14162e, looper, looper.getThread(), clock, p3Var, listenerSet.f14166j);
    }

    @Override // androidx.media3.exoplayer.upstream.BandwidthMeter.EventListener
    public final void x(final int i2, final long j2, final long j3) {
        MediaPeriodQueueTracker mediaPeriodQueueTracker = this.f14816e;
        final AnalyticsListener.EventTime eventTimeA0 = A0(mediaPeriodQueueTracker.f14822b.isEmpty() ? null : (MediaSource.MediaPeriodId) Iterables.b(mediaPeriodQueueTracker.f14822b));
        D0(eventTimeA0, 1006, new ListenerSet.Event(i2, j2, j3) { // from class: ns

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f76607c;
            public final /* synthetic */ long d;

            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((AnalyticsListener) obj).f(this.f76606b, this.f76607c, this.d);
            }
        });
    }

    @Override // androidx.media3.common.Player.Listener
    public final void x0(boolean z) {
        AnalyticsListener.EventTime eventTimeY0 = y0();
        D0(eventTimeY0, 7, new wp(eventTimeY0, z));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsCollector
    public final void y(int i2, long j2) {
        AnalyticsListener.EventTime eventTimeA0 = A0(this.f14816e.f14824e);
        D0(eventTimeA0, 1018, new ks(eventTimeA0, i2, j2));
    }

    public final AnalyticsListener.EventTime y0() {
        return A0(this.f14816e.d);
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public final void z(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i3) {
        AnalyticsListener.EventTime eventTimeB0 = B0(i2, mediaPeriodId);
        D0(eventTimeB0, 1000, new ks(eventTimeB0, loadEventInfo, mediaLoadData, i3));
    }

    public final AnalyticsListener.EventTime z0(Timeline timeline, int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaSource.MediaPeriodId mediaPeriodId2 = timeline.p() ? null : mediaPeriodId;
        long jB = this.f14814b.b();
        boolean z = timeline.equals(this.f14818h.p()) && i2 == this.f14818h.v();
        long jF0 = 0;
        if (mediaPeriodId2 == null || !mediaPeriodId2.b()) {
            if (z) {
                jF0 = this.f14818h.u();
            } else if (!timeline.p()) {
                jF0 = Util.f0(timeline.m(i2, this.d, 0L).l);
            }
        } else if (z && this.f14818h.W() == mediaPeriodId2.f15517b && this.f14818h.v0() == mediaPeriodId2.f15518c) {
            jF0 = this.f14818h.getCurrentPosition();
        }
        return new AnalyticsListener.EventTime(jB, timeline, i2, mediaPeriodId2, jF0, this.f14818h.p(), this.f14818h.v(), this.f14816e.d, this.f14818h.getCurrentPosition(), this.f14818h.C());
    }
}

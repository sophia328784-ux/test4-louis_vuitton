package androidx.media3.exoplayer;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Trace;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.audio.AudioFocusManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.StuckPlayerException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.image.ImageMetadataListener;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.ForwardingTimeline;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender, AudioFocusManager.PlayerControl, VideoFrameMetadataListener {
    public static final long k1 = Util.f0(10000);
    public static final /* synthetic */ int l1 = 0;
    public final HandlerWrapper A;
    public final boolean B;
    public final AudioFocusManager C;
    public final boolean D;
    public SeekParameters E;
    public boolean G;
    public boolean H;
    public SeekPosition I;
    public int J;
    public PlaybackInfo K;
    public PlaybackInfoUpdate L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean R;
    public int S;
    public boolean T;
    public boolean V;
    public boolean W;
    public boolean X;
    public int Y;
    public SeekPosition Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RendererHolder[] f14664b;
    public int b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RendererCapabilities[] f14665c;
    public boolean c1;
    public final boolean[] d;
    public ExoPlaybackException d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TrackSelector f14666e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TrackSelectorResult f14667f;
    public ExoPlayer.PreloadConfiguration f1;
    public final LoadControl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BandwidthMeter f14668h;
    public long h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HandlerWrapper f14669i;
    public boolean i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PlaybackLooperProvider f14670j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Looper f14671k;
    public final Timeline.Window l;
    public final Timeline.Period m;
    public final long n;
    public final boolean o;
    public final DefaultMediaClock p;
    public final ArrayList q;
    public final Clock r;
    public final PlaybackInfoUpdateListener s;
    public final MediaPeriodQueue t;
    public long t0;
    public final MediaSourceList u;
    public final LivePlaybackSpeedControl v;
    public final long w;
    public final PlayerId x;
    public final boolean y;
    public final AnalyticsCollector z;
    public long h1 = -9223372036854775807L;
    public float j1 = 1.0f;
    public ScrubbingModeParameters F = ScrubbingModeParameters.g;
    public long e1 = -9223372036854775807L;
    public long Q = -9223372036854775807L;
    public Timeline g1 = Timeline.f13952a;

    public static final class MediaSourceListUpdateMessage {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f14673a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ShuffleOrder f14674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14675c;
        public final long d;

        public MediaSourceListUpdateMessage(ArrayList arrayList, ShuffleOrder shuffleOrder, int i2, long j2) {
            this.f14673a = arrayList;
            this.f14674b = shuffleOrder;
            this.f14675c = i2;
            this.d = j2;
        }
    }

    public static class MoveMediaItemsMessage {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14678c;
        public final ShuffleOrder d;

        public MoveMediaItemsMessage(int i2, int i3, int i4, ShuffleOrder shuffleOrder) {
            this.f14676a = i2;
            this.f14677b = i3;
            this.f14678c = i4;
            this.d = shuffleOrder;
        }
    }

    public static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlayerMessage f14679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14680c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f14681e;

        public PendingMessageInfo(PlayerMessage playerMessage) {
            this.f14679b = playerMessage;
        }

        @Override // java.lang.Comparable
        public final int compareTo(PendingMessageInfo pendingMessageInfo) {
            PendingMessageInfo pendingMessageInfo2 = pendingMessageInfo;
            Object obj = this.f14681e;
            if ((obj == null) != (pendingMessageInfo2.f14681e == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i2 = this.f14680c - pendingMessageInfo2.f14680c;
            return i2 != 0 ? i2 : Long.compare(this.d, pendingMessageInfo2.d);
        }
    }

    public static final class PlaybackInfoUpdate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f14682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PlaybackInfo f14683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14684c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14685e;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo) {
            this.f14683b = playbackInfo;
        }

        public final void a(int i2) {
            this.f14682a |= i2 > 0;
            this.f14684c += i2;
        }
    }

    public interface PlaybackInfoUpdateListener {
        void b(PlaybackInfoUpdate playbackInfoUpdate);
    }

    public static final class PositionUpdateForPlaylistChange {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSource.MediaPeriodId f14686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f14687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f14688c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f14689e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f14690f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f14691h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f14692i;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2) {
            this.f14686a = mediaPeriodId;
            this.f14687b = j2;
            this.f14688c = j3;
            this.d = z;
            this.f14689e = z2;
            this.f14690f = z3;
            this.g = z4;
            this.f14691h = z5;
            this.f14692i = i2;
        }
    }

    public static final class SeekPosition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Timeline f14693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f14695c;

        public SeekPosition(Timeline timeline, int i2, long j2) {
            this.f14693a = timeline;
            this.f14694b = i2;
            this.f14695c = j2;
        }
    }

    public ExoPlayerImplInternal(Context context, Renderer[] rendererArr, Renderer[] rendererArr2, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int i2, boolean z, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, LivePlaybackSpeedControl livePlaybackSpeedControl, long j2, boolean z2, boolean z3, Looper looper, Clock clock, PlaybackInfoUpdateListener playbackInfoUpdateListener, PlayerId playerId, PlaybackLooperProvider playbackLooperProvider, ExoPlayer.PreloadConfiguration preloadConfiguration, final VideoFrameMetadataListener videoFrameMetadataListener, boolean z4) {
        Looper looper2;
        this.s = playbackInfoUpdateListener;
        this.f14666e = trackSelector;
        this.f14667f = trackSelectorResult;
        this.g = loadControl;
        this.f14668h = bandwidthMeter;
        this.S = i2;
        this.T = z;
        this.E = seekParameters;
        this.v = livePlaybackSpeedControl;
        this.w = j2;
        this.N = z2;
        this.y = z3;
        this.r = clock;
        this.x = playerId;
        this.f1 = preloadConfiguration;
        this.z = analyticsCollector;
        this.D = z4;
        this.n = loadControl.d();
        this.o = loadControl.b();
        PlaybackInfo playbackInfoK = PlaybackInfo.k(trackSelectorResult);
        this.K = playbackInfoK;
        this.L = new PlaybackInfoUpdate(playbackInfoK);
        this.f14665c = new RendererCapabilities[rendererArr.length];
        this.d = new boolean[rendererArr.length];
        RendererCapabilities.Listener listenerC = trackSelector.c();
        this.f14664b = new RendererHolder[rendererArr.length];
        boolean z5 = false;
        boolean z6 = false;
        for (int i3 = 0; i3 < rendererArr.length; i3++) {
            rendererArr[i3].l(i3, playerId, clock);
            this.f14665c[i3] = rendererArr[i3].B();
            if (listenerC != null) {
                this.f14665c[i3].C(listenerC);
            }
            Renderer renderer = rendererArr2[i3];
            if (renderer != null) {
                renderer.l(i3, playerId, clock);
                z6 = true;
            }
            this.f14664b[i3] = new RendererHolder(rendererArr[i3], rendererArr2[i3], i3);
        }
        this.B = z6;
        this.p = new DefaultMediaClock(this, clock);
        this.q = new ArrayList();
        this.l = new Timeline.Window();
        this.m = new Timeline.Period();
        Preconditions.q(trackSelector.f15730a == null);
        trackSelector.f15730a = this;
        trackSelector.f15731b = bandwidthMeter;
        this.c1 = true;
        HandlerWrapper handlerWrapperE = clock.e(looper, null);
        this.A = handlerWrapperE;
        this.t = new MediaPeriodQueue(analyticsCollector, handlerWrapperE, new b(this, 4), preloadConfiguration);
        this.u = new MediaSourceList(this, analyticsCollector, handlerWrapperE, playerId);
        PlaybackLooperProvider playbackLooperProvider2 = playbackLooperProvider == null ? new PlaybackLooperProvider() : playbackLooperProvider;
        this.f14670j = playbackLooperProvider2;
        synchronized (playbackLooperProvider2.f14763a) {
            try {
                if (playbackLooperProvider2.f14764b == null) {
                    if (playbackLooperProvider2.d == 0 && playbackLooperProvider2.f14765c == null) {
                        z5 = true;
                    }
                    Preconditions.q(z5);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    playbackLooperProvider2.f14765c = handlerThread;
                    handlerThread.start();
                    playbackLooperProvider2.f14764b = playbackLooperProvider2.f14765c.getLooper();
                }
                playbackLooperProvider2.d++;
                looper2 = playbackLooperProvider2.f14764b;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f14671k = looper2;
        HandlerWrapper handlerWrapperE2 = clock.e(looper2, this);
        this.f14669i = handlerWrapperE2;
        this.C = new AudioFocusManager(context, looper2, this);
        handlerWrapperE2.g(35, new VideoFrameMetadataListener() { // from class: androidx.media3.exoplayer.p
            @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
            public final void d(long j3, long j4, Format format, MediaFormat mediaFormat) {
                int i4 = ExoPlayerImplInternal.l1;
                videoFrameMetadataListener.d(j3, j4, format, mediaFormat);
                this.f15429b.d(j3, j4, format, mediaFormat);
            }
        }).a();
        handlerWrapperE2.g(39, new ImageMetadataListener() { // from class: androidx.media3.exoplayer.q
            @Override // androidx.media3.exoplayer.image.ImageMetadataListener
            public final void a() {
                ExoPlayerImplInternal exoPlayerImplInternal = this.f15431a;
                if (exoPlayerImplInternal.H) {
                    exoPlayerImplInternal.f14669i.b(37).a();
                }
            }
        }).a();
    }

    public static boolean H(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder != null) {
            try {
                MediaPeriod mediaPeriod = mediaPeriodHolder.f14709a;
                if (mediaPeriodHolder.f14713f) {
                    for (SampleStream sampleStream : mediaPeriodHolder.f14711c) {
                        if (sampleStream != null) {
                            sampleStream.a();
                        }
                    }
                } else {
                    mediaPeriod.k();
                }
                if ((!mediaPeriodHolder.f14713f ? 0L : mediaPeriod.c()) != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static Pair Z(Timeline timeline, SeekPosition seekPosition, boolean z, int i2, boolean z2, Timeline.Window window, Timeline.Period period) {
        int iA0;
        Timeline timeline2 = seekPosition.f14693a;
        if (timeline.p()) {
            return null;
        }
        Timeline timeline3 = timeline2.p() ? timeline : timeline2;
        try {
            Pair pairI = timeline3.i(window, period, seekPosition.f14694b, seekPosition.f14695c);
            if (!timeline.equals(timeline3)) {
                if (timeline.b(pairI.first) == -1) {
                    if (!z || (iA0 = a0(window, period, i2, z2, pairI.first, timeline3, timeline)) == -1) {
                        return null;
                    }
                    return timeline.i(window, period, iA0, -9223372036854775807L);
                }
                if (timeline3.g(pairI.first, period).f13963f && timeline3.m(period.f13961c, window, 0L).n == timeline3.b(pairI.first)) {
                    return timeline.i(window, period, timeline.g(pairI.first, period).f13961c, seekPosition.f14695c);
                }
            }
            return pairI;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    public static int a0(Timeline.Window window, Timeline.Period period, int i2, boolean z, Object obj, Timeline timeline, Timeline timeline2) {
        Timeline timeline3 = timeline;
        Object obj2 = timeline3.m(timeline3.g(obj, period).f13961c, window, 0L).f13967a;
        for (int i3 = 0; i3 < timeline2.o(); i3++) {
            if (timeline2.m(i3, window, 0L).f13967a.equals(obj2)) {
                return i3;
            }
        }
        int iB = timeline3.b(obj);
        int iH = timeline3.h();
        int iB2 = -1;
        int i4 = 0;
        while (i4 < iH && iB2 == -1) {
            Timeline timeline4 = timeline3;
            int iD = timeline4.d(iB, period, window, i2, z);
            if (iD == -1) {
                break;
            }
            iB2 = timeline2.b(timeline4.l(iD));
            i4++;
            timeline3 = timeline4;
            iB = iD;
        }
        if (iB2 == -1) {
            return -1;
        }
        return timeline2.f(iB2, period, false).f13961c;
    }

    public final void A(MediaPeriod mediaPeriod) {
        MediaPeriodQueue mediaPeriodQueue = this.t;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.m;
        if (mediaPeriodHolder != null && mediaPeriodHolder.f14709a == mediaPeriod) {
            mediaPeriodQueue.o(this.h0);
            K();
            return;
        }
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.n;
        if (mediaPeriodHolder2 == null || mediaPeriodHolder2.f14709a != mediaPeriod) {
            return;
        }
        L();
    }

    public final boolean A0(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (mediaPeriodId.b() || timeline.p()) {
            return false;
        }
        int i2 = timeline.g(mediaPeriodId.f15516a, this.m).f13961c;
        Timeline.Window window = this.l;
        timeline.n(i2, window);
        return window.a() && window.f13973i && window.f13971f != -9223372036854775807L;
    }

    public final void B(IOException iOException, int i2) {
        ExoPlaybackException exoPlaybackException = new ExoPlaybackException(0, iOException, i2);
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        if (mediaPeriodHolder != null) {
            exoPlaybackException = exoPlaybackException.b(mediaPeriodHolder.f14714h.f14718a);
        }
        Log.e("Playback error", exoPlaybackException);
        C0(false, false);
        this.K = this.K.f(exoPlaybackException);
    }

    public final void B0() {
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        if (mediaPeriodHolder == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = mediaPeriodHolder.p;
        int i2 = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.f14664b;
            if (i2 >= rendererHolderArr.length) {
                return;
            }
            if (trackSelectorResult.b(i2)) {
                rendererHolderArr[i2].l();
            }
            i2++;
        }
    }

    public final void C(boolean z) {
        MediaPeriodHolder mediaPeriodHolder = this.t.m;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolder == null ? this.K.f14755b : mediaPeriodHolder.f14714h.f14718a;
        boolean zEquals = this.K.f14762k.equals(mediaPeriodId);
        if (!zEquals) {
            this.K = this.K.c(mediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.K;
        playbackInfo.q = mediaPeriodHolder == null ? playbackInfo.s : mediaPeriodHolder.d();
        PlaybackInfo playbackInfo2 = this.K;
        playbackInfo2.r = x(playbackInfo2.q);
        if ((!zEquals || z) && mediaPeriodHolder != null && mediaPeriodHolder.f14713f) {
            F0(mediaPeriodHolder.f14714h.f14718a, mediaPeriodHolder.o, mediaPeriodHolder.p);
        }
    }

    public final void C0(boolean z, boolean z2) {
        V(z || !this.V, false, true, false);
        this.L.a(z2 ? 1 : 0);
        this.g.i(this.x);
        this.C.c(1, this.K.l);
        v0(1);
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0232  */
    /* JADX WARN: Code duplicated, block: B:140:0x029c  */
    /* JADX WARN: Code duplicated, block: B:155:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:158:0x02df  */
    /* JADX WARN: Code duplicated, block: B:159:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:169:0x030f  */
    /* JADX WARN: Code duplicated, block: B:177:0x032e  */
    /* JADX WARN: Code duplicated, block: B:252:0x0413  */
    /* JADX WARN: Code duplicated, block: B:253:0x0415  */
    /* JADX WARN: Code duplicated, block: B:258:0x042e  */
    /* JADX WARN: Code duplicated, block: B:260:0x0434  */
    /* JADX WARN: Code duplicated, block: B:261:0x0436  */
    /* JADX WARN: Code duplicated, block: B:265:0x045c  */
    /* JADX WARN: Code duplicated, block: B:270:0x0473  */
    /* JADX WARN: Code duplicated, block: B:271:0x0475  */
    /* JADX WARN: Code duplicated, block: B:274:0x0482  */
    /* JADX WARN: Code duplicated, block: B:276:0x048c  */
    /* JADX WARN: Code duplicated, block: B:278:0x0492  */
    /* JADX WARN: Code duplicated, block: B:279:0x0494  */
    /* JADX WARN: Code duplicated, block: B:283:0x04ba  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void D(Timeline timeline, boolean z) throws Throwable {
        long j2;
        Timeline.Window window;
        Object obj;
        int iA;
        long jK;
        boolean z2;
        boolean z3;
        boolean z4;
        Timeline timeline2;
        Timeline.Period period;
        boolean z5;
        Timeline timeline3;
        Timeline.Period period2;
        Timeline timeline4;
        long jLongValue;
        boolean z6;
        int i2;
        int i3;
        long jMin;
        long j3;
        boolean z7;
        int i4;
        int i5;
        boolean z8;
        PositionUpdateForPlaylistChange positionUpdateForPlaylistChange;
        int i6;
        long jLongValue2;
        boolean z9;
        int iA2;
        boolean z10;
        Timeline timeline5;
        Timeline timeline6;
        Timeline timeline7;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j4;
        MediaSource.MediaPeriodId mediaPeriodId2;
        boolean z11;
        long j5;
        boolean z12;
        Timeline timeline8;
        MediaPeriodHolder mediaPeriodHolder;
        long j6;
        MediaSource.MediaPeriodId mediaPeriodId3;
        boolean z13;
        long j7;
        PlaybackInfo playbackInfo = this.K;
        SeekPosition seekPosition = this.Z;
        MediaPeriodQueue mediaPeriodQueue = this.t;
        int i7 = this.S;
        boolean z14 = this.T;
        Timeline.Window window2 = this.l;
        Timeline.Period period3 = this.m;
        if (timeline.p()) {
            MediaSource.MediaPeriodId mediaPeriodId4 = PlaybackInfo.u;
            boolean z15 = (mediaPeriodId4.equals(playbackInfo.f14755b) && playbackInfo.s == 0) ? false : true;
            PositionUpdateForPlaylistChange positionUpdateForPlaylistChange2 = new PositionUpdateForPlaylistChange(mediaPeriodId4, 0L, -9223372036854775807L, false, true, false, z15, z15 && z && !playbackInfo.f14754a.p() && !playbackInfo.f14754a.g(playbackInfo.f14755b.f15516a, period3).f13963f, 4);
            timeline6 = timeline;
            positionUpdateForPlaylistChange = positionUpdateForPlaylistChange2;
            timeline5 = period3;
        } else {
            MediaSource.MediaPeriodId mediaPeriodId5 = playbackInfo.f14755b;
            Object obj2 = mediaPeriodId5.f15516a;
            Timeline timeline9 = playbackInfo.f14754a;
            boolean z16 = timeline9.p() || timeline9.g(mediaPeriodId5.f15516a, period3).f13963f;
            long j8 = (playbackInfo.f14755b.b() || z16) ? playbackInfo.f14756c : playbackInfo.s;
            if (seekPosition != null) {
                boolean z17 = true;
                j2 = 1;
                Timeline timeline10 = timeline;
                Pair pairZ = Z(timeline10, seekPosition, true, i7, z14, window2, period3);
                if (pairZ == null) {
                    iA2 = timeline10.a(z14);
                    obj = obj2;
                    jLongValue2 = j8;
                    z9 = false;
                    z10 = false;
                } else {
                    long j9 = seekPosition.f14695c;
                    obj = pairZ.first;
                    if (j9 == -9223372036854775807L) {
                        iA2 = timeline10.g(obj, period3).f13961c;
                        obj = obj2;
                        jLongValue2 = j8;
                        z9 = false;
                    } else {
                        jLongValue2 = ((Long) pairZ.second).longValue();
                        z9 = true;
                        iA2 = -1;
                    }
                    z10 = playbackInfo.f14757e == 4;
                    z17 = false;
                }
                j8 = jLongValue2;
                z4 = z9;
                z3 = z17;
                z2 = z10;
                iA = iA2;
                window = window2;
                timeline4 = timeline10;
                period2 = period3;
            } else {
                j2 = 1;
                Timeline timeline11 = timeline;
                if (playbackInfo.f14754a.p()) {
                    iA = timeline11.a(z14);
                    window = window2;
                    obj = obj2;
                } else if (timeline11.b(obj2) == -1) {
                    int iA0 = a0(window2, period3, i7, z14, obj, playbackInfo.f14754a, timeline11);
                    window = window2;
                    if (iA0 == -1) {
                        obj = obj2;
                        timeline2 = timeline11;
                        period = period3;
                        iA0 = timeline2.a(z14);
                        z5 = true;
                    } else {
                        obj = obj2;
                        timeline2 = timeline11;
                        period = period3;
                        z5 = false;
                    }
                    iA = iA0;
                    z3 = z5;
                    j8 = j8;
                    z2 = false;
                    timeline3 = timeline2;
                    z4 = false;
                    timeline4 = timeline3;
                    period2 = period;
                } else {
                    window = window2;
                    if (j8 == -9223372036854775807L) {
                        obj = obj2;
                        iA = timeline11.g(obj, period3).f13961c;
                    } else if (z16) {
                        playbackInfo.f14754a.g(mediaPeriodId5.f15516a, period3);
                        if (playbackInfo.f14754a.m(period3.f13961c, window, 0L).n == playbackInfo.f14754a.b(mediaPeriodId5.f15516a)) {
                            Pair pairI = timeline11.i(window, period3, timeline11.g(obj, period3).f13961c, j8 + period3.f13962e);
                            obj = pairI.first;
                            jK = ((Long) pairI.second).longValue();
                        } else {
                            jK = timeline11.g(obj, period3).d != -9223372036854775807L ? Util.k(j8, 0L, period3.d - 1) : j8;
                        }
                        j8 = jK;
                        iA = -1;
                        z2 = false;
                        z3 = false;
                        z4 = true;
                        timeline4 = timeline11;
                        period2 = period3;
                    } else {
                        iA = -1;
                        z2 = false;
                        z3 = false;
                        timeline3 = timeline11;
                        period = period3;
                        z4 = false;
                        timeline4 = timeline3;
                        period2 = period;
                    }
                }
                z2 = false;
                z3 = false;
                timeline3 = timeline11;
                period = period3;
                z4 = false;
                timeline4 = timeline3;
                period2 = period;
            }
            if (iA != -1) {
                Pair pairI2 = timeline4.i(window, period2, iA, -9223372036854775807L);
                obj = pairI2.first;
                jLongValue = ((Long) pairI2.second).longValue();
                j8 = -9223372036854775807L;
            } else {
                jLongValue = j8;
            }
            MediaSource.MediaPeriodId mediaPeriodIdT = mediaPeriodQueue.t(timeline4, obj, jLongValue);
            int i8 = mediaPeriodIdT.f15519e;
            boolean z18 = i8 == -1 || ((i6 = mediaPeriodId5.f15519e) != -1 && i8 >= i6);
            boolean zEquals = mediaPeriodId5.f15516a.equals(obj);
            boolean z19 = zEquals && !mediaPeriodId5.b() && !mediaPeriodIdT.b() && z18;
            Timeline.Period periodG = timeline4.g(obj, period2);
            if (z16 || j8 != j8) {
                z6 = false;
            } else {
                Object obj3 = mediaPeriodId5.f15516a;
                int i9 = mediaPeriodId5.f15518c;
                int i10 = mediaPeriodId5.f15517b;
                if (obj3.equals(mediaPeriodIdT.f15516a) && (!(mediaPeriodId5.b() && periodG.h(i10)) ? mediaPeriodIdT.b() && periodG.h(mediaPeriodIdT.f15517b) : !(periodG.e(i10, i9) == 4 || periodG.e(i10, i9) == 2))) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            }
            if (z19 || z6) {
                mediaPeriodIdT = mediaPeriodId5;
            }
            if (!mediaPeriodIdT.b()) {
                if (zEquals && mediaPeriodId5.b()) {
                    AdPlaybackState.AdGroup adGroupA = timeline4.g(obj, period2).g.a(mediaPeriodId5.f15517b);
                    long j10 = adGroupA.f13682j;
                    long j11 = playbackInfo.f14756c;
                    if (j11 != -9223372036854775807L) {
                        long j12 = adGroupA.f13675a;
                        if (j12 == Long.MIN_VALUE || j12 + j10 > j11) {
                            i2 = adGroupA.f13676b;
                            i3 = mediaPeriodId5.f15518c;
                            if (i2 <= i3 && adGroupA.f13679f[i3] == 2) {
                                long j13 = timeline4.g(obj, period2).d;
                                jMin = j13 != -9223372036854775807L ? Math.min(j13 - j2, jLongValue + j10) : jLongValue + j10;
                                j3 = jMin;
                            }
                        }
                    } else {
                        i2 = adGroupA.f13676b;
                        i3 = mediaPeriodId5.f15518c;
                        if (i2 <= i3) {
                        }
                    }
                }
                if (mediaPeriodIdT.equals(playbackInfo.f14755b) || jMin != playbackInfo.s) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (timeline4.b(playbackInfo.f14755b.f15516a) == -1) {
                    i4 = 4;
                } else {
                    i4 = 3;
                }
                if (mediaPeriodIdT.f15516a.equals(playbackInfo.f14755b.f15516a) || mediaPeriodIdT.f15517b == -1) {
                    i5 = i4;
                } else {
                    AdPlaybackState.AdGroup adGroupA2 = timeline4.g(mediaPeriodIdT.f15516a, period2).g.a(mediaPeriodIdT.f15517b);
                    int i11 = mediaPeriodIdT.f15518c;
                    int[] iArr = adGroupA2.f13679f;
                    if (i11 >= iArr.length || iArr[i11] != 2) {
                        i5 = 0;
                    } else {
                        i5 = i4;
                    }
                }
                if (z7 || !z || playbackInfo.f14754a.p() || playbackInfo.f14754a.g(playbackInfo.f14755b.f15516a, period2).f13963f) {
                    z8 = false;
                } else {
                    z8 = true;
                }
                positionUpdateForPlaylistChange = new PositionUpdateForPlaylistChange(mediaPeriodIdT, jMin, j3, z2, z3, z4, z7, z8, i5);
                timeline6 = timeline4;
                timeline5 = period2;
            } else if (mediaPeriodIdT.equals(mediaPeriodId5)) {
                jLongValue = playbackInfo.s;
            } else {
                timeline4.g(mediaPeriodIdT.f15516a, period2);
                jLongValue = mediaPeriodIdT.f15518c == period2.f(mediaPeriodIdT.f15517b) ? period2.g.f13672c : 0L;
            }
            jMin = jLongValue;
            j3 = j8;
            if (mediaPeriodIdT.equals(playbackInfo.f14755b)) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (timeline4.b(playbackInfo.f14755b.f15516a) == -1) {
                i4 = 4;
            } else {
                i4 = 3;
            }
            if (mediaPeriodIdT.f15516a.equals(playbackInfo.f14755b.f15516a)) {
                i5 = i4;
            } else {
                i5 = i4;
            }
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            positionUpdateForPlaylistChange = new PositionUpdateForPlaylistChange(mediaPeriodIdT, jMin, j3, z2, z3, z4, z7, z8, i5);
            timeline6 = timeline4;
            timeline5 = period2;
        }
        MediaSource.MediaPeriodId mediaPeriodId6 = positionUpdateForPlaylistChange.f14686a;
        long jE0 = positionUpdateForPlaylistChange.f14687b;
        try {
            if (positionUpdateForPlaylistChange.f14689e) {
                z12 = true;
                if (this.K.f14757e != 1) {
                    v0(4);
                }
                V(false, false, false, true);
            } else {
                z12 = true;
            }
            for (RendererHolder rendererHolder : this.f14664b) {
                rendererHolder.f14780a.y(timeline6);
                Renderer renderer = rendererHolder.f14782c;
                if (renderer != null) {
                    renderer.y(timeline6);
                }
            }
            try {
                if (positionUpdateForPlaylistChange.g) {
                    timeline5 = timeline6;
                    if (timeline5.p()) {
                        mediaPeriodId = mediaPeriodId6;
                    } else {
                        for (MediaPeriodHolder mediaPeriodHolder2 = this.t.f14734j; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.n) {
                            if (mediaPeriodHolder2.f14714h.f14718a.equals(mediaPeriodId6)) {
                                mediaPeriodHolder2.f14714h = this.t.i(timeline5, mediaPeriodHolder2.f14714h);
                                mediaPeriodHolder2.k();
                            }
                        }
                        boolean z20 = positionUpdateForPlaylistChange.d;
                        try {
                            MediaPeriodQueue mediaPeriodQueue2 = this.t;
                            mediaPeriodId = mediaPeriodId6;
                            try {
                                jE0 = e0(mediaPeriodId, jE0, mediaPeriodQueue2.f14734j != mediaPeriodQueue2.f14735k ? z12 : false, z20);
                            } catch (Throwable th) {
                                th = th;
                                jE0 = jE0;
                                timeline8 = timeline5;
                                timeline7 = timeline8;
                                PlaybackInfo playbackInfo2 = this.K;
                                Timeline timeline12 = playbackInfo2.f14754a;
                                MediaSource.MediaPeriodId mediaPeriodId7 = playbackInfo2.f14755b;
                                if (positionUpdateForPlaylistChange.f14690f) {
                                    j4 = jE0;
                                } else {
                                    j4 = -9223372036854775807L;
                                }
                                mediaPeriodId2 = mediaPeriodId;
                                K0(timeline7, mediaPeriodId2, timeline12, mediaPeriodId7, j4, false);
                                if (positionUpdateForPlaylistChange.g) {
                                    long j14 = positionUpdateForPlaylistChange.f14688c;
                                    z11 = positionUpdateForPlaylistChange.f14691h;
                                    if (z11) {
                                        j5 = jE0;
                                    } else {
                                        j5 = this.K.d;
                                    }
                                    this.K = G(mediaPeriodId2, jE0, j14, j5, z11, positionUpdateForPlaylistChange.f14692i);
                                } else {
                                    long j15 = positionUpdateForPlaylistChange.f14688c;
                                    z11 = positionUpdateForPlaylistChange.f14691h;
                                    if (z11) {
                                        j5 = jE0;
                                    } else {
                                        j5 = this.K.d;
                                    }
                                    this.K = G(mediaPeriodId2, jE0, j15, j5, z11, positionUpdateForPlaylistChange.f14692i);
                                }
                                W();
                                Y(timeline7, this.K.f14754a);
                                this.K = this.K.j(timeline7);
                                if (!timeline7.p()) {
                                    this.Z = null;
                                }
                                C(false);
                                this.f14669i.m(2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            mediaPeriodId = mediaPeriodId6;
                            timeline8 = timeline5;
                            timeline7 = timeline8;
                            PlaybackInfo playbackInfo3 = this.K;
                            Timeline timeline13 = playbackInfo3.f14754a;
                            MediaSource.MediaPeriodId mediaPeriodId8 = playbackInfo3.f14755b;
                            if (positionUpdateForPlaylistChange.f14690f) {
                                j4 = jE0;
                            } else {
                                j4 = -9223372036854775807L;
                            }
                            mediaPeriodId2 = mediaPeriodId;
                            K0(timeline7, mediaPeriodId2, timeline13, mediaPeriodId8, j4, false);
                            if (positionUpdateForPlaylistChange.g) {
                                long j16 = positionUpdateForPlaylistChange.f14688c;
                                z11 = positionUpdateForPlaylistChange.f14691h;
                                if (z11) {
                                    j5 = jE0;
                                } else {
                                    j5 = this.K.d;
                                }
                                this.K = G(mediaPeriodId2, jE0, j16, j5, z11, positionUpdateForPlaylistChange.f14692i);
                            } else {
                                long j17 = positionUpdateForPlaylistChange.f14688c;
                                z11 = positionUpdateForPlaylistChange.f14691h;
                                if (z11) {
                                    j5 = jE0;
                                } else {
                                    j5 = this.K.d;
                                }
                                this.K = G(mediaPeriodId2, jE0, j17, j5, z11, positionUpdateForPlaylistChange.f14692i);
                            }
                            W();
                            Y(timeline7, this.K.f14754a);
                            this.K = this.K.j(timeline7);
                            if (!timeline7.p()) {
                                this.Z = null;
                            }
                            C(false);
                            this.f14669i.m(2);
                            throw th;
                        }
                    }
                    PlaybackInfo playbackInfo4 = this.K;
                    Timeline timeline14 = playbackInfo4.f14754a;
                    MediaSource.MediaPeriodId mediaPeriodId9 = playbackInfo4.f14755b;
                    if (positionUpdateForPlaylistChange.f14690f) {
                        j6 = jE0;
                    } else {
                        j6 = -9223372036854775807L;
                    }
                    mediaPeriodId3 = mediaPeriodId;
                    K0(timeline, mediaPeriodId3, timeline14, mediaPeriodId9, j6, false);
                    if (positionUpdateForPlaylistChange.g) {
                        long j18 = positionUpdateForPlaylistChange.f14688c;
                        z13 = positionUpdateForPlaylistChange.f14691h;
                        if (z13) {
                            j7 = jE0;
                        } else {
                            j7 = this.K.d;
                        }
                        this.K = G(mediaPeriodId3, jE0, j18, j7, z13, positionUpdateForPlaylistChange.f14692i);
                    } else {
                        long j19 = positionUpdateForPlaylistChange.f14688c;
                        z13 = positionUpdateForPlaylistChange.f14691h;
                        if (z13) {
                            j7 = jE0;
                        } else {
                            j7 = this.K.d;
                        }
                        this.K = G(mediaPeriodId3, jE0, j19, j7, z13, positionUpdateForPlaylistChange.f14692i);
                    }
                    W();
                    Y(timeline, this.K.f14754a);
                    this.K = this.K.j(timeline);
                    if (!timeline.p()) {
                        this.Z = null;
                    }
                    C(false);
                    this.f14669i.m(2);
                    return;
                }
                try {
                    MediaPeriodHolder mediaPeriodHolder3 = this.t.f14735k;
                    try {
                        try {
                            int iW = this.t.w(timeline, this.h0, mediaPeriodHolder3 == null ? 0L : v(mediaPeriodHolder3), (!m() || (mediaPeriodHolder = this.t.l) == null) ? 0L : v(mediaPeriodHolder));
                            if ((iW & 1) != 0) {
                                c0(false);
                            } else if ((iW & 2) != 0) {
                                p();
                            }
                            mediaPeriodId = mediaPeriodId6;
                            PlaybackInfo playbackInfo5 = this.K;
                            Timeline timeline15 = playbackInfo5.f14754a;
                            MediaSource.MediaPeriodId mediaPeriodId10 = playbackInfo5.f14755b;
                            if (positionUpdateForPlaylistChange.f14690f) {
                                j6 = jE0;
                            } else {
                                j6 = -9223372036854775807L;
                            }
                            mediaPeriodId3 = mediaPeriodId;
                            K0(timeline, mediaPeriodId3, timeline15, mediaPeriodId10, j6, false);
                            if (positionUpdateForPlaylistChange.g || positionUpdateForPlaylistChange.f14688c != this.K.f14756c) {
                                long j110 = positionUpdateForPlaylistChange.f14688c;
                                z13 = positionUpdateForPlaylistChange.f14691h;
                                if (z13) {
                                    j7 = jE0;
                                } else {
                                    j7 = this.K.d;
                                }
                                this.K = G(mediaPeriodId3, jE0, j110, j7, z13, positionUpdateForPlaylistChange.f14692i);
                            }
                            W();
                            Y(timeline, this.K.f14754a);
                            this.K = this.K.j(timeline);
                            if (!timeline.p()) {
                                this.Z = null;
                            }
                            C(false);
                            this.f14669i.m(2);
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            timeline5 = timeline;
                            mediaPeriodId = mediaPeriodId6;
                            timeline8 = timeline5;
                            timeline7 = timeline8;
                            PlaybackInfo playbackInfo6 = this.K;
                            Timeline timeline16 = playbackInfo6.f14754a;
                            MediaSource.MediaPeriodId mediaPeriodId11 = playbackInfo6.f14755b;
                            if (positionUpdateForPlaylistChange.f14690f) {
                                j4 = jE0;
                            } else {
                                j4 = -9223372036854775807L;
                            }
                            mediaPeriodId2 = mediaPeriodId;
                            K0(timeline7, mediaPeriodId2, timeline16, mediaPeriodId11, j4, false);
                            if (positionUpdateForPlaylistChange.g) {
                                long j111 = positionUpdateForPlaylistChange.f14688c;
                                z11 = positionUpdateForPlaylistChange.f14691h;
                                if (z11) {
                                    j5 = jE0;
                                } else {
                                    j5 = this.K.d;
                                }
                                this.K = G(mediaPeriodId2, jE0, j111, j5, z11, positionUpdateForPlaylistChange.f14692i);
                            } else {
                                long j112 = positionUpdateForPlaylistChange.f14688c;
                                z11 = positionUpdateForPlaylistChange.f14691h;
                                if (z11) {
                                    j5 = jE0;
                                } else {
                                    j5 = this.K.d;
                                }
                                this.K = G(mediaPeriodId2, jE0, j112, j5, z11, positionUpdateForPlaylistChange.f14692i);
                            }
                            W();
                            Y(timeline7, this.K.f14754a);
                            this.K = this.K.j(timeline7);
                            if (!timeline7.p()) {
                                this.Z = null;
                            }
                            C(false);
                            this.f14669i.m(2);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        timeline5 = timeline;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    timeline5 = timeline6;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
            timeline7 = timeline6;
            mediaPeriodId = mediaPeriodId6;
        }
        PlaybackInfo playbackInfo7 = this.K;
        Timeline timeline17 = playbackInfo7.f14754a;
        MediaSource.MediaPeriodId mediaPeriodId12 = playbackInfo7.f14755b;
        if (positionUpdateForPlaylistChange.f14690f) {
            j4 = jE0;
        } else {
            j4 = -9223372036854775807L;
        }
        mediaPeriodId2 = mediaPeriodId;
        K0(timeline7, mediaPeriodId2, timeline17, mediaPeriodId12, j4, false);
        if (positionUpdateForPlaylistChange.g || positionUpdateForPlaylistChange.f14688c != this.K.f14756c) {
            long j113 = positionUpdateForPlaylistChange.f14688c;
            z11 = positionUpdateForPlaylistChange.f14691h;
            if (z11) {
                j5 = jE0;
            } else {
                j5 = this.K.d;
            }
            this.K = G(mediaPeriodId2, jE0, j113, j5, z11, positionUpdateForPlaylistChange.f14692i);
        }
        W();
        Y(timeline7, this.K.f14754a);
        this.K = this.K.j(timeline7);
        if (!timeline7.p()) {
            this.Z = null;
        }
        C(false);
        this.f14669i.m(2);
        throw th;
    }

    public final void D0() {
        DefaultMediaClock defaultMediaClock = this.p;
        defaultMediaClock.g = false;
        StandaloneMediaClock standaloneMediaClock = defaultMediaClock.f14622b;
        if (standaloneMediaClock.f14799c) {
            standaloneMediaClock.b(standaloneMediaClock.i());
            standaloneMediaClock.f14799c = false;
        }
        for (RendererHolder rendererHolder : this.f14664b) {
            Renderer renderer = rendererHolder.f14782c;
            Renderer renderer2 = rendererHolder.f14780a;
            if (RendererHolder.g(renderer2) && renderer2.getState() == 2) {
                renderer2.stop();
            }
            if (renderer != null && renderer.getState() != 0 && renderer.getState() == 2) {
                renderer.stop();
            }
        }
    }

    public final void E(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        MediaPeriodHolder mediaPeriodHolder;
        ExoPlayerImplInternal exoPlayerImplInternal;
        MediaPeriodQueue mediaPeriodQueue = this.t;
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.m;
        DefaultMediaClock defaultMediaClock = this.p;
        if (mediaPeriodHolder2 != null && mediaPeriodHolder2.f14709a == mediaPeriod) {
            mediaPeriodHolder2.getClass();
            if (!mediaPeriodHolder2.f14713f) {
                float f2 = defaultMediaClock.a().f13919a;
                PlaybackInfo playbackInfo = this.K;
                mediaPeriodHolder2.f(f2, playbackInfo.f14754a, playbackInfo.l);
            }
            F0(mediaPeriodHolder2.f14714h.f14718a, mediaPeriodHolder2.o, mediaPeriodHolder2.p);
            if (mediaPeriodHolder2 == mediaPeriodQueue.f14734j) {
                X(mediaPeriodHolder2.f14714h.f14719b, true);
                t(new boolean[this.f14664b.length], mediaPeriodQueue.f14735k.e());
                mediaPeriodHolder2.f14715i = true;
                PlaybackInfo playbackInfo2 = this.K;
                MediaSource.MediaPeriodId mediaPeriodId = playbackInfo2.f14755b;
                long j2 = mediaPeriodHolder2.f14714h.f14719b;
                exoPlayerImplInternal = this;
                exoPlayerImplInternal.K = G(mediaPeriodId, j2, playbackInfo2.f14756c, j2, false, 5);
            } else {
                exoPlayerImplInternal = this;
            }
            exoPlayerImplInternal.K();
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= mediaPeriodQueue.r.size()) {
                mediaPeriodHolder = null;
                break;
            }
            mediaPeriodHolder = (MediaPeriodHolder) mediaPeriodQueue.r.get(i2);
            if (mediaPeriodHolder.f14709a == mediaPeriod) {
                break;
            } else {
                i2++;
            }
        }
        if (mediaPeriodHolder != null) {
            Preconditions.q(!mediaPeriodHolder.f14713f);
            float f3 = defaultMediaClock.a().f13919a;
            PlaybackInfo playbackInfo3 = this.K;
            mediaPeriodHolder.f(f3, playbackInfo3.f14754a, playbackInfo3.l);
            MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodQueue.n;
            if (mediaPeriodHolder3 == null || mediaPeriodHolder3.f14709a != mediaPeriod) {
                return;
            }
            L();
        }
    }

    public final void E0() {
        MediaPeriodHolder mediaPeriodHolder = this.t.m;
        boolean z = this.R || (mediaPeriodHolder != null && mediaPeriodHolder.f14709a.m());
        PlaybackInfo playbackInfo = this.K;
        if (z != playbackInfo.g) {
            this.K = playbackInfo.b(z);
        }
    }

    public final void F(PlaybackParameters playbackParameters, float f2, boolean z, boolean z2) {
        int i2;
        if (z) {
            if (z2) {
                this.L.a(1);
            }
            this.K = this.K.g(playbackParameters);
        }
        float f3 = playbackParameters.f13919a;
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        while (true) {
            i2 = 0;
            if (mediaPeriodHolder == null) {
                break;
            }
            ExoTrackSelection[] exoTrackSelectionArr = mediaPeriodHolder.p.f15734c;
            int length = exoTrackSelectionArr.length;
            while (i2 < length) {
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
                if (exoTrackSelection != null) {
                    exoTrackSelection.i(f3);
                }
                i2++;
            }
            mediaPeriodHolder = mediaPeriodHolder.n;
        }
        RendererHolder[] rendererHolderArr = this.f14664b;
        int length2 = rendererHolderArr.length;
        while (i2 < length2) {
            RendererHolder rendererHolder = rendererHolderArr[i2];
            float f4 = playbackParameters.f13919a;
            rendererHolder.f14780a.D(f2, f4);
            Renderer renderer = rendererHolder.f14782c;
            if (renderer != null) {
                renderer.D(f2, f4);
            }
            i2++;
        }
    }

    public final void F0(MediaSource.MediaPeriodId mediaPeriodId, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        MediaPeriodQueue mediaPeriodQueue = this.t;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.m;
        mediaPeriodHolder.getClass();
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.f14734j;
        long j2 = this.h0;
        long j3 = mediaPeriodHolder.q;
        if (mediaPeriodHolder != mediaPeriodHolder2) {
            j2 -= j3;
            j3 = mediaPeriodHolder.f14714h.f14719b;
        }
        this.g.c(new LoadControl.Parameters(this.x, this.K.f14754a, mediaPeriodId, j2 - j3, x(mediaPeriodHolder.d()), this.p.a().f13919a, this.K.l, this.P, A0(this.K.f14754a, mediaPeriodHolder.f14714h.f14718a) ? this.v.c() : -9223372036854775807L, this.Q), trackSelectorResult.f15734c);
    }

    public final PlaybackInfo G(MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, long j4, boolean z, int i2) {
        boolean z2;
        this.c1 = (!this.c1 && j2 == this.K.s && mediaPeriodId.equals(this.K.f14755b)) ? false : true;
        W();
        PlaybackInfo playbackInfo = this.K;
        TrackGroupArray trackGroupArray = playbackInfo.f14759h;
        TrackSelectorResult trackSelectorResult = playbackInfo.f14760i;
        List listX = playbackInfo.f14761j;
        if (this.u.f14744k) {
            MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
            trackGroupArray = mediaPeriodHolder == null ? TrackGroupArray.d : mediaPeriodHolder.o;
            trackSelectorResult = mediaPeriodHolder == null ? this.f14667f : mediaPeriodHolder.p;
            ExoTrackSelection[] exoTrackSelectionArr = trackSelectorResult.f15734c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            boolean z3 = false;
            for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
                if (exoTrackSelection != null) {
                    Metadata metadata = exoTrackSelection.e(0).l;
                    if (metadata == null) {
                        builder.e(new Metadata(new Metadata.Entry[0]));
                    } else {
                        builder.e(metadata);
                        z3 = true;
                    }
                }
            }
            listX = z3 ? builder.j() : ImmutableList.x();
            if (mediaPeriodHolder != null) {
                MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.f14714h;
                if (mediaPeriodInfo.d != j3) {
                    mediaPeriodHolder.f14714h = mediaPeriodInfo.a(j3);
                }
            }
            RendererHolder[] rendererHolderArr = this.f14664b;
            MediaPeriodQueue mediaPeriodQueue = this.t;
            MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.f14734j;
            if (mediaPeriodHolder2 == mediaPeriodQueue.f14735k && mediaPeriodHolder2 != null) {
                TrackSelectorResult trackSelectorResult2 = mediaPeriodHolder2.p;
                int i3 = 0;
                boolean z4 = false;
                while (true) {
                    if (i3 >= rendererHolderArr.length) {
                        z2 = true;
                        break;
                    }
                    if (trackSelectorResult2.b(i3)) {
                        if (rendererHolderArr[i3].f14780a.f() != 1) {
                            z2 = false;
                            break;
                        }
                        if (trackSelectorResult2.f15733b[i3].f14778a != 0) {
                            z4 = true;
                        }
                    }
                    i3++;
                }
                boolean z5 = z4 && z2;
                if (z5 != this.X) {
                    this.X = z5;
                    if (!z5 && this.K.p) {
                        this.f14669i.m(2);
                    }
                }
            }
        } else if (!mediaPeriodId.equals(playbackInfo.f14755b)) {
            trackGroupArray = TrackGroupArray.d;
            trackSelectorResult = this.f14667f;
            listX = ImmutableList.x();
        }
        TrackSelectorResult trackSelectorResult3 = trackSelectorResult;
        List list = listX;
        TrackGroupArray trackGroupArray2 = trackGroupArray;
        if (z) {
            PlaybackInfoUpdate playbackInfoUpdate = this.L;
            if (!playbackInfoUpdate.d || playbackInfoUpdate.f14685e == 5) {
                playbackInfoUpdate.f14682a = true;
                playbackInfoUpdate.d = true;
                playbackInfoUpdate.f14685e = i2;
            } else {
                Preconditions.g(i2 == 5);
            }
        }
        PlaybackInfo playbackInfo2 = this.K;
        return playbackInfo2.d(mediaPeriodId, j2, j3, j4, x(playbackInfo2.q), trackGroupArray2, trackSelectorResult3, list);
    }

    public final void G0(int i2, int i3, List list) throws Throwable {
        this.L.a(1);
        MediaSourceList mediaSourceList = this.u;
        mediaSourceList.getClass();
        ArrayList arrayList = mediaSourceList.f14737b;
        Preconditions.g(i2 >= 0 && i2 <= i3 && i3 <= arrayList.size());
        Preconditions.g(list.size() == i3 - i2);
        for (int i4 = i2; i4 < i3; i4++) {
            ((MediaSourceList.MediaSourceHolder) arrayList.get(i4)).f14750a.k((MediaItem) list.get(i4 - i2));
        }
        D(mediaSourceList.b(), false);
    }

    /* JADX WARN: Code duplicated, block: B:137:0x025a  */
    /* JADX WARN: Code duplicated, block: B:139:0x0262  */
    /* JADX WARN: Code duplicated, block: B:189:0x034e  */
    /* JADX WARN: Code duplicated, block: B:191:0x0352  */
    /* JADX WARN: Code duplicated, block: B:193:0x036c  */
    /* JADX WARN: Code duplicated, block: B:195:0x0373 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:199:0x037c  */
    /* JADX WARN: Code duplicated, block: B:202:0x0383  */
    /* JADX WARN: Code duplicated, block: B:302:0x04eb  */
    /* JADX WARN: Code duplicated, block: B:373:0x03ae A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:60:0x0118  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void H0() throws ExoPlaybackException {
        boolean z;
        long j2;
        long j3;
        MediaPeriodHolder mediaPeriodHolder;
        MediaPeriodHolder mediaPeriodHolder2;
        boolean z2;
        boolean z3;
        MediaPeriodHolder mediaPeriodHolder3;
        MediaPeriodHolder mediaPeriodHolder4;
        MediaPeriodHolder mediaPeriodHolder5;
        TrackSelectorResult trackSelectorResult;
        TrackSelectorResult trackSelectorResult2;
        int length;
        int i2;
        RendererHolder rendererHolder;
        Renderer renderer;
        boolean zB;
        Renderer renderer2;
        Renderer renderer3;
        int i3;
        int i4;
        MediaPeriodHolder mediaPeriodHolder6;
        MediaPeriodHolder mediaPeriodHolder7;
        boolean z4;
        long j4;
        int i5;
        int i6;
        if (this.K.f14754a.p() || !this.u.f14744k) {
            return;
        }
        this.t.o(this.h0);
        MediaPeriodQueue mediaPeriodQueue = this.t;
        MediaPeriodHolder mediaPeriodHolder8 = mediaPeriodQueue.m;
        long j5 = -9223372036854775807L;
        boolean z5 = true;
        if (mediaPeriodHolder8 == null || (!mediaPeriodHolder8.f14714h.f14726k && mediaPeriodHolder8.g() && mediaPeriodQueue.m.f14714h.f14722f != -9223372036854775807L && mediaPeriodQueue.o < 100)) {
            MediaPeriodQueue mediaPeriodQueue2 = this.t;
            long j6 = this.h0;
            PlaybackInfo playbackInfo = this.K;
            MediaPeriodHolder mediaPeriodHolder9 = mediaPeriodQueue2.m;
            MediaPeriodInfo mediaPeriodInfoE = mediaPeriodHolder9 == null ? mediaPeriodQueue2.e(playbackInfo.f14754a, playbackInfo.f14755b, playbackInfo.f14756c, playbackInfo.s, -9223372036854775807L) : mediaPeriodQueue2.d(playbackInfo.f14754a, mediaPeriodHolder9, j6);
            if (mediaPeriodInfoE != null) {
                MediaPeriodQueue mediaPeriodQueue3 = this.t;
                MediaPeriodHolder mediaPeriodHolder10 = mediaPeriodQueue3.m;
                long j7 = mediaPeriodHolder10 == null ? 1000000000000L : (mediaPeriodHolder10.q + mediaPeriodHolder10.f14714h.f14722f) - mediaPeriodInfoE.f14719b;
                MediaPeriodHolder mediaPeriodHolderR = mediaPeriodQueue3.r(mediaPeriodInfoE);
                if (mediaPeriodHolderR == null) {
                    mediaPeriodHolderR = mediaPeriodQueue3.f14730e.a(mediaPeriodInfoE, j7);
                } else {
                    mediaPeriodHolderR.f14714h = mediaPeriodInfoE;
                    mediaPeriodHolderR.q = j7;
                }
                MediaPeriodHolder mediaPeriodHolder11 = mediaPeriodQueue3.m;
                if (mediaPeriodHolder11 == null) {
                    mediaPeriodQueue3.f14734j = mediaPeriodHolderR;
                    mediaPeriodQueue3.f14735k = mediaPeriodHolderR;
                    mediaPeriodQueue3.l = mediaPeriodHolderR;
                } else if (mediaPeriodHolderR != mediaPeriodHolder11.n) {
                    mediaPeriodHolder11.b();
                    mediaPeriodHolder11.n = mediaPeriodHolderR;
                    mediaPeriodHolder11.c();
                }
                mediaPeriodQueue3.p = null;
                mediaPeriodQueue3.m = mediaPeriodHolderR;
                mediaPeriodQueue3.o++;
                mediaPeriodQueue3.n();
                if (!mediaPeriodHolderR.f14712e) {
                    long j8 = mediaPeriodInfoE.f14719b;
                    mediaPeriodHolderR.f14712e = true;
                    mediaPeriodHolderR.f14709a.o(this, j8);
                } else if (mediaPeriodHolderR.f14713f) {
                    this.f14669i.g(8, mediaPeriodHolderR.f14709a).a();
                }
                if (this.t.f14734j == mediaPeriodHolderR) {
                    X(mediaPeriodInfoE.f14719b, true);
                }
                C(false);
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (this.R) {
            this.R = H(this.t.m);
            E0();
        } else {
            K();
        }
        MediaPeriodQueue mediaPeriodQueue4 = this.t;
        long j9 = 10000000;
        if (this.O || !this.B || this.i1 || m() || (mediaPeriodHolder6 = mediaPeriodQueue4.l) == null || mediaPeriodHolder6 != mediaPeriodQueue4.f14735k || (mediaPeriodHolder7 = mediaPeriodHolder6.n) == null || !(z4 = mediaPeriodHolder7.f14713f)) {
            j2 = 10000000;
        } else {
            Preconditions.q(z4);
            if (((long) ((mediaPeriodHolder7.e() - this.h0) / this.p.a().f13919a)) > 10000000) {
                j2 = 10000000;
            } else {
                MediaPeriodHolder mediaPeriodHolder12 = mediaPeriodQueue4.l;
                mediaPeriodHolder12.getClass();
                mediaPeriodQueue4.l = mediaPeriodHolder12.n;
                mediaPeriodQueue4.n();
                mediaPeriodQueue4.l.getClass();
                RendererHolder[] rendererHolderArr = this.f14664b;
                MediaPeriodHolder mediaPeriodHolder13 = mediaPeriodQueue4.l;
                if (mediaPeriodHolder13 == null) {
                    j2 = 10000000;
                } else {
                    TrackSelectorResult trackSelectorResult3 = mediaPeriodHolder13.p;
                    int i7 = 0;
                    while (i7 < rendererHolderArr.length) {
                        if (trackSelectorResult3.b(i7)) {
                            RendererHolder rendererHolder2 = rendererHolderArr[i7];
                            j4 = j9;
                            if (rendererHolder2.f14782c == null || rendererHolder2.e()) {
                                i5 = i7;
                            } else {
                                RendererHolder rendererHolder3 = rendererHolderArr[i7];
                                Preconditions.q(rendererHolder3.e() ^ z5);
                                if (RendererHolder.g(rendererHolder3.f14780a)) {
                                    i6 = 3;
                                } else {
                                    Renderer renderer4 = rendererHolder3.f14782c;
                                    i6 = (renderer4 == null || renderer4.getState() == 0) ? 2 : 4;
                                }
                                rendererHolder3.d = i6;
                                i5 = i7;
                                s(mediaPeriodHolder13, i5, false, mediaPeriodHolder13.e());
                            }
                        } else {
                            j4 = j9;
                            i5 = i7;
                        }
                        i7 = i5 + 1;
                        trackSelectorResult3 = trackSelectorResult3;
                        rendererHolderArr = rendererHolderArr;
                        j9 = j4;
                        z5 = true;
                    }
                    j2 = j9;
                    if (m()) {
                        this.h1 = mediaPeriodHolder13.f14709a.g();
                        if (!mediaPeriodHolder13.g()) {
                            mediaPeriodQueue4.q(mediaPeriodHolder13);
                            C(false);
                            K();
                        }
                    }
                }
            }
        }
        boolean z6 = this.B;
        RendererHolder[] rendererHolderArr2 = this.f14664b;
        MediaPeriodQueue mediaPeriodQueue5 = this.t;
        MediaPeriodHolder mediaPeriodHolder14 = mediaPeriodQueue5.f14735k;
        if (mediaPeriodHolder14 == null) {
            j3 = j5;
        } else if (mediaPeriodHolder14.n == null || this.O) {
            j3 = -9223372036854775807L;
            if (mediaPeriodHolder14.f14714h.f14726k || this.O) {
                for (RendererHolder rendererHolder4 : rendererHolderArr2) {
                    if (rendererHolder4.c(mediaPeriodHolder14) != null) {
                        Renderer rendererC = rendererHolder4.c(mediaPeriodHolder14);
                        rendererC.getClass();
                        if (rendererC.j()) {
                            long j10 = mediaPeriodHolder14.f14714h.f14722f;
                            long j11 = (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? -9223372036854775807L : mediaPeriodHolder14.q + j10;
                            Renderer rendererC2 = rendererHolder4.c(mediaPeriodHolder14);
                            rendererC2.getClass();
                            RendererHolder.k(rendererC2, j11);
                        }
                    }
                }
            }
        } else {
            if (mediaPeriodHolder14.f14713f) {
                int i8 = 0;
                while (true) {
                    if (i8 >= rendererHolderArr2.length) {
                        if (!m() || mediaPeriodQueue5.l != mediaPeriodQueue5.f14735k) {
                            MediaPeriodHolder mediaPeriodHolder15 = mediaPeriodHolder14.n;
                            if (!mediaPeriodHolder15.f14713f && this.h0 < mediaPeriodHolder15.e()) {
                                break;
                            }
                            MediaPeriodHolder mediaPeriodHolder16 = mediaPeriodHolder14.n;
                            boolean z7 = mediaPeriodHolder16.f14713f;
                            if (!z7) {
                                TrackSelectorResult trackSelectorResult4 = mediaPeriodHolder14.p;
                                mediaPeriodHolder3 = mediaPeriodQueue5.l;
                                mediaPeriodHolder4 = mediaPeriodQueue5.f14735k;
                                if (mediaPeriodHolder3 == mediaPeriodHolder4) {
                                    mediaPeriodHolder4.getClass();
                                    mediaPeriodQueue5.l = mediaPeriodHolder4.n;
                                }
                                MediaPeriodHolder mediaPeriodHolder17 = mediaPeriodQueue5.f14735k;
                                mediaPeriodHolder17.getClass();
                                mediaPeriodQueue5.f14735k = mediaPeriodHolder17.n;
                                mediaPeriodQueue5.n();
                                mediaPeriodHolder5 = mediaPeriodQueue5.f14735k;
                                mediaPeriodHolder5.getClass();
                                trackSelectorResult = mediaPeriodHolder5.p;
                                Timeline timeline = this.K.f14754a;
                                trackSelectorResult2 = trackSelectorResult4;
                                K0(timeline, mediaPeriodHolder5.f14714h.f14718a, timeline, mediaPeriodHolder14.f14714h.f14718a, -9223372036854775807L, false);
                                if (mediaPeriodHolder5.f14713f) {
                                    length = rendererHolderArr2.length;
                                    i2 = 0;
                                    while (i2 < length) {
                                        rendererHolder = rendererHolderArr2[i2];
                                        long jE = mediaPeriodHolder5.e();
                                        renderer = rendererHolder.f14780a;
                                        int i9 = rendererHolder.f14781b;
                                        long j12 = j5;
                                        TrackSelectorResult trackSelectorResult5 = trackSelectorResult2;
                                        zB = trackSelectorResult5.b(i9);
                                        boolean zB2 = trackSelectorResult.b(i9);
                                        renderer2 = rendererHolder.f14782c;
                                        if (renderer2 != null) {
                                            i3 = rendererHolder.d;
                                            renderer3 = renderer;
                                            if (i3 != 3) {
                                            }
                                            if (!zB) {
                                            }
                                            i2++;
                                            trackSelectorResult2 = trackSelectorResult5;
                                            j5 = j12;
                                        } else {
                                            renderer3 = renderer;
                                        }
                                        renderer2 = renderer3;
                                        if (!zB) {
                                        }
                                        i2++;
                                        trackSelectorResult2 = trackSelectorResult5;
                                        j5 = j12;
                                    }
                                    break;
                                    break;
                                }
                                length = rendererHolderArr2.length;
                                i2 = 0;
                                while (i2 < length) {
                                    rendererHolder = rendererHolderArr2[i2];
                                    long jE2 = mediaPeriodHolder5.e();
                                    renderer = rendererHolder.f14780a;
                                    int i10 = rendererHolder.f14781b;
                                    long j13 = j5;
                                    TrackSelectorResult trackSelectorResult6 = trackSelectorResult2;
                                    zB = trackSelectorResult6.b(i10);
                                    boolean zB3 = trackSelectorResult.b(i10);
                                    renderer2 = rendererHolder.f14782c;
                                    if (renderer2 != null) {
                                        i3 = rendererHolder.d;
                                        renderer3 = renderer;
                                        if (i3 != 3) {
                                        }
                                        if (!zB) {
                                        }
                                        i2++;
                                        trackSelectorResult2 = trackSelectorResult6;
                                        j5 = j13;
                                    } else {
                                        renderer3 = renderer;
                                    }
                                    renderer2 = renderer3;
                                    if (!zB) {
                                    }
                                    i2++;
                                    trackSelectorResult2 = trackSelectorResult6;
                                    j5 = j13;
                                }
                                break;
                                break;
                            }
                            Preconditions.q(z7);
                            if (((long) ((mediaPeriodHolder16.e() - this.h0) / this.p.a().f13919a)) > j2) {
                                break;
                            }
                            TrackSelectorResult trackSelectorResult7 = mediaPeriodHolder14.p;
                            mediaPeriodHolder3 = mediaPeriodQueue5.l;
                            mediaPeriodHolder4 = mediaPeriodQueue5.f14735k;
                            if (mediaPeriodHolder3 == mediaPeriodHolder4) {
                                mediaPeriodHolder4.getClass();
                                mediaPeriodQueue5.l = mediaPeriodHolder4.n;
                            }
                            MediaPeriodHolder mediaPeriodHolder18 = mediaPeriodQueue5.f14735k;
                            mediaPeriodHolder18.getClass();
                            mediaPeriodQueue5.f14735k = mediaPeriodHolder18.n;
                            mediaPeriodQueue5.n();
                            mediaPeriodHolder5 = mediaPeriodQueue5.f14735k;
                            mediaPeriodHolder5.getClass();
                            trackSelectorResult = mediaPeriodHolder5.p;
                            Timeline timeline2 = this.K.f14754a;
                            trackSelectorResult2 = trackSelectorResult7;
                            K0(timeline2, mediaPeriodHolder5.f14714h.f14718a, timeline2, mediaPeriodHolder14.f14714h.f14718a, -9223372036854775807L, false);
                            if (mediaPeriodHolder5.f14713f && ((z6 && this.h1 != -9223372036854775807L) || mediaPeriodHolder5.f14709a.g() != -9223372036854775807L)) {
                                this.h1 = -9223372036854775807L;
                                boolean z8 = z6 && !this.i1;
                                if (z8) {
                                    for (int i11 = 0; i11 < rendererHolderArr2.length; i11++) {
                                        boolean zB4 = trackSelectorResult.b(i11);
                                        ExoTrackSelection[] exoTrackSelectionArr = trackSelectorResult.f15734c;
                                        if (zB4 && rendererHolderArr2[i11].f14780a.f() != -2 && !MimeTypes.a(exoTrackSelectionArr[i11].s().o, exoTrackSelectionArr[i11].s().f13763k) && !rendererHolderArr2[i11].e()) {
                                            z8 = false;
                                            break;
                                        }
                                    }
                                }
                                if (!z8) {
                                    long jE3 = mediaPeriodHolder5.e();
                                    for (RendererHolder rendererHolder5 : rendererHolderArr2) {
                                        Renderer renderer5 = rendererHolder5.f14782c;
                                        Renderer renderer6 = rendererHolder5.f14780a;
                                        if (RendererHolder.g(renderer6) && (i4 = rendererHolder5.d) != 4 && i4 != 2) {
                                            RendererHolder.k(renderer6, jE3);
                                        }
                                        if (renderer5 != null && renderer5.getState() != 0 && rendererHolder5.d != 3) {
                                            RendererHolder.k(renderer5, jE3);
                                        }
                                    }
                                    if (!mediaPeriodHolder5.g()) {
                                        mediaPeriodQueue5.q(mediaPeriodHolder5);
                                        C(false);
                                        K();
                                        break;
                                    }
                                    break;
                                }
                                length = rendererHolderArr2.length;
                                i2 = 0;
                                while (i2 < length) {
                                    rendererHolder = rendererHolderArr2[i2];
                                    long jE4 = mediaPeriodHolder5.e();
                                    renderer = rendererHolder.f14780a;
                                    int i12 = rendererHolder.f14781b;
                                    long j14 = j5;
                                    TrackSelectorResult trackSelectorResult8 = trackSelectorResult2;
                                    zB = trackSelectorResult8.b(i12);
                                    boolean zB5 = trackSelectorResult.b(i12);
                                    renderer2 = rendererHolder.f14782c;
                                    if (renderer2 != null) {
                                        i3 = rendererHolder.d;
                                        renderer3 = renderer;
                                        if (i3 != 3) {
                                        }
                                        if (!zB) {
                                        }
                                        i2++;
                                        trackSelectorResult2 = trackSelectorResult8;
                                        j5 = j14;
                                    } else {
                                        renderer3 = renderer;
                                    }
                                    renderer2 = renderer3;
                                    if (!zB) {
                                    }
                                    i2++;
                                    trackSelectorResult2 = trackSelectorResult8;
                                    j5 = j14;
                                }
                                break;
                                break;
                            }
                            length = rendererHolderArr2.length;
                            i2 = 0;
                            while (i2 < length) {
                                rendererHolder = rendererHolderArr2[i2];
                                long jE5 = mediaPeriodHolder5.e();
                                renderer = rendererHolder.f14780a;
                                int i13 = rendererHolder.f14781b;
                                long j15 = j5;
                                TrackSelectorResult trackSelectorResult9 = trackSelectorResult2;
                                zB = trackSelectorResult9.b(i13);
                                boolean zB6 = trackSelectorResult.b(i13);
                                renderer2 = rendererHolder.f14782c;
                                if (renderer2 != null) {
                                    i3 = rendererHolder.d;
                                    renderer3 = renderer;
                                    if (i3 != 3 || (i3 == 0 && RendererHolder.g(renderer3))) {
                                    }
                                    if (!zB && !renderer2.u()) {
                                        boolean z9 = renderer3.f() == -2;
                                        RendererConfiguration rendererConfiguration = trackSelectorResult9.f15733b[i13];
                                        RendererConfiguration rendererConfiguration2 = trackSelectorResult.f15733b[i13];
                                        if (!zB6 || !Objects.equals(rendererConfiguration2, rendererConfiguration) || z9 || rendererHolder.e()) {
                                            RendererHolder.k(renderer2, jE5);
                                        }
                                    }
                                    i2++;
                                    trackSelectorResult2 = trackSelectorResult9;
                                    j5 = j15;
                                } else {
                                    renderer3 = renderer;
                                }
                                renderer2 = renderer3;
                                if (!zB) {
                                }
                                i2++;
                                trackSelectorResult2 = trackSelectorResult9;
                                j5 = j15;
                            }
                            break;
                        }
                        break;
                    }
                    RendererHolder rendererHolder6 = rendererHolderArr2[i8];
                    if (!rendererHolder6.d(mediaPeriodHolder14, rendererHolder6.f14780a) || !rendererHolder6.d(mediaPeriodHolder14, rendererHolder6.f14782c)) {
                        break;
                    } else {
                        i8++;
                    }
                }
            }
            j3 = j5;
        }
        MediaPeriodQueue mediaPeriodQueue6 = this.t;
        MediaPeriodHolder mediaPeriodHolder19 = mediaPeriodQueue6.f14735k;
        if (mediaPeriodHolder19 != null && mediaPeriodQueue6.f14734j != mediaPeriodHolder19 && !mediaPeriodHolder19.f14715i) {
            RendererHolder[] rendererHolderArr3 = this.f14664b;
            TrackSelectorResult trackSelectorResult10 = mediaPeriodHolder19.p;
            boolean z10 = true;
            for (int i14 = 0; i14 < rendererHolderArr3.length; i14++) {
                int iB = rendererHolderArr3[i14].b();
                RendererHolder rendererHolder7 = rendererHolderArr3[i14];
                DefaultMediaClock defaultMediaClock = this.p;
                int i15 = rendererHolder7.i(rendererHolder7.f14780a, mediaPeriodHolder19, trackSelectorResult10, defaultMediaClock);
                int i16 = rendererHolder7.i(rendererHolder7.f14782c, mediaPeriodHolder19, trackSelectorResult10, defaultMediaClock);
                if (i15 == 1) {
                    i15 = i16;
                }
                if ((i15 & 2) != 0 && (z3 = this.X) && z3) {
                    this.X = false;
                    if (this.K.p) {
                        this.f14669i.m(2);
                    }
                }
                this.Y -= iB - rendererHolderArr3[i14].b();
                z10 &= (i15 & 1) != 0;
            }
            if (z10) {
                for (int i17 = 0; i17 < rendererHolderArr3.length; i17++) {
                    if (trackSelectorResult10.b(i17) && rendererHolderArr3[i17].c(mediaPeriodHolder19) == null) {
                        s(mediaPeriodHolder19, i17, false, mediaPeriodHolder19.e());
                    }
                }
            }
            if (z10) {
                mediaPeriodQueue6.f14735k.f14715i = true;
            }
        }
        RendererHolder[] rendererHolderArr4 = this.f14664b;
        MediaPeriodQueue mediaPeriodQueue7 = this.t;
        boolean z11 = false;
        while (z0() && !this.O && (mediaPeriodHolder = mediaPeriodQueue7.f14734j) != null && (mediaPeriodHolder2 = mediaPeriodHolder.n) != null && this.h0 >= mediaPeriodHolder2.e() && mediaPeriodHolder2.f14715i) {
            if (z11) {
                M();
            }
            this.i1 = false;
            MediaPeriodHolder mediaPeriodHolderA = mediaPeriodQueue7.a();
            mediaPeriodHolderA.getClass();
            if (this.K.f14755b.f15516a.equals(mediaPeriodHolderA.f14714h.f14718a.f15516a)) {
                MediaSource.MediaPeriodId mediaPeriodId = this.K.f14755b;
                if (mediaPeriodId.f15517b == -1) {
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodHolderA.f14714h.f14718a;
                    if (mediaPeriodId2.f15517b != -1 || mediaPeriodId.f15519e == mediaPeriodId2.f15519e) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolderA.f14714h;
            boolean z12 = z2;
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodInfo.f14718a;
            long j16 = mediaPeriodInfo.f14719b;
            this.K = G(mediaPeriodId3, j16, mediaPeriodInfo.d, j16, !z12, 0);
            W();
            J0();
            if (m() && mediaPeriodHolderA == mediaPeriodQueue7.l) {
                for (RendererHolder rendererHolder8 : rendererHolderArr4) {
                    int i18 = rendererHolder8.d;
                    if (i18 == 3 || i18 == 4) {
                        boolean z13 = i18 == 4;
                        Renderer renderer7 = rendererHolder8.f14780a;
                        Renderer renderer8 = rendererHolder8.f14782c;
                        if (z13) {
                            renderer8.getClass();
                            renderer8.q(17, renderer7);
                        } else {
                            renderer8.getClass();
                            renderer7.q(17, renderer8);
                        }
                        rendererHolder8.d = rendererHolder8.d == 4 ? 0 : 1;
                    } else if (i18 == 2) {
                        rendererHolder8.d = 0;
                    }
                }
            }
            if (this.K.f14757e == 3) {
                B0();
            }
            TrackSelectorResult trackSelectorResult11 = mediaPeriodQueue7.f14734j.p;
            for (int i19 = 0; i19 < rendererHolderArr4.length; i19++) {
                if (trackSelectorResult11.b(i19)) {
                    RendererHolder rendererHolder9 = rendererHolderArr4[i19];
                    Renderer renderer9 = rendererHolder9.f14782c;
                    Renderer renderer10 = rendererHolder9.f14780a;
                    if (RendererHolder.g(renderer10)) {
                        renderer10.m();
                    } else if (renderer9 != null && renderer9.getState() != 0) {
                        renderer9.m();
                    }
                }
            }
            z11 = true;
        }
        if (this.f1.f14643a == j3) {
            return;
        }
        if (z || !this.K.f14754a.equals(this.g1)) {
            Timeline timeline3 = this.K.f14754a;
            this.g1 = timeline3;
            this.t.j(timeline3);
        }
        L();
    }

    public final boolean I(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodQueue mediaPeriodQueue = this.t;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.l;
        if (mediaPeriodHolder != null && mediaPeriodHolder.f14714h.f14718a.equals(mediaPeriodId)) {
            RendererHolder rendererHolder = this.f14664b[i2];
            MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.l;
            int i3 = rendererHolder.d;
            boolean z = (i3 == 2 || i3 == 4) && rendererHolder.c(mediaPeriodHolder2) == rendererHolder.f14780a;
            boolean z2 = rendererHolder.d == 3 && rendererHolder.c(mediaPeriodHolder2) == rendererHolder.f14782c;
            if (z || z2) {
                return true;
            }
        }
        return false;
    }

    public final void I0(int i2, int i3, int i4, boolean z) {
        boolean z2 = z && i2 != -1;
        if (i2 == -1) {
            i4 = 2;
        } else if (i4 == 2) {
            i4 = 1;
        }
        boolean z3 = this.G;
        if (i2 == 0) {
            i3 = 1;
        } else if (i3 == 1) {
            i3 = z3 ? 4 : 0;
        }
        PlaybackInfo playbackInfo = this.K;
        if (playbackInfo.l == z2 && playbackInfo.n == i3 && playbackInfo.m == i4) {
            return;
        }
        this.K = playbackInfo.e(i4, i3, z2);
        L0(false, false);
        MediaPeriodQueue mediaPeriodQueue = this.t;
        for (MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.f14734j; mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.n) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolder.p.f15734c) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.o(z2);
                }
            }
        }
        if (!z0()) {
            D0();
            J0();
            PlaybackInfo playbackInfo2 = this.K;
            if (playbackInfo2.p) {
                this.K = playbackInfo2.i(false);
            }
            mediaPeriodQueue.o(this.h0);
            return;
        }
        int i5 = this.K.f14757e;
        HandlerWrapper handlerWrapper = this.f14669i;
        if (i5 != 3) {
            if (i5 == 2) {
                handlerWrapper.m(2);
                return;
            }
            return;
        }
        DefaultMediaClock defaultMediaClock = this.p;
        defaultMediaClock.g = true;
        StandaloneMediaClock standaloneMediaClock = defaultMediaClock.f14622b;
        if (!standaloneMediaClock.f14799c) {
            standaloneMediaClock.f14800e = standaloneMediaClock.f14798b.b();
            standaloneMediaClock.f14799c = true;
        }
        B0();
        handlerWrapper.m(2);
    }

    public final boolean J() {
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        long j2 = mediaPeriodHolder.f14714h.f14722f;
        if (mediaPeriodHolder.f14713f) {
            return j2 == -9223372036854775807L || this.K.s < j2 || !z0();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00cc  */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x016e, code lost:
    
        r9 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J0() {
        /*
            Method dump skipped, instruction units count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlayerImplInternal.J0():void");
    }

    public final void K() {
        long j2;
        boolean zG;
        if (H(this.t.m)) {
            MediaPeriodHolder mediaPeriodHolder = this.t.m;
            long jX = x(!mediaPeriodHolder.f14713f ? 0L : mediaPeriodHolder.f14709a.c());
            MediaPeriodHolder mediaPeriodHolder2 = this.t.f14734j;
            long j3 = this.h0;
            long j4 = mediaPeriodHolder.q;
            if (mediaPeriodHolder != mediaPeriodHolder2) {
                j3 -= j4;
                j4 = mediaPeriodHolder.f14714h.f14719b;
            }
            j2 = -9223372036854775807L;
            LoadControl.Parameters parameters = new LoadControl.Parameters(this.x, this.K.f14754a, mediaPeriodHolder.f14714h.f14718a, j3 - j4, jX, this.p.a().f13919a, this.K.l, this.P, A0(this.K.f14754a, mediaPeriodHolder.f14714h.f14718a) ? this.v.c() : -9223372036854775807L, this.Q);
            zG = this.g.g(parameters);
            MediaPeriodHolder mediaPeriodHolder3 = this.t.f14734j;
            if (!zG && mediaPeriodHolder3.f14713f && jX < 500000 && (this.n > 0 || this.o)) {
                mediaPeriodHolder3.f14709a.u(this.K.s, false);
                zG = this.g.g(parameters);
            }
        } else {
            zG = false;
            j2 = -9223372036854775807L;
        }
        this.R = zG;
        if (zG) {
            MediaPeriodHolder mediaPeriodHolder4 = this.t.m;
            mediaPeriodHolder4.getClass();
            LoadingInfo.Builder builder = new LoadingInfo.Builder();
            builder.f14706a = this.h0 - mediaPeriodHolder4.q;
            float f2 = this.p.a().f13919a;
            Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 == -3.4028235E38f);
            builder.f14707b = f2;
            long j5 = this.Q;
            Preconditions.g(j5 >= 0 || j5 == j2);
            builder.f14708c = j5;
            LoadingInfo loadingInfo = new LoadingInfo(builder);
            Preconditions.q(mediaPeriodHolder4.n == null);
            mediaPeriodHolder4.f14709a.a(loadingInfo);
        }
        E0();
    }

    public final void K0(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline2, MediaSource.MediaPeriodId mediaPeriodId2, long j2, boolean z) {
        boolean zA0 = A0(timeline, mediaPeriodId);
        Object obj = mediaPeriodId.f15516a;
        if (!zA0) {
            PlaybackParameters playbackParameters = mediaPeriodId.b() ? PlaybackParameters.d : this.K.o;
            DefaultMediaClock defaultMediaClock = this.p;
            if (defaultMediaClock.a().equals(playbackParameters)) {
                return;
            }
            this.f14669i.n(16);
            defaultMediaClock.d(playbackParameters);
            F(this.K.o, playbackParameters.f13919a, false, false);
            return;
        }
        Timeline.Period period = this.m;
        int i2 = timeline.g(obj, period).f13961c;
        Timeline.Window window = this.l;
        timeline.n(i2, window);
        MediaItem.LiveConfiguration liveConfiguration = window.f13974j;
        LivePlaybackSpeedControl livePlaybackSpeedControl = this.v;
        livePlaybackSpeedControl.a(liveConfiguration);
        if (j2 != -9223372036854775807L) {
            livePlaybackSpeedControl.e(u(timeline, obj, j2));
            return;
        }
        if (!Objects.equals(!timeline2.p() ? timeline2.m(timeline2.g(mediaPeriodId2.f15516a, period).f13961c, window, 0L).f13967a : null, window.f13967a) || z) {
            livePlaybackSpeedControl.e(-9223372036854775807L);
        }
    }

    public final void L() {
        MediaPeriodQueue mediaPeriodQueue = this.t;
        mediaPeriodQueue.m();
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.n;
        if (mediaPeriodHolder != null) {
            MediaPeriod mediaPeriod = mediaPeriodHolder.f14709a;
            if ((!mediaPeriodHolder.f14712e || mediaPeriodHolder.f14713f) && !mediaPeriod.m()) {
                Timeline timeline = this.K.f14754a;
                if (mediaPeriodHolder.f14713f) {
                    mediaPeriod.s();
                }
                if (this.g.h()) {
                    if (!mediaPeriodHolder.f14712e) {
                        long j2 = mediaPeriodHolder.f14714h.f14719b;
                        mediaPeriodHolder.f14712e = true;
                        mediaPeriod.o(this, j2);
                        return;
                    }
                    LoadingInfo.Builder builder = new LoadingInfo.Builder();
                    builder.f14706a = this.h0 - mediaPeriodHolder.q;
                    float f2 = this.p.a().f13919a;
                    Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 == -3.4028235E38f);
                    builder.f14707b = f2;
                    long j3 = this.Q;
                    Preconditions.g(j3 >= 0 || j3 == -9223372036854775807L);
                    builder.f14708c = j3;
                    LoadingInfo loadingInfo = new LoadingInfo(builder);
                    Preconditions.q(mediaPeriodHolder.n == null);
                    mediaPeriod.a(loadingInfo);
                }
            }
        }
    }

    public final void L0(boolean z, boolean z2) {
        this.P = z;
        this.Q = (!z || z2) ? -9223372036854775807L : this.r.b();
    }

    public final void M() {
        PlaybackInfoUpdate playbackInfoUpdate = this.L;
        PlaybackInfo playbackInfo = this.K;
        boolean z = playbackInfoUpdate.f14682a | (playbackInfoUpdate.f14683b != playbackInfo);
        playbackInfoUpdate.f14682a = z;
        playbackInfoUpdate.f14683b = playbackInfo;
        if (z) {
            this.s.b(playbackInfoUpdate);
            this.L = new PlaybackInfoUpdate(this.K);
        }
    }

    public final void N(int i2) {
        RendererHolder rendererHolder = this.f14664b[i2];
        try {
            MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
            mediaPeriodHolder.getClass();
            Renderer rendererC = rendererHolder.c(mediaPeriodHolder);
            rendererC.getClass();
            rendererC.s();
        } catch (IOException | RuntimeException e2) {
            int iF = rendererHolder.f14780a.f();
            if (iF != 3 && iF != 5) {
                throw e2;
            }
            TrackSelectorResult trackSelectorResult = this.t.f14734j.p;
            Log.e("Disabling track due to error: ".concat(Format.c(trackSelectorResult.f15734c[i2].s())), e2);
            TrackSelectorResult trackSelectorResult2 = new TrackSelectorResult((RendererConfiguration[]) trackSelectorResult.f15733b.clone(), (ExoTrackSelection[]) trackSelectorResult.f15734c.clone(), trackSelectorResult.d, trackSelectorResult.f15735e);
            trackSelectorResult2.f15733b[i2] = null;
            trackSelectorResult2.f15734c[i2] = null;
            q(i2);
            MediaPeriodHolder mediaPeriodHolder2 = this.t.f14734j;
            mediaPeriodHolder2.a(trackSelectorResult2, this.K.s, false, new boolean[mediaPeriodHolder2.f14717k.length]);
        }
    }

    public final void O(final int i2, final boolean z) {
        boolean[] zArr = this.d;
        if (zArr[i2] != z) {
            zArr[i2] = z;
            this.A.k(new Runnable() { // from class: androidx.media3.exoplayer.o
                @Override // java.lang.Runnable
                public final void run() {
                    ExoPlayerImplInternal exoPlayerImplInternal = this.f15414b;
                    AnalyticsCollector analyticsCollector = exoPlayerImplInternal.z;
                    RendererHolder[] rendererHolderArr = exoPlayerImplInternal.f14664b;
                    int i3 = i2;
                    analyticsCollector.n0(i3, rendererHolderArr[i3].f14780a.f(), z);
                }
            });
        }
    }

    public final void P() throws Throwable {
        D(this.u.b(), true);
    }

    public final void Q(MoveMediaItemsMessage moveMediaItemsMessage) throws Throwable {
        Timeline timelineB;
        this.L.a(1);
        int i2 = moveMediaItemsMessage.f14676a;
        int i3 = moveMediaItemsMessage.f14677b;
        int i4 = moveMediaItemsMessage.f14678c;
        ShuffleOrder shuffleOrder = moveMediaItemsMessage.d;
        MediaSourceList mediaSourceList = this.u;
        ArrayList arrayList = mediaSourceList.f14737b;
        Preconditions.g(i2 >= 0 && i2 <= i3 && i3 <= arrayList.size() && i4 >= 0);
        mediaSourceList.f14743j = shuffleOrder;
        if (i2 == i3 || i2 == i4) {
            timelineB = mediaSourceList.b();
        } else {
            int iMin = Math.min(i2, i4);
            int iMax = Math.max(((i3 - i2) + i4) - 1, i3 - 1);
            int iO = ((MediaSourceList.MediaSourceHolder) arrayList.get(iMin)).d;
            Util.Q(arrayList, i2, i3, i4);
            while (iMin <= iMax) {
                MediaSourceList.MediaSourceHolder mediaSourceHolder = (MediaSourceList.MediaSourceHolder) arrayList.get(iMin);
                mediaSourceHolder.d = iO;
                iO += mediaSourceHolder.f14750a.o.f15491e.o();
                iMin++;
            }
            timelineB = mediaSourceList.b();
        }
        D(timelineB, false);
    }

    public final void R() {
        this.L.a(1);
        V(false, false, false, true);
        this.g.e(this.x);
        v0(this.K.f14754a.p() ? 4 : 2);
        PlaybackInfo playbackInfo = this.K;
        boolean z = playbackInfo.l;
        I0(this.C.c(playbackInfo.f14757e, z), playbackInfo.n, playbackInfo.m, z);
        DefaultBandwidthMeter defaultBandwidthMeterD = this.f14668h.d();
        MediaSourceList mediaSourceList = this.u;
        ArrayList arrayList = mediaSourceList.f14737b;
        Preconditions.q(!mediaSourceList.f14744k);
        mediaSourceList.l = defaultBandwidthMeterD;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = (MediaSourceList.MediaSourceHolder) arrayList.get(i2);
            mediaSourceList.e(mediaSourceHolder);
            mediaSourceList.g.add(mediaSourceHolder);
        }
        mediaSourceList.f14744k = true;
        this.f14669i.m(2);
    }

    public final void S(ConditionVariable conditionVariable) {
        PlaybackLooperProvider playbackLooperProvider = this.f14670j;
        HandlerWrapper handlerWrapper = this.f14669i;
        try {
            V(true, false, true, false);
            RendererHolder[] rendererHolderArr = this.f14664b;
            for (int i2 = 0; i2 < rendererHolderArr.length; i2++) {
                this.f14665c[i2].h();
                RendererHolder rendererHolder = rendererHolderArr[i2];
                rendererHolder.f14780a.release();
                rendererHolder.f14783e = false;
                Renderer renderer = rendererHolder.f14782c;
                if (renderer != null) {
                    renderer.release();
                    rendererHolder.f14784f = false;
                }
            }
            this.g.f(this.x);
            AudioFocusManager audioFocusManager = this.C;
            audioFocusManager.f14035c = null;
            audioFocusManager.a();
            audioFocusManager.b(0);
            this.f14666e.e();
            v0(1);
        } finally {
            handlerWrapper.c();
            playbackLooperProvider.a();
            conditionVariable.d();
        }
    }

    public final void T(int i2, int i3, ShuffleOrder shuffleOrder) throws Throwable {
        this.L.a(1);
        MediaSourceList mediaSourceList = this.u;
        mediaSourceList.getClass();
        Preconditions.g(i2 >= 0 && i2 <= i3 && i3 <= mediaSourceList.f14737b.size());
        mediaSourceList.f14743j = shuffleOrder;
        mediaSourceList.g(i2, i3);
        D(mediaSourceList.b(), false);
    }

    /* JADX WARN: Code duplicated, block: B:78:0x016c  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    public final void U() throws ExoPlaybackException {
        int i2;
        int i3;
        float f2 = this.p.a().f13919a;
        MediaPeriodQueue mediaPeriodQueue = this.t;
        MediaPeriodHolder mediaPeriodHolder = mediaPeriodQueue.f14734j;
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.f14735k;
        TrackSelectorResult trackSelectorResult = null;
        MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodHolder;
        boolean z = true;
        while (mediaPeriodHolder3 != null && mediaPeriodHolder3.f14713f) {
            PlaybackInfo playbackInfo = this.K;
            TrackSelectorResult trackSelectorResultJ = mediaPeriodHolder3.j(f2, playbackInfo.f14754a, playbackInfo.l);
            TrackSelectorResult trackSelectorResult2 = mediaPeriodHolder3 == this.t.f14734j ? trackSelectorResultJ : trackSelectorResult;
            TrackSelectorResult trackSelectorResult3 = mediaPeriodHolder3.p;
            ExoTrackSelection[] exoTrackSelectionArr = trackSelectorResultJ.f15734c;
            if (trackSelectorResult3 != null && trackSelectorResult3.f15734c.length == exoTrackSelectionArr.length) {
                int i4 = 0;
                while (true) {
                    if (i4 >= exoTrackSelectionArr.length) {
                        if (mediaPeriodHolder3 == mediaPeriodHolder2) {
                            z = false;
                        }
                        mediaPeriodHolder3 = mediaPeriodHolder3.n;
                        trackSelectorResult = trackSelectorResult2;
                    } else if (trackSelectorResultJ.a(trackSelectorResult3, i4)) {
                        i4++;
                    }
                }
            }
            MediaPeriodQueue mediaPeriodQueue2 = this.t;
            if (!z) {
                i2 = 4;
                mediaPeriodQueue2.q(mediaPeriodHolder3);
                if (mediaPeriodHolder3.f14713f) {
                    long jMax = Math.max(mediaPeriodHolder3.f14714h.f14719b, this.h0 - mediaPeriodHolder3.q);
                    if (this.B && m() && this.t.l == mediaPeriodHolder3) {
                        p();
                    }
                    i3 = 4;
                    mediaPeriodHolder3.a(trackSelectorResultJ, jMax, false, new boolean[mediaPeriodHolder3.f14717k.length]);
                }
                C(true);
                if (this.K.f14757e != i3) {
                    K();
                    J0();
                    this.f14669i.m(2);
                    return;
                }
                return;
            }
            MediaPeriodHolder mediaPeriodHolder4 = mediaPeriodQueue2.f14734j;
            boolean z2 = (mediaPeriodQueue2.q(mediaPeriodHolder4) & 1) != 0;
            boolean[] zArr = new boolean[this.f14664b.length];
            trackSelectorResult2.getClass();
            long jA = mediaPeriodHolder4.a(trackSelectorResult2, this.K.s, z2, zArr);
            PlaybackInfo playbackInfo2 = this.K;
            boolean z3 = (playbackInfo2.f14757e == 4 || jA == playbackInfo2.s) ? false : true;
            PlaybackInfo playbackInfo3 = this.K;
            i2 = 4;
            this.K = G(playbackInfo3.f14755b, jA, playbackInfo3.f14756c, playbackInfo3.d, z3, 5);
            if (z3) {
                X(jA, true);
            }
            p();
            boolean[] zArr2 = new boolean[this.f14664b.length];
            int i5 = 0;
            while (true) {
                RendererHolder[] rendererHolderArr = this.f14664b;
                if (i5 >= rendererHolderArr.length) {
                    break;
                }
                int iB = rendererHolderArr[i5].b();
                zArr2[i5] = this.f14664b[i5].f();
                RendererHolder rendererHolder = this.f14664b[i5];
                SampleStream sampleStream = mediaPeriodHolder4.f14711c[i5];
                DefaultMediaClock defaultMediaClock = this.p;
                long j2 = this.h0;
                boolean z4 = zArr[i5];
                Renderer renderer = rendererHolder.f14780a;
                if (RendererHolder.g(renderer)) {
                    if (sampleStream != renderer.G()) {
                        rendererHolder.a(renderer, defaultMediaClock);
                    } else if (z4) {
                        renderer.z(j2, true);
                    }
                }
                Renderer renderer2 = rendererHolder.f14782c;
                if (renderer2 != null && RendererHolder.g(renderer2)) {
                    if (sampleStream != renderer2.G()) {
                        rendererHolder.a(renderer2, defaultMediaClock);
                    } else if (z4) {
                        renderer2.z(j2, true);
                    }
                }
                if (iB - this.f14664b[i5].b() > 0) {
                    O(i5, false);
                }
                this.Y -= iB - this.f14664b[i5].b();
                i5++;
            }
            t(zArr2, this.h0);
            mediaPeriodHolder4.f14715i = true;
            i3 = i2;
            C(true);
            if (this.K.f14757e != i3) {
                K();
                J0();
                this.f14669i.m(2);
                return;
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0099  */
    public final void V(boolean z, boolean z2, boolean z3, boolean z4) {
        long j2;
        long j3;
        long j4;
        boolean z5;
        Timeline playlistTimeline;
        this.f14669i.n(2);
        this.H = false;
        if (this.I != null) {
            this.L.a(1);
            this.I = null;
        }
        this.d1 = null;
        L0(false, true);
        DefaultMediaClock defaultMediaClock = this.p;
        defaultMediaClock.g = false;
        StandaloneMediaClock standaloneMediaClock = defaultMediaClock.f14622b;
        if (standaloneMediaClock.f14799c) {
            standaloneMediaClock.b(standaloneMediaClock.i());
            standaloneMediaClock.f14799c = false;
        }
        this.h0 = 1000000000000L;
        for (int i2 = 0; i2 < this.f14664b.length; i2++) {
            try {
                q(i2);
            } catch (ExoPlaybackException | RuntimeException e2) {
                Log.e("Disable failed.", e2);
            }
        }
        this.h1 = -9223372036854775807L;
        if (z) {
            for (RendererHolder rendererHolder : this.f14664b) {
                try {
                    rendererHolder.j();
                } catch (RuntimeException e3) {
                    Log.e("Reset failed.", e3);
                }
            }
        }
        this.Y = 0;
        PlaybackInfo playbackInfo = this.K;
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.f14755b;
        long j5 = playbackInfo.s;
        if (this.K.f14755b.b()) {
            j2 = this.K.f14756c;
        } else {
            PlaybackInfo playbackInfo2 = this.K;
            Timeline.Period period = this.m;
            MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo2.f14755b;
            Timeline timeline = playbackInfo2.f14754a;
            if (timeline.p() || timeline.g(mediaPeriodId2.f15516a, period).f13963f) {
                j2 = this.K.f14756c;
            } else {
                j2 = this.K.s;
            }
        }
        if (z2) {
            this.Z = null;
            Pair pairW = w(this.K.f14754a);
            mediaPeriodId = (MediaSource.MediaPeriodId) pairW.first;
            long jLongValue = ((Long) pairW.second).longValue();
            z5 = mediaPeriodId.equals(this.K.f14755b) ? false : true;
            j3 = jLongValue;
            j4 = -9223372036854775807L;
        } else {
            long j6 = j2;
            j3 = j5;
            j4 = j6;
            z5 = false;
        }
        this.t.b();
        this.R = false;
        Timeline timeline2 = this.K.f14754a;
        if (z3 && (timeline2 instanceof PlaylistTimeline)) {
            PlaylistTimeline playlistTimeline2 = (PlaylistTimeline) timeline2;
            ShuffleOrder shuffleOrder = this.u.f14743j;
            Timeline[] timelineArr = playlistTimeline2.m;
            Timeline[] timelineArr2 = new Timeline[timelineArr.length];
            for (int i3 = 0; i3 < timelineArr.length; i3++) {
                timelineArr2[i3] = new ForwardingTimeline(timelineArr[i3]) { // from class: androidx.media3.exoplayer.PlaylistTimeline.1

                    /* JADX INFO: renamed from: f */
                    public final Timeline.Window f14776f = new Timeline.Window();

                    public AnonymousClass1(Timeline timeline3) {
                        super(timeline3);
                        this.f14776f = new Timeline.Window();
                    }

                    @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
                    public final Timeline.Period f(int i4, Timeline.Period period2, boolean z6) {
                        Timeline timeline3 = this.f15491e;
                        Timeline.Period periodF = timeline3.f(i4, period2, z6);
                        if (timeline3.m(periodF.f13961c, this.f14776f, 0L).a()) {
                            periodF.i(period2.f13959a, period2.f13960b, period2.f13961c, period2.d, period2.f13962e, AdPlaybackState.g, true);
                            return periodF;
                        }
                        periodF.f13963f = true;
                        return periodF;
                    }
                };
            }
            playlistTimeline = new PlaylistTimeline(timelineArr2, playlistTimeline2.n, shuffleOrder);
            if (mediaPeriodId.f15517b != -1) {
                playlistTimeline.g(mediaPeriodId.f15516a, this.m);
                int i4 = this.m.f13961c;
                Timeline.Window window = this.l;
                playlistTimeline.m(i4, window, 0L);
                if (window.a()) {
                    mediaPeriodId = new MediaSource.MediaPeriodId(mediaPeriodId.f15516a, mediaPeriodId.d);
                }
            }
        } else {
            playlistTimeline = timeline2;
        }
        PlaybackInfo playbackInfo3 = this.K;
        int i5 = playbackInfo3.f14757e;
        ExoPlaybackException exoPlaybackException = z4 ? null : playbackInfo3.f14758f;
        TrackGroupArray trackGroupArray = z5 ? TrackGroupArray.d : playbackInfo3.f14759h;
        TrackSelectorResult trackSelectorResult = z5 ? this.f14667f : playbackInfo3.f14760i;
        List listX = z5 ? ImmutableList.x() : playbackInfo3.f14761j;
        PlaybackInfo playbackInfo4 = this.K;
        this.K = new PlaybackInfo(playlistTimeline, mediaPeriodId, j4, j3, i5, exoPlaybackException, false, trackGroupArray, trackSelectorResult, listX, mediaPeriodId, playbackInfo4.l, playbackInfo4.m, playbackInfo4.n, playbackInfo4.o, j3, 0L, j3, 0L, false);
        if (z3) {
            MediaPeriodQueue mediaPeriodQueue = this.t;
            if (!mediaPeriodQueue.r.isEmpty()) {
                mediaPeriodQueue.p(new ArrayList());
            }
            MediaSourceList mediaSourceList = this.u;
            HashMap map = mediaSourceList.f14740f;
            for (MediaSourceList.MediaSourceAndListener mediaSourceAndListener : map.values()) {
                try {
                    mediaSourceAndListener.f14747a.l(mediaSourceAndListener.f14748b);
                } catch (RuntimeException e4) {
                    Log.e("Failed to release child source.", e4);
                }
                MediaSource mediaSource = mediaSourceAndListener.f14747a;
                MediaSourceList.ForwardingEventListener forwardingEventListener = mediaSourceAndListener.f14749c;
                mediaSource.b(forwardingEventListener);
                mediaSourceAndListener.f14747a.f(forwardingEventListener);
            }
            map.clear();
            mediaSourceList.g.clear();
            mediaSourceList.f14744k = false;
        }
    }

    public final void W() {
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        this.O = mediaPeriodHolder != null && mediaPeriodHolder.f14714h.f14725j && this.N;
    }

    public final void X(long j2, boolean z) {
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        long j3 = j2 + (mediaPeriodHolder == null ? 1000000000000L : mediaPeriodHolder.q);
        this.h0 = j3;
        this.p.f14622b.b(j3);
        for (RendererHolder rendererHolder : this.f14664b) {
            long j4 = this.h0;
            Renderer rendererC = rendererHolder.c(mediaPeriodHolder);
            if (rendererC != null) {
                rendererC.z(j4, z);
            }
        }
        for (MediaPeriodHolder mediaPeriodHolder2 = r0.f14734j; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.n) {
            for (ExoTrackSelection exoTrackSelection : mediaPeriodHolder2.p.f15734c) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.k();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0077 A[PHI: r3
      0x0077: PHI (r3v5 androidx.media3.common.Timeline) = (r3v1 androidx.media3.common.Timeline), (r3v8 androidx.media3.common.Timeline) binds: [B:18:0x0075, B:12:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    public final void Y(Timeline timeline, Timeline timeline2) {
        Timeline timeline3;
        boolean z;
        if (timeline.p() && timeline2.p()) {
            return;
        }
        ArrayList arrayList = this.q;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            PendingMessageInfo pendingMessageInfo = (PendingMessageInfo) arrayList.get(size);
            int i2 = this.S;
            boolean z2 = this.T;
            Object obj = pendingMessageInfo.f14681e;
            PlayerMessage playerMessage = pendingMessageInfo.f14679b;
            Timeline.Window window = this.l;
            Timeline.Period period = this.m;
            if (obj == null) {
                playerMessage.getClass();
                Pair pairZ = Z(timeline, new SeekPosition(playerMessage.d, playerMessage.f14771h, Util.R(-9223372036854775807L)), false, i2, z2, window, period);
                timeline3 = timeline;
                if (pairZ == null) {
                    z = false;
                } else {
                    int iB = timeline3.b(pairZ.first);
                    long jLongValue = ((Long) pairZ.second).longValue();
                    Object obj2 = pairZ.first;
                    pendingMessageInfo.f14680c = iB;
                    pendingMessageInfo.d = jLongValue;
                    pendingMessageInfo.f14681e = obj2;
                    z = true;
                }
            } else {
                timeline3 = timeline;
                int iB2 = timeline3.b(obj);
                if (iB2 == -1) {
                    z = false;
                } else {
                    playerMessage.getClass();
                    pendingMessageInfo.f14680c = iB2;
                    timeline2.g(pendingMessageInfo.f14681e, period);
                    if (period.f13963f && timeline2.m(period.f13961c, window, 0L).n == timeline2.b(pendingMessageInfo.f14681e)) {
                        Pair pairI = timeline3.i(window, period, timeline3.g(pendingMessageInfo.f14681e, period).f13961c, pendingMessageInfo.d + period.f13962e);
                        int iB3 = timeline3.b(pairI.first);
                        long jLongValue2 = ((Long) pairI.second).longValue();
                        Object obj3 = pairI.first;
                        pendingMessageInfo.f14680c = iB3;
                        pendingMessageInfo.d = jLongValue2;
                        pendingMessageInfo.f14681e = obj3;
                    }
                    z = true;
                }
            }
            if (!z) {
                ((PendingMessageInfo) arrayList.get(size)).f14679b.a(false);
                arrayList.remove(size);
            }
        }
        Collections.sort(arrayList);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public final void a() {
        this.f14669i.m(10);
    }

    public final void b0(long j2) {
        boolean z = this.y || (this.G && this.F.d);
        PlaybackInfo playbackInfo = this.K;
        long jMin = 1000;
        long j3 = k1;
        if (z) {
            jMin = playbackInfo.f14757e != 3 ? j3 : 1000L;
            for (RendererHolder rendererHolder : this.f14664b) {
                long j4 = this.h0;
                long j5 = this.t0;
                Renderer renderer = rendererHolder.f14782c;
                Renderer renderer2 = rendererHolder.f14780a;
                long jX = RendererHolder.g(renderer2) ? renderer2.x(j4, j5) : Long.MAX_VALUE;
                if (renderer != null && renderer.getState() != 0) {
                    jX = Math.min(jX, renderer.x(j4, j5));
                }
                jMin = Math.min(jMin, Util.f0(jX));
            }
            if (this.K.m()) {
                MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
                MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder != null ? mediaPeriodHolder.n : null;
                if (mediaPeriodHolder2 != null) {
                    if ((Util.R(jMin) * this.K.o.f13919a) + this.h0 >= mediaPeriodHolder2.e()) {
                        jMin = Math.min(jMin, j3);
                    }
                }
            }
        } else if (playbackInfo.f14757e != 3 || z0()) {
            jMin = j3;
        }
        this.f14669i.l(j2 + jMin);
    }

    @Override // androidx.media3.exoplayer.MediaSourceList.MediaSourceListInfoRefreshListener
    public final void c() {
        HandlerWrapper handlerWrapper = this.f14669i;
        handlerWrapper.n(2);
        handlerWrapper.m(22);
    }

    public final void c0(boolean z) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.t.f14734j.f14714h.f14718a;
        long jE0 = e0(mediaPeriodId, this.K.s, true, false);
        if (jE0 != this.K.s) {
            PlaybackInfo playbackInfo = this.K;
            this.K = G(mediaPeriodId, jE0, playbackInfo.f14756c, playbackInfo.d, z, 5);
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public final void d(long j2, long j3, Format format, MediaFormat mediaFormat) {
        if (this.H) {
            this.f14669i.b(37).a();
        }
    }

    public final void d0(SeekPosition seekPosition) throws Throwable {
        long jLongValue;
        long jMax;
        MediaSource.MediaPeriodId mediaPeriodIdT;
        long j2;
        long j3;
        boolean z;
        long j4;
        boolean z2;
        long j5;
        long jD;
        PlaybackInfo playbackInfo;
        int i2;
        long j6;
        int i3;
        long j7;
        MediaSource.MediaPeriodId mediaPeriodId;
        long j8;
        ExoPlayerImplInternal exoPlayerImplInternal = this;
        if (exoPlayerImplInternal.H) {
            if (exoPlayerImplInternal.I != null) {
                exoPlayerImplInternal.J++;
                exoPlayerImplInternal.L.a(1);
            }
            exoPlayerImplInternal.I = seekPosition;
            return;
        }
        exoPlayerImplInternal.L.a(1);
        Pair pairZ = Z(exoPlayerImplInternal.K.f14754a, seekPosition, true, exoPlayerImplInternal.S, exoPlayerImplInternal.T, exoPlayerImplInternal.l, exoPlayerImplInternal.m);
        if (pairZ == null) {
            Pair pairW = exoPlayerImplInternal.w(exoPlayerImplInternal.K.f14754a);
            mediaPeriodIdT = (MediaSource.MediaPeriodId) pairW.first;
            jLongValue = ((Long) pairW.second).longValue();
            z = !exoPlayerImplInternal.K.f14754a.p();
            jMax = -9223372036854775807L;
            j2 = -9223372036854775807L;
            j3 = 0;
        } else {
            Object obj = pairZ.first;
            jLongValue = ((Long) pairZ.second).longValue();
            jMax = seekPosition.f14695c == -9223372036854775807L ? -9223372036854775807L : jLongValue;
            mediaPeriodIdT = exoPlayerImplInternal.t.t(exoPlayerImplInternal.K.f14754a, obj, jLongValue);
            if (mediaPeriodIdT.b()) {
                exoPlayerImplInternal.K.f14754a.g(mediaPeriodIdT.f15516a, exoPlayerImplInternal.m);
                jLongValue = exoPlayerImplInternal.m.f(mediaPeriodIdT.f15517b) == mediaPeriodIdT.f15518c ? exoPlayerImplInternal.m.g.f13672c : 0L;
                AdPlaybackState.AdGroup adGroupA = exoPlayerImplInternal.m.g.a(mediaPeriodIdT.f15517b);
                j3 = 0;
                j2 = -9223372036854775807L;
                jMax = Math.max(jMax, adGroupA.f13675a + adGroupA.f13682j);
            } else {
                j2 = -9223372036854775807L;
                j3 = 0;
                if (seekPosition.f14695c != -9223372036854775807L) {
                    z = false;
                }
            }
            z = true;
        }
        try {
            try {
                if (!exoPlayerImplInternal.K.f14754a.p()) {
                    PlaybackInfo playbackInfo2 = exoPlayerImplInternal.K;
                    if (pairZ == null) {
                        if (playbackInfo2.f14757e != 1) {
                            exoPlayerImplInternal.v0(4);
                        }
                        exoPlayerImplInternal.V(false, true, false, true);
                    } else {
                        if (mediaPeriodIdT.equals(playbackInfo2.f14755b)) {
                            try {
                                MediaPeriodHolder mediaPeriodHolder = exoPlayerImplInternal.t.f14734j;
                                if (mediaPeriodHolder == null || !mediaPeriodHolder.f14713f || jLongValue == j3) {
                                    jD = jLongValue;
                                } else {
                                    MediaPeriod mediaPeriod = mediaPeriodHolder.f14709a;
                                    long j9 = exoPlayerImplInternal.l.m;
                                    if (exoPlayerImplInternal.G && j9 != j2) {
                                        exoPlayerImplInternal.F.getClass();
                                    }
                                    jD = mediaPeriod.d(jLongValue, exoPlayerImplInternal.E);
                                }
                                if (Util.f0(jD) == Util.f0(exoPlayerImplInternal.K.s) && ((i2 = (playbackInfo = exoPlayerImplInternal.K).f14757e) == 2 || i2 == 3)) {
                                    j6 = playbackInfo.s;
                                    i3 = 2;
                                    j7 = j6;
                                    z2 = z;
                                    mediaPeriodId = mediaPeriodIdT;
                                    j8 = jMax;
                                }
                            } catch (Throwable th) {
                                th = th;
                                z2 = z;
                                j5 = jLongValue;
                                j4 = jMax;
                                exoPlayerImplInternal.K = exoPlayerImplInternal.G(mediaPeriodIdT, j5, j4, j5, z2, 2);
                                throw th;
                            }
                        } else {
                            jD = jLongValue;
                        }
                        try {
                            boolean z3 = exoPlayerImplInternal.K.f14757e == 4;
                            try {
                                MediaPeriodQueue mediaPeriodQueue = exoPlayerImplInternal.t;
                                long jE0 = exoPlayerImplInternal.e0(mediaPeriodIdT, jD, mediaPeriodQueue.f14734j != mediaPeriodQueue.f14735k, z3);
                                z2 = (jLongValue != jE0) | z;
                                try {
                                    PlaybackInfo playbackInfo3 = exoPlayerImplInternal.K;
                                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodIdT;
                                    try {
                                        Timeline timeline = playbackInfo3.f14754a;
                                        long j10 = jMax;
                                        try {
                                            exoPlayerImplInternal.K0(timeline, mediaPeriodId2, timeline, playbackInfo3.f14755b, j10, true);
                                            mediaPeriodId = mediaPeriodId2;
                                            j8 = j10;
                                            j6 = jE0;
                                            i3 = 2;
                                            j7 = j6;
                                            exoPlayerImplInternal = this;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            mediaPeriodIdT = mediaPeriodId2;
                                            j4 = j10;
                                            j5 = jE0;
                                            exoPlayerImplInternal.K = exoPlayerImplInternal.G(mediaPeriodIdT, j5, j4, j5, z2, 2);
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        mediaPeriodIdT = mediaPeriodId2;
                                        j4 = jMax;
                                        j5 = jE0;
                                        exoPlayerImplInternal.K = exoPlayerImplInternal.G(mediaPeriodIdT, j5, j4, j5, z2, 2);
                                        throw th;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                j4 = jMax;
                                z2 = z;
                                j5 = jLongValue;
                                exoPlayerImplInternal.K = exoPlayerImplInternal.G(mediaPeriodIdT, j5, j4, j5, z2, 2);
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                        }
                    }
                    exoPlayerImplInternal.K = exoPlayerImplInternal.G(mediaPeriodId, j6, j8, j7, z2, i3);
                }
                exoPlayerImplInternal.Z = seekPosition;
                z2 = z;
                mediaPeriodId = mediaPeriodIdT;
                j6 = jLongValue;
                j8 = jMax;
                i3 = 2;
                j7 = j6;
                exoPlayerImplInternal = this;
                exoPlayerImplInternal.K = exoPlayerImplInternal.G(mediaPeriodId, j6, j8, j7, z2, i3);
            } catch (Throwable th7) {
                th = th7;
                z2 = z;
            }
        } catch (Throwable th8) {
            th = th8;
            z = z;
            mediaPeriodIdT = mediaPeriodIdT;
        }
    }

    @Override // androidx.media3.common.audio.AudioFocusManager.PlayerControl
    public final void e(int i2) {
        this.f14669i.i(33, i2, 0).a();
    }

    /* JADX WARN: Code duplicated, block: B:74:0x011c  */
    public final long e0(MediaSource.MediaPeriodId mediaPeriodId, long j2, boolean z, boolean z2) throws ExoPlaybackException {
        MediaPeriodQueue mediaPeriodQueue;
        D0();
        boolean z3 = true;
        L0(false, true);
        if (z2 || this.K.f14757e == 3) {
            v0(2);
        }
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodHolder;
        while (mediaPeriodHolder2 != null && !mediaPeriodId.equals(mediaPeriodHolder2.f14714h.f14718a)) {
            mediaPeriodHolder2 = mediaPeriodHolder2.n;
        }
        if (z || mediaPeriodHolder != mediaPeriodHolder2 || (mediaPeriodHolder2 != null && mediaPeriodHolder2.q + j2 < 0)) {
            for (int i2 = 0; i2 < this.f14664b.length; i2++) {
                q(i2);
            }
            this.h1 = -9223372036854775807L;
            if (mediaPeriodHolder2 != null) {
                while (true) {
                    mediaPeriodQueue = this.t;
                    if (mediaPeriodQueue.f14734j == mediaPeriodHolder2) {
                        break;
                    }
                    mediaPeriodQueue.a();
                }
                mediaPeriodQueue.q(mediaPeriodHolder2);
                mediaPeriodHolder2.q = 1000000000000L;
                t(new boolean[this.f14664b.length], this.t.f14735k.e());
                mediaPeriodHolder2.f14715i = true;
            }
        }
        p();
        if (this.G) {
            for (RendererHolder rendererHolder : this.f14664b) {
                if (rendererHolder.f() && (rendererHolder.f14780a.f() == 2 || rendererHolder.f14780a.f() == 4)) {
                    this.H = true;
                    break;
                }
            }
        }
        MediaPeriodQueue mediaPeriodQueue2 = this.t;
        if (mediaPeriodHolder2 != null) {
            mediaPeriodQueue2.q(mediaPeriodHolder2);
            if (!mediaPeriodHolder2.f14713f) {
                mediaPeriodHolder2.f14714h = mediaPeriodHolder2.f14714h.b(j2, -9223372036854775807L);
            } else if (mediaPeriodHolder2.g) {
                if (this.G && this.F.f14789f && !this.K.f14754a.p() && mediaPeriodHolder2.f14714h.f14718a.equals(this.K.f14755b)) {
                    long j3 = mediaPeriodHolder2.q + j2;
                    boolean z4 = true;
                    for (RendererHolder rendererHolder2 : this.f14664b) {
                        if (rendererHolder2.f()) {
                            Renderer rendererC = rendererHolder2.c(mediaPeriodHolder2);
                            z4 &= rendererC != null && rendererC.v(j3);
                        }
                    }
                    if (z4) {
                        MediaPeriod mediaPeriod = mediaPeriodHolder2.f14709a;
                        long j4 = this.K.s;
                        SeekParameters seekParameters = SeekParameters.f14795c;
                        if (mediaPeriod.d(j4, seekParameters) == mediaPeriodHolder2.f14709a.d(j2, seekParameters)) {
                            z3 = false;
                        } else {
                            j2 = mediaPeriodHolder2.f14709a.e(j2);
                            mediaPeriodHolder2.f14709a.u(j2 - this.n, this.o);
                        }
                    } else {
                        j2 = mediaPeriodHolder2.f14709a.e(j2);
                        mediaPeriodHolder2.f14709a.u(j2 - this.n, this.o);
                    }
                } else {
                    j2 = mediaPeriodHolder2.f14709a.e(j2);
                    mediaPeriodHolder2.f14709a.u(j2 - this.n, this.o);
                }
            }
            X(j2, z3);
            K();
        } else {
            mediaPeriodQueue2.b();
            X(j2, true);
        }
        C(false);
        this.f14669i.m(2);
        return j2;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Sender
    public final void f(PlayerMessage playerMessage) {
        if (!this.M && this.f14671k.getThread().isAlive()) {
            this.f14669i.g(14, playerMessage).a();
        } else {
            Log.g("Ignoring messages sent after release.");
            playerMessage.a(false);
        }
    }

    public final void f0(PlayerMessage playerMessage) {
        playerMessage.getClass();
        g0(playerMessage);
    }

    @Override // androidx.media3.common.audio.AudioFocusManager.PlayerControl
    public final void g() {
        this.f14669i.m(34);
    }

    public final void g0(PlayerMessage playerMessage) {
        HandlerWrapper handlerWrapper = this.f14669i;
        if (playerMessage.g != this.f14671k) {
            handlerWrapper.g(15, playerMessage).a();
            return;
        }
        synchronized (playerMessage) {
        }
        try {
            playerMessage.f14766a.q(playerMessage.f14769e, playerMessage.f14770f);
            playerMessage.a(true);
            int i2 = this.K.f14757e;
            if (i2 == 3 || i2 == 2) {
                handlerWrapper.m(2);
            }
        } catch (Throwable th) {
            playerMessage.a(true);
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.DefaultMediaClock.PlaybackParametersListener
    public final void h(PlaybackParameters playbackParameters) {
        this.f14669i.g(16, playbackParameters).a();
    }

    public final void h0(PlayerMessage playerMessage) {
        Looper looper = playerMessage.g;
        if (looper.getThread().isAlive()) {
            this.r.e(looper, null).k(new f(this, playerMessage));
        } else {
            Log.g("Trying to send message on a dead thread.");
            playerMessage.a(false);
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) throws Throwable {
        int i2;
        MediaPeriodHolder mediaPeriodHolder;
        MediaSource.MediaPeriodId mediaPeriodId;
        MediaPeriodHolder mediaPeriodHolder2;
        int i3;
        int i4 = 1000;
        try {
            switch (message.what) {
                case 1:
                    boolean z = message.arg1 != 0;
                    int i5 = message.arg2;
                    this.L.a(1);
                    I0(this.C.c(this.K.f14757e, z), i5 >> 4, i5 & 15, z);
                    break;
                case 2:
                    r();
                    break;
                case 3:
                    d0((SeekPosition) message.obj);
                    break;
                case 4:
                    n0((PlaybackParameters) message.obj);
                    break;
                case 5:
                    s0((SeekParameters) message.obj);
                    break;
                case 6:
                    C0(false, true);
                    break;
                case 7:
                    S((ConditionVariable) message.obj);
                    return true;
                case 8:
                    E((MediaPeriod) message.obj);
                    break;
                case 9:
                    A((MediaPeriod) message.obj);
                    break;
                case 10:
                    U();
                    break;
                case 11:
                    p0(message.arg1);
                    break;
                case 12:
                    t0(message.arg1 != 0);
                    break;
                case 13:
                    j0(message.arg1 != 0, (ConditionVariable) message.obj);
                    break;
                case 14:
                    f0((PlayerMessage) message.obj);
                    break;
                case 15:
                    h0((PlayerMessage) message.obj);
                    break;
                case 16:
                    PlaybackParameters playbackParameters = (PlaybackParameters) message.obj;
                    F(playbackParameters, playbackParameters.f13919a, true, false);
                    break;
                case 17:
                    l0((MediaSourceListUpdateMessage) message.obj);
                    break;
                case 18:
                    i((MediaSourceListUpdateMessage) message.obj, message.arg1);
                    break;
                case 19:
                    Q((MoveMediaItemsMessage) message.obj);
                    break;
                case 20:
                    T(message.arg1, message.arg2, (ShuffleOrder) message.obj);
                    break;
                case 21:
                    u0((ShuffleOrder) message.obj);
                    break;
                case 22:
                    P();
                    break;
                case 23:
                    m0(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    o();
                    break;
                case 26:
                    U();
                    c0(true);
                    break;
                case 27:
                    G0(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    o0((ExoPlayer.PreloadConfiguration) message.obj);
                    break;
                case 29:
                    R();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    x0(pair.first, (ConditionVariable) pair.second);
                    break;
                case 31:
                    i0((AudioAttributes) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    y0(((Float) message.obj).floatValue());
                    break;
                case 33:
                    y(message.arg1);
                    break;
                case 34:
                    z();
                    break;
                case 35:
                    w0((VideoFrameMetadataListener) message.obj);
                    break;
                case 36:
                    q0(((Boolean) message.obj).booleanValue());
                    break;
                case 37:
                    this.H = false;
                    SeekPosition seekPosition = this.I;
                    if (seekPosition != null) {
                        d0(seekPosition);
                        this.I = null;
                    }
                    break;
                case 38:
                    r0((ScrubbingModeParameters) message.obj);
                    break;
                case 39:
                    k0((ImageMetadataListener) message.obj);
                    break;
            }
        } catch (ParserException e2) {
            boolean z2 = e2.f13906b;
            int i6 = e2.f13907c;
            if (i6 == 1) {
                i3 = z2 ? 3001 : 3003;
            } else {
                if (i6 == 4) {
                    i3 = z2 ? 3002 : 3004;
                }
                B(e2, i4);
            }
            i4 = i3;
            B(e2, i4);
        } catch (DataSourceException e3) {
            B(e3, e3.f14384b);
        } catch (ExoPlaybackException e4) {
            e = e4;
            int i7 = e.f14632k;
            MediaPeriodQueue mediaPeriodQueue = this.t;
            if (i7 == 1 && (mediaPeriodHolder2 = mediaPeriodQueue.f14735k) != null && e.p == null) {
                e = e.b(mediaPeriodHolder2.f14714h.f14718a);
            }
            int i8 = e.f14632k;
            HandlerWrapper handlerWrapper = this.f14669i;
            if (i8 == 1 && (mediaPeriodId = e.p) != null && I(e.m, mediaPeriodId)) {
                this.i1 = true;
                p();
                MediaPeriodHolder mediaPeriodHolderH = mediaPeriodQueue.h();
                MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodQueue.f14734j;
                if (mediaPeriodHolder3 != mediaPeriodHolderH) {
                    while (mediaPeriodHolder3 != null) {
                        MediaPeriodHolder mediaPeriodHolder4 = mediaPeriodHolder3.n;
                        if (mediaPeriodHolder4 == mediaPeriodHolderH) {
                            break;
                        }
                        mediaPeriodHolder3 = mediaPeriodHolder4;
                    }
                }
                mediaPeriodQueue.q(mediaPeriodHolder3);
                if (this.K.f14757e != 4) {
                    K();
                    handlerWrapper.m(2);
                }
            } else {
                ExoPlaybackException exoPlaybackException = this.d1;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.d1;
                }
                if (e.f14632k == 1 && mediaPeriodQueue.f14734j != mediaPeriodQueue.f14735k) {
                    while (true) {
                        mediaPeriodHolder = mediaPeriodQueue.f14734j;
                        if (mediaPeriodHolder == mediaPeriodQueue.f14735k) {
                            break;
                        }
                        mediaPeriodQueue.a();
                    }
                    Preconditions.l(mediaPeriodHolder);
                    M();
                    MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.f14714h;
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodInfo.f14718a;
                    long j2 = mediaPeriodInfo.f14719b;
                    this.K = G(mediaPeriodId2, j2, mediaPeriodInfo.d, j2, true, 0);
                }
                if (e.q && (this.d1 == null || (i2 = e.f13915b) == 5004 || i2 == 5003)) {
                    Log.h("Recoverable renderer error", e);
                    if (this.d1 == null) {
                        this.d1 = e;
                    }
                    handlerWrapper.j(handlerWrapper.g(25, e));
                } else {
                    Log.e("Playback error", e);
                    C0(true, false);
                    this.K = this.K.f(e);
                }
            }
        } catch (DrmSession.DrmSessionException e5) {
            B(e5, e5.f15078b);
        } catch (BehindLiveWindowException e6) {
            B(e6, 1002);
        } catch (IOException e7) {
            B(e7, com.networkbench.agent.impl.util.r.E);
        } catch (RuntimeException e8) {
            ExoPlaybackException exoPlaybackException2 = new ExoPlaybackException(2, e8, ((e8 instanceof IllegalStateException) || (e8 instanceof IllegalArgumentException)) ? 1004 : 1000);
            Log.e("Playback error", exoPlaybackException2);
            C0(true, false);
            this.K = this.K.f(exoPlaybackException2);
        }
        M();
        return true;
    }

    public final void i(MediaSourceListUpdateMessage mediaSourceListUpdateMessage, int i2) throws Throwable {
        this.L.a(1);
        MediaSourceList mediaSourceList = this.u;
        if (i2 == -1) {
            i2 = mediaSourceList.f14737b.size();
        }
        D(mediaSourceList.a(i2, mediaSourceListUpdateMessage.f14673a, mediaSourceListUpdateMessage.f14674b), false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:10:0x0019  */
    /* JADX WARN: Code duplicated, block: B:17:0x002e  */
    public final void i0(AudioAttributes audioAttributes, boolean z) {
        int i2;
        this.f14666e.g(audioAttributes);
        if (!z) {
            audioAttributes = null;
        }
        AudioFocusManager audioFocusManager = this.C;
        if (!Objects.equals(audioFocusManager.d, audioAttributes)) {
            audioFocusManager.d = audioAttributes;
            if (audioAttributes != null) {
                int i3 = audioAttributes.f13694c;
                i2 = 3;
                switch (i3) {
                    case 0:
                        Log.g("Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                        i2 = 1;
                        break;
                    case 1:
                    case 14:
                        i2 = 1;
                        break;
                    case 2:
                    case 4:
                        i2 = 2;
                        break;
                    case 3:
                        i2 = 0;
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 13:
                        break;
                    case 11:
                        if (audioAttributes.f13692a == 1) {
                            i2 = 2;
                        }
                        break;
                    case 15:
                    default:
                        defpackage.a.u(i3, "Unidentified audio usage: ");
                        i2 = 0;
                        break;
                    case 16:
                        i2 = 4;
                        break;
                }
            } else {
                i2 = 0;
            }
            audioFocusManager.f14037f = i2;
            Preconditions.h(i2 == 1 || i2 == 0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
        PlaybackInfo playbackInfo = this.K;
        boolean z2 = playbackInfo.l;
        I0(audioFocusManager.c(playbackInfo.f14757e, z2), playbackInfo.n, playbackInfo.m, z2);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void j(MediaPeriod mediaPeriod) {
        this.f14669i.g(8, mediaPeriod).a();
    }

    public final void j0(boolean z, ConditionVariable conditionVariable) {
        if (this.V != z) {
            this.V = z;
            if (!z) {
                for (RendererHolder rendererHolder : this.f14664b) {
                    rendererHolder.j();
                }
            }
        }
        if (conditionVariable != null) {
            conditionVariable.d();
        }
    }

    public final void k() {
        for (RendererHolder rendererHolder : this.f14664b) {
            ScrubbingModeParameters scrubbingModeParameters = this.G ? this.F : null;
            rendererHolder.f14780a.q(18, scrubbingModeParameters);
            Renderer renderer = rendererHolder.f14782c;
            if (renderer != null) {
                renderer.q(18, scrubbingModeParameters);
            }
        }
    }

    public final void k0(ImageMetadataListener imageMetadataListener) {
        for (RendererHolder rendererHolder : this.f14664b) {
            Renderer renderer = rendererHolder.f14780a;
            if (renderer.f() == 4) {
                renderer.q(23, imageMetadataListener);
                Renderer renderer2 = rendererHolder.f14782c;
                if (renderer2 != null) {
                    renderer2.q(23, imageMetadataListener);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        this.f14669i.g(9, (MediaPeriod) sequenceableLoader).a();
    }

    public final void l0(MediaSourceListUpdateMessage mediaSourceListUpdateMessage) throws Throwable {
        this.L.a(1);
        int i2 = mediaSourceListUpdateMessage.f14675c;
        ShuffleOrder shuffleOrder = mediaSourceListUpdateMessage.f14674b;
        ArrayList arrayList = mediaSourceListUpdateMessage.f14673a;
        if (i2 != -1) {
            this.Z = new SeekPosition(new PlaylistTimeline(arrayList, shuffleOrder), mediaSourceListUpdateMessage.f14675c, mediaSourceListUpdateMessage.d);
        }
        MediaSourceList mediaSourceList = this.u;
        ArrayList arrayList2 = mediaSourceList.f14737b;
        mediaSourceList.g(0, arrayList2.size());
        D(mediaSourceList.a(arrayList2.size(), arrayList, shuffleOrder), false);
    }

    public final boolean m() {
        if (!this.B) {
            return false;
        }
        for (RendererHolder rendererHolder : this.f14664b) {
            if (rendererHolder.e()) {
                return true;
            }
        }
        return false;
    }

    public final void m0(boolean z) throws ExoPlaybackException {
        this.N = z;
        W();
        if (this.O) {
            MediaPeriodQueue mediaPeriodQueue = this.t;
            if (mediaPeriodQueue.f14735k != mediaPeriodQueue.f14734j) {
                c0(true);
                C(false);
            }
        }
    }

    public final void n0(PlaybackParameters playbackParameters) {
        this.f14669i.n(16);
        DefaultMediaClock defaultMediaClock = this.p;
        defaultMediaClock.d(playbackParameters);
        PlaybackParameters playbackParametersA = defaultMediaClock.a();
        F(playbackParametersA, playbackParametersA.f13919a, true, true);
    }

    public final void o() throws ExoPlaybackException {
        U();
        c0(true);
    }

    public final void o0(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.f1 = preloadConfiguration;
        Timeline timeline = this.K.f14754a;
        MediaPeriodQueue mediaPeriodQueue = this.t;
        mediaPeriodQueue.f14733i = preloadConfiguration;
        mediaPeriodQueue.j(timeline);
    }

    public final void p() {
        Renderer renderer;
        if (this.B && m()) {
            for (RendererHolder rendererHolder : this.f14664b) {
                int iB = rendererHolder.b();
                DefaultMediaClock defaultMediaClock = this.p;
                if (rendererHolder.e()) {
                    int i2 = rendererHolder.d;
                    boolean z = i2 == 4 || i2 == 2;
                    int i3 = i2 != 4 ? 0 : 1;
                    if (z) {
                        try {
                            renderer = rendererHolder.f14780a;
                        } catch (RuntimeException e2) {
                            Log.e("Disable prewarming failed.", e2);
                        }
                    } else {
                        renderer = rendererHolder.f14782c;
                        renderer.getClass();
                    }
                    rendererHolder.a(renderer, defaultMediaClock);
                    try {
                        rendererHolder.h(z);
                    } catch (RuntimeException e3) {
                        Log.e("Reset prewarming failed.", e3);
                    }
                    rendererHolder.d = i3;
                }
                this.Y -= iB - rendererHolder.b();
            }
            this.h1 = -9223372036854775807L;
        }
    }

    public final void p0(int i2) throws ExoPlaybackException {
        this.S = i2;
        Timeline timeline = this.K.f14754a;
        MediaPeriodQueue mediaPeriodQueue = this.t;
        mediaPeriodQueue.g = i2;
        int iV = mediaPeriodQueue.v(timeline);
        if ((iV & 1) != 0) {
            c0(true);
        } else if ((iV & 2) != 0) {
            p();
        }
        C(false);
    }

    public final void q(int i2) {
        RendererHolder[] rendererHolderArr = this.f14664b;
        int iB = rendererHolderArr[i2].b();
        RendererHolder rendererHolder = rendererHolderArr[i2];
        Renderer renderer = rendererHolder.f14780a;
        DefaultMediaClock defaultMediaClock = this.p;
        rendererHolder.a(renderer, defaultMediaClock);
        Renderer renderer2 = rendererHolder.f14782c;
        if (renderer2 != null) {
            boolean z = (renderer2.getState() == 0 || rendererHolder.d == 3) ? false : true;
            rendererHolder.a(renderer2, defaultMediaClock);
            rendererHolder.h(false);
            if (z) {
                Renderer renderer3 = rendererHolder.f14780a;
                renderer2.getClass();
                renderer2.q(17, renderer3);
            }
        }
        rendererHolder.d = 0;
        O(i2, false);
        this.Y -= iB;
    }

    public final void q0(boolean z) throws Throwable {
        if (!z) {
            SeekPosition seekPosition = this.I;
            HandlerWrapper handlerWrapper = this.f14669i;
            if (seekPosition != null && this.H && !handlerWrapper.d(37)) {
                this.J++;
            }
            final int i2 = this.J;
            if (i2 > 0) {
                this.A.k(new Runnable() { // from class: androidx.media3.exoplayer.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f15412b.z.U(i2);
                    }
                });
            }
            this.J = 0;
            this.H = false;
            handlerWrapper.n(37);
            SeekPosition seekPosition2 = this.I;
            if (seekPosition2 != null) {
                d0(seekPosition2);
                this.I = null;
                this.H = false;
            }
        }
        this.G = z;
        k();
    }

    /* JADX WARN: Code duplicated, block: B:116:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:120:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:147:0x0259  */
    /* JADX WARN: Code duplicated, block: B:150:0x025f  */
    /* JADX WARN: Code duplicated, block: B:152:0x0267  */
    /* JADX WARN: Code duplicated, block: B:156:0x0273  */
    /* JADX WARN: Code duplicated, block: B:170:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:173:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:176:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:179:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:183:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:186:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:189:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:205:0x026d A[EDGE_INSN: B:205:0x026d->B:154:0x026d BREAK  A[LOOP:1: B:148:0x025a->B:153:0x026a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x026a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:94:0x0154  */
    public final void r() throws ExoPlaybackException {
        boolean z;
        boolean z2;
        boolean z3;
        boolean zA;
        StandaloneMediaClock standaloneMediaClock;
        boolean z4;
        PlaybackInfo playbackInfo;
        int i2;
        int i3;
        RendererHolder[] rendererHolderArr;
        PlaybackInfo playbackInfo2;
        long jD = this.r.d();
        this.f14669i.n(2);
        if (!this.D) {
            H0();
        }
        int i4 = this.K.f14757e;
        if (i4 == 1 || i4 == 4) {
            return;
        }
        if (this.D) {
            H0();
        }
        MediaPeriodHolder mediaPeriodHolder = this.t.f14734j;
        if (mediaPeriodHolder == null) {
            b0(jD);
            return;
        }
        Trace.beginSection("doSomeWork");
        J0();
        if (mediaPeriodHolder.f14713f) {
            this.t0 = Util.R(this.r.b());
            mediaPeriodHolder.f14709a.u(this.K.s - this.n, this.o);
            z = true;
            z2 = true;
            int i5 = 0;
            while (true) {
                RendererHolder[] rendererHolderArr2 = this.f14664b;
                if (i5 >= rendererHolderArr2.length) {
                    break;
                }
                RendererHolder rendererHolder = rendererHolderArr2[i5];
                if (rendererHolder.b() == 0) {
                    O(i5, false);
                } else {
                    long j2 = this.h0;
                    long j3 = this.t0;
                    Renderer renderer = rendererHolder.f14782c;
                    Renderer renderer2 = rendererHolder.f14780a;
                    if (RendererHolder.g(renderer2)) {
                        renderer2.g(j2, j3);
                    }
                    if (renderer != null && renderer.getState() != 0) {
                        renderer.g(j2, j3);
                    }
                    if (z) {
                        Renderer renderer3 = rendererHolder.f14782c;
                        Renderer renderer4 = rendererHolder.f14780a;
                        boolean zE = RendererHolder.g(renderer4) ? renderer4.e() : true;
                        if (renderer3 != null && renderer3.getState() != 0) {
                            zE &= renderer3.e();
                        }
                        if (zE) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    Renderer rendererC = rendererHolder.c(mediaPeriodHolder);
                    boolean z5 = rendererC == null || rendererC.j() || rendererC.isReady() || rendererC.e();
                    O(i5, z5);
                    z2 = z2 && z5;
                    if (!z5) {
                        N(i5);
                    }
                }
                i5++;
            }
        } else {
            mediaPeriodHolder.f14709a.k();
            z = true;
            z2 = true;
        }
        long j4 = mediaPeriodHolder.f14714h.f14722f;
        long j5 = -9223372036854775807L;
        boolean z6 = z && mediaPeriodHolder.f14713f && (j4 == -9223372036854775807L || j4 <= this.K.s);
        if (z6 && this.O) {
            this.O = false;
            int i6 = this.K.n;
            this.L.a(0);
            I0(this.C.c(this.K.f14757e, false), i6, 5, false);
        }
        if (!z6 || !mediaPeriodHolder.f14714h.f14726k) {
            PlaybackInfo playbackInfo3 = this.K;
            if (playbackInfo3.f14757e == 2) {
                MediaPeriodQueue mediaPeriodQueue = this.t;
                if (this.Y != 0) {
                    if (!z2) {
                        zA = false;
                    } else if (playbackInfo3.g) {
                        MediaPeriodHolder mediaPeriodHolder2 = mediaPeriodQueue.f14734j;
                        long jC = A0(playbackInfo3.f14754a, mediaPeriodHolder2.f14714h.f14718a) ? this.v.c() : -9223372036854775807L;
                        MediaPeriodHolder mediaPeriodHolder3 = mediaPeriodQueue.m;
                        boolean z7 = mediaPeriodHolder3.g() && mediaPeriodHolder3.f14714h.f14726k;
                        boolean z8 = mediaPeriodHolder3.f14714h.f14718a.b() && !mediaPeriodHolder3.f14713f;
                        if (z7 || z8) {
                            zA = true;
                        } else {
                            zA = this.g.a(new LoadControl.Parameters(this.x, this.K.f14754a, mediaPeriodHolder2.f14714h.f14718a, this.h0 - mediaPeriodHolder2.q, x(mediaPeriodHolder3.d()), this.p.a().f13919a, this.K.l, this.P, jC, this.Q));
                        }
                    } else {
                        zA = true;
                    }
                    if (zA) {
                        v0(3);
                        this.d1 = null;
                        if (z0()) {
                            L0(false, false);
                            DefaultMediaClock defaultMediaClock = this.p;
                            z3 = true;
                            defaultMediaClock.g = true;
                            standaloneMediaClock = defaultMediaClock.f14622b;
                            if (!standaloneMediaClock.f14799c) {
                                standaloneMediaClock.f14800e = standaloneMediaClock.f14798b.b();
                                standaloneMediaClock.f14799c = true;
                            }
                            B0();
                        }
                    }
                    if (this.K.f14757e == 2) {
                        i3 = 0;
                        while (true) {
                            rendererHolderArr = this.f14664b;
                            if (i3 < rendererHolderArr.length) {
                                break;
                            }
                            if (rendererHolderArr[i3].c(mediaPeriodHolder) != null) {
                                N(i3);
                            }
                            i3++;
                        }
                        playbackInfo2 = this.K;
                        if (playbackInfo2.g && playbackInfo2.r < 500000 && H(this.t.m) && z0()) {
                            long j6 = this.e1;
                            Clock clock = this.r;
                            if (j6 == j5) {
                                this.e1 = clock.b();
                            } else if (clock.b() - this.e1 >= 4000) {
                                throw new StuckPlayerException(0, 4000);
                            }
                        } else {
                            this.e1 = j5;
                        }
                    } else {
                        this.e1 = j5;
                    }
                    if (z0() || this.K.f14757e != 3) {
                        z4 = false;
                    } else {
                        z4 = z3;
                    }
                    if (this.X || !this.W || !z4) {
                        z3 = false;
                    }
                    playbackInfo = this.K;
                    if (playbackInfo.p != z3) {
                        this.K = playbackInfo.i(z3);
                    }
                    this.W = false;
                    if (!z3 && (i2 = this.K.f14757e) != 4 && (z4 || i2 == 2 || (i2 == 3 && this.Y != 0))) {
                        b0(jD);
                    }
                    Trace.endSection();
                }
                zA = J();
                if (zA) {
                    v0(3);
                    this.d1 = null;
                    if (z0()) {
                        L0(false, false);
                        DefaultMediaClock defaultMediaClock2 = this.p;
                        z3 = true;
                        defaultMediaClock2.g = true;
                        standaloneMediaClock = defaultMediaClock2.f14622b;
                        if (!standaloneMediaClock.f14799c) {
                            standaloneMediaClock.f14800e = standaloneMediaClock.f14798b.b();
                            standaloneMediaClock.f14799c = true;
                        }
                        B0();
                    }
                }
                if (this.K.f14757e == 2) {
                    i3 = 0;
                    while (true) {
                        rendererHolderArr = this.f14664b;
                        if (i3 < rendererHolderArr.length) {
                            break;
                            break;
                        } else {
                            if (rendererHolderArr[i3].c(mediaPeriodHolder) != null) {
                                N(i3);
                            }
                            i3++;
                        }
                    }
                    playbackInfo2 = this.K;
                    if (playbackInfo2.g) {
                        this.e1 = j5;
                    } else {
                        this.e1 = j5;
                    }
                } else {
                    this.e1 = j5;
                }
                if (z0()) {
                    z4 = false;
                } else {
                    z4 = false;
                }
                if (this.X) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                playbackInfo = this.K;
                if (playbackInfo.p != z3) {
                    this.K = playbackInfo.i(z3);
                }
                this.W = false;
                if (!z3) {
                    b0(jD);
                }
                Trace.endSection();
            }
            j5 = -9223372036854775807L;
            z3 = true;
            if (this.K.f14757e == 3 && (this.Y != 0 ? !z2 : !J())) {
                L0(z0(), false);
                v0(2);
                if (this.P) {
                    for (MediaPeriodHolder mediaPeriodHolder4 = this.t.f14734j; mediaPeriodHolder4 != null; mediaPeriodHolder4 = mediaPeriodHolder4.n) {
                        for (ExoTrackSelection exoTrackSelection : mediaPeriodHolder4.p.f15734c) {
                            if (exoTrackSelection != null) {
                                exoTrackSelection.u();
                            }
                        }
                    }
                    this.v.d();
                }
                D0();
            }
            if (this.K.f14757e == 2) {
                i3 = 0;
                while (true) {
                    rendererHolderArr = this.f14664b;
                    if (i3 < rendererHolderArr.length) {
                        break;
                        break;
                    } else {
                        if (rendererHolderArr[i3].c(mediaPeriodHolder) != null) {
                            N(i3);
                        }
                        i3++;
                    }
                }
                playbackInfo2 = this.K;
                if (playbackInfo2.g) {
                    this.e1 = j5;
                } else {
                    this.e1 = j5;
                }
            } else {
                this.e1 = j5;
            }
            if (z0()) {
                z4 = false;
            } else {
                z4 = false;
            }
            if (this.X) {
                z3 = false;
            } else {
                z3 = false;
            }
            playbackInfo = this.K;
            if (playbackInfo.p != z3) {
                this.K = playbackInfo.i(z3);
            }
            this.W = false;
            if (!z3) {
                b0(jD);
            }
            Trace.endSection();
        }
        v0(4);
        D0();
        j5 = -9223372036854775807L;
        z3 = true;
        if (this.K.f14757e == 2) {
            i3 = 0;
            while (true) {
                rendererHolderArr = this.f14664b;
                if (i3 < rendererHolderArr.length) {
                    break;
                    break;
                } else {
                    if (rendererHolderArr[i3].c(mediaPeriodHolder) != null) {
                        N(i3);
                    }
                    i3++;
                }
            }
            playbackInfo2 = this.K;
            if (playbackInfo2.g) {
                this.e1 = j5;
            } else {
                this.e1 = j5;
            }
        } else {
            this.e1 = j5;
        }
        if (z0()) {
            z4 = false;
        } else {
            z4 = false;
        }
        if (this.X) {
            z3 = false;
        } else {
            z3 = false;
        }
        playbackInfo = this.K;
        if (playbackInfo.p != z3) {
            this.K = playbackInfo.i(z3);
        }
        this.W = false;
        if (!z3) {
            b0(jD);
        }
        Trace.endSection();
    }

    public final void r0(ScrubbingModeParameters scrubbingModeParameters) {
        this.F = scrubbingModeParameters;
        k();
    }

    public final void s(MediaPeriodHolder mediaPeriodHolder, int i2, boolean z, long j2) throws ExoPlaybackException {
        RendererHolder rendererHolder = this.f14664b[i2];
        if (rendererHolder.f()) {
            return;
        }
        boolean z2 = mediaPeriodHolder == this.t.f14734j;
        TrackSelectorResult trackSelectorResult = mediaPeriodHolder.p;
        RendererConfiguration rendererConfiguration = trackSelectorResult.f15733b[i2];
        ExoTrackSelection exoTrackSelection = trackSelectorResult.f15734c[i2];
        boolean z3 = z0() && this.K.f14757e == 3;
        boolean z4 = !z && z3;
        this.Y++;
        SampleStream sampleStream = mediaPeriodHolder.f14711c[i2];
        long j3 = mediaPeriodHolder.q;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolder.f14714h.f14718a;
        Renderer renderer = rendererHolder.f14782c;
        int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i3 = 0; i3 < length; i3++) {
            exoTrackSelection.getClass();
            formatArr[i3] = exoTrackSelection.e(i3);
        }
        int i4 = rendererHolder.d;
        DefaultMediaClock defaultMediaClock = this.p;
        if (i4 == 0 || i4 == 2 || i4 == 4) {
            rendererHolder.f14783e = true;
            rendererHolder.f14780a.A(rendererConfiguration, formatArr, sampleStream, z4, z2, j2, j3, mediaPeriodId);
            defaultMediaClock.b(rendererHolder.f14780a);
        } else {
            rendererHolder.f14784f = true;
            renderer.getClass();
            renderer.A(rendererConfiguration, formatArr, sampleStream, z4, z2, j2, j3, mediaPeriodId);
            defaultMediaClock.b(renderer);
        }
        Renderer.WakeupListener wakeupListener = new Renderer.WakeupListener() { // from class: androidx.media3.exoplayer.ExoPlayerImplInternal.1
            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public final void a() {
                ExoPlayerImplInternal.this.W = true;
            }

            @Override // androidx.media3.exoplayer.Renderer.WakeupListener
            public final void b() {
                int i5 = ExoPlayerImplInternal.l1;
                ExoPlayerImplInternal exoPlayerImplInternal = ExoPlayerImplInternal.this;
                if (exoPlayerImplInternal.y || ((exoPlayerImplInternal.G && exoPlayerImplInternal.F.d) || exoPlayerImplInternal.X)) {
                    exoPlayerImplInternal.f14669i.m(2);
                }
            }
        };
        Renderer rendererC = rendererHolder.c(mediaPeriodHolder);
        rendererC.getClass();
        rendererC.q(11, wakeupListener);
        if (z3 && z2) {
            rendererHolder.l();
        }
    }

    public final void s0(SeekParameters seekParameters) {
        this.E = seekParameters;
    }

    public final void t(boolean[] zArr, long j2) throws ExoPlaybackException {
        RendererHolder[] rendererHolderArr;
        ExoPlayerImplInternal exoPlayerImplInternal;
        long j3;
        MediaPeriodHolder mediaPeriodHolder = this.t.f14735k;
        TrackSelectorResult trackSelectorResult = mediaPeriodHolder.p;
        int i2 = 0;
        while (true) {
            rendererHolderArr = this.f14664b;
            if (i2 >= rendererHolderArr.length) {
                break;
            }
            if (!trackSelectorResult.b(i2)) {
                rendererHolderArr[i2].j();
            }
            i2++;
        }
        int i3 = 0;
        while (i3 < rendererHolderArr.length) {
            if (trackSelectorResult.b(i3) && rendererHolderArr[i3].c(mediaPeriodHolder) == null) {
                exoPlayerImplInternal = this;
                j3 = j2;
                exoPlayerImplInternal.s(mediaPeriodHolder, i3, zArr[i3], j3);
            } else {
                exoPlayerImplInternal = this;
                j3 = j2;
            }
            i3++;
            this = exoPlayerImplInternal;
            j2 = j3;
        }
    }

    public final void t0(boolean z) throws ExoPlaybackException {
        this.T = z;
        Timeline timeline = this.K.f14754a;
        MediaPeriodQueue mediaPeriodQueue = this.t;
        mediaPeriodQueue.f14732h = z;
        int iV = mediaPeriodQueue.v(timeline);
        if ((iV & 1) != 0) {
            c0(true);
        } else if ((iV & 2) != 0) {
            p();
        }
        C(false);
    }

    public final long u(Timeline timeline, Object obj, long j2) {
        Timeline.Period period = this.m;
        int i2 = timeline.g(obj, period).f13961c;
        Timeline.Window window = this.l;
        timeline.n(i2, window);
        if (window.f13971f != -9223372036854775807L && window.a() && window.f13973i) {
            return Util.R(Util.B(window.g) - window.f13971f) - (j2 + period.f13962e);
        }
        return -9223372036854775807L;
    }

    public final void u0(ShuffleOrder shuffleOrder) throws Throwable {
        this.L.a(1);
        MediaSourceList mediaSourceList = this.u;
        int size = mediaSourceList.f14737b.size();
        if (shuffleOrder.getLength() != size) {
            shuffleOrder = shuffleOrder.f().i(0, size);
        }
        mediaSourceList.f14743j = shuffleOrder;
        D(mediaSourceList.b(), false);
    }

    public final long v(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == null) {
            return 0L;
        }
        long jMax = mediaPeriodHolder.q;
        if (!mediaPeriodHolder.f14713f) {
            return jMax;
        }
        int i2 = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.f14664b;
            if (i2 >= rendererHolderArr.length) {
                return jMax;
            }
            if (rendererHolderArr[i2].c(mediaPeriodHolder) != null) {
                Renderer rendererC = rendererHolderArr[i2].c(mediaPeriodHolder);
                Objects.requireNonNull(rendererC);
                long jH = rendererC.H();
                if (jH == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jMax = Math.max(jH, jMax);
            }
            i2++;
        }
    }

    public final void v0(int i2) {
        PlaybackInfo playbackInfo = this.K;
        if (playbackInfo.f14757e != i2) {
            if (i2 != 2) {
                this.e1 = -9223372036854775807L;
            }
            if (i2 != 3 && playbackInfo.p) {
                this.K = playbackInfo.i(false);
            }
            this.K = this.K.h(i2);
        }
    }

    public final Pair w(Timeline timeline) {
        if (timeline.p()) {
            return Pair.create(PlaybackInfo.u, 0L);
        }
        Pair pairI = timeline.i(this.l, this.m, timeline.a(this.T), -9223372036854775807L);
        MediaSource.MediaPeriodId mediaPeriodIdT = this.t.t(timeline, pairI.first, 0L);
        long jLongValue = ((Long) pairI.second).longValue();
        if (mediaPeriodIdT.b()) {
            Object obj = mediaPeriodIdT.f15516a;
            Timeline.Period period = this.m;
            timeline.g(obj, period);
            jLongValue = mediaPeriodIdT.f15518c == period.f(mediaPeriodIdT.f15517b) ? period.g.f13672c : 0L;
        }
        return Pair.create(mediaPeriodIdT, Long.valueOf(jLongValue));
    }

    public final void w0(VideoFrameMetadataListener videoFrameMetadataListener) {
        for (RendererHolder rendererHolder : this.f14664b) {
            Renderer renderer = rendererHolder.f14780a;
            if (renderer.f() == 2) {
                renderer.q(7, videoFrameMetadataListener);
                Renderer renderer2 = rendererHolder.f14782c;
                if (renderer2 != null) {
                    renderer2.q(7, videoFrameMetadataListener);
                }
            }
        }
    }

    public final long x(long j2) {
        MediaPeriodHolder mediaPeriodHolder = this.t.m;
        if (mediaPeriodHolder == null) {
            return 0L;
        }
        return Math.max(0L, j2 - (this.h0 - mediaPeriodHolder.q));
    }

    public final void x0(Object obj, ConditionVariable conditionVariable) {
        for (RendererHolder rendererHolder : this.f14664b) {
            Renderer renderer = rendererHolder.f14780a;
            if (renderer.f() == 2) {
                int i2 = rendererHolder.d;
                if (i2 == 4 || i2 == 1) {
                    Renderer renderer2 = rendererHolder.f14782c;
                    renderer2.getClass();
                    renderer2.q(1, obj);
                } else {
                    renderer.q(1, obj);
                }
            }
        }
        int i3 = this.K.f14757e;
        if (i3 == 3 || i3 == 2) {
            this.f14669i.m(2);
        }
        if (conditionVariable != null) {
            conditionVariable.d();
        }
    }

    public final void y(int i2) {
        PlaybackInfo playbackInfo = this.K;
        I0(i2, playbackInfo.n, playbackInfo.m, playbackInfo.l);
    }

    public final void y0(float f2) {
        this.j1 = f2;
        float f3 = f2 * this.C.g;
        for (RendererHolder rendererHolder : this.f14664b) {
            Renderer renderer = rendererHolder.f14780a;
            if (renderer.f() == 1) {
                renderer.q(2, Float.valueOf(f3));
                Renderer renderer2 = rendererHolder.f14782c;
                if (renderer2 != null) {
                    renderer2.q(2, Float.valueOf(f3));
                }
            }
        }
    }

    public final void z() {
        y0(this.j1);
    }

    public final boolean z0() {
        PlaybackInfo playbackInfo = this.K;
        return playbackInfo.l && playbackInfo.n == 0;
    }
}

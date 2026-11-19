package androidx.media3.session;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BundleCollectionUtil;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.nw;
import defpackage.uh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class PlayerInfo {
    public static final PlayerInfo H;
    public static final String I;
    public static final String J;
    public static final String K;
    public static final String L;
    public static final String M;
    public static final String N;
    public static final String O;
    public static final String P;
    public static final String Q;
    public static final String R;
    public static final String S;
    public static final String T;
    public static final String U;
    public static final String V;
    public static final String W;
    public static final String X;
    public static final String Y;
    public static final String Z;
    public static final String a0;
    public static final String b0;
    public static final String c0;
    public static final String d0;
    public static final String e0;
    public static final String f0;
    public static final String g0;
    public static final String h0;
    public static final String i0;
    public static final String j0;
    public static final String k0;
    public static final String l0;
    public static final String m0;
    public static final String n0;
    public static final String o0;
    public static final String p0;
    public final int A;
    public final MediaMetadata B;
    public final long C;
    public final long D;
    public final long E;
    public final Tracks F;
    public final TrackSelectionParameters G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlaybackException f17495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionPositionInfo f17497c;
    public final Player.PositionInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Player.PositionInfo f17498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17499f;
    public final PlaybackParameters g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f17500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f17501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Timeline f17502j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f17503k;
    public final VideoSize l;
    public final MediaMetadata m;
    public final float n;
    public final float o;
    public final int p;
    public final AudioAttributes q;
    public final CueGroup r;
    public final DeviceInfo s;
    public final int t;
    public final boolean u;
    public final boolean v;
    public final int w;
    public final boolean x;
    public final boolean y;
    public final int z;

    public static class Builder {
        public int A;
        public MediaMetadata B;
        public long C;
        public long D;
        public long E;
        public Tracks F;
        public TrackSelectionParameters G;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public PlaybackException f17504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SessionPositionInfo f17506c;
        public Player.PositionInfo d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Player.PositionInfo f17507e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f17508f;
        public PlaybackParameters g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17509h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f17510i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Timeline f17511j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f17512k;
        public VideoSize l;
        public MediaMetadata m;
        public float n;
        public float o;
        public int p;
        public AudioAttributes q;
        public CueGroup r;
        public DeviceInfo s;
        public int t;
        public boolean u;
        public boolean v;
        public int w;
        public boolean x;
        public boolean y;
        public int z;

        public Builder(PlayerInfo playerInfo) {
            this.f17504a = playerInfo.f17495a;
            this.f17505b = playerInfo.f17496b;
            this.f17506c = playerInfo.f17497c;
            this.d = playerInfo.d;
            this.f17507e = playerInfo.f17498e;
            this.f17508f = playerInfo.f17499f;
            this.g = playerInfo.g;
            this.f17509h = playerInfo.f17500h;
            this.f17510i = playerInfo.f17501i;
            this.f17511j = playerInfo.f17502j;
            this.f17512k = playerInfo.f17503k;
            this.l = playerInfo.l;
            this.m = playerInfo.m;
            this.n = playerInfo.n;
            this.o = playerInfo.o;
            this.p = playerInfo.p;
            this.q = playerInfo.q;
            this.r = playerInfo.r;
            this.s = playerInfo.s;
            this.t = playerInfo.t;
            this.u = playerInfo.u;
            this.v = playerInfo.v;
            this.w = playerInfo.w;
            this.x = playerInfo.x;
            this.y = playerInfo.y;
            this.z = playerInfo.z;
            this.A = playerInfo.A;
            this.B = playerInfo.B;
            this.C = playerInfo.C;
            this.D = playerInfo.D;
            this.E = playerInfo.E;
            this.F = playerInfo.F;
            this.G = playerInfo.G;
        }

        public final PlayerInfo a() {
            Preconditions.q(this.f17511j.p() || this.f17506c.f17552a.f13931b < this.f17511j.o());
            return new PlayerInfo(this.f17504a, this.f17505b, this.f17506c, this.d, this.f17507e, this.f17508f, this.g, this.f17509h, this.f17510i, this.l, this.f17511j, this.f17512k, this.m, this.n, this.o, this.q, this.p, this.r, this.s, this.t, this.u, this.v, this.w, this.z, this.A, this.x, this.y, this.B, this.C, this.D, this.E, this.F, this.G);
        }
    }

    public static class BundlingExclusions {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final BundlingExclusions f17513c = new BundlingExclusions(false, false);
        public static final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f17514e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f17515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f17516b;

        static {
            String str = Util.f14242a;
            d = Integer.toString(0, 36);
            f17514e = Integer.toString(1, 36);
        }

        public BundlingExclusions(boolean z, boolean z2) {
            this.f17515a = z;
            this.f17516b = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BundlingExclusions)) {
                return false;
            }
            BundlingExclusions bundlingExclusions = (BundlingExclusions) obj;
            return this.f17515a == bundlingExclusions.f17515a && this.f17516b == bundlingExclusions.f17516b;
        }

        public final int hashCode() {
            return Objects.hash(Boolean.valueOf(this.f17515a), Boolean.valueOf(this.f17516b));
        }
    }

    public final class InProcessBinder extends Binder {
        public InProcessBinder() {
        }
    }

    static {
        SessionPositionInfo sessionPositionInfo = SessionPositionInfo.l;
        Player.PositionInfo positionInfo = SessionPositionInfo.f17551k;
        PlaybackParameters playbackParameters = PlaybackParameters.d;
        VideoSize videoSize = VideoSize.d;
        Timeline timeline = Timeline.f13952a;
        MediaMetadata mediaMetadata = MediaMetadata.L;
        H = new PlayerInfo(null, 0, sessionPositionInfo, positionInfo, positionInfo, 0, playbackParameters, 0, false, videoSize, timeline, 0, mediaMetadata, 1.0f, 1.0f, AudioAttributes.f13689i, 0, CueGroup.d, DeviceInfo.f13735e, 0, false, false, 1, 0, 1, false, false, mediaMetadata, LiveTranslationEntity.DefaultSentenceTimeOut, 15000L, HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD, Tracks.f14010b, TrackSelectionParameters.J);
        String str = Util.f14242a;
        I = Integer.toString(1, 36);
        J = Integer.toString(2, 36);
        K = Integer.toString(3, 36);
        L = Integer.toString(4, 36);
        M = Integer.toString(5, 36);
        N = Integer.toString(6, 36);
        O = Integer.toString(7, 36);
        P = Integer.toString(33, 36);
        Q = Integer.toString(8, 36);
        R = Integer.toString(9, 36);
        S = Integer.toString(10, 36);
        T = Integer.toString(11, 36);
        U = Integer.toString(12, 36);
        V = Integer.toString(13, 36);
        W = Integer.toString(14, 36);
        X = Integer.toString(15, 36);
        Y = Integer.toString(16, 36);
        Z = Integer.toString(17, 36);
        a0 = Integer.toString(18, 36);
        b0 = Integer.toString(19, 36);
        c0 = Integer.toString(20, 36);
        d0 = Integer.toString(21, 36);
        e0 = Integer.toString(22, 36);
        f0 = Integer.toString(23, 36);
        g0 = Integer.toString(24, 36);
        h0 = Integer.toString(25, 36);
        i0 = Integer.toString(26, 36);
        j0 = Integer.toString(27, 36);
        k0 = Integer.toString(28, 36);
        l0 = Integer.toString(29, 36);
        m0 = Integer.toString(30, 36);
        n0 = Integer.toString(31, 36);
        o0 = Integer.toString(32, 36);
        p0 = Integer.toString(34, 36);
    }

    public PlayerInfo(PlaybackException playbackException, int i2, SessionPositionInfo sessionPositionInfo, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i3, PlaybackParameters playbackParameters, int i4, boolean z, VideoSize videoSize, Timeline timeline, int i5, MediaMetadata mediaMetadata, float f2, float f3, AudioAttributes audioAttributes, int i6, CueGroup cueGroup, DeviceInfo deviceInfo, int i7, boolean z2, boolean z3, int i8, int i9, int i10, boolean z4, boolean z5, MediaMetadata mediaMetadata2, long j2, long j3, long j4, Tracks tracks, TrackSelectionParameters trackSelectionParameters) {
        this.f17495a = playbackException;
        this.f17496b = i2;
        this.f17497c = sessionPositionInfo;
        this.d = positionInfo;
        this.f17498e = positionInfo2;
        this.f17499f = i3;
        this.g = playbackParameters;
        this.f17500h = i4;
        this.f17501i = z;
        this.l = videoSize;
        this.f17502j = timeline;
        this.f17503k = i5;
        this.m = mediaMetadata;
        this.n = f2;
        this.o = f3;
        this.p = i6;
        this.q = audioAttributes;
        this.r = cueGroup;
        this.s = deviceInfo;
        this.t = i7;
        this.u = z2;
        this.v = z3;
        this.w = i8;
        this.z = i9;
        this.A = i10;
        this.x = z4;
        this.y = z5;
        this.B = mediaMetadata2;
        this.C = j2;
        this.D = j3;
        this.E = j4;
        this.F = tracks;
        this.G = trackSelectionParameters;
    }

    public static PlayerInfo h(int i2, Bundle bundle) {
        PlaybackException playbackException;
        Timeline remotableTimeline;
        ImmutableList immutableListJ;
        CueGroup cueGroup;
        DeviceInfo deviceInfoA;
        Tracks tracks;
        IBinder binder = bundle.getBinder(o0);
        if (binder instanceof InProcessBinder) {
            return PlayerInfo.this;
        }
        Bundle bundle2 = bundle.getBundle(a0);
        Throwable remoteException = null;
        int i3 = 1;
        if (bundle2 == null) {
            playbackException = null;
        } else {
            String string = bundle2.getString(PlaybackException.g);
            String string2 = bundle2.getString(PlaybackException.f13912h);
            String string3 = bundle2.getString(PlaybackException.f13913i);
            if (!TextUtils.isEmpty(string2)) {
                try {
                    Class<?> cls = Class.forName(string2, true, PlaybackException.class.getClassLoader());
                    remoteException = Throwable.class.isAssignableFrom(cls) ? (Throwable) cls.getConstructor(String.class).newInstance(string3) : null;
                    if (remoteException == null) {
                        remoteException = new RemoteException(string3);
                    }
                } catch (Throwable unused) {
                    remoteException = new RemoteException(string3);
                }
            }
            Throwable th = remoteException;
            int i4 = bundle2.getInt(PlaybackException.f13910e, 1000);
            Bundle bundleP = Util.p(bundle2.getBundle(PlaybackException.f13914j));
            if (bundleP == null) {
                bundleP = Bundle.EMPTY;
            }
            playbackException = new PlaybackException(string, th, i4, bundleP, bundle2.getLong(PlaybackException.f13911f, SystemClock.elapsedRealtime()));
        }
        int i5 = bundle.getInt(c0, 0);
        Bundle bundle3 = bundle.getBundle(b0);
        SessionPositionInfo sessionPositionInfoB = bundle3 == null ? SessionPositionInfo.l : SessionPositionInfo.b(i2, bundle3);
        Bundle bundle4 = bundle.getBundle(d0);
        Player.PositionInfo positionInfoC = bundle4 == null ? SessionPositionInfo.f17551k : Player.PositionInfo.c(i2, bundle4);
        Bundle bundle5 = bundle.getBundle(e0);
        Player.PositionInfo positionInfoC2 = bundle5 == null ? SessionPositionInfo.f17551k : Player.PositionInfo.c(i2, bundle5);
        int i6 = bundle.getInt(f0, 0);
        Bundle bundle6 = bundle.getBundle(I);
        PlaybackParameters playbackParameters = bundle6 == null ? PlaybackParameters.d : new PlaybackParameters(bundle6.getFloat(PlaybackParameters.f13917e, 1.0f), bundle6.getFloat(PlaybackParameters.f13918f, 1.0f));
        int i7 = bundle.getInt(J, 0);
        boolean z = bundle.getBoolean(K, false);
        Bundle bundle7 = bundle.getBundle(L);
        if (bundle7 == null) {
            remotableTimeline = Timeline.f13952a;
        } else {
            nw nwVar = new nw(i2, i3);
            IBinder binder2 = bundle7.getBinder(Timeline.f13953b);
            ImmutableList immutableListX = binder2 == null ? ImmutableList.x() : BundleCollectionUtil.a(nwVar, BundleListRetriever.a(binder2));
            nw nwVar2 = new nw(i2, 2);
            IBinder binder3 = bundle7.getBinder(Timeline.f13954c);
            ImmutableList immutableListX2 = binder3 == null ? ImmutableList.x() : BundleCollectionUtil.a(nwVar2, BundleListRetriever.a(binder3));
            int[] intArray = bundle7.getIntArray(Timeline.d);
            if (intArray == null) {
                int size = immutableListX.size();
                int[] iArr = new int[size];
                for (int i8 = 0; i8 < size; i8++) {
                    iArr[i8] = i8;
                }
                intArray = iArr;
            }
            remotableTimeline = new Timeline.RemotableTimeline(immutableListX, immutableListX2, intArray);
        }
        int i9 = bundle.getInt(n0, 0);
        Bundle bundle8 = bundle.getBundle(M);
        VideoSize videoSize = bundle8 == null ? VideoSize.d : new VideoSize(bundle8.getInt(VideoSize.f14022e, 0), bundle8.getInt(VideoSize.f14023f, 0), bundle8.getFloat(VideoSize.g, 1.0f));
        Bundle bundle9 = bundle.getBundle(N);
        MediaMetadata mediaMetadataB = bundle9 == null ? MediaMetadata.L : MediaMetadata.b(i2, bundle9);
        float f2 = bundle.getFloat(O, 1.0f);
        float f3 = bundle.getFloat(P, 1.0f);
        int i10 = bundle.getInt(p0, 0);
        Bundle bundle10 = bundle.getBundle(Q);
        AudioAttributes audioAttributesA = bundle10 == null ? AudioAttributes.f13689i : AudioAttributes.a(bundle10);
        Bundle bundle11 = bundle.getBundle(g0);
        if (bundle11 == null) {
            cueGroup = CueGroup.d;
            mediaMetadataB = mediaMetadataB;
            f2 = f2;
            videoSize = videoSize;
        } else {
            ArrayList parcelableArrayList = bundle11.getParcelableArrayList(CueGroup.f14112e);
            if (parcelableArrayList == null) {
                immutableListJ = ImmutableList.x();
            } else {
                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (int i11 = 0; i11 < parcelableArrayList.size(); i11++) {
                    Bundle bundle12 = (Bundle) parcelableArrayList.get(i11);
                    bundle12.getClass();
                    builder.e(Cue.b(bundle12));
                }
                immutableListJ = builder.j();
            }
            cueGroup = new CueGroup(immutableListJ, bundle11.getLong(CueGroup.f14113f));
        }
        Bundle bundle13 = bundle.getBundle(R);
        if (bundle13 == null) {
            deviceInfoA = DeviceInfo.f13735e;
        } else {
            int i12 = bundle13.getInt(DeviceInfo.f13736f, 0);
            int i13 = bundle13.getInt(DeviceInfo.g, 0);
            int i14 = bundle13.getInt(DeviceInfo.f13737h, 0);
            String string4 = bundle13.getString(DeviceInfo.f13738i);
            DeviceInfo.Builder builder2 = new DeviceInfo.Builder(i12);
            builder2.f13743b = i13;
            builder2.f13744c = i14;
            Preconditions.g(builder2.f13742a != 0 || string4 == null);
            builder2.d = string4;
            deviceInfoA = builder2.a();
        }
        int i15 = bundle.getInt(S, 0);
        boolean z2 = bundle.getBoolean(T, false);
        boolean z3 = bundle.getBoolean(U, false);
        int i16 = bundle.getInt(V, 1);
        int i17 = bundle.getInt(W, 0);
        int i18 = bundle.getInt(X, 1);
        boolean z4 = bundle.getBoolean(Y, false);
        boolean z5 = bundle.getBoolean(Z, false);
        Bundle bundle14 = bundle.getBundle(h0);
        MediaMetadata mediaMetadataB2 = bundle14 == null ? MediaMetadata.L : MediaMetadata.b(i2, bundle14);
        DeviceInfo deviceInfo = deviceInfoA;
        long j2 = bundle.getLong(i0, i2 < 4 ? 0L : 5000L);
        long j3 = bundle.getLong(j0, i2 < 4 ? 0L : 15000L);
        long j4 = bundle.getLong(k0, i2 < 4 ? 0L : 3000L);
        Bundle bundle15 = bundle.getBundle(m0);
        if (bundle15 == null) {
            tracks = Tracks.f14010b;
        } else {
            ArrayList parcelableArrayList2 = bundle15.getParcelableArrayList(Tracks.f14011c);
            tracks = new Tracks(parcelableArrayList2 == null ? ImmutableList.x() : BundleCollectionUtil.a(new uh(17), parcelableArrayList2));
        }
        Bundle bundle16 = bundle.getBundle(l0);
        return new PlayerInfo(playbackException, i5, sessionPositionInfoB, positionInfoC, positionInfoC2, i6, playbackParameters, i7, z, videoSize, remotableTimeline, i9, mediaMetadataB, f2, f3, audioAttributesA, i10, cueGroup, deviceInfo, i15, z2, z3, i16, i17, i18, z4, z5, mediaMetadataB2, j2, j3, j4, tracks, bundle16 == null ? TrackSelectionParameters.J : TrackSelectionParameters.b(bundle16));
    }

    public final PlayerInfo a(int i2, boolean z) {
        Builder builder = new Builder(this);
        builder.t = i2;
        builder.u = z;
        return builder.a();
    }

    public final PlayerInfo b(int i2, int i3, boolean z) {
        Builder builder = new Builder(this);
        builder.v = z;
        builder.w = i2;
        builder.z = i3;
        builder.x = this.A == 3 && z && i3 == 0;
        return builder.a();
    }

    public final PlayerInfo c(PlaybackParameters playbackParameters) {
        Builder builder = new Builder(this);
        builder.g = playbackParameters;
        return builder.a();
    }

    public final PlayerInfo d(int i2, PlaybackException playbackException) {
        Builder builder = new Builder(this);
        builder.f17504a = playbackException;
        builder.A = i2;
        builder.x = i2 == 3 && this.v && this.z == 0;
        return builder.a();
    }

    public final PlayerInfo e(SessionPositionInfo sessionPositionInfo) {
        Builder builder = new Builder(this);
        builder.f17506c = sessionPositionInfo;
        return builder.a();
    }

    public final PlayerInfo f(Timeline timeline, int i2) {
        Builder builder = new Builder(this);
        builder.f17511j = timeline;
        builder.f17512k = 0;
        SessionPositionInfo sessionPositionInfo = this.f17497c;
        Player.PositionInfo positionInfo = sessionPositionInfo.f17552a;
        builder.f17506c = new SessionPositionInfo(new Player.PositionInfo(positionInfo.f13930a, i2, positionInfo.f13932c, positionInfo.d, positionInfo.f13933e, positionInfo.f13934f, positionInfo.g, positionInfo.f13935h, positionInfo.f13936i), sessionPositionInfo.f17553b, sessionPositionInfo.f17554c, sessionPositionInfo.d, sessionPositionInfo.f17555e, sessionPositionInfo.f17556f, sessionPositionInfo.g, sessionPositionInfo.f17557h, sessionPositionInfo.f17558i, sessionPositionInfo.f17559j);
        return builder.a();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0086  */
    /* JADX WARN: Code duplicated, block: B:18:0x008a  */
    public final PlayerInfo g(Player.Commands commands, boolean z, boolean z2) {
        int i2;
        Builder builder = new Builder(this);
        boolean zA = commands.a(16);
        boolean zA2 = commands.a(17);
        SessionPositionInfo sessionPositionInfo = this.f17497c;
        builder.f17506c = sessionPositionInfo.a(zA, zA2);
        builder.d = this.d.b(zA, zA2);
        builder.f17507e = this.f17498e.b(zA, zA2);
        if (!zA2 && zA) {
            Timeline remotableTimeline = this.f17502j;
            if (!remotableTimeline.p()) {
                int i3 = sessionPositionInfo.f17552a.f13931b;
                if (remotableTimeline.o() != 1) {
                    Timeline.Window windowM = remotableTimeline.m(i3, new Timeline.Window(), 0L);
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder2 = new ImmutableList.Builder();
                    int i4 = windowM.n;
                    while (true) {
                        i2 = windowM.o;
                        if (i4 > i2) {
                            break;
                        }
                        Timeline.Period periodF = remotableTimeline.f(i4, new Timeline.Period(), true);
                        periodF.f13961c = 0;
                        builder2.e(periodF);
                        i4++;
                    }
                    windowM.o = i2 - windowM.n;
                    windowM.n = 0;
                    remotableTimeline = new Timeline.RemotableTimeline(ImmutableList.A(windowM), builder2.j(), new int[]{0});
                }
                builder.f17511j = remotableTimeline;
            } else if (z) {
                builder.f17511j = Timeline.f13952a;
            } else {
                builder.f17511j = Timeline.f13952a;
            }
        } else if (z || !zA2) {
            builder.f17511j = Timeline.f13952a;
        }
        if (!commands.a(18)) {
            builder.m = MediaMetadata.L;
        }
        if (!commands.a(22)) {
            builder.o = 1.0f;
            builder.n = 1.0f;
        }
        if (!commands.a(21)) {
            builder.q = AudioAttributes.f13689i;
        }
        if (!commands.a(28)) {
            builder.r = CueGroup.d;
        }
        if (!commands.a(23)) {
            builder.t = 0;
            builder.u = false;
        }
        if (!commands.a(18)) {
            builder.B = MediaMetadata.L;
        }
        if (z2 || !commands.a(30)) {
            builder.F = Tracks.f14010b;
        }
        return builder.a();
    }

    public final MediaItem i() {
        Timeline timeline = this.f17502j;
        if (timeline.p()) {
            return null;
        }
        return timeline.m(this.f17497c.f17552a.f13931b, new Timeline.Window(), 0L).f13969c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v28 */
    public final Bundle j(int i2) {
        Bundle bundle;
        long j2;
        int i3;
        Bundle bundle2;
        ArrayList arrayList;
        Timeline timeline;
        Timeline.Period period;
        int i4;
        Bundle bundle3;
        int i5 = i2;
        Bundle bundle4 = new Bundle();
        PlaybackException playbackException = this.f17495a;
        if (playbackException != null) {
            Bundle bundle5 = new Bundle();
            bundle5.putInt(PlaybackException.f13910e, playbackException.f13915b);
            bundle5.putLong(PlaybackException.f13911f, playbackException.f13916c);
            bundle5.putString(PlaybackException.g, playbackException.getMessage());
            bundle5.putBundle(PlaybackException.f13914j, playbackException.d);
            Throwable cause = playbackException.getCause();
            if (cause != null) {
                bundle5.putString(PlaybackException.f13912h, cause.getClass().getName());
                bundle5.putString(PlaybackException.f13913i, cause.getMessage());
            }
            bundle4.putBundle(a0, bundle5);
        }
        int i6 = this.f17496b;
        if (i6 != 0) {
            bundle4.putInt(c0, i6);
        }
        SessionPositionInfo sessionPositionInfo = this.f17497c;
        if (i5 < 3 || !sessionPositionInfo.equals(SessionPositionInfo.l)) {
            bundle4.putBundle(b0, sessionPositionInfo.c(i5));
        }
        Player.PositionInfo positionInfo = this.d;
        if (i5 < 3 || !SessionPositionInfo.f17551k.a(positionInfo)) {
            bundle4.putBundle(d0, positionInfo.d(i5));
        }
        Player.PositionInfo positionInfo2 = this.f17498e;
        if (i5 < 3 || !SessionPositionInfo.f17551k.a(positionInfo2)) {
            bundle4.putBundle(e0, positionInfo2.d(i5));
        }
        int i7 = this.f17499f;
        if (i7 != 0) {
            bundle4.putInt(f0, i7);
        }
        PlaybackParameters playbackParameters = PlaybackParameters.d;
        PlaybackParameters playbackParameters2 = this.g;
        if (!playbackParameters2.equals(playbackParameters)) {
            Bundle bundle6 = new Bundle();
            bundle6.putFloat(PlaybackParameters.f13917e, playbackParameters2.f13919a);
            bundle6.putFloat(PlaybackParameters.f13918f, playbackParameters2.f13920b);
            bundle4.putBundle(I, bundle6);
        }
        int i8 = this.f17500h;
        if (i8 != 0) {
            bundle4.putInt(J, i8);
        }
        boolean z = this.f17501i;
        if (z) {
            bundle4.putBoolean(K, z);
        }
        Timeline timeline2 = Timeline.f13952a;
        Timeline timeline3 = this.f17502j;
        boolean z2 = false;
        long j3 = 0;
        if (timeline3.equals(timeline2)) {
            bundle = bundle4;
            j2 = 0;
        } else {
            ArrayList arrayList2 = new ArrayList();
            int iO = timeline3.o();
            Timeline.Window window = new Timeline.Window();
            int i9 = 0;
            while (i9 < iO) {
                Timeline.Window windowM = timeline3.m(i9, window, j3);
                windowM.getClass();
                Bundle bundle7 = new Bundle();
                long j4 = j3;
                if (!MediaItem.g.equals(windowM.f13969c)) {
                    bundle7.putBundle(Timeline.Window.t, windowM.f13969c.c(i5, false));
                }
                long j5 = windowM.f13970e;
                if (j5 != -9223372036854775807L) {
                    bundle7.putLong(Timeline.Window.u, j5);
                }
                long j6 = windowM.f13971f;
                if (j6 != r12) {
                    bundle7.putLong(Timeline.Window.v, j6);
                }
                long j7 = windowM.g;
                if (j7 != r12) {
                    bundle7.putLong(Timeline.Window.w, j7);
                }
                boolean z3 = windowM.f13972h;
                if (z3) {
                    bundle7.putBoolean(Timeline.Window.x, z3);
                }
                boolean z4 = windowM.f13973i;
                if (z4) {
                    bundle7.putBoolean(Timeline.Window.y, z4);
                }
                MediaItem.LiveConfiguration liveConfiguration = windowM.f13974j;
                if (liveConfiguration != null) {
                    bundle7.putBundle(Timeline.Window.z, liveConfiguration.c());
                }
                boolean z5 = windowM.f13975k;
                if (z5) {
                    bundle7.putBoolean(Timeline.Window.A, z5);
                }
                long j8 = windowM.l;
                if (j8 != j4) {
                    bundle7.putLong(Timeline.Window.B, j8);
                }
                long j9 = windowM.m;
                if (j9 != -9223372036854775807) {
                    bundle7.putLong(Timeline.Window.C, j9);
                }
                int i10 = windowM.n;
                if (i10 != 0) {
                    bundle7.putInt(Timeline.Window.D, i10);
                }
                int i11 = windowM.o;
                if (i11 != 0) {
                    bundle7.putInt(Timeline.Window.E, i11);
                }
                long j10 = windowM.p;
                if (j10 != j4) {
                    bundle7.putLong(Timeline.Window.F, j10);
                }
                arrayList2.add(bundle7);
                i9++;
                j3 = j4;
            }
            j2 = j3;
            ArrayList arrayList3 = new ArrayList();
            int iH = timeline3.h();
            Timeline.Period period2 = new Timeline.Period();
            int i12 = 0;
            while (i12 < iH) {
                Timeline.Period periodF = timeline3.f(i12, period2, z2);
                periodF.getClass();
                Bundle bundle8 = new Bundle();
                int i13 = periodF.f13961c;
                if (i13 != 0) {
                    bundle8.putInt(Timeline.Period.f13955h, i13);
                }
                long j11 = periodF.d;
                if (j11 != -9223372036854775807L) {
                    bundle8.putLong(Timeline.Period.f13956i, j11);
                }
                long j12 = periodF.f13962e;
                if (j12 != j2) {
                    bundle8.putLong(Timeline.Period.f13957j, j12);
                }
                boolean z6 = periodF.f13963f;
                if (z6) {
                    bundle8.putBoolean(Timeline.Period.f13958k, z6);
                }
                if (periodF.g.equals(AdPlaybackState.g)) {
                    bundle2 = bundle4;
                    arrayList = arrayList2;
                    timeline = timeline3;
                    period = period2;
                    i4 = i12;
                } else {
                    String str = Timeline.Period.l;
                    AdPlaybackState adPlaybackState = periodF.g;
                    adPlaybackState.getClass();
                    Bundle bundle9 = new Bundle();
                    ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>();
                    AdPlaybackState.AdGroup[] adGroupArr = adPlaybackState.f13674f;
                    int length = adGroupArr.length;
                    ?? r6 = z2;
                    while (r6 < length) {
                        ?? r23 = r6;
                        AdPlaybackState.AdGroup adGroup = adGroupArr[r23 == true ? 1 : 0];
                        adGroup.getClass();
                        int i14 = length;
                        Bundle bundle10 = new Bundle();
                        Timeline.Period period3 = period2;
                        Bundle bundle11 = bundle4;
                        ArrayList arrayList5 = arrayList2;
                        bundle10.putLong(AdPlaybackState.AdGroup.m, adGroup.f13675a);
                        bundle10.putInt(AdPlaybackState.AdGroup.n, adGroup.f13676b);
                        bundle10.putInt(AdPlaybackState.AdGroup.t, adGroup.f13677c);
                        bundle10.putParcelableArrayList(AdPlaybackState.AdGroup.o, new ArrayList<>(Arrays.asList(adGroup.d)));
                        String str2 = AdPlaybackState.AdGroup.u;
                        ArrayList<? extends Parcelable> arrayList6 = new ArrayList<>();
                        MediaItem[] mediaItemArr = adGroup.f13678e;
                        int i15 = i12;
                        int length2 = mediaItemArr.length;
                        ?? r10 = z2;
                        while (true) {
                            Bundle bundleC = null;
                            if (r10 >= length2) {
                                break;
                            }
                            ?? r31 = r10;
                            MediaItem mediaItem = mediaItemArr[r31 == true ? 1 : 0];
                            if (mediaItem != null) {
                                bundleC = mediaItem.c(i5, true);
                            }
                            arrayList6.add(bundleC);
                            length2 = length2;
                            r10 = (r31 == true ? 1 : 0) + 1;
                        }
                        bundle10.putParcelableArrayList(str2, arrayList6);
                        bundle10.putIntArray(AdPlaybackState.AdGroup.p, adGroup.f13679f);
                        bundle10.putLongArray(AdPlaybackState.AdGroup.q, adGroup.g);
                        bundle10.putLong(AdPlaybackState.AdGroup.r, adGroup.f13682j);
                        bundle10.putBoolean(AdPlaybackState.AdGroup.s, adGroup.f13683k);
                        bundle10.putStringArrayList(AdPlaybackState.AdGroup.v, new ArrayList<>(Arrays.asList(adGroup.f13680h)));
                        String str3 = AdPlaybackState.AdGroup.x;
                        ArrayList<? extends Parcelable> arrayList7 = new ArrayList<>();
                        AdPlaybackState.SkipInfo[] skipInfoArr = adGroup.f13681i;
                        int length3 = skipInfoArr.length;
                        ?? r11 = z2;
                        while (r11 < length3) {
                            ?? r32 = r11;
                            AdPlaybackState.SkipInfo skipInfo = skipInfoArr[r32 == true ? 1 : 0];
                            if (skipInfo == null) {
                                bundle3 = null;
                            } else {
                                bundle3 = new Bundle();
                                bundle3.putLong(AdPlaybackState.SkipInfo.d, skipInfo.f13686a);
                                bundle3.putLong(AdPlaybackState.SkipInfo.f13684e, skipInfo.f13687b);
                                bundle3.putString(AdPlaybackState.SkipInfo.f13685f, skipInfo.f13688c);
                            }
                            arrayList7.add(bundle3);
                            length3 = length3;
                            timeline3 = timeline3;
                            str = str;
                            r11 = (r32 == true ? 1 : 0) + 1;
                        }
                        bundle10.putParcelableArrayList(str3, arrayList7);
                        bundle10.putBoolean(AdPlaybackState.AdGroup.w, adGroup.l);
                        arrayList4.add(bundle10);
                        i5 = i2;
                        length = i14;
                        period2 = period3;
                        bundle4 = bundle11;
                        arrayList2 = arrayList5;
                        i12 = i15;
                        r6 = (r23 == true ? 1 : 0) + 1;
                    }
                    bundle2 = bundle4;
                    arrayList = arrayList2;
                    timeline = timeline3;
                    String str4 = str;
                    period = period2;
                    i4 = i12;
                    if (!arrayList4.isEmpty()) {
                        bundle9.putParcelableArrayList(AdPlaybackState.f13667i, arrayList4);
                    }
                    long j13 = adPlaybackState.f13672c;
                    if (j13 != j2) {
                        bundle9.putLong(AdPlaybackState.f13668j, j13);
                    }
                    long j14 = adPlaybackState.d;
                    if (j14 != -9223372036854775807L) {
                        bundle9.putLong(AdPlaybackState.f13669k, j14);
                    }
                    int i16 = adPlaybackState.f13673e;
                    if (i16 != 0) {
                        bundle9.putInt(AdPlaybackState.l, i16);
                    }
                    bundle8.putBundle(str4, bundle9);
                }
                arrayList3.add(bundle8);
                i12 = i4 + 1;
                i5 = i2;
                z2 = z2;
                iH = iH;
                period2 = period;
                bundle4 = bundle2;
                arrayList2 = arrayList;
                timeline3 = timeline;
            }
            Bundle bundle12 = bundle4;
            ArrayList arrayList8 = arrayList2;
            Timeline timeline4 = timeline3;
            boolean z7 = z2;
            int[] iArr = new int[iO];
            boolean z8 = true;
            if (iO > 0) {
                iArr[z7 ? 1 : 0] = timeline4.a(true);
            }
            int i17 = 1;
            while (i17 < iO) {
                iArr[i17] = timeline4.e(iArr[i17 - 1], z7 ? 1 : 0, z8);
                i17++;
                z8 = true;
                z7 = false;
            }
            Bundle bundle13 = new Bundle();
            bundle13.putBinder(Timeline.f13953b, new BundleListRetriever(arrayList8));
            bundle13.putBinder(Timeline.f13954c, new BundleListRetriever(arrayList3));
            bundle13.putIntArray(Timeline.d, iArr);
            bundle = bundle12;
            bundle.putBundle(L, bundle13);
        }
        int i18 = this.f17503k;
        if (i18 != 0) {
            bundle.putInt(n0, i18);
        }
        VideoSize videoSize = VideoSize.d;
        VideoSize videoSize2 = this.l;
        if (!videoSize2.equals(videoSize)) {
            Bundle bundle14 = new Bundle();
            int i19 = videoSize2.f14024a;
            if (i19 != 0) {
                bundle14.putInt(VideoSize.f14022e, i19);
            }
            int i20 = videoSize2.f14025b;
            if (i20 != 0) {
                bundle14.putInt(VideoSize.f14023f, i20);
            }
            float f2 = videoSize2.f14026c;
            if (f2 != 1.0f) {
                bundle14.putFloat(VideoSize.g, f2);
            }
            bundle.putBundle(M, bundle14);
        }
        MediaMetadata mediaMetadata = MediaMetadata.L;
        MediaMetadata mediaMetadata2 = this.m;
        if (mediaMetadata2.equals(mediaMetadata)) {
            i3 = i2;
        } else {
            i3 = i2;
            bundle.putBundle(N, mediaMetadata2.c(i3));
        }
        float f3 = this.n;
        if (f3 != 1.0f) {
            bundle.putFloat(O, f3);
        }
        float f4 = this.o;
        if (f4 != 1.0f) {
            bundle.putFloat(P, f4);
        }
        int i21 = this.p;
        if (i21 != 0) {
            bundle.putInt(p0, i21);
        }
        AudioAttributes audioAttributes = AudioAttributes.f13689i;
        AudioAttributes audioAttributes2 = this.q;
        if (!audioAttributes2.equals(audioAttributes)) {
            bundle.putBundle(Q, audioAttributes2.d());
        }
        CueGroup cueGroup = CueGroup.d;
        CueGroup cueGroup2 = this.r;
        if (!cueGroup2.equals(cueGroup)) {
            Bundle bundle15 = new Bundle();
            String str5 = CueGroup.f14112e;
            ImmutableList immutableList = cueGroup2.f14114a;
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i22 = 0; i22 < immutableList.size(); i22++) {
                if (((Cue) immutableList.get(i22)).d == null) {
                    builder.e((Cue) immutableList.get(i22));
                }
            }
            ImmutableList immutableListJ = builder.j();
            ArrayList<? extends Parcelable> arrayList9 = new ArrayList<>(immutableListJ.size());
            UnmodifiableListIterator unmodifiableListIteratorListIterator = immutableListJ.listIterator(0);
            while (unmodifiableListIteratorListIterator.hasNext()) {
                Cue cue = (Cue) unmodifiableListIteratorListIterator.next();
                Bundle bundleC2 = cue.c();
                Bitmap bitmap = cue.d;
                if (bitmap != null) {
                    bundleC2.putParcelable(Cue.w, bitmap);
                }
                arrayList9.add(bundleC2);
            }
            bundle15.putParcelableArrayList(str5, arrayList9);
            bundle15.putLong(CueGroup.f14113f, cueGroup2.f14115b);
            bundle.putBundle(g0, bundle15);
        }
        DeviceInfo deviceInfo = DeviceInfo.f13735e;
        DeviceInfo deviceInfo2 = this.s;
        if (!deviceInfo2.equals(deviceInfo)) {
            Bundle bundle16 = new Bundle();
            int i23 = deviceInfo2.f13739a;
            if (i23 != 0) {
                bundle16.putInt(DeviceInfo.f13736f, i23);
            }
            int i24 = deviceInfo2.f13740b;
            if (i24 != 0) {
                bundle16.putInt(DeviceInfo.g, i24);
            }
            int i25 = deviceInfo2.f13741c;
            if (i25 != 0) {
                bundle16.putInt(DeviceInfo.f13737h, i25);
            }
            String str6 = deviceInfo2.d;
            if (str6 != null) {
                bundle16.putString(DeviceInfo.f13738i, str6);
            }
            bundle.putBundle(R, bundle16);
        }
        int i26 = this.t;
        if (i26 != 0) {
            bundle.putInt(S, i26);
        }
        boolean z9 = this.u;
        if (z9) {
            bundle.putBoolean(T, z9);
        }
        boolean z10 = this.v;
        if (z10) {
            bundle.putBoolean(U, z10);
        }
        int i27 = this.w;
        if (i27 != 1) {
            bundle.putInt(V, i27);
        }
        int i28 = this.z;
        if (i28 != 0) {
            bundle.putInt(W, i28);
        }
        int i29 = this.A;
        if (i29 != 1) {
            bundle.putInt(X, i29);
        }
        boolean z11 = this.x;
        if (z11) {
            bundle.putBoolean(Y, z11);
        }
        boolean z12 = this.y;
        if (z12) {
            bundle.putBoolean(Z, z12);
        }
        MediaMetadata mediaMetadata3 = MediaMetadata.L;
        MediaMetadata mediaMetadata4 = this.B;
        if (!mediaMetadata4.equals(mediaMetadata3)) {
            bundle.putBundle(h0, mediaMetadata4.c(i3));
        }
        long j15 = i3 < 6 ? j2 : LiveTranslationEntity.DefaultSentenceTimeOut;
        long j16 = this.C;
        if (j16 != j15) {
            bundle.putLong(i0, j16);
        }
        long j17 = i3 < 6 ? j2 : 15000L;
        long j18 = this.D;
        if (j18 != j17) {
            bundle.putLong(j0, j18);
        }
        long j19 = i3 < 6 ? j2 : HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD;
        long j20 = this.E;
        if (j20 != j19) {
            bundle.putLong(k0, j20);
        }
        Tracks tracks = Tracks.f14010b;
        Tracks tracks2 = this.F;
        if (!tracks2.equals(tracks)) {
            Bundle bundle17 = new Bundle();
            bundle17.putParcelableArrayList(Tracks.f14011c, BundleCollectionUtil.b(tracks2.f14012a, new uh(16)));
            bundle.putBundle(m0, bundle17);
        }
        TrackSelectionParameters trackSelectionParameters = TrackSelectionParameters.J;
        TrackSelectionParameters trackSelectionParameters2 = this.G;
        if (!trackSelectionParameters2.equals(trackSelectionParameters)) {
            bundle.putBundle(l0, trackSelectionParameters2.c());
        }
        return bundle;
    }
}

package androidx.media3.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.collection.ArraySet;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.bm;
import defpackage.d21;
import defpackage.et;
import defpackage.fw;
import defpackage.lc0;
import defpackage.ls;
import defpackage.ms;
import defpackage.oc0;
import defpackage.p3;
import defpackage.pc0;
import defpackage.sc;
import defpackage.wm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerImplBase implements MediaController.MediaControllerImpl {
    public Player.Commands A;
    public Surface B;
    public SurfaceHolder C;
    public TextureView D;
    public IMediaSession F;
    public android.media.session.MediaController G;
    public long H;
    public long I;
    public PlayerInfo J;
    public Bundle K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaController f17327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SequencedFutureManager f17328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaControllerStub f17329c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SessionToken f17330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bundle f17331f;
    public final y g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SurfaceCallback f17332h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ListenerSet f17333i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FlushCommandQueueHandler f17334j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArraySet f17335k;
    public final SparseArray l;
    public final Handler m;
    public final boolean n;
    public SessionToken o;
    public SessionServiceConnection p;
    public boolean q;
    public PendingIntent s;
    public Player.Commands y;
    public Player.Commands z;
    public PlayerInfo r = PlayerInfo.H;
    public Size E = Size.f14197c;
    public SessionCommands x = SessionCommands.f17542b;
    public ImmutableList t = ImmutableList.x();
    public ImmutableList u = ImmutableList.x();
    public ImmutableList v = ImmutableList.x();
    public ImmutableList w = ImmutableList.x();

    public class FlushCommandQueueHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f17336a;

        public FlushCommandQueueHandler(Looper looper) {
            this.f17336a = new Handler(looper, new e0(this, 0));
        }

        public final void a() {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            IMediaSession iMediaSession = mediaControllerImplBase.F;
            if (iMediaSession == null || !iMediaSession.asBinder().isBinderAlive()) {
                return;
            }
            try {
                mediaControllerImplBase.F.L1(mediaControllerImplBase.f17329c);
            } catch (RemoteException e2) {
                Log.h("Error in sending flushCommandQueue", e2);
            }
        }
    }

    public static final class PeriodInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17338a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f17339b;

        public PeriodInfo(int i2, long j2) {
            this.f17338a = i2;
            this.f17339b = j2;
        }
    }

    public interface RemoteSessionTask {
        void d(IMediaSession iMediaSession, int i2);
    }

    public class SessionServiceConnection implements ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bundle f17340b;

        public SessionServiceConnection(Bundle bundle) {
            this.f17340b = bundle;
        }

        @Override // android.content.ServiceConnection
        public final void onBindingDied(ComponentName componentName) {
            MediaController mediaController = MediaControllerImplBase.this.f17327a;
            Objects.requireNonNull(mediaController);
            mediaController.Y0(new et(mediaController, 25));
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            int i2 = 25;
            try {
                try {
                    SessionToken sessionToken = mediaControllerImplBase.f17330e;
                    MediaController mediaController = mediaControllerImplBase.f17327a;
                    if (!sessionToken.f17568a.c().equals(componentName.getPackageName())) {
                        Log.d("Expected connection to " + mediaControllerImplBase.f17330e.f17568a.c() + " but is connected to " + componentName);
                        Objects.requireNonNull(mediaController);
                        mediaController.Y0(new et(mediaController, i2));
                        return;
                    }
                    IMediaSessionService iMediaSessionServiceE2 = IMediaSessionService.Stub.E2(iBinder);
                    if (iMediaSessionServiceE2 == null) {
                        Log.d("Service interface is missing.");
                        Objects.requireNonNull(mediaController);
                        mediaController.Y0(new et(mediaController, i2));
                    } else {
                        String packageName = mediaControllerImplBase.d.getPackageName();
                        int iMyPid = Process.myPid();
                        Bundle bundle = this.f17340b;
                        mediaController.getClass();
                        iMediaSessionServiceE2.e1(mediaControllerImplBase.f17329c, new ConnectionRequest(packageName, iMyPid, bundle, 0).b());
                    }
                } catch (RemoteException unused) {
                    Log.g("Service " + componentName + " has died prematurely");
                    MediaController mediaController2 = mediaControllerImplBase.f17327a;
                    Objects.requireNonNull(mediaController2);
                    mediaController2.Y0(new et(mediaController2, i2));
                }
            } catch (Throwable th) {
                MediaController mediaController3 = mediaControllerImplBase.f17327a;
                Objects.requireNonNull(mediaController3);
                mediaController3.Y0(new et(mediaController3, i2));
                throw th;
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            MediaController mediaController = MediaControllerImplBase.this.f17327a;
            Objects.requireNonNull(mediaController);
            mediaController.Y0(new et(mediaController, 25));
        }
    }

    public class SurfaceCallback implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
        public SurfaceCallback() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            TextureView textureView = mediaControllerImplBase.D;
            if (textureView == null || textureView.getSurfaceTexture() != surfaceTexture) {
                return;
            }
            Surface surface = new Surface(surfaceTexture);
            mediaControllerImplBase.B = surface;
            mediaControllerImplBase.w1(surface, i2, i3);
            mediaControllerImplBase.m1(i2, i3);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            TextureView textureView = mediaControllerImplBase.D;
            if (textureView != null && textureView.getSurfaceTexture() == surfaceTexture) {
                mediaControllerImplBase.B = null;
                mediaControllerImplBase.w1(null, 0, 0);
                mediaControllerImplBase.m1(0, 0);
            }
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            TextureView textureView = mediaControllerImplBase.D;
            if (textureView != null && textureView.getSurfaceTexture() == surfaceTexture && mediaControllerImplBase.isConnected()) {
                if (mediaControllerImplBase.d1() >= 8) {
                    mediaControllerImplBase.X0(new f0(this, i2, i3, 1));
                }
                mediaControllerImplBase.m1(i2, i3);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            if (mediaControllerImplBase.C == surfaceHolder && mediaControllerImplBase.isConnected()) {
                if (mediaControllerImplBase.d1() >= 8) {
                    mediaControllerImplBase.X0(new f0(this, i3, i4, 0));
                }
                mediaControllerImplBase.m1(i3, i4);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            if (mediaControllerImplBase.C != surfaceHolder) {
                return;
            }
            mediaControllerImplBase.B = surfaceHolder.getSurface();
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            mediaControllerImplBase.w1(mediaControllerImplBase.B, surfaceFrame.width(), surfaceFrame.height());
            mediaControllerImplBase.m1(surfaceFrame.width(), surfaceFrame.height());
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            MediaControllerImplBase mediaControllerImplBase = MediaControllerImplBase.this;
            if (mediaControllerImplBase.C != surfaceHolder) {
                return;
            }
            mediaControllerImplBase.B = null;
            mediaControllerImplBase.w1(null, 0, 0);
            mediaControllerImplBase.m1(0, 0);
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.media3.session.y] */
    public MediaControllerImplBase(Context context, MediaController mediaController, SessionToken sessionToken, Bundle bundle, Looper looper, boolean z) {
        this.n = z;
        Player.Commands commands = Player.Commands.f13922b;
        this.y = commands;
        this.z = commands;
        this.A = T0(commands, commands);
        this.f17333i = new ListenerSet(looper, Clock.f14143a, new o(this, 4));
        this.m = new Handler(looper);
        this.f17327a = mediaController;
        Preconditions.m(context, "context must not be null");
        Preconditions.m(sessionToken, "token must not be null");
        this.d = context;
        this.f17328b = new SequencedFutureManager();
        this.f17329c = new MediaControllerStub(this);
        this.f17335k = new ArraySet();
        this.f17330e = sessionToken;
        this.f17331f = bundle;
        this.g = new IBinder.DeathRecipient() { // from class: androidx.media3.session.y
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                MediaController mediaController2 = this.f17944a.f17327a;
                Objects.requireNonNull(mediaController2);
                mediaController2.Y0(new et(mediaController2, 25));
            }
        };
        this.f17332h = new SurfaceCallback();
        this.K = Bundle.EMPTY;
        this.p = sessionToken.f17568a.getType() == 0 ? null : new SessionServiceConnection(bundle);
        this.f17334j = new FlushCommandQueueHandler(looper);
        this.H = -9223372036854775807L;
        this.I = -9223372036854775807L;
        this.l = new SparseArray();
    }

    public static Timeline.RemotableTimeline U0(ArrayList arrayList, ArrayList arrayList2) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.g(arrayList);
        ImmutableList immutableListJ = builder.j();
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        builder2.g(arrayList2);
        ImmutableList immutableListJ2 = builder2.j();
        int size = arrayList.size();
        MediaBrowserServiceCompat.BrowserRoot browserRoot = MediaUtils.f17489a;
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = i2;
        }
        return new Timeline.RemotableTimeline(immutableListJ, immutableListJ2, iArr);
    }

    public static int Z0(PlayerInfo playerInfo) {
        return playerInfo.f17497c.f17552a.f13931b;
    }

    public static PlayerInfo f1(PlayerInfo playerInfo, int i2, List list, long j2, long j3) {
        int size;
        Timeline timeline = playerInfo.f17502j;
        SessionPositionInfo sessionPositionInfo = playerInfo.f17497c;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size2 = 0;
        for (int i3 = 0; i3 < timeline.o(); i3++) {
            arrayList.add(timeline.m(i3, new Timeline.Window(), 0L));
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            MediaItem mediaItem = (MediaItem) list.get(i4);
            Timeline.Window window = new Timeline.Window();
            window.b(0, mediaItem, null, 0L, 0L, 0L, true, false, null, 0L, -9223372036854775807L, -1, -1, 0L);
            arrayList.add(i4 + i2, window);
        }
        n1(timeline, arrayList, arrayList2);
        Timeline.RemotableTimeline remotableTimelineU0 = U0(arrayList, arrayList2);
        if (playerInfo.f17502j.p()) {
            size = 0;
        } else {
            int i5 = sessionPositionInfo.f17552a.f13931b;
            size2 = i5 >= i2 ? list.size() + i5 : i5;
            int i6 = sessionPositionInfo.f17552a.f13933e;
            size = i6 >= i2 ? list.size() + i6 : i6;
        }
        return h1(playerInfo, remotableTimelineU0, size2, size, j2, j3, 5);
    }

    public static PlayerInfo g1(PlayerInfo playerInfo, int i2, int i3, boolean z, long j2, long j3) {
        int i4;
        int iA;
        int i5;
        PlayerInfo playerInfoH1;
        Timeline timeline = playerInfo.f17502j;
        boolean z2 = playerInfo.f17501i;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i6 = 0;
        for (int i7 = 0; i7 < timeline.o(); i7++) {
            if (i7 < i2 || i7 >= i3) {
                arrayList.add(timeline.m(i7, new Timeline.Window(), 0L));
            }
        }
        n1(timeline, arrayList, arrayList2);
        Timeline.RemotableTimeline remotableTimelineU0 = U0(arrayList, arrayList2);
        Player.PositionInfo positionInfo = playerInfo.f17497c.f17552a;
        int i8 = positionInfo.f13931b;
        int i9 = positionInfo.f13933e;
        Timeline.Window window = new Timeline.Window();
        boolean z3 = i8 >= i2 && i8 < i3;
        if (remotableTimelineU0.p()) {
            i9 = 0;
            iA = -1;
            i4 = 1;
        } else {
            if (z3) {
                int i10 = playerInfo.f17500h;
                int iO = timeline.o();
                iA = i8;
                i4 = 1;
                while (true) {
                    if (i6 < iO) {
                        iA = timeline.e(iA, i10, z2);
                        if (iA != -1) {
                            if (iA < i2 || iA >= i3) {
                                break;
                            }
                            i6++;
                        }
                    }
                    iA = -1;
                    break;
                }
                if (iA == -1) {
                    iA = remotableTimelineU0.a(z2);
                } else if (iA >= i3) {
                    iA -= i3 - i2;
                }
                remotableTimelineU0.m(iA, window, 0L);
                i5 = window.n;
            } else {
                i4 = 1;
                if (i8 >= i3) {
                    iA = i8 - (i3 - i2);
                    if (i9 != -1) {
                        for (int i11 = i2; i11 < i3; i11++) {
                            Timeline.Window window2 = new Timeline.Window();
                            timeline.n(i11, window2);
                            i9 -= (window2.o - window2.n) + 1;
                        }
                    }
                    i5 = i9;
                } else {
                    iA = i8;
                }
            }
            i9 = i5;
        }
        if (!z3) {
            playerInfoH1 = h1(playerInfo, remotableTimelineU0, iA, i9, j2, j3, 4);
        } else if (iA == -1) {
            playerInfoH1 = i1(playerInfo, remotableTimelineU0, SessionPositionInfo.f17551k, SessionPositionInfo.l, 4);
        } else if (z) {
            playerInfoH1 = h1(playerInfo, remotableTimelineU0, iA, i9, j2, j3, 4);
        } else {
            int i12 = iA;
            Timeline.Window window3 = new Timeline.Window();
            remotableTimelineU0.m(i12, window3, 0L);
            long jF0 = Util.f0(window3.l);
            long jF1 = Util.f0(window3.m);
            Player.PositionInfo positionInfo2 = new Player.PositionInfo(null, i12, window3.f13969c, null, i9, jF0, jF0, -1, -1);
            playerInfoH1 = i1(playerInfo, remotableTimelineU0, positionInfo2, new SessionPositionInfo(positionInfo2, false, SystemClock.elapsedRealtime(), jF1, jF0, MediaUtils.b(jF0, jF1), 0L, -9223372036854775807L, jF1, jF0), 4);
        }
        int i13 = playerInfoH1.A;
        return (i13 == i4 || i13 == 4 || i2 >= i3 || i3 != timeline.o() || i8 < i2) ? playerInfoH1 : playerInfoH1.d(4, null);
    }

    public static PlayerInfo h1(PlayerInfo playerInfo, Timeline.RemotableTimeline remotableTimeline, int i2, int i3, long j2, long j3, int i4) {
        Timeline.Window window = new Timeline.Window();
        remotableTimeline.m(i2, window, 0L);
        MediaItem mediaItem = window.f13969c;
        Player.PositionInfo positionInfo = playerInfo.f17497c.f17552a;
        Player.PositionInfo positionInfo2 = new Player.PositionInfo(null, i2, mediaItem, null, i3, j2, j3, positionInfo.f13935h, positionInfo.f13936i);
        SessionPositionInfo sessionPositionInfo = playerInfo.f17497c;
        return i1(playerInfo, remotableTimeline, positionInfo2, new SessionPositionInfo(positionInfo2, sessionPositionInfo.f17553b, SystemClock.elapsedRealtime(), sessionPositionInfo.d, sessionPositionInfo.f17555e, sessionPositionInfo.f17556f, sessionPositionInfo.g, sessionPositionInfo.f17557h, sessionPositionInfo.f17558i, sessionPositionInfo.f17559j), i4);
    }

    public static PlayerInfo i1(PlayerInfo playerInfo, Timeline timeline, Player.PositionInfo positionInfo, SessionPositionInfo sessionPositionInfo, int i2) {
        PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
        builder.f17511j = timeline;
        builder.d = playerInfo.f17497c.f17552a;
        builder.f17507e = positionInfo;
        builder.f17506c = sessionPositionInfo;
        builder.f17508f = i2;
        return builder.a();
    }

    public static void n1(Timeline timeline, ArrayList arrayList, ArrayList arrayList2) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Timeline.Window window = (Timeline.Window) arrayList.get(i2);
            int i3 = window.n;
            int i4 = window.o;
            if (i3 == -1 || i4 == -1) {
                window.n = arrayList2.size();
                window.o = arrayList2.size();
                Timeline.Period period = new Timeline.Period();
                period.i(null, null, i2, -9223372036854775807L, 0L, AdPlaybackState.g, true);
                arrayList2.add(period);
            } else {
                window.n = arrayList2.size();
                window.o = (i4 - i3) + arrayList2.size();
                while (i3 <= i4) {
                    Timeline.Period period2 = new Timeline.Period();
                    timeline.f(i3, period2, false);
                    period2.f13961c = i2;
                    arrayList2.add(period2);
                    i3++;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    public static ImmutableList q1(List list, List list2, Bundle bundle, SessionCommands sessionCommands, Player.Commands commands, int i2) {
        boolean z;
        if (!list2.isEmpty()) {
            return CommandButton.g(list2, sessionCommands, commands);
        }
        boolean z2 = false;
        if (bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS")) {
            z = false;
        } else {
            if (commands.f13924a.a(6, 7)) {
                z = false;
            } else {
                z = true;
            }
        }
        if (!bundle.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
            if (!commands.f13924a.a(8, 9)) {
                z2 = true;
            }
        }
        return CommandButton.j(list, z, z2, i2);
    }

    public static ImmutableList r1(List list, List list2, SessionCommands sessionCommands, Player.Commands commands, Bundle bundle) {
        if (list.isEmpty()) {
            list = CommandButton.k(list2, commands, bundle);
        }
        return CommandButton.g(list, sessionCommands, commands);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final MediaMetadata A() {
        return this.r.B;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void A0(int i2, List list) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0);
            W0(new n(this, i2, list, 1));
            Q0(i2, list);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void B(Surface surface) {
        if (e1(27)) {
            R0();
            this.B = surface;
            int i2 = surface == null ? 0 : -1;
            w1(surface, i2, i2);
            m1(i2, i2);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long B0() {
        return this.r.f17497c.f17555e;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long C() {
        return this.r.f17497c.g;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final MediaMetadata C0() {
        return this.r.m;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void D() {
        if (e1(20)) {
            W0(new o(this, 6));
            o1(0, Integer.MAX_VALUE);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void D0(final MediaItem mediaItem, final long j2) {
        if (e1(31)) {
            W0(new RemoteSessionTask() { // from class: androidx.media3.session.p
                @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
                public final void d(IMediaSession iMediaSession, int i2) {
                    MediaControllerImplBase mediaControllerImplBase = this.f17885b;
                    iMediaSession.x0(mediaControllerImplBase.f17329c, i2, mediaItem.c(mediaControllerImplBase.d1(), true), j2);
                }
            });
            u1(Collections.singletonList(mediaItem), -1, j2, false);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int E() {
        return this.r.f17497c.f17556f;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void E0(int i2) {
        if (e1(15)) {
            W0(new r(this, i2, 7));
            PlayerInfo playerInfo = this.r;
            if (playerInfo.f17500h != i2) {
                PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
                builder.f17509h = i2;
                this.r = builder.a();
                ms msVar = new ms(i2, 3);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(8, msVar);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void F() {
        if (e1(6)) {
            W0(new o(this, 0));
            if (c1() != -1) {
                s1(c1(), -9223372036854775807L);
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void F0(TrackSelectionParameters trackSelectionParameters) {
        if (e1(29)) {
            W0(new s(this, trackSelectionParameters, 3));
            PlayerInfo playerInfo = this.r;
            if (trackSelectionParameters != playerInfo.G) {
                PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
                builder.G = trackSelectionParameters;
                this.r = builder.a();
                fw fwVar = new fw(trackSelectionParameters, 23);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(19, fwVar);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void G(final int i2, final boolean z) {
        if (e1(34)) {
            W0(new RemoteSessionTask() { // from class: androidx.media3.session.a0
                @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
                public final void d(IMediaSession iMediaSession, int i3) {
                    iMediaSession.w2(this.f17594b.f17329c, i3, z, i2);
                }
            });
            PlayerInfo playerInfo = this.r;
            if (playerInfo.u != z) {
                this.r = playerInfo.a(playerInfo.t, z);
                b0 b0Var = new b0(this, z, 0);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, b0Var);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void G0(SurfaceView surfaceView) {
        if (e1(27)) {
            SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
            if (e1(27) && holder != null && this.C == holder) {
                S0();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void H() {
        if (e1(26)) {
            W0(new o(this, 17));
            PlayerInfo playerInfo = this.r;
            int i2 = playerInfo.t - 1;
            if (i2 >= playerInfo.s.f13740b) {
                this.r = playerInfo.a(i2, playerInfo.u);
                r rVar = new r(this, i2, 10);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, rVar);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void H0(int i2, int i3) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0 && i3 >= 0);
            W0(new v(this, i2, i3, 2));
            j1(i2, i2 + 1, i3);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void I(int i2) {
        if (e1(34)) {
            W0(new r(this, i2, 5));
            PlayerInfo playerInfo = this.r;
            int i3 = playerInfo.t + 1;
            int i4 = playerInfo.s.f13741c;
            if (i4 == 0 || i3 <= i4) {
                this.r = playerInfo.a(i3, playerInfo.u);
                r rVar = new r(this, i3, 6);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, rVar);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void I0(final int i2, final int i3, final int i4) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0 && i2 <= i3 && i4 >= 0);
            W0(new RemoteSessionTask() { // from class: androidx.media3.session.c0
                @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
                public final void d(IMediaSession iMediaSession, int i5) {
                    iMediaSession.l1(this.f17619b.f17329c, i5, i2, i3, i4);
                }
            });
            j1(i2, i3, i4);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void J(SurfaceView surfaceView) {
        if (e1(27)) {
            O(surfaceView == null ? null : surfaceView.getHolder());
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void J0(List list) {
        if (e1(20)) {
            W0(new i(this, list, 0));
            Q0(this.r.f17502j.o(), list);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void K(int i2, int i3, List list) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0 && i2 <= i3);
            W0(new m(this, list, i2, i3, 0));
            p1(i2, i3, list);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean K0() {
        return this.r.u;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void L(MediaMetadata mediaMetadata) {
        if (e1(19)) {
            W0(new s(this, mediaMetadata, 1));
            if (this.r.m.equals(mediaMetadata)) {
                return;
            }
            PlayerInfo playerInfo = this.r;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.m = mediaMetadata;
            this.r = builderC.a();
            fw fwVar = new fw(mediaMetadata, 25);
            ListenerSet listenerSet = this.f17333i;
            listenerSet.c(15, fwVar);
            listenerSet.b();
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void L0(int i2) {
        if (e1(25)) {
            W0(new r(this, i2, 8));
            PlayerInfo playerInfo = this.r;
            DeviceInfo deviceInfo = playerInfo.s;
            if (playerInfo.t == i2 || deviceInfo.f13740b > i2) {
                return;
            }
            int i3 = deviceInfo.f13741c;
            if (i3 == 0 || i2 <= i3) {
                this.r = playerInfo.a(i2, playerInfo.u);
                r rVar = new r(this, i2, 9);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, rVar);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void M(int i2) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0);
            W0(new r(this, i2, 3));
            o1(i2, i2 + 1);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void M0(List list) {
        if (e1(20)) {
            W0(new i(this, list, 1));
            u1(list, -1, -9223372036854775807L, true);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void N(int i2, int i3) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0 && i3 >= i2);
            W0(new v(this, i2, i3, 0));
            o1(i2, i3);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long N0() {
        return this.r.C;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void O(SurfaceHolder surfaceHolder) {
        if (e1(27)) {
            if (surfaceHolder == null) {
                S0();
                return;
            }
            if (this.C == surfaceHolder) {
                return;
            }
            R0();
            this.C = surfaceHolder;
            surfaceHolder.addCallback(this.f17332h);
            Surface surface = surfaceHolder.getSurface();
            if (surface == null || !surface.isValid()) {
                this.B = null;
                w1(null, 0, 0);
                m1(0, 0);
            } else {
                this.B = surface;
                Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
                w1(surface, surfaceFrame.width(), surfaceFrame.height());
                m1(surfaceFrame.width(), surfaceFrame.height());
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final ImmutableList O0() {
        return this.v;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void P(boolean z) {
        if (e1(1)) {
            W0(new b0(this, z, 4));
            v1(z);
        } else if (z) {
            Log.g("Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground.");
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Bundle P0() {
        return this.f17331f;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void Q() {
        if (e1(24)) {
            float f2 = this.r.o;
            int i2 = 2;
            W0(new z(this, f2, i2));
            PlayerInfo playerInfo = this.r;
            float f3 = playerInfo.n;
            if (f3 == playerInfo.o || f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
            builder.o = f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 : builder.n;
            builder.n = f2;
            this.r = builder.a();
            sc scVar = new sc(f2, i2);
            ListenerSet listenerSet = this.f17333i;
            listenerSet.c(22, scVar);
            listenerSet.b();
        }
    }

    public final void Q0(int i2, List list) {
        if (list.isEmpty()) {
            return;
        }
        if (this.r.f17502j.p()) {
            u1(list, -1, -9223372036854775807L, false);
        } else {
            x1(f1(this.r, Math.min(i2, this.r.f17502j.o()), list, getCurrentPosition(), u()), 0, null, null, this.r.f17502j.p() ? 3 : null);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void R(MediaItem mediaItem) {
        if (e1(31)) {
            W0(new u(this, mediaItem, 0));
            u1(Collections.singletonList(mediaItem), -1, -9223372036854775807L, true);
        }
    }

    public final void R0() {
        TextureView textureView = this.D;
        if (textureView != null) {
            textureView.setSurfaceTextureListener(null);
            this.D = null;
        }
        SurfaceHolder surfaceHolder = this.C;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f17332h);
            this.C = null;
        }
        if (this.B != null) {
            this.B = null;
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void S() {
        if (e1(8)) {
            W0(new o(this, 16));
            if (a1() != -1) {
                s1(a1(), -9223372036854775807L);
            }
        }
    }

    public final void S0() {
        if (e1(27)) {
            R0();
            w1(null, 0, 0);
            m1(0, 0);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void T(int i2) {
        if (e1(34)) {
            W0(new r(this, i2, 0));
            PlayerInfo playerInfo = this.r;
            int i3 = 1;
            int i4 = playerInfo.t - 1;
            if (i4 >= playerInfo.s.f13740b) {
                this.r = playerInfo.a(i4, playerInfo.u);
                r rVar = new r(this, i4, i3);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, rVar);
                listenerSet.b();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        if (r7.f13924a.a(25, 33, 26, 34) == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media3.common.Player.Commands T0(androidx.media3.common.Player.Commands r7, androidx.media3.common.Player.Commands r8) {
        /*
            r6 = this;
            androidx.media3.common.Player$Commands r7 = androidx.media3.session.MediaUtils.d(r7, r8)
            androidx.media3.session.PlayerInfo r8 = r6.r
            androidx.media3.common.DeviceInfo r8 = r8.s
            int r8 = r8.f13739a
            if (r8 != 0) goto L12
            boolean r6 = r6.n
            if (r6 != 0) goto L12
            r6 = 1
            goto L13
        L12:
            r6 = 0
        L13:
            r8 = 32
            boolean r0 = r7.a(r8)
            r1 = 34
            r2 = 26
            r3 = 33
            r4 = 25
            if (r0 == 0) goto L32
            if (r6 == 0) goto L31
            int[] r0 = new int[]{r4, r3, r2, r1}
            androidx.media3.common.FlagSet r5 = r7.f13924a
            boolean r0 = r5.a(r0)
            if (r0 != 0) goto L32
        L31:
            return r7
        L32:
            androidx.media3.common.Player$Commands$Builder r0 = new androidx.media3.common.Player$Commands$Builder
            r0.<init>(r7)
            androidx.media3.common.FlagSet$Builder r7 = r0.f13926a
            r7.a(r8)
            r0.d(r4, r6)
            r0.d(r3, r6)
            r0.d(r2, r6)
            r0.d(r1, r6)
            androidx.media3.common.Player$Commands r6 = r0.c()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.session.MediaControllerImplBase.T0(androidx.media3.common.Player$Commands, androidx.media3.common.Player$Commands):androidx.media3.common.Player$Commands");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean U() {
        return a1() != -1;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void V(Player.Listener listener) {
        this.f17333i.e(listener);
    }

    public final ListenableFuture V0(IMediaSession iMediaSession, RemoteSessionTask remoteSessionTask, boolean z) {
        android.media.session.MediaController mediaController;
        if (iMediaSession == null) {
            return Futures.g(new SessionResult(-4));
        }
        if (Build.VERSION.SDK_INT >= 31 && (mediaController = this.G) != null) {
            mediaController.getTransportControls().sendCustomAction("androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST", (Bundle) null);
        }
        SessionResult sessionResult = new SessionResult(1);
        SequencedFutureManager sequencedFutureManager = this.f17328b;
        SequencedFutureManager.SequencedFuture sequencedFutureA = sequencedFutureManager.a(sessionResult);
        int i2 = sequencedFutureA.f17534b;
        ArraySet arraySet = this.f17335k;
        if (z) {
            if (arraySet.isEmpty()) {
                this.J = this.r;
            }
            arraySet.add(Integer.valueOf(i2));
        }
        try {
            remoteSessionTask.d(iMediaSession, i2);
            return sequencedFutureA;
        } catch (RemoteException e2) {
            Log.h("Cannot connect to the service or the session is gone", e2);
            arraySet.remove(Integer.valueOf(i2));
            sequencedFutureManager.d(i2, new SessionResult(-100));
            return sequencedFutureA;
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int W() {
        return this.r.f17497c.f17552a.f13935h;
    }

    public final void W0(RemoteSessionTask remoteSessionTask) {
        FlushCommandQueueHandler flushCommandQueueHandler = this.f17334j;
        Handler handler = flushCommandQueueHandler.f17336a;
        if (MediaControllerImplBase.this.F != null && !handler.hasMessages(1)) {
            handler.sendEmptyMessage(1);
        }
        V0(this.F, remoteSessionTask, true);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void X(boolean z) {
        if (e1(26)) {
            W0(new b0(this, z, 2));
            PlayerInfo playerInfo = this.r;
            if (playerInfo.u != z) {
                this.r = playerInfo.a(playerInfo.t, z);
                b0 b0Var = new b0(this, z, 3);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, b0Var);
                listenerSet.b();
            }
        }
    }

    public final void X0(RemoteSessionTask remoteSessionTask) {
        FlushCommandQueueHandler flushCommandQueueHandler = this.f17334j;
        Handler handler = flushCommandQueueHandler.f17336a;
        if (MediaControllerImplBase.this.F != null && !handler.hasMessages(1)) {
            handler.sendEmptyMessage(1);
        }
        ListenableFuture listenableFutureV0 = V0(this.F, remoteSessionTask, true);
        try {
            LegacyConversions.v(listenableFutureV0);
        } catch (ExecutionException e2) {
            bm.i(e2);
        } catch (TimeoutException e3) {
            if (listenableFutureV0 instanceof SequencedFutureManager.SequencedFuture) {
                int i2 = ((SequencedFutureManager.SequencedFuture) listenableFutureV0).f17534b;
                this.f17335k.remove(Integer.valueOf(i2));
                this.f17328b.d(i2, new SessionResult(-1));
            }
            Log.h("Synchronous command takes too long on the session side.", e3);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void Y(Player.Listener listener) {
        this.f17333i.a(listener);
    }

    public final ListenableFuture Y0(SessionCommand sessionCommand, RemoteSessionTask remoteSessionTask) {
        IMediaSession iMediaSession;
        int i2 = sessionCommand.f17539a;
        String str = sessionCommand.f17540b;
        Preconditions.g(i2 == 0);
        if (this.x.f17544a.contains(sessionCommand) || CommandButton.n(str)) {
            iMediaSession = this.F;
        } else {
            Log.g("Controller isn't allowed to call custom session command:".concat(str));
            iMediaSession = null;
        }
        return V0(iMediaSession, remoteSessionTask, false);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int Z() {
        return this.r.z;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final PlaybackParameters a() {
        return this.r.g;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final ListenableFuture a0(final SessionCommand sessionCommand, final Bundle bundle) {
        if (d1() < 7) {
            final int i2 = 1;
            return Y0(sessionCommand, new RemoteSessionTask(this) { // from class: androidx.media3.session.l

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ MediaControllerImplBase f17692c;

                {
                    this.f17692c = this;
                }

                @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
                public final void d(IMediaSession iMediaSession, int i3) {
                    int i4 = i2;
                    SessionCommand sessionCommand2 = sessionCommand;
                    MediaControllerImplBase mediaControllerImplBase = this.f17692c;
                    switch (i4) {
                        case 0:
                            iMediaSession.X1(mediaControllerImplBase.f17329c, i3, sessionCommand2.b(), bundle, false);
                            break;
                        default:
                            iMediaSession.y2(mediaControllerImplBase.f17329c, i3, sessionCommand2.b(), bundle);
                            break;
                    }
                }
            });
        }
        if (d1() < 7) {
            return a0(sessionCommand, bundle);
        }
        final int i3 = 0;
        return Y0(sessionCommand, new RemoteSessionTask(this) { // from class: androidx.media3.session.l

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MediaControllerImplBase f17692c;

            {
                this.f17692c = this;
            }

            @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
            public final void d(IMediaSession iMediaSession, int i4) {
                int i5 = i3;
                SessionCommand sessionCommand2 = sessionCommand;
                MediaControllerImplBase mediaControllerImplBase = this.f17692c;
                switch (i5) {
                    case 0:
                        iMediaSession.X1(mediaControllerImplBase.f17329c, i4, sessionCommand2.b(), bundle, false);
                        break;
                    default:
                        iMediaSession.y2(mediaControllerImplBase.f17329c, i4, sessionCommand2.b(), bundle);
                        break;
                }
            }
        });
    }

    public final int a1() {
        if (this.r.f17502j.p()) {
            return -1;
        }
        PlayerInfo playerInfo = this.r;
        Timeline timeline = playerInfo.f17502j;
        int iZ0 = Z0(playerInfo);
        PlayerInfo playerInfo2 = this.r;
        int i2 = playerInfo2.f17500h;
        if (i2 == 1) {
            i2 = 0;
        }
        return timeline.e(iZ0, i2, playerInfo2.f17501i);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final SessionCommands b() {
        return this.x;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void b0() {
        if (e1(24)) {
            W0(new o(this, 15));
            PlayerInfo playerInfo = this.r;
            if (playerInfo.n != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
                builder.o = builder.n;
                builder.n = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                this.r = builder.a();
                lc0 lc0Var = new lc0(3);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(22, lc0Var);
                listenerSet.b();
            }
        }
    }

    public final PeriodInfo b1(Timeline timeline, int i2, long j2) {
        if (timeline.p()) {
            return null;
        }
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        if (i2 == -1 || i2 >= timeline.o()) {
            i2 = timeline.a(this.r.f17501i);
            j2 = Util.f0(timeline.m(i2, window, 0L).l);
        }
        long jR = Util.R(j2);
        Preconditions.j(i2, timeline.o());
        timeline.n(i2, window);
        if (jR == -9223372036854775807L) {
            jR = window.l;
            if (jR == -9223372036854775807L) {
                return null;
            }
        }
        int i3 = window.n;
        timeline.f(i3, period, false);
        while (i3 < window.o && period.f13962e != jR) {
            int i4 = i3 + 1;
            if (timeline.f(i4, period, false).f13962e > jR) {
                break;
            }
            i3 = i4;
        }
        timeline.f(i3, period, false);
        return new PeriodInfo(i3, jR - period.f13962e);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void c() {
        if (!e1(1)) {
            Log.g("Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground.");
        } else {
            W0(new o(this, 10));
            v1(true);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void c0() {
        if (e1(26)) {
            W0(new o(this, 9));
            PlayerInfo playerInfo = this.r;
            int i2 = playerInfo.t + 1;
            int i3 = playerInfo.s.f13741c;
            if (i3 == 0 || i2 <= i3) {
                this.r = playerInfo.a(i2, playerInfo.u);
                r rVar = new r(this, i2, 4);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, rVar);
                listenerSet.b();
            }
        }
    }

    public final int c1() {
        if (this.r.f17502j.p()) {
            return -1;
        }
        PlayerInfo playerInfo = this.r;
        Timeline timeline = playerInfo.f17502j;
        int iZ0 = Z0(playerInfo);
        PlayerInfo playerInfo2 = this.r;
        int i2 = playerInfo2.f17500h;
        if (i2 == 1) {
            i2 = 0;
        }
        return timeline.k(iZ0, i2, playerInfo2.f17501i);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void connect() {
        IMediaSession iMediaSession;
        SessionToken sessionToken = this.f17330e;
        SessionToken.SessionTokenImpl sessionTokenImpl = sessionToken.f17568a;
        SessionToken.SessionTokenImpl sessionTokenImpl2 = sessionToken.f17568a;
        int type = sessionTokenImpl.getType();
        MediaController mediaController = this.f17327a;
        Context context = this.d;
        Bundle bundle = this.f17331f;
        if (type == 0) {
            this.p = null;
            Object objB = sessionTokenImpl2.b();
            objB.getClass();
            IBinder iBinder = (IBinder) objB;
            int i2 = IMediaSession.Stub.f17300a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.media3.session.IMediaSession");
            if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaSession)) {
                IMediaSession.Stub.Proxy proxy = new IMediaSession.Stub.Proxy();
                proxy.f17301a = iBinder;
                iMediaSession = proxy;
            } else {
                iMediaSession = (IMediaSession) iInterfaceQueryLocalInterface;
            }
            int iB = this.f17328b.b();
            String packageName = context.getPackageName();
            int iMyPid = Process.myPid();
            mediaController.getClass();
            try {
                iMediaSession.k0(this.f17329c, iB, new ConnectionRequest(packageName, iMyPid, bundle, 0).b());
                return;
            } catch (RemoteException e2) {
                Log.h("Failed to call connection request.", e2);
            }
        } else {
            this.p = new SessionServiceConnection(bundle);
            Intent intent = new Intent("androidx.media3.session.MediaSessionService");
            intent.setClassName(sessionTokenImpl2.c(), sessionTokenImpl2.getServiceName());
            try {
                if (context.bindService(intent, this.p, 4097)) {
                    return;
                }
                Log.g("bind to " + sessionToken + " failed");
            } catch (SecurityException e3) {
                Log.h("bind to " + sessionToken + " not allowed", e3);
            }
        }
        Objects.requireNonNull(mediaController);
        mediaController.Y0(new et(mediaController, 25));
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void d(PlaybackParameters playbackParameters) {
        if (e1(13)) {
            W0(new s(this, playbackParameters, 0));
            if (this.r.g.equals(playbackParameters)) {
                return;
            }
            this.r = this.r.c(playbackParameters);
            oc0 oc0Var = new oc0(playbackParameters, 0);
            ListenerSet listenerSet = this.f17333i;
            listenerSet.c(12, oc0Var);
            listenerSet.b();
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final TrackSelectionParameters d0() {
        return this.r.G;
    }

    public final int d1() {
        SessionToken sessionToken = this.o;
        sessionToken.getClass();
        return sessionToken.f17568a.d();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final PlaybackException e() {
        return this.r.f17495a;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void e0(TextureView textureView) {
        if (e1(27)) {
            if (textureView == null) {
                S0();
                return;
            }
            if (this.D == textureView) {
                return;
            }
            R0();
            this.D = textureView;
            textureView.setSurfaceTextureListener(this.f17332h);
            SurfaceTexture surfaceTexture = textureView.getSurfaceTexture();
            if (surfaceTexture == null) {
                w1(null, 0, 0);
                m1(0, 0);
            } else {
                Surface surface = new Surface(surfaceTexture);
                this.B = surface;
                w1(surface, textureView.getWidth(), textureView.getHeight());
                m1(textureView.getWidth(), textureView.getHeight());
            }
        }
    }

    public final boolean e1(int i2) {
        if (this.A.a(i2)) {
            return true;
        }
        defpackage.a.u(i2, "Controller isn't allowed to call command= ");
        return false;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void f() {
        if (e1(2)) {
            W0(new o(this, 12));
            PlayerInfo playerInfo = this.r;
            if (playerInfo.A == 1) {
                x1(playerInfo.d(playerInfo.f17502j.p() ? 4 : 2, null), null, null, null, null);
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int f0() {
        return this.r.t;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void g(float f2) {
        if (e1(24)) {
            int i2 = 1;
            W0(new z(this, f2, i2));
            PlayerInfo playerInfo = this.r;
            if (playerInfo.n != f2) {
                PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
                builder.o = f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 : builder.n;
                builder.n = f2;
                this.r = builder.a();
                sc scVar = new sc(f2, i2);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(22, scVar);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long g0() {
        return this.r.f17497c.f17557h;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long getCurrentPosition() {
        long jC = MediaUtils.c(this.r, this.H, this.I, this.f17327a.f17317f);
        this.H = jC;
        return jC;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long getDuration() {
        return this.r.f17497c.d;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int h() {
        return this.r.A;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void h0(int i2, long j2) {
        if (e1(10)) {
            Preconditions.g(i2 >= 0);
            W0(new d0(this, j2, i2));
            s1(i2, j2);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int i() {
        return this.r.f17500h;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Player.Commands i0() {
        return this.A;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean isConnected() {
        return this.F != null;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean isPlaying() {
        return this.r.x;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean j() {
        return this.r.f17497c.f17553b;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void j0(boolean z) {
        if (e1(14)) {
            W0(new b0(this, z, 1));
            PlayerInfo playerInfo = this.r;
            if (playerInfo.f17501i != z) {
                PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfo);
                builder.f17510i = z;
                this.r = builder.a();
                wm wmVar = new wm(z, 3);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(9, wmVar);
                listenerSet.b();
            }
        }
    }

    public final void j1(int i2, int i3, int i4) {
        int i5;
        int i6;
        Timeline timeline = this.r.f17502j;
        int iO = timeline.o();
        int iMin = Math.min(i3, iO);
        int i7 = iMin - i2;
        int iMin2 = Math.min(i4, iO - i7);
        if (i2 >= iO || i2 == iMin || i2 == iMin2) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i8 = 0; i8 < iO; i8++) {
            arrayList.add(timeline.m(i8, new Timeline.Window(), 0L));
        }
        Util.Q(arrayList, i2, iMin, iMin2);
        n1(timeline, arrayList, arrayList2);
        Timeline.RemotableTimeline remotableTimelineU0 = U0(arrayList, arrayList2);
        if (remotableTimelineU0.p()) {
            return;
        }
        int iZ0 = Z0(this.r);
        if (iZ0 >= i2 && iZ0 < iMin) {
            i6 = (iZ0 - i2) + iMin2;
        } else {
            if (iMin > iZ0 || iMin2 <= iZ0) {
                if (iMin <= iZ0 || iMin2 > iZ0) {
                    i5 = iZ0;
                } else {
                    i6 = iZ0 + i7;
                }
                Timeline.Window window = new Timeline.Window();
                int i9 = this.r.f17497c.f17552a.f13933e - timeline.m(iZ0, window, 0L).n;
                remotableTimelineU0.m(i5, window, 0L);
                x1(h1(this.r, remotableTimelineU0, i5, window.n + i9, getCurrentPosition(), u(), 5), 0, null, null, null);
            }
            i6 = iZ0 - i7;
        }
        i5 = i6;
        Timeline.Window window2 = new Timeline.Window();
        int i10 = this.r.f17497c.f17552a.f13933e - timeline.m(iZ0, window2, 0L).n;
        remotableTimelineU0.m(i5, window2, 0L);
        x1(h1(this.r, remotableTimelineU0, i5, window2.n + i10, getCurrentPosition(), u(), 5), 0, null, null, null);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void k() {
        if (e1(4)) {
            W0(new o(this, 3));
            s1(Z0(this.r), -9223372036854775807L);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long k0() {
        return this.r.E;
    }

    public final void k1(PlayerInfo playerInfo, final PlayerInfo playerInfo2, final Integer num, final Integer num2, final Integer num3, Integer num4) {
        final int i2 = 0;
        ListenerSet listenerSet = this.f17333i;
        if (num != null) {
            listenerSet.c(0, new ListenerSet.Event() { // from class: androidx.media3.session.w
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i3 = i2;
                    Integer num5 = num;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i3) {
                        case 0:
                            listener.m0(playerInfo3.f17502j, num5.intValue());
                            break;
                        case 1:
                            listener.d0(num5.intValue(), playerInfo3.d, playerInfo3.f17498e);
                            break;
                        default:
                            listener.g0(num5.intValue(), playerInfo3.v);
                            break;
                    }
                }
            });
        }
        final int i3 = 11;
        final int i4 = 1;
        if (num3 != null) {
            listenerSet.c(11, new ListenerSet.Event() { // from class: androidx.media3.session.w
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i5 = i4;
                    Integer num5 = num3;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i5) {
                        case 0:
                            listener.m0(playerInfo3.f17502j, num5.intValue());
                            break;
                        case 1:
                            listener.d0(num5.intValue(), playerInfo3.d, playerInfo3.f17498e);
                            break;
                        default:
                            listener.g0(num5.intValue(), playerInfo3.v);
                            break;
                    }
                }
            });
        }
        MediaItem mediaItemI = playerInfo2.i();
        int i5 = 16;
        if (num4 != null) {
            listenerSet.c(1, new p3(mediaItemI, num4, i5));
        }
        PlaybackException playbackException = playerInfo.f17495a;
        PlaybackException playbackException2 = playerInfo2.f17495a;
        final int i6 = 2;
        final int i7 = 10;
        if (playbackException != playbackException2 && (playbackException == null || !playbackException.a(playbackException2))) {
            listenerSet.c(10, new ls(i4, playbackException2));
            if (playbackException2 != null) {
                listenerSet.c(10, new ls(i6, playbackException2));
            }
        }
        final int i8 = 18;
        if (!playerInfo.F.equals(playerInfo2.F)) {
            listenerSet.c(2, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i9 = i8;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i9) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i9 = 19;
        if (!playerInfo.B.equals(playerInfo2.B)) {
            listenerSet.c(14, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i10 = i9;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i10) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i10 = 20;
        final int i11 = 3;
        if (playerInfo.y != playerInfo2.y) {
            listenerSet.c(3, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i12 = i10;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i12) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i12 = 21;
        final int i13 = 4;
        if (playerInfo.A != playerInfo2.A) {
            listenerSet.c(4, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i14 = i12;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i14) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i14 = 5;
        if (num2 != null) {
            listenerSet.c(5, new ListenerSet.Event() { // from class: androidx.media3.session.w
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i15 = i6;
                    Integer num5 = num2;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i15) {
                        case 0:
                            listener.m0(playerInfo3.f17502j, num5.intValue());
                            break;
                        case 1:
                            listener.d0(num5.intValue(), playerInfo3.d, playerInfo3.f17498e);
                            break;
                        default:
                            listener.g0(num5.intValue(), playerInfo3.v);
                            break;
                    }
                }
            });
        }
        final int i15 = 6;
        if (playerInfo.z != playerInfo2.z) {
            listenerSet.c(6, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i16 = i2;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i16) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i16 = 7;
        if (playerInfo.x != playerInfo2.x) {
            listenerSet.c(7, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i17 = i4;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i17) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i17 = 12;
        if (!playerInfo.g.equals(playerInfo2.g)) {
            listenerSet.c(12, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i18 = i6;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i18) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i18 = 8;
        if (playerInfo.f17500h != playerInfo2.f17500h) {
            listenerSet.c(8, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i19 = i11;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i19) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i19 = 9;
        if (playerInfo.f17501i != playerInfo2.f17501i) {
            listenerSet.c(9, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i13;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i20 = 15;
        if (!playerInfo.m.equals(playerInfo2.m)) {
            listenerSet.c(15, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i14;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (playerInfo.n != playerInfo2.n) {
            listenerSet.c(22, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i15;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (!playerInfo.q.equals(playerInfo2.q)) {
            listenerSet.c(20, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i16;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (playerInfo.p != playerInfo2.p) {
            listenerSet.c(21, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i18;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (!playerInfo.r.f14114a.equals(playerInfo2.r.f14114a)) {
            listenerSet.c(27, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i19;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
            listenerSet.c(27, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i7;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (!playerInfo.s.equals(playerInfo2.s)) {
            listenerSet.c(29, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i3;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (playerInfo.t != playerInfo2.t || playerInfo.u != playerInfo2.u) {
            listenerSet.c(30, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i17;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (!playerInfo.l.equals(playerInfo2.l)) {
            final int i21 = 13;
            listenerSet.c(25, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i21;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (playerInfo.C != playerInfo2.C) {
            final int i22 = 14;
            listenerSet.c(16, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i22;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        final int i23 = 17;
        if (playerInfo.D != playerInfo2.D) {
            listenerSet.c(17, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i20;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (playerInfo.E != playerInfo2.E) {
            final int i24 = 16;
            listenerSet.c(18, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i24;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        if (!playerInfo.G.equals(playerInfo2.G)) {
            listenerSet.c(19, new ListenerSet.Event() { // from class: androidx.media3.session.x
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i110 = i23;
                    PlayerInfo playerInfo3 = playerInfo2;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i110) {
                        case 0:
                            listener.H(playerInfo3.z);
                            break;
                        case 1:
                            listener.x0(playerInfo3.x);
                            break;
                        case 2:
                            listener.h(playerInfo3.g);
                            break;
                        case 3:
                            listener.A(playerInfo3.f17500h);
                            break;
                        case 4:
                            listener.N(playerInfo3.f17501i);
                            break;
                        case 5:
                            listener.o0(playerInfo3.m);
                            break;
                        case 6:
                            listener.h0(playerInfo3.n);
                            break;
                        case 7:
                            listener.i0(playerInfo3.q);
                            break;
                        case 8:
                            listener.f(playerInfo3.p);
                            break;
                        case 9:
                            listener.n(playerInfo3.r.f14114a);
                            break;
                        case 10:
                            listener.B(playerInfo3.r);
                            break;
                        case 11:
                            listener.r0(playerInfo3.s);
                            break;
                        case 12:
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 13:
                            listener.b(playerInfo3.l);
                            break;
                        case 14:
                            listener.P(playerInfo3.C);
                            break;
                        case 15:
                            listener.p0(playerInfo3.D);
                            break;
                        case 16:
                            listener.u0(playerInfo3.E);
                            break;
                        case 17:
                            listener.R(playerInfo3.G);
                            break;
                        case 18:
                            listener.q0(playerInfo3.F);
                            break;
                        case 19:
                            listener.Q(playerInfo3.B);
                            break;
                        case 20:
                            listener.e0(playerInfo3.y);
                            break;
                        default:
                            listener.K(playerInfo3.A);
                            break;
                    }
                }
            });
        }
        listenerSet.b();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void l() {
        if (e1(7)) {
            W0(new o(this, 5));
            Timeline timeline = this.r.f17502j;
            if (timeline.p() || j()) {
                return;
            }
            boolean zU0 = u0();
            Timeline.Window windowM = timeline.m(Z0(this.r), new Timeline.Window(), 0L);
            if (windowM.f13973i && windowM.a()) {
                if (zU0) {
                    s1(c1(), -9223372036854775807L);
                }
            } else if (!zU0 || getCurrentPosition() > this.r.E) {
                s1(Z0(this.r), 0L);
            } else {
                s1(c1(), -9223372036854775807L);
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void l0(int i2, MediaItem mediaItem) {
        if (e1(20)) {
            Preconditions.g(i2 >= 0);
            W0(new n(this, i2, mediaItem, 0));
            p1(i2, i2 + 1, ImmutableList.A(mediaItem));
        }
    }

    public final void l1(PlayerInfo playerInfo, PlayerInfo.BundlingExclusions bundlingExclusions) {
        PlayerInfo playerInfo2;
        PlayerInfo.BundlingExclusions bundlingExclusions2;
        if (isConnected()) {
            boolean z = d1() < 6;
            PlayerInfo playerInfo3 = this.J;
            if (playerInfo3 != null) {
                Player.Commands commands = this.A;
                SessionToken sessionToken = this.o;
                sessionToken.getClass();
                this.J = MediaUtils.e(playerInfo3, playerInfo, bundlingExclusions, commands, z, sessionToken);
                if (!this.f17335k.isEmpty()) {
                    return;
                }
                PlayerInfo playerInfo4 = this.J;
                PlayerInfo.BundlingExclusions bundlingExclusions3 = PlayerInfo.BundlingExclusions.f17513c;
                this.J = null;
                playerInfo2 = playerInfo4;
                bundlingExclusions2 = bundlingExclusions3;
            } else {
                playerInfo2 = playerInfo;
                bundlingExclusions2 = bundlingExclusions;
            }
            PlayerInfo playerInfo5 = this.r;
            Player.Commands commands2 = this.A;
            SessionToken sessionToken2 = this.o;
            sessionToken2.getClass();
            PlayerInfo playerInfoE = MediaUtils.e(playerInfo5, playerInfo2, bundlingExclusions2, commands2, z, sessionToken2);
            this.r = playerInfoE;
            Player.PositionInfo positionInfo = playerInfo5.d;
            Player.PositionInfo positionInfo2 = playerInfo5.f17498e;
            Integer numValueOf = (positionInfo.equals(playerInfo2.d) && positionInfo2.equals(playerInfo2.f17498e)) ? null : Integer.valueOf(playerInfoE.f17499f);
            MediaItem mediaItemI = playerInfo5.i();
            MediaItem mediaItemI2 = playerInfoE.i();
            Player.PositionInfo positionInfo3 = playerInfoE.f17498e;
            boolean zEquals = Objects.equals(mediaItemI, mediaItemI2);
            Integer numValueOf2 = !zEquals ? Integer.valueOf(playerInfoE.f17496b) : null;
            if (zEquals && numValueOf != null && (numValueOf.intValue() == 0 || numValueOf.intValue() == 1)) {
                if (positionInfo2.f13931b != positionInfo3.f13931b) {
                    numValueOf2 = Integer.valueOf(numValueOf.intValue() != 0 ? 2 : 1);
                } else if (playerInfo5.f17500h != 0 && numValueOf.intValue() == 0 && playerInfo5.d.f13935h == -1 && positionInfo3.f13935h == -1) {
                    numValueOf2 = 0;
                }
            }
            Integer numValueOf3 = !playerInfo5.f17502j.equals(playerInfoE.f17502j) ? Integer.valueOf(playerInfoE.f17503k) : null;
            int i2 = playerInfo5.w;
            int i3 = playerInfoE.w;
            k1(playerInfo5, playerInfoE, numValueOf3, (i2 == i3 && playerInfo5.v == playerInfoE.v) ? null : Integer.valueOf(i3), numValueOf, numValueOf2);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean m() {
        return this.r.y;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long m0() {
        return this.r.f17497c.f17558i;
    }

    public final void m1(int i2, int i3) {
        Size size = this.E;
        if (size.f14198a == i2 && size.f14199b == i3) {
            return;
        }
        this.E = new Size(i2, i3);
        this.f17333i.f(24, new pc0(i2, i3));
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Tracks n() {
        return this.r.F;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int n0() {
        return this.r.f17497c.f17552a.f13933e;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final CueGroup o() {
        return this.r.r;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void o0(TextureView textureView) {
        if (e1(27) && textureView != null && this.D == textureView) {
            S0();
        }
    }

    public final void o1(int i2, int i3) {
        int iO = this.r.f17502j.o();
        int iMin = Math.min(i3, iO);
        if (i2 >= iO || i2 == iMin || iO == 0) {
            return;
        }
        boolean z = Z0(this.r) >= i2 && Z0(this.r) < iMin;
        PlayerInfo playerInfoG1 = g1(this.r, i2, iMin, false, getCurrentPosition(), u());
        int i4 = this.r.f17497c.f17552a.f13931b;
        x1(playerInfoG1, 0, null, z ? 4 : null, i4 >= i2 && i4 < iMin ? 3 : null);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Timeline p() {
        return this.r.f17502j;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void p0(AudioAttributes audioAttributes, boolean z) {
        if (e1(35)) {
            W0(new h(this, audioAttributes, z));
            if (this.r.q.equals(audioAttributes)) {
                return;
            }
            PlayerInfo playerInfo = this.r;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.q = audioAttributes;
            this.r = builderC.a();
            fw fwVar = new fw(audioAttributes, 24);
            ListenerSet listenerSet = this.f17333i;
            listenerSet.c(20, fwVar);
            listenerSet.b();
        }
    }

    public final void p1(int i2, int i3, List list) {
        int iO = this.r.f17502j.o();
        if (i2 > iO) {
            return;
        }
        if (this.r.f17502j.p()) {
            u1(list, -1, -9223372036854775807L, false);
            return;
        }
        int iMin = Math.min(i3, iO);
        PlayerInfo playerInfoG1 = g1(f1(this.r, iMin, list, getCurrentPosition(), u()), i2, iMin, true, getCurrentPosition(), u());
        int i4 = this.r.f17497c.f17552a.f13931b;
        boolean z = i4 >= i2 && i4 < iMin;
        x1(playerInfoG1, 0, null, z ? 4 : null, z ? 3 : null);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void pause() {
        if (e1(1)) {
            W0(new o(this, 8));
            v1(false);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void q() {
        if (e1(9)) {
            W0(new o(this, 1));
            Timeline timeline = this.r.f17502j;
            if (timeline.p() || j()) {
                return;
            }
            if (U()) {
                s1(a1(), -9223372036854775807L);
                return;
            }
            Timeline.Window windowM = timeline.m(Z0(this.r), new Timeline.Window(), 0L);
            if (windowM.f13973i && windowM.a()) {
                s1(Z0(this.r), -9223372036854775807L);
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final float q0() {
        return this.r.n;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean r() {
        return this.r.v;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final AudioAttributes r0() {
        return this.r.q;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void release() {
        IMediaSession iMediaSession = this.F;
        if (this.q) {
            return;
        }
        this.q = true;
        this.o = null;
        this.m.removeCallbacksAndMessages(null);
        R0();
        FlushCommandQueueHandler flushCommandQueueHandler = this.f17334j;
        Handler handler = flushCommandQueueHandler.f17336a;
        if (handler.hasMessages(1)) {
            flushCommandQueueHandler.a();
        }
        handler.removeCallbacksAndMessages(null);
        this.F = null;
        int i2 = 0;
        if (iMediaSession != null && iMediaSession.asBinder().isBinderAlive()) {
            int iB = this.f17328b.b();
            try {
                iMediaSession.asBinder().unlinkToDeath(this.g, 0);
                iMediaSession.L(this.f17329c, iB);
            } catch (RemoteException unused) {
            }
        }
        this.f17333i.d();
        SequencedFutureManager sequencedFutureManager = this.f17328b;
        j jVar = new j(this, i2);
        synchronized (sequencedFutureManager.f17529a) {
            try {
                Handler handlerR = Util.r(null);
                sequencedFutureManager.f17532e = handlerR;
                sequencedFutureManager.d = jVar;
                if (sequencedFutureManager.f17531c.isEmpty()) {
                    sequencedFutureManager.c();
                } else {
                    handlerR.postDelayed(new j(sequencedFutureManager, 2), 30000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final VideoSize s() {
        return this.r.l;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final DeviceInfo s0() {
        return this.r.s;
    }

    public final void s1(int i2, long j2) {
        int i3;
        int i4;
        PlayerInfo playerInfoI1;
        Timeline timeline = this.r.f17502j;
        if ((timeline.p() || i2 < timeline.o()) && !j()) {
            PlayerInfo playerInfo = this.r;
            PlayerInfo playerInfoD = playerInfo.d(playerInfo.A == 1 ? 1 : 2, playerInfo.f17495a);
            PeriodInfo periodInfoB1 = b1(timeline, i2, j2);
            if (periodInfoB1 == null) {
                long j3 = 0;
                long j4 = j2 != -9223372036854775807L ? j2 : 0L;
                if (j2 != -9223372036854775807L) {
                    j3 = j2;
                }
                i3 = 1;
                i4 = 2;
                Player.PositionInfo positionInfo = new Player.PositionInfo(null, i2, null, null, i2, j4, j3, -1, -1);
                PlayerInfo playerInfo2 = this.r;
                Timeline timeline2 = playerInfo2.f17502j;
                boolean z = this.r.f17497c.f17553b;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                SessionPositionInfo sessionPositionInfo = this.r.f17497c;
                playerInfoI1 = i1(playerInfo2, timeline2, positionInfo, new SessionPositionInfo(positionInfo, z, jElapsedRealtime, sessionPositionInfo.d, j2 == -9223372036854775807L ? 0L : j2, 0, 0L, sessionPositionInfo.f17557h, sessionPositionInfo.f17558i, j2 == -9223372036854775807L ? 0L : j2), 1);
            } else {
                i3 = 1;
                i4 = 2;
                SessionPositionInfo sessionPositionInfo2 = playerInfoD.f17497c;
                Player.PositionInfo positionInfo2 = sessionPositionInfo2.f17552a;
                Player.PositionInfo positionInfo3 = sessionPositionInfo2.f17552a;
                int i5 = positionInfo2.f13933e;
                int i6 = periodInfoB1.f17338a;
                Timeline.Period period = new Timeline.Period();
                timeline.f(i5, period, false);
                Timeline.Period period2 = new Timeline.Period();
                timeline.f(i6, period2, false);
                boolean z2 = i5 != i6;
                long j5 = periodInfoB1.f17339b;
                long jR = Util.R(getCurrentPosition()) - period.f13962e;
                if (z2 || j5 != jR) {
                    Preconditions.q(positionInfo3.f13935h == -1);
                    Player.PositionInfo positionInfo4 = new Player.PositionInfo(null, period.f13961c, positionInfo3.f13932c, null, i5, Util.f0(period.f13962e + jR), Util.f0(period.f13962e + jR), -1, -1);
                    timeline.f(i6, period2, false);
                    Timeline.Window window = new Timeline.Window();
                    timeline.n(period2.f13961c, window);
                    long jF0 = Util.f0(period2.f13962e + j5);
                    Player.PositionInfo positionInfo5 = new Player.PositionInfo(null, period2.f13961c, window.f13969c, null, i6, jF0, jF0, -1, -1);
                    PlayerInfo.Builder builder = new PlayerInfo.Builder(playerInfoD);
                    builder.d = positionInfo4;
                    builder.f17507e = positionInfo5;
                    builder.f17508f = 1;
                    PlayerInfo playerInfoA = builder.a();
                    if (z2 || j5 < jR) {
                        playerInfoD = playerInfoA.e(new SessionPositionInfo(positionInfo5, false, SystemClock.elapsedRealtime(), Util.f0(window.m), jF0, MediaUtils.b(jF0, Util.f0(window.m)), 0L, -9223372036854775807L, -9223372036854775807L, jF0));
                    } else {
                        long jMax = Math.max(0L, Util.R(playerInfoA.f17497c.g) - (j5 - jR));
                        long jF1 = Util.f0(period2.f13962e + j5 + jMax);
                        playerInfoD = playerInfoA.e(new SessionPositionInfo(positionInfo5, false, SystemClock.elapsedRealtime(), Util.f0(window.m), jF1, MediaUtils.b(jF1, Util.f0(window.m)), Util.f0(jMax), -9223372036854775807L, -9223372036854775807L, jF1));
                    }
                }
                playerInfoI1 = playerInfoD;
            }
            SessionPositionInfo sessionPositionInfo3 = playerInfoI1.f17497c;
            int i7 = (this.r.f17502j.p() || sessionPositionInfo3.f17552a.f13931b == this.r.f17497c.f17552a.f13931b) ? 0 : i3;
            if (i7 == 0 && sessionPositionInfo3.f17552a.f13934f == this.r.f17497c.f17552a.f13934f) {
                return;
            }
            x1(playerInfoI1, null, null, Integer.valueOf(i3), i7 != 0 ? Integer.valueOf(i4) : null);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void seekTo(long j2) {
        if (e1(5)) {
            W0(new t(this, j2));
            s1(Z0(this.r), j2);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void stop() {
        if (e1(3)) {
            W0(new o(this, 11));
            PlayerInfo playerInfo = this.r;
            SessionPositionInfo sessionPositionInfo = this.r.f17497c;
            Player.PositionInfo positionInfo = sessionPositionInfo.f17552a;
            boolean z = sessionPositionInfo.f17553b;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            SessionPositionInfo sessionPositionInfo2 = this.r.f17497c;
            long j2 = sessionPositionInfo2.d;
            long j3 = sessionPositionInfo2.f17552a.f13934f;
            int iB = MediaUtils.b(j3, j2);
            SessionPositionInfo sessionPositionInfo3 = this.r.f17497c;
            PlayerInfo playerInfoE = playerInfo.e(new SessionPositionInfo(positionInfo, z, jElapsedRealtime, j2, j3, iB, 0L, sessionPositionInfo3.f17557h, sessionPositionInfo3.f17558i, sessionPositionInfo3.f17552a.f13934f));
            this.r = playerInfoE;
            if (playerInfoE.A != 1) {
                this.r = playerInfoE.d(1, playerInfoE.f17495a);
                lc0 lc0Var = new lc0(2);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(4, lc0Var);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void t(float f2) {
        if (e1(13)) {
            W0(new z(this, f2, 0));
            PlaybackParameters playbackParameters = this.r.g;
            if (playbackParameters.f13919a != f2) {
                PlaybackParameters playbackParameters2 = new PlaybackParameters(f2, playbackParameters.f13920b);
                this.r = this.r.c(playbackParameters2);
                oc0 oc0Var = new oc0(playbackParameters2, 1);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(12, oc0Var);
                listenerSet.b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void t0(int i2, int i3) {
        if (e1(33)) {
            W0(new v(this, i2, i3, 1));
            PlayerInfo playerInfo = this.r;
            DeviceInfo deviceInfo = playerInfo.s;
            if (playerInfo.t == i2 || deviceInfo.f13740b > i2) {
                return;
            }
            int i4 = deviceInfo.f13741c;
            if (i4 == 0 || i2 <= i4) {
                this.r = playerInfo.a(i2, playerInfo.u);
                r rVar = new r(this, i2, 2);
                ListenerSet listenerSet = this.f17333i;
                listenerSet.c(30, rVar);
                listenerSet.b();
            }
        }
    }

    public final void t1(long j2) {
        long currentPosition = getCurrentPosition() + j2;
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        s1(Z0(this.r), Math.max(currentPosition, 0L));
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long u() {
        SessionPositionInfo sessionPositionInfo = this.r.f17497c;
        return !sessionPositionInfo.f17553b ? getCurrentPosition() : sessionPositionInfo.f17552a.g;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean u0() {
        return c1() != -1;
    }

    public final void u1(List list, int i2, long j2, boolean z) {
        int iA;
        Player.PositionInfo positionInfo;
        SessionPositionInfo sessionPositionInfo;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean z2 = false;
        int i3 = 0;
        while (i3 < list.size()) {
            MediaItem mediaItem = (MediaItem) list.get(i3);
            ImmutableSet immutableSet = LegacyConversions.f17303a;
            Timeline.Window window = new Timeline.Window();
            int i4 = i3;
            window.b(0, mediaItem, null, 0L, 0L, 0L, true, false, null, 0L, -9223372036854775807L, i4, i4, 0L);
            arrayList.add(window);
            Timeline.Period period = new Timeline.Period();
            period.i(null, null, i4, -9223372036854775807L, 0L, AdPlaybackState.g, true);
            arrayList2.add(period);
            i3 = i4 + 1;
        }
        Timeline.RemotableTimeline remotableTimelineU0 = U0(arrayList, arrayList2);
        ImmutableList immutableList = remotableTimelineU0.f13964e;
        if (!remotableTimelineU0.p() && i2 >= immutableList.size()) {
            throw new IllegalSeekPositionException(remotableTimelineU0, i2, j2);
        }
        long j3 = j2;
        if (z) {
            iA = remotableTimelineU0.p() ? 0 : remotableTimelineU0.a(this.r.f17501i);
            j3 = -9223372036854775807L;
        } else if (i2 == -1) {
            Player.PositionInfo positionInfo2 = this.r.f17497c.f17552a;
            int i5 = positionInfo2.f13931b;
            long j4 = positionInfo2.f13934f;
            if (remotableTimelineU0.p() || i5 < immutableList.size()) {
                iA = i5;
                j3 = j4;
            } else {
                iA = remotableTimelineU0.a(this.r.f17501i);
                j3 = -9223372036854775807L;
                z2 = true;
            }
        } else {
            iA = i2;
        }
        PeriodInfo periodInfoB1 = b1(remotableTimelineU0, iA, j3);
        if (periodInfoB1 == null) {
            positionInfo = new Player.PositionInfo(null, iA, null, null, iA, j3 == -9223372036854775807L ? 0L : j3, j3 == -9223372036854775807L ? 0L : j3, -1, -1);
            sessionPositionInfo = new SessionPositionInfo(positionInfo, false, SystemClock.elapsedRealtime(), -9223372036854775807L, j3 == -9223372036854775807L ? 0L : j3, 0, 0L, -9223372036854775807L, -9223372036854775807L, j3 == -9223372036854775807L ? 0L : j3);
        } else {
            long j5 = periodInfoB1.f17339b;
            positionInfo = new Player.PositionInfo(null, iA, (MediaItem) list.get(iA), null, periodInfoB1.f17338a, Util.f0(j5), Util.f0(j5), -1, -1);
            sessionPositionInfo = new SessionPositionInfo(positionInfo, false, SystemClock.elapsedRealtime(), -9223372036854775807L, Util.f0(j5), 0, 0L, -9223372036854775807L, -9223372036854775807L, Util.f0(j5));
        }
        PlayerInfo playerInfoI1 = i1(this.r, remotableTimelineU0, positionInfo, sessionPositionInfo, 4);
        int i6 = playerInfoI1.A;
        if (iA != -1 && i6 != 1) {
            i6 = (remotableTimelineU0.p() || z2) ? 4 : 2;
        }
        PlayerInfo playerInfoD = playerInfoI1.d(i6, this.r.f17495a);
        x1(playerInfoD, 0, null, !this.r.f17502j.p() ? 4 : null, (this.r.f17502j.p() && playerInfoD.f17502j.p()) ? null : 3);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int v() {
        return Z0(this.r);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int v0() {
        return this.r.f17497c.f17552a.f13936i;
    }

    public final void v1(boolean z) {
        PlayerInfo playerInfo = this.r;
        int i2 = playerInfo.z;
        int i3 = i2 == 1 ? 0 : i2;
        if (playerInfo.v == z && i2 == i3) {
            return;
        }
        this.H = MediaUtils.c(playerInfo, this.H, this.I, this.f17327a.f17317f);
        this.I = SystemClock.elapsedRealtime();
        x1(this.r.b(1, i3, z), null, 1, null, null);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean w() {
        return this.r.f17501i;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void w0(MediaItem mediaItem) {
        if (e1(31)) {
            W0(new u(this, mediaItem, 1));
            u1(Collections.singletonList(mediaItem), -1, -9223372036854775807L, true);
        }
    }

    public final void w1(Surface surface, int i2, int i3) {
        if (isConnected()) {
            if (d1() >= 8) {
                X0(new m(this, surface, i2, i3, 1));
            } else {
                X0(new s(this, surface, 2));
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long x() {
        return this.r.f17497c.f17559j;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void x0(final List list, final int i2, final long j2) {
        if (e1(20)) {
            W0(new RemoteSessionTask() { // from class: androidx.media3.session.q
                @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
                public final void d(IMediaSession iMediaSession, int i3) {
                    MediaControllerImplBase mediaControllerImplBase = this.f17890b;
                    MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                    UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    int i4 = 0;
                    while (true) {
                        List list2 = list;
                        if (i4 >= list2.size()) {
                            iMediaSession.A2(mediaControllerStub, i3, new BundleListRetriever(builder.j()), i2, j2);
                            return;
                        } else {
                            builder.e(((MediaItem) list2.get(i4)).c(mediaControllerImplBase.d1(), true));
                            i4++;
                        }
                    }
                }
            });
            u1(list, i2, j2, false);
        }
    }

    public final void x1(PlayerInfo playerInfo, Integer num, Integer num2, Integer num3, Integer num4) {
        PlayerInfo playerInfo2 = this.r;
        this.r = playerInfo;
        k1(playerInfo2, playerInfo, num, num2, num3, num4);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void y() {
        if (e1(12)) {
            W0(new o(this, 2));
            t1(this.r.D);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void y0(int i2) {
        if (e1(10)) {
            Preconditions.g(i2 >= 0);
            W0(new r(this, i2, 11));
            s1(i2, -9223372036854775807L);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void z() {
        if (e1(11)) {
            W0(new o(this, 7));
            t1(-this.r.C);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long z0() {
        return this.r.D;
    }
}

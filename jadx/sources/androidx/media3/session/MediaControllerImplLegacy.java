package androidx.media3.session;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
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
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserCompat;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import androidx.media3.session.legacy.MediaControllerCompat;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import androidx.media3.session.legacy.MediaMetadataCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.PlaybackStateCompat;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.d21;
import defpackage.dc;
import defpackage.ls;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerImplLegacy implements MediaController.MediaControllerImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaController f17344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionToken f17345c;
    public final ListenerSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ControllerCompatCallback f17346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final androidx.media3.common.util.BitmapLoader f17347f;
    public final Bundle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f17348h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaControllerCompat f17349i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaBrowserCompat f17350j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17351k;
    public boolean l;
    public boolean o;
    public boolean s;
    public LegacyPlayerInfo m = new LegacyPlayerInfo();
    public LegacyPlayerInfo n = new LegacyPlayerInfo();
    public ControllerInfo p = new ControllerInfo();
    public long q = -9223372036854775807L;
    public long r = -9223372036854775807L;

    public class ConnectionCallback extends MediaBrowserCompat.ConnectionCallback {
        public ConnectionCallback() {
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.ConnectionCallback
        public final void a() {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            MediaBrowserCompat mediaBrowserCompat = mediaControllerImplLegacy.f17350j;
            if (mediaBrowserCompat != null) {
                MediaSessionCompat.Token tokenC = mediaBrowserCompat.c();
                MediaController mediaController = mediaControllerImplLegacy.f17344b;
                int i2 = 0;
                mediaController.Y0(new g0(mediaControllerImplLegacy, tokenC, i2));
                mediaController.f17316e.postDelayed(new j0(mediaControllerImplLegacy, i2), 500L);
            }
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.ConnectionCallback
        public final void b() {
            MediaControllerImplLegacy.this.f17344b.release();
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.ConnectionCallback
        public final void c() {
            MediaControllerImplLegacy.this.f17344b.release();
        }
    }

    public final class ControllerCompatCallback extends MediaControllerCompat.Callback {
        public final Handler d;

        public ControllerCompatCallback(Looper looper) {
            this.d = new Handler(looper, new e0(this, 1));
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void a(MediaControllerCompat.PlaybackInfo playbackInfo) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(playbackInfo, legacyPlayerInfo.f17360b, legacyPlayerInfo.f17361c, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, legacyPlayerInfo.f17363f, legacyPlayerInfo.g, legacyPlayerInfo.f17364h);
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void b(boolean z) {
            MediaController mediaController = MediaControllerImplLegacy.this.f17344b;
            mediaController.getClass();
            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
            MediaController.Listener listener = mediaController.d;
            new Bundle().putBoolean("androidx.media3.session.ARGUMENT_CAPTIONING_ENABLED", z);
            listener.V(new SessionCommand("androidx.media3.session.SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED", Bundle.EMPTY));
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void c(Bundle bundle) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = bundle;
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, legacyPlayerInfo.f17360b, legacyPlayerInfo.f17361c, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, legacyPlayerInfo.f17363f, legacyPlayerInfo.g, bundle2);
            mediaControllerImplLegacy.o = true;
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void d(MediaMetadataCompat mediaMetadataCompat) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, legacyPlayerInfo.f17360b, mediaMetadataCompat, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, legacyPlayerInfo.f17363f, legacyPlayerInfo.g, legacyPlayerInfo.f17364h);
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void e(PlaybackStateCompat playbackStateCompat) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, MediaControllerImplLegacy.T0(playbackStateCompat), legacyPlayerInfo.f17361c, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, legacyPlayerInfo.f17363f, legacyPlayerInfo.g, legacyPlayerInfo.f17364h);
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void f(ArrayList arrayList) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, legacyPlayerInfo.f17360b, legacyPlayerInfo.f17361c, MediaControllerImplLegacy.S0(arrayList), legacyPlayerInfo.f17362e, legacyPlayerInfo.f17363f, legacyPlayerInfo.g, legacyPlayerInfo.f17364h);
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void g(CharSequence charSequence) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, legacyPlayerInfo.f17360b, legacyPlayerInfo.f17361c, legacyPlayerInfo.d, charSequence, legacyPlayerInfo.f17363f, legacyPlayerInfo.g, legacyPlayerInfo.f17364h);
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void h(int i2) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, legacyPlayerInfo.f17360b, legacyPlayerInfo.f17361c, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, i2, legacyPlayerInfo.g, legacyPlayerInfo.f17364h);
            o();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void i() {
            MediaControllerImplLegacy.this.f17344b.release();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void j(String str, Bundle bundle) {
            if (str == null) {
                return;
            }
            if (bundle == null) {
                bundle = Bundle.EMPTY;
            }
            MediaController mediaController = MediaControllerImplLegacy.this.f17344b;
            mediaController.getClass();
            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
            mediaController.d.V(new SessionCommand(str, bundle));
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void k() {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            if (!mediaControllerImplLegacy.l) {
                mediaControllerImplLegacy.X0();
                return;
            }
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, MediaControllerImplLegacy.T0(mediaControllerImplLegacy.f17349i.i()), legacyPlayerInfo.f17361c, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, mediaControllerImplLegacy.f17349i.m(), mediaControllerImplLegacy.f17349i.n(), legacyPlayerInfo.f17364h);
            b(mediaControllerImplLegacy.f17349i.p());
            this.d.removeMessages(1);
            mediaControllerImplLegacy.V0(false, mediaControllerImplLegacy.n);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.Callback
        public final void l(int i2) {
            MediaControllerImplLegacy mediaControllerImplLegacy = MediaControllerImplLegacy.this;
            LegacyPlayerInfo legacyPlayerInfo = mediaControllerImplLegacy.n;
            mediaControllerImplLegacy.n = new LegacyPlayerInfo(legacyPlayerInfo.f17359a, legacyPlayerInfo.f17360b, legacyPlayerInfo.f17361c, legacyPlayerInfo.d, legacyPlayerInfo.f17362e, legacyPlayerInfo.f17363f, i2, legacyPlayerInfo.f17364h);
            o();
        }

        public final void o() {
            Handler handler = this.d;
            if (handler.hasMessages(1)) {
                return;
            }
            handler.sendEmptyMessageDelayed(1, MediaControllerImplLegacy.this.f17348h);
        }
    }

    public MediaControllerImplLegacy(Context context, MediaController mediaController, SessionToken sessionToken, Bundle bundle, Looper looper, androidx.media3.common.util.BitmapLoader bitmapLoader, long j2) {
        this.d = new ListenerSet(looper, Clock.f14143a, new k0(this));
        this.f17343a = context;
        this.f17344b = mediaController;
        this.f17346e = new ControllerCompatCallback(looper);
        this.f17345c = sessionToken;
        this.g = bundle;
        this.f17347f = bitmapLoader;
        this.f17348h = j2;
        ImmutableList.x();
    }

    public static boolean R0(ControllerInfo controllerInfo) {
        PlayerInfo playerInfo = controllerInfo.f17354a;
        if (playerInfo.A == 1 || playerInfo.f17502j.p()) {
            return false;
        }
        return controllerInfo.f17356c.a(2) || controllerInfo.f17354a.v;
    }

    public static List S0(List list) {
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        MediaBrowserServiceCompat.BrowserRoot browserRoot = MediaUtils.f17489a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static PlaybackStateCompat T0(PlaybackStateCompat playbackStateCompat) {
        if (playbackStateCompat == null) {
            return null;
        }
        if (playbackStateCompat.f17832e > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return playbackStateCompat;
        }
        Log.g("Adjusting playback speed to 1.0f because negative playback speed isn't supported.");
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder(playbackStateCompat);
        int i2 = playbackStateCompat.f17830b;
        long j2 = playbackStateCompat.f17831c;
        long j3 = playbackStateCompat.f17835i;
        builder.f17839b = i2;
        builder.f17840c = j2;
        builder.f17844i = j3;
        builder.f17841e = 1.0f;
        return builder.a();
    }

    public static Player.PositionInfo U0(int i2, MediaItem mediaItem, long j2, boolean z) {
        return new Player.PositionInfo(null, i2, mediaItem, null, i2, j2, j2, z ? 0 : -1, z ? 0 : -1);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final MediaMetadata A() {
        MediaItem mediaItemI = this.p.f17354a.i();
        return mediaItemI == null ? MediaMetadata.L : mediaItemI.d;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void A0(int i2, List list) {
        Preconditions.g(i2 >= 0);
        if (list.isEmpty()) {
            return;
        }
        QueueTimeline queueTimeline = (QueueTimeline) this.p.f17354a.f17502j;
        if (queueTimeline.p()) {
            x0(list, 0, -9223372036854775807L);
            return;
        }
        int iMin = Math.min(i2, p().o());
        QueueTimeline queueTimelineQ = queueTimeline.q(iMin, list);
        int iV = v();
        int size = list.size();
        if (iV >= iMin) {
            iV += size;
        }
        PlayerInfo playerInfoF = this.p.f17354a.f(queueTimelineQ, iV);
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfoF, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        if (this.s) {
            Q0(iMin, list);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void B(Surface surface) {
        Log.g("Session doesn't support setting Surface");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long B0() {
        return this.p.f17354a.f17497c.f17555e;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long C() {
        return this.p.f17354a.f17497c.g;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final MediaMetadata C0() {
        return this.p.f17354a.m;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void D() {
        N(0, Integer.MAX_VALUE);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void D0(MediaItem mediaItem, long j2) {
        x0(ImmutableList.A(mediaItem), 0, j2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int E() {
        return this.p.f17354a.f17497c.f17556f;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void E0(int i2) {
        if (i2 != i()) {
            PlayerInfo playerInfo = this.p.f17354a;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17509h = i2;
            PlayerInfo playerInfoA = builderC.a();
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.o().o(LegacyConversions.p(i2));
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void F() {
        this.f17349i.o().r();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void F0(TrackSelectionParameters trackSelectionParameters) {
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void G(int i2, boolean z) {
        if (z != K0()) {
            PlayerInfo playerInfoA = this.p.f17354a.a(f0(), z);
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.b(z ? -100 : 100, i2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void G0(SurfaceView surfaceView) {
        Log.g("Session doesn't support clearing SurfaceView");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void H() {
        T(1);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void H0(int i2, int i3) {
        I0(i2, i2 + 1, i3);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void I(int i2) {
        int iF0 = f0();
        int i3 = s0().f13741c;
        if (i3 == 0 || iF0 + 1 <= i3) {
            PlayerInfo playerInfoA = this.p.f17354a.a(iF0 + 1, K0());
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.b(1, i2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void I0(int i2, int i3, int i4) {
        Preconditions.g(i2 >= 0 && i2 <= i3 && i4 >= 0);
        QueueTimeline queueTimeline = (QueueTimeline) this.p.f17354a.f17502j;
        int iO = queueTimeline.o();
        int iMin = Math.min(i3, iO);
        int i5 = iMin - i2;
        int i6 = iO - i5;
        int i7 = i6 - 1;
        int iMin2 = Math.min(i4, i6);
        if (i2 >= iO || i2 == iMin || i2 == iMin2) {
            return;
        }
        int iV = v();
        if (iV >= i2) {
            iV = iV < iMin ? -1 : iV - i5;
        }
        if (iV == -1) {
            iV = Util.j(i2, 0, i7);
            Log.g("Currently playing item will be removed and added back to mimic move. Assumes item at " + iV + " would be the new current item");
        }
        if (iV >= iMin2) {
            iV += i5;
        }
        ArrayList arrayList = new ArrayList(queueTimeline.f17524e);
        Util.Q(arrayList, i2, iMin, iMin2);
        PlayerInfo playerInfoF = this.p.f17354a.f(new QueueTimeline(ImmutableList.t(arrayList), queueTimeline.f17525f), iV);
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfoF, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        if (this.s) {
            ArrayList arrayList2 = new ArrayList();
            for (int i8 = 0; i8 < i5; i8++) {
                arrayList2.add((MediaSessionCompat.QueueItem) this.m.d.get(i2));
                this.f17349i.s(((MediaSessionCompat.QueueItem) this.m.d.get(i2)).f17815b);
            }
            for (int i9 = 0; i9 < arrayList2.size(); i9++) {
                this.f17349i.a(((MediaSessionCompat.QueueItem) arrayList2.get(i9)).f17815b, i9 + iMin2);
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void J(SurfaceView surfaceView) {
        Log.g("Session doesn't support setting SurfaceView");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void J0(List list) {
        A0(Integer.MAX_VALUE, list);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void K(int i2, int i3, List list) {
        Preconditions.g(i2 >= 0 && i2 <= i3);
        int iO = ((QueueTimeline) this.p.f17354a.f17502j).o();
        if (i2 > iO) {
            return;
        }
        int iMin = Math.min(i3, iO);
        A0(iMin, list);
        N(i2, iMin);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean K0() {
        PlayerInfo playerInfo = this.p.f17354a;
        if (playerInfo.s.f13739a == 1) {
            return playerInfo.u;
        }
        MediaControllerCompat mediaControllerCompat = this.f17349i;
        if (mediaControllerCompat == null) {
            return false;
        }
        MediaControllerCompat.PlaybackInfo playbackInfoH = mediaControllerCompat.h();
        ImmutableSet immutableSet = LegacyConversions.f17303a;
        return playbackInfoH != null && playbackInfoH.f17777e == 0;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void L(MediaMetadata mediaMetadata) {
        Log.g("Session doesn't support setting playlist metadata");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void L0(int i2) {
        t0(i2, 1);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void M(int i2) {
        N(i2, i2 + 1);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void M0(List list) {
        x0(list, 0, -9223372036854775807L);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void N(int i2, int i3) {
        Preconditions.g(i2 >= 0 && i3 >= i2);
        int iO = p().o();
        int iMin = Math.min(i3, iO);
        if (i2 >= iO || i2 == iMin) {
            return;
        }
        QueueTimeline queueTimeline = (QueueTimeline) this.p.f17354a.f17502j;
        queueTimeline.getClass();
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList immutableList = queueTimeline.f17524e;
        builder.g(immutableList.subList(0, i2));
        builder.g(immutableList.subList(iMin, immutableList.size()));
        QueueTimeline queueTimeline2 = new QueueTimeline(builder.j(), queueTimeline.f17525f);
        int iV = v();
        int i4 = iMin - i2;
        if (iV >= i2) {
            iV = iV < iMin ? -1 : iV - i4;
        }
        if (iV == -1) {
            iV = Util.j(i2, 0, queueTimeline2.o() - 1);
            Log.g("Currently playing item is removed. Assumes item at " + iV + " is the new current item");
        }
        PlayerInfo playerInfoF = this.p.f17354a.f(queueTimeline2, iV);
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfoF, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        if (this.s) {
            while (i2 < iMin && i2 < this.m.d.size()) {
                this.f17349i.s(((MediaSessionCompat.QueueItem) this.m.d.get(i2)).f17815b);
                i2++;
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long N0() {
        return this.p.f17354a.C;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void O(SurfaceHolder surfaceHolder) {
        Log.g("Session doesn't support setting SurfaceHolder");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final ImmutableList O0() {
        return this.p.d;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void P(boolean z) {
        PlayerInfo playerInfo = this.p.f17354a;
        if (playerInfo.v == z) {
            return;
        }
        this.q = MediaUtils.c(playerInfo, this.q, this.r, this.f17344b.f17317f);
        this.r = SystemClock.elapsedRealtime();
        PlayerInfo playerInfoB = this.p.f17354a.b(1, 0, z);
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfoB, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        if (!this.s) {
            if (R0(this.p)) {
                W0();
            }
        } else {
            MediaControllerCompat mediaControllerCompat = this.f17349i;
            if (z) {
                mediaControllerCompat.o().c();
            } else {
                mediaControllerCompat.o().b();
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Bundle P0() {
        return this.g;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void Q() {
        Log.g("Session doesn't support unmuting the player");
    }

    public final void Q0(int i2, List list) {
        ArrayList arrayList = new ArrayList();
        l0 l0Var = new l0(this, new AtomicInteger(0), list, arrayList, i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            byte[] bArr = ((MediaItem) list.get(i3)).d.f13887k;
            if (bArr == null) {
                arrayList.add(null);
                l0Var.run();
            } else {
                ListenableFuture listenableFutureC = this.f17347f.c(bArr);
                arrayList.add(listenableFutureC);
                Handler handler = this.f17344b.f17316e;
                Objects.requireNonNull(handler);
                listenableFutureC.addListener(l0Var, new dc(handler, 1));
            }
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void R(MediaItem mediaItem) {
        D0(mediaItem, -9223372036854775807L);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void S() {
        this.f17349i.o().q();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void T(int i2) {
        int iF0 = f0() - 1;
        if (iF0 >= s0().f13740b) {
            PlayerInfo playerInfoA = this.p.f17354a.a(iF0, K0());
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.b(-1, i2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean U() {
        return this.l;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void V(Player.Listener listener) {
        this.d.e(listener);
    }

    /* JADX WARN: Code duplicated, block: B:156:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:180:0x0329  */
    /* JADX WARN: Code duplicated, block: B:183:0x0336  */
    /* JADX WARN: Code duplicated, block: B:190:0x0354  */
    /* JADX WARN: Code duplicated, block: B:194:0x0361  */
    /* JADX WARN: Code duplicated, block: B:197:0x036e  */
    /* JADX WARN: Code duplicated, block: B:200:0x0381  */
    /* JADX WARN: Code duplicated, block: B:203:0x0393  */
    /* JADX WARN: Code duplicated, block: B:206:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:209:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:212:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:215:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:217:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:219:0x03df  */
    /* JADX WARN: Code duplicated, block: B:222:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:225:0x0406  */
    /* JADX WARN: Code duplicated, block: B:227:0x040d  */
    /* JADX WARN: Code duplicated, block: B:229:0x0416  */
    /* JADX WARN: Code duplicated, block: B:232:0x0424  */
    /* JADX WARN: Code duplicated, block: B:235:0x0433  */
    /* JADX WARN: Code duplicated, block: B:237:0x043a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:238:0x043c  */
    /* JADX WARN: Code duplicated, block: B:239:0x043f  */
    /* JADX WARN: Code duplicated, block: B:242:0x045b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:245:0x0469  */
    /* JADX WARN: Code duplicated, block: B:247:0x0477  */
    /* JADX WARN: Code duplicated, block: B:250:0x0481  */
    /* JADX WARN: Code duplicated, block: B:254:0x0493  */
    /* JADX WARN: Code duplicated, block: B:257:0x049f  */
    /* JADX WARN: Code duplicated, block: B:259:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:263:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:264:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:267:0x04da  */
    /* JADX WARN: Code duplicated, block: B:269:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:270:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:273:0x0500  */
    /* JADX WARN: Code duplicated, block: B:274:0x0503  */
    /* JADX WARN: Code duplicated, block: B:277:0x050c  */
    /* JADX WARN: Code duplicated, block: B:278:0x050e  */
    /* JADX WARN: Code duplicated, block: B:281:0x0522  */
    /* JADX WARN: Code duplicated, block: B:283:0x052b  */
    /* JADX WARN: Code duplicated, block: B:284:0x0532  */
    /* JADX WARN: Code duplicated, block: B:286:0x0535  */
    /* JADX WARN: Code duplicated, block: B:288:0x0545  */
    /* JADX WARN: Code duplicated, block: B:290:0x054d  */
    /* JADX WARN: Code duplicated, block: B:296:0x0576 A[PHI: r6
      0x0576: PHI (r6v42 androidx.media3.session.SessionError) = (r6v25 androidx.media3.session.SessionError), (r6v29 androidx.media3.session.SessionError) binds: [B:295:0x0574, B:308:0x059d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:297:0x0579  */
    /* JADX WARN: Code duplicated, block: B:299:0x0584 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:312:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:313:0x05ce  */
    /* JADX WARN: Code duplicated, block: B:317:0x05db  */
    /* JADX WARN: Code duplicated, block: B:318:0x05de  */
    /* JADX WARN: Code duplicated, block: B:320:0x05e7  */
    /* JADX WARN: Code duplicated, block: B:321:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:323:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:324:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:327:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:329:0x0603  */
    /* JADX WARN: Code duplicated, block: B:330:0x0605 A[PHI: r24
      0x0605: PHI (r24v11 androidx.media3.session.SessionCommands) = (r24v3 androidx.media3.session.SessionCommands), (r24v12 androidx.media3.session.SessionCommands) binds: [B:349:0x064b, B:329:0x0603] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:333:0x0616  */
    /* JADX WARN: Code duplicated, block: B:334:0x0618 A[Catch: ConversionException -> 0x0651, TryCatch #1 {ConversionException -> 0x0651, blocks: (B:331:0x0607, B:337:0x0621, B:338:0x0624, B:334:0x0618), top: B:433:0x0607 }] */
    /* JADX WARN: Code duplicated, block: B:338:0x0624 A[Catch: ConversionException -> 0x0651, TRY_LEAVE, TryCatch #1 {ConversionException -> 0x0651, blocks: (B:331:0x0607, B:337:0x0621, B:338:0x0624, B:334:0x0618), top: B:433:0x0607 }] */
    /* JADX WARN: Code duplicated, block: B:342:0x063a  */
    /* JADX WARN: Code duplicated, block: B:343:0x063e  */
    /* JADX WARN: Code duplicated, block: B:344:0x0640 A[PHI: r24
      0x0640: PHI (r24v6 androidx.media3.session.SessionCommands) = (r24v5 androidx.media3.session.SessionCommands), (r24v7 androidx.media3.session.SessionCommands) binds: [B:346:0x0644, B:343:0x063e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:345:0x0642  */
    /* JADX WARN: Code duplicated, block: B:347:0x0646 A[PHI: r24
      0x0646: PHI (r24v4 androidx.media3.session.SessionCommands) = (r24v3 androidx.media3.session.SessionCommands), (r24v5 androidx.media3.session.SessionCommands) binds: [B:349:0x064b, B:346:0x0644] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:348:0x0649  */
    /* JADX WARN: Code duplicated, block: B:355:0x067c  */
    /* JADX WARN: Code duplicated, block: B:356:0x067f  */
    /* JADX WARN: Code duplicated, block: B:360:0x0688  */
    /* JADX WARN: Code duplicated, block: B:362:0x068d  */
    /* JADX WARN: Code duplicated, block: B:364:0x0694  */
    /* JADX WARN: Code duplicated, block: B:365:0x0696  */
    /* JADX WARN: Code duplicated, block: B:368:0x06a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:371:0x06a9  */
    /* JADX WARN: Code duplicated, block: B:374:0x06b6  */
    /* JADX WARN: Code duplicated, block: B:375:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:377:0x06bf  */
    /* JADX WARN: Code duplicated, block: B:378:0x06c2  */
    /* JADX WARN: Code duplicated, block: B:383:0x06de  */
    /* JADX WARN: Code duplicated, block: B:384:0x06e0  */
    /* JADX WARN: Code duplicated, block: B:387:0x076e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:390:0x0776 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:391:0x0778 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:393:0x077c  */
    /* JADX WARN: Code duplicated, block: B:395:0x078f  */
    /* JADX WARN: Code duplicated, block: B:398:0x0798  */
    /* JADX WARN: Code duplicated, block: B:401:0x079f  */
    /* JADX WARN: Code duplicated, block: B:404:0x07af A[LOOP:3: B:399:0x0799->B:404:0x07af, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:407:0x07b5  */
    /* JADX WARN: Code duplicated, block: B:408:0x07ba  */
    /* JADX WARN: Code duplicated, block: B:410:0x07c4  */
    /* JADX WARN: Code duplicated, block: B:412:0x07d4  */
    /* JADX WARN: Code duplicated, block: B:415:0x07dd  */
    /* JADX WARN: Code duplicated, block: B:417:0x07e8  */
    /* JADX WARN: Code duplicated, block: B:419:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:421:0x07f6  */
    /* JADX WARN: Code duplicated, block: B:424:0x0818  */
    /* JADX WARN: Code duplicated, block: B:426:0x0827  */
    /* JADX WARN: Code duplicated, block: B:427:0x082a  */
    /* JADX WARN: Code duplicated, block: B:433:0x0607 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:444:0x07b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:445:0x07ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:447:0x048e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:448:? A[LOOP:4: B:248:0x047b->B:448:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:451:0x04af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:454:0x0550 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:459:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e1  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void V0(boolean z, LegacyPlayerInfo legacyPlayerInfo) {
        boolean z2;
        MediaControllerCompat.PlaybackInfo playbackInfo;
        boolean z3;
        QueueTimeline queueTimeline;
        boolean z4;
        int iO;
        MediaMetadataCompat mediaMetadataCompat;
        MediaMetadata mediaMetadataL;
        int i2;
        MediaMetadata mediaMetadata;
        MediaControllerCompat.PlaybackInfo playbackInfo2;
        int i3;
        boolean z5;
        long j2;
        Bundle bundle;
        boolean zY;
        Bundle bundle2;
        FlagSet.Builder builder;
        int i4;
        Player.Commands commandsC;
        CharSequence charSequence;
        CharSequence charSequence2;
        MediaMetadata mediaMetadata2;
        int iS;
        boolean zU;
        HashSet<SessionCommand> hashSet;
        ImmutableList.Builder builder2;
        int i5;
        boolean z6;
        SessionError sessionError;
        ImmutableList immutableListK;
        Bundle bundle3;
        int i6;
        CommandButton.Builder builder3;
        Bundle bundle4;
        boolean z7;
        String string;
        Uri uri;
        String scheme;
        SessionCommands sessionCommands;
        ImmutableList immutableList;
        Bundle bundle5;
        int i7;
        SessionCommands sessionCommands2;
        boolean z8;
        PlaybackParameters playbackParameters;
        MediaControllerCompat.PlaybackInfo playbackInfo3;
        AudioAttributes audioAttributes;
        boolean z9;
        int i8;
        int i9;
        long jD;
        boolean z10;
        boolean z11;
        DeviceInfo.Builder builder4;
        int i10;
        boolean z12;
        DeviceInfo deviceInfoA;
        int i11;
        boolean z13;
        int i12;
        MediaItem mediaItem;
        LegacyPlayerInfo legacyPlayerInfo2;
        ControllerInfo controllerInfo;
        long j3;
        Integer num;
        boolean zP;
        PlayerInfo playerInfo;
        MediaItem mediaItemI;
        ImmutableList immutableList2;
        QueueTimeline.QueuedMediaItem queuedMediaItem;
        int i13;
        boolean z14;
        boolean z15;
        Integer num2;
        long jC;
        long jC2;
        Integer num3;
        boolean z16;
        int i14;
        MediaSessionCompat.QueueItem queueItem;
        Bitmap bitmap;
        MediaMetadataCompat mediaMetadataCompat2;
        Bitmap bitmapB;
        if (this.f17351k || !this.l) {
            return;
        }
        LegacyPlayerInfo legacyPlayerInfo3 = this.m;
        ControllerInfo controllerInfo2 = this.p;
        String strG = this.f17349i.g();
        long jE = this.f17349i.e();
        boolean zQ = this.f17349i.q();
        int iL = this.f17349i.l();
        MediaController mediaController = this.f17344b;
        long j4 = mediaController.f17317f;
        boolean z17 = this.o;
        MediaMetadataCompat mediaMetadataCompat3 = legacyPlayerInfo3.f17361c;
        PlaybackStateCompat playbackStateCompat = legacyPlayerInfo3.f17360b;
        List list = legacyPlayerInfo3.d;
        if (mediaMetadataCompat3 == null || (mediaMetadataCompat2 = legacyPlayerInfo.f17361c) == null || mediaMetadataCompat3.d == null || (bitmapB = mediaMetadataCompat2.b()) == null) {
            z2 = zQ;
        } else {
            z2 = zQ;
            Bitmap bitmapB2 = mediaMetadataCompat3.b();
            if (bitmapB2 != null && bitmapB.sameAs(bitmapB2)) {
                mediaMetadataCompat2.d = mediaMetadataCompat3.d;
            }
        }
        List list2 = legacyPlayerInfo.d;
        Bundle bundle6 = legacyPlayerInfo.f17364h;
        PlaybackStateCompat playbackStateCompat2 = legacyPlayerInfo.f17360b;
        MediaMetadataCompat mediaMetadataCompat4 = legacyPlayerInfo.f17361c;
        MediaControllerCompat.PlaybackInfo playbackInfo4 = legacyPlayerInfo.f17359a;
        if (list != list2) {
            HashMap map = new HashMap();
            int i15 = 0;
            while (i15 < list.size()) {
                MediaSessionCompat.QueueItem queueItem2 = (MediaSessionCompat.QueueItem) list.get(i15);
                MediaControllerCompat.PlaybackInfo playbackInfo5 = playbackInfo4;
                if (queueItem2.f17815b.f17783f != null) {
                    map.put(Long.valueOf(queueItem2.f17816c), queueItem2);
                }
                i15++;
                playbackInfo4 = playbackInfo5;
            }
            playbackInfo = playbackInfo4;
            int i16 = 0;
            while (i16 < list2.size()) {
                MediaSessionCompat.QueueItem queueItem3 = (MediaSessionCompat.QueueItem) list2.get(i16);
                if (queueItem3.f17815b.f17783f == null || (queueItem = (MediaSessionCompat.QueueItem) map.get(Long.valueOf(queueItem3.f17816c))) == null) {
                    i14 = i16;
                } else {
                    MediaDescriptionCompat mediaDescriptionCompat = queueItem3.f17815b;
                    MediaDescriptionCompat mediaDescriptionCompat2 = queueItem.f17815b;
                    mediaDescriptionCompat.getClass();
                    if (mediaDescriptionCompat2.g == null || (bitmap = mediaDescriptionCompat.f17783f) == null) {
                        i14 = i16;
                    } else {
                        i14 = i16;
                        Bitmap bitmap2 = mediaDescriptionCompat2.f17783f;
                        if (bitmap2 != null && bitmap.sameAs(bitmap2)) {
                            mediaDescriptionCompat.g = mediaDescriptionCompat2.g;
                        }
                    }
                }
                i16 = i14 + 1;
            }
        } else {
            playbackInfo = playbackInfo4;
        }
        boolean z18 = list != list2;
        if (z18) {
            QueueTimeline queueTimeline2 = QueueTimeline.g;
            ImmutableList.Builder builder5 = new ImmutableList.Builder();
            int i17 = 0;
            while (i17 < list2.size()) {
                MediaSessionCompat.QueueItem queueItem4 = (MediaSessionCompat.QueueItem) list2.get(i17);
                ImmutableSet immutableSet = LegacyConversions.f17303a;
                ImmutableList.Builder builder6 = builder5;
                builder6.e(new QueueTimeline.QueuedMediaItem(LegacyConversions.j(queueItem4.f17815b), queueItem4.f17816c, -9223372036854775807L));
                i17++;
                builder5 = builder6;
            }
            z3 = true;
            queueTimeline = new QueueTimeline(builder5.j(), null);
        } else {
            z3 = true;
            QueueTimeline queueTimeline3 = (QueueTimeline) controllerInfo2.f17354a.f17502j;
            queueTimeline = new QueueTimeline(queueTimeline3.f17524e, queueTimeline3.f17525f);
        }
        boolean z19 = (legacyPlayerInfo3.f17361c != mediaMetadataCompat4 || z) ? z3 : false;
        long j5 = playbackStateCompat == null ? -1L : playbackStateCompat.f17837k;
        long j6 = playbackStateCompat2 == null ? -1L : playbackStateCompat2.f17837k;
        boolean z20 = (j5 != j6 || z) ? z3 : false;
        long jD2 = LegacyConversions.d(mediaMetadataCompat4);
        if (z19 != 0 || z20 || z18) {
            if (list2 == null || j6 == -1) {
                z4 = z20;
                iO = -1;
                break;
            }
            iO = 0;
            while (true) {
                if (iO >= list2.size()) {
                    z4 = z20;
                    iO = -1;
                    break;
                } else {
                    z4 = z20;
                    if (((MediaSessionCompat.QueueItem) list2.get(iO)).f17816c == j6) {
                        break;
                    }
                    iO++;
                    z20 = z4;
                }
            }
            boolean z21 = mediaMetadataCompat4 != 0 ? z3 : false;
            if (z21 && z19) {
                mediaMetadataCompat = mediaMetadataCompat4;
                mediaMetadataL = LegacyConversions.m(mediaMetadataCompat, iL);
            } else {
                mediaMetadataCompat = mediaMetadataCompat4;
                mediaMetadataL = (z21 || !z4) ? controllerInfo2.f17354a.B : iO == -1 ? MediaMetadata.L : LegacyConversions.l(((MediaSessionCompat.QueueItem) list2.get(iO)).f17815b, iL);
            }
            ImmutableList immutableList3 = queueTimeline.f17524e;
            if (iO != -1 || z19 == 0) {
                if (iO != -1) {
                    queueTimeline = new QueueTimeline(immutableList3, null);
                    if (z21) {
                        MediaItem mediaItem2 = iO >= queueTimeline.o() ? null : queueTimeline.s(iO).f17526a;
                        mediaItem2.getClass();
                        MediaItem mediaItemK = LegacyConversions.k(mediaItem2.f13787a, mediaMetadataCompat, iL);
                        ImmutableList immutableList4 = queueTimeline.f17524e;
                        int size = immutableList4.size();
                        QueueTimeline.QueuedMediaItem queuedMediaItem2 = queueTimeline.f17525f;
                        Preconditions.g((iO < size || (iO == immutableList4.size() && queuedMediaItem2 != null)) ? z3 : false);
                        if (iO == immutableList4.size()) {
                            queueTimeline = new QueueTimeline(immutableList4, new QueueTimeline.QueuedMediaItem(mediaItemK, -1L, jD2));
                        } else {
                            long j7 = ((QueueTimeline.QueuedMediaItem) immutableList4.get(iO)).f17527b;
                            ImmutableList.Builder builder7 = new ImmutableList.Builder();
                            builder7.g(immutableList4.subList(0, iO));
                            builder7.e(new QueueTimeline.QueuedMediaItem(mediaItemK, j7, jD2));
                            builder7.g(immutableList4.subList(iO + 1, immutableList4.size()));
                            queueTimeline = new QueueTimeline(builder7.j(), queuedMediaItem2);
                        }
                    }
                } else {
                    iO = 0;
                }
            } else if (z21) {
                Log.g("Adding a fake MediaItem at the end of the list because there's no QueueItem with the active queue id and current Timeline should have currently playing MediaItem.");
                CharSequence charSequence3 = mediaMetadataCompat.f17796b.getCharSequence("android.media.metadata.MEDIA_ID");
                queueTimeline = new QueueTimeline(immutableList3, new QueueTimeline.QueuedMediaItem(LegacyConversions.k(charSequence3 != null ? charSequence3.toString() : null, mediaMetadataCompat, iL), -1L, jD2));
                iO = queueTimeline.o() - 1;
            } else {
                queueTimeline = new QueueTimeline(immutableList3, null);
                iO = 0;
            }
            i2 = iO;
            mediaMetadata = mediaMetadataL;
        } else {
            PlayerInfo playerInfo2 = controllerInfo2.f17354a;
            i2 = playerInfo2.f17497c.f17552a.f13931b;
            mediaMetadata = playerInfo2.B;
            mediaMetadataCompat = mediaMetadataCompat4;
        }
        if (playbackInfo != null) {
            playbackInfo2 = playbackInfo;
            i3 = playbackInfo2.f17776c;
        } else {
            playbackInfo2 = playbackInfo;
            i3 = 0;
        }
        Player.Commands.Builder builder8 = new Player.Commands.Builder();
        long j8 = playbackStateCompat2 == null ? 0L : playbackStateCompat2.f17833f;
        if (playbackStateCompat2 != null) {
            switch (playbackStateCompat2.f17830b) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                case 11:
                    z5 = z3;
                    break;
                case 7:
                case 8:
                default:
                    z5 = false;
                    break;
            }
        } else {
            z5 = false;
        }
        if (!LegacyConversions.y(j8, 4L) || z5) {
            j2 = 4;
            if ((LegacyConversions.y(j8, 2L) && z5) || LegacyConversions.y(j8, 512L)) {
            }
            if (LegacyConversions.y(j8, RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) || LegacyConversions.y(j8, 2048L) || LegacyConversions.y(j8, 8192L)) {
                builder8.a(31);
            }
            if (!LegacyConversions.y(j8, 16384L)) {
                bundle = bundle6;
                if (!LegacyConversions.y(j8, 32768L) || LegacyConversions.y(j8, 65536L) || LegacyConversions.y(j8, 131072L)) {
                }
                if (LegacyConversions.y(j8, 8L)) {
                    builder8.a(11);
                }
                if (LegacyConversions.y(j8, 64L)) {
                    builder8.a(12);
                }
                zY = LegacyConversions.y(j8, 256L);
                bundle2 = bundle;
                builder = builder8.f13926a;
                if (zY) {
                    builder.b(5, 4);
                }
                if (LegacyConversions.y(j8, 32L)) {
                    builder.b(9, 8);
                }
                if (LegacyConversions.y(j8, 16L)) {
                    builder.b(7, 6);
                }
                i4 = i3;
                if (LegacyConversions.y(j8, 4194304L)) {
                    builder8.a(13);
                }
                if (LegacyConversions.y(j8, 1L)) {
                    builder8.a(3);
                }
                if (i4 == 1) {
                    builder.b(26, 34);
                } else if (i4 == 2) {
                    builder.b(26, 34, 25, 33);
                }
                builder.b(23, 17, 18, 16, 21, 32);
                if ((jE & j2) != 0) {
                    builder8.a(20);
                }
                if (LegacyConversions.y(j8, 4096L)) {
                    builder8.a(10);
                }
                if (z2) {
                    if (LegacyConversions.y(j8, 262144L)) {
                        builder8.a(15);
                    }
                    if (LegacyConversions.y(j8, 2097152L)) {
                        builder8.a(14);
                    }
                }
                commandsC = builder8.c();
                charSequence = legacyPlayerInfo3.f17362e;
                charSequence2 = legacyPlayerInfo.f17362e;
                if (charSequence == charSequence2) {
                    mediaMetadata2 = controllerInfo2.f17354a.m;
                } else if (charSequence2 == null) {
                    mediaMetadata2 = MediaMetadata.L;
                } else {
                    MediaMetadata.Builder builder9 = new MediaMetadata.Builder();
                    builder9.f13888a = charSequence2;
                    mediaMetadata2 = new MediaMetadata(builder9);
                }
                MediaMetadata mediaMetadata3 = mediaMetadata2;
                iS = LegacyConversions.s(legacyPlayerInfo.f17363f);
                zU = LegacyConversions.u(legacyPlayerInfo.g);
                if (playbackStateCompat == playbackStateCompat2 || z17) {
                    SessionCommands.Builder builder10 = new SessionCommands.Builder();
                    builder10.a(SessionCommand.d);
                    hashSet = builder10.f17545a;
                    if (!z2) {
                        for (SessionCommand sessionCommand : hashSet) {
                            if (sessionCommand.f17539a == 40010) {
                                hashSet.remove(sessionCommand);
                            }
                        }
                    }
                    if (playbackStateCompat2 != null) {
                        for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat2.f17836j) {
                            String str = customAction.f17847b;
                            bundle5 = customAction.f17849e;
                            if (bundle5 == null) {
                                bundle5 = Bundle.EMPTY;
                            }
                            hashSet.add(new SessionCommand(str, bundle5));
                        }
                    }
                    SessionCommands sessionCommands3 = new SessionCommands(hashSet);
                    if (playbackStateCompat2 == null) {
                        i5 = iS;
                        z6 = zU;
                        immutableListK = ImmutableList.x();
                        sessionError = null;
                    } else {
                        List<PlaybackStateCompat.CustomAction> list3 = playbackStateCompat2.f17836j;
                        builder2 = new ImmutableList.Builder();
                        for (PlaybackStateCompat.CustomAction customAction2 : list3) {
                            String str2 = customAction2.f17847b;
                            bundle3 = customAction2.f17849e;
                            if (bundle3 != null) {
                                i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                            } else {
                                i6 = 0;
                            }
                            boolean z22 = zU;
                            builder3 = new CommandButton.Builder(i6, customAction2.d);
                            if (bundle3 == null) {
                                bundle4 = Bundle.EMPTY;
                            } else {
                                bundle4 = bundle3;
                            }
                            SessionCommand sessionCommand2 = new SessionCommand(str2, bundle4);
                            if (builder3.f17248c == -1) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                            builder3.f17247b = sessionCommand2;
                            builder3.f17253j = null;
                            builder3.f17250f = customAction2.f17848c;
                            builder3.f17251h = true;
                            if (bundle3 != null) {
                                builder3.g = new Bundle(bundle3);
                            }
                            if (bundle3 != null) {
                                string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                            } else {
                                string = null;
                            }
                            if (string != null) {
                                uri = Uri.parse(string);
                                scheme = uri.getScheme();
                                if (Objects.equals(scheme, "content") || Objects.equals(scheme, "android.resource")) {
                                    builder3.b(uri);
                                }
                            }
                            builder2.e(builder3.a());
                            iS = iS;
                            zU = z22;
                        }
                        i5 = iS;
                        z6 = zU;
                        sessionError = null;
                        immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
                    }
                    sessionCommands = sessionCommands3;
                    immutableList = immutableListK;
                } else {
                    sessionCommands = controllerInfo2.f17355b;
                    immutableList = controllerInfo2.d;
                    i5 = iS;
                    z6 = zU;
                    sessionError = null;
                }
                Context context = this.f17343a;
                PlaybackException playbackExceptionO = LegacyConversions.o(playbackStateCompat2, context);
                if (playbackStateCompat2 == null) {
                    i7 = playbackStateCompat2.f17830b;
                    int i18 = playbackStateCompat2.g;
                    CharSequence charSequence4 = playbackStateCompat2.f17834h;
                    Bundle bundle7 = playbackStateCompat2.l;
                    if (i7 != 7 || i18 == 0) {
                        sessionError = null;
                    } else {
                        int iT = LegacyConversions.t(i18);
                        String string2 = charSequence4 != null ? charSequence4.toString() : LegacyConversions.x(iT, context);
                        if (bundle7 == null) {
                            bundle7 = Bundle.EMPTY;
                        }
                        sessionError = new SessionError(iT, string2, bundle7);
                    }
                }
                long jC3 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
                long jB = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4);
                SessionError sessionError2 = sessionError;
                sessionCommands2 = sessionCommands;
                ImmutableList immutableList5 = immutableList;
                int iB = MediaUtils.b(LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4), LegacyConversions.d(mediaMetadataCompat));
                long jB2 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4) - LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
                if (mediaMetadataCompat == null && mediaMetadataCompat.a("android.media.metadata.ADVERTISEMENT") != 0) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (playbackStateCompat2 == null) {
                    playbackParameters = PlaybackParameters.d;
                } else {
                    playbackParameters = new PlaybackParameters(playbackStateCompat2.f17832e);
                }
                if (playbackInfo2 == 0) {
                    audioAttributes = AudioAttributes.f13689i;
                    playbackInfo3 = playbackInfo2;
                } else {
                    playbackInfo3 = playbackInfo2;
                    audioAttributes = playbackInfo3.f17775b;
                }
                if (playbackStateCompat2 == null) {
                    switch (playbackStateCompat2.f17830b) {
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 9:
                        case 10:
                        case 11:
                            z9 = true;
                            break;
                        case 7:
                        case 8:
                        default:
                            z9 = false;
                            break;
                    }
                } else {
                    z9 = false;
                }
                if (playbackStateCompat2 == null) {
                    sessionCommands2 = sessionCommands2;
                    i8 = 1;
                } else {
                    try {
                        i9 = playbackStateCompat2.f17830b;
                        jD = LegacyConversions.d(mediaMetadataCompat);
                        if (jD == -9223372036854775807L && LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4) >= jD) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        switch (i9) {
                            case 0:
                            case 7:
                            case 8:
                                sessionCommands2 = sessionCommands2;
                                i8 = 1;
                                break;
                            case 1:
                                sessionCommands2 = sessionCommands2;
                                if (z10) {
                                    i8 = 4;
                                } else {
                                    i8 = 1;
                                }
                                break;
                            case 2:
                                sessionCommands2 = sessionCommands2;
                                if (z10) {
                                    i8 = 4;
                                } else {
                                    i8 = 3;
                                }
                                break;
                            case 3:
                                sessionCommands2 = sessionCommands2;
                                i8 = 3;
                                break;
                            case 4:
                            case 5:
                            case 6:
                            case 9:
                            case 10:
                            case 11:
                                sessionCommands2 = sessionCommands2;
                                i8 = 2;
                                break;
                            default:
                                try {
                                    throw new LegacyConversions.ConversionException("Invalid state of PlaybackStateCompat: " + i9);
                                } catch (LegacyConversions.ConversionException unused) {
                                    Log.d("Received invalid playback state " + playbackStateCompat2.f17830b + " from package " + strG + ". Keeping the previous state.");
                                    i8 = controllerInfo2.f17354a.A;
                                    int i19 = i8;
                                    if (playbackStateCompat2 == null) {
                                        z11 = false;
                                    } else {
                                        z11 = true;
                                    }
                                    if (playbackInfo3 == null) {
                                        deviceInfoA = DeviceInfo.f13735e;
                                    } else {
                                        if (playbackInfo3.f17774a == 2) {
                                            i10 = 1;
                                        } else {
                                            i10 = 0;
                                        }
                                        builder4 = new DeviceInfo.Builder(i10);
                                        builder4.f13744c = playbackInfo3.d;
                                        String str3 = playbackInfo3.f17778f;
                                        if (builder4.f13742a == 0) {
                                            z12 = true;
                                        } else {
                                            z12 = true;
                                        }
                                        Preconditions.g(z12);
                                        builder4.d = str3;
                                        deviceInfoA = builder4.a();
                                    }
                                    DeviceInfo deviceInfo = deviceInfoA;
                                    if (playbackInfo3 == null) {
                                        i11 = 0;
                                    } else {
                                        i11 = playbackInfo3.f17777e;
                                    }
                                    if (playbackInfo3 == null) {
                                        z13 = false;
                                    } else {
                                        z13 = true;
                                    }
                                    PlayerInfo playerInfo3 = controllerInfo2.f17354a;
                                    long j9 = playerInfo3.C;
                                    long j10 = playerInfo3.D;
                                    long j11 = playerInfo3.E;
                                    Bundle bundle8 = legacyPlayerInfo.f17364h;
                                    i12 = i2;
                                    if (i12 >= queueTimeline.o()) {
                                        mediaItem = null;
                                    } else {
                                        mediaItem = queueTimeline.s(i12).f17526a;
                                    }
                                    SessionPositionInfo sessionPositionInfo = new SessionPositionInfo(U0(i12, mediaItem, jC3, z8), z8, SystemClock.elapsedRealtime(), jD2, jB, iB, jB2, -9223372036854775807L, jD2, jB);
                                    Player.PositionInfo positionInfo = SessionPositionInfo.f17551k;
                                    ControllerInfo controllerInfo3 = new ControllerInfo(new PlayerInfo(playbackExceptionO, 0, sessionPositionInfo, positionInfo, positionInfo, 0, playbackParameters, i5, z6, VideoSize.d, queueTimeline, 0, mediaMetadata3, 1.0f, 1.0f, audioAttributes, 0, CueGroup.d, deviceInfo, i11, z13, z9, 1, 0, i19, z11, false, mediaMetadata, j9, j10, j11, Tracks.f14010b, TrackSelectionParameters.J), sessionCommands2, commandsC, immutableList5, bundle8, sessionError2);
                                    legacyPlayerInfo2 = this.m;
                                    controllerInfo = this.p;
                                    j3 = mediaController.f17317f;
                                    num = 3;
                                    zP = controllerInfo.f17354a.f17502j.p();
                                    playerInfo = controllerInfo3.f17354a;
                                    boolean zP2 = playerInfo.f17502j.p();
                                    if (!zP) {
                                        if (zP) {
                                            mediaItemI = controllerInfo.f17354a.i();
                                            mediaItemI.getClass();
                                            QueueTimeline queueTimeline4 = (QueueTimeline) playerInfo.f17502j;
                                            immutableList2 = queueTimeline4.f17524e;
                                            queuedMediaItem = queueTimeline4.f17525f;
                                            if (queuedMediaItem == null) {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= immutableList2.size()) {
                                                        z14 = false;
                                                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                        z14 = true;
                                                    } else {
                                                        i13++;
                                                    }
                                                }
                                            } else {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= immutableList2.size()) {
                                                        z14 = false;
                                                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                        z14 = true;
                                                    } else {
                                                        i13++;
                                                    }
                                                }
                                            }
                                            if (z14) {
                                                num2 = 4;
                                            } else if (mediaItemI.equals(playerInfo.i())) {
                                                jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                                                jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                                                if (jC2 == 0) {
                                                    if (Math.abs(jC - jC2) > 100) {
                                                        num2 = 5;
                                                    } else {
                                                        num2 = null;
                                                    }
                                                    num3 = null;
                                                } else {
                                                    if (Math.abs(jC - jC2) > 100) {
                                                        num2 = 5;
                                                    } else {
                                                        num2 = null;
                                                    }
                                                    num3 = null;
                                                }
                                                num = num3;
                                            } else {
                                                z15 = true;
                                                num = 1;
                                                num2 = 0;
                                            }
                                            z15 = true;
                                        } else {
                                            mediaItemI = controllerInfo.f17354a.i();
                                            mediaItemI.getClass();
                                            QueueTimeline queueTimeline5 = (QueueTimeline) playerInfo.f17502j;
                                            immutableList2 = queueTimeline5.f17524e;
                                            queuedMediaItem = queueTimeline5.f17525f;
                                            if (queuedMediaItem == null) {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= immutableList2.size()) {
                                                        z14 = false;
                                                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                        z14 = true;
                                                    } else {
                                                        i13++;
                                                    }
                                                }
                                            } else {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= immutableList2.size()) {
                                                        z14 = false;
                                                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                        z14 = true;
                                                    } else {
                                                        i13++;
                                                    }
                                                }
                                            }
                                            if (z14) {
                                                num2 = 4;
                                            } else if (mediaItemI.equals(playerInfo.i())) {
                                                jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                                                jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                                                if (jC2 == 0) {
                                                    if (Math.abs(jC - jC2) > 100) {
                                                        num2 = 5;
                                                    } else {
                                                        num2 = null;
                                                    }
                                                    num3 = null;
                                                } else {
                                                    if (Math.abs(jC - jC2) > 100) {
                                                        num2 = 5;
                                                    } else {
                                                        num2 = null;
                                                    }
                                                    num3 = null;
                                                }
                                                num = num3;
                                            } else {
                                                z15 = true;
                                                num = 1;
                                                num2 = 0;
                                            }
                                            z15 = true;
                                        }
                                    } else if (zP) {
                                        mediaItemI = controllerInfo.f17354a.i();
                                        mediaItemI.getClass();
                                        QueueTimeline queueTimeline6 = (QueueTimeline) playerInfo.f17502j;
                                        immutableList2 = queueTimeline6.f17524e;
                                        queuedMediaItem = queueTimeline6.f17525f;
                                        if (queuedMediaItem == null) {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= immutableList2.size()) {
                                                    z14 = false;
                                                } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                    z14 = true;
                                                } else {
                                                    i13++;
                                                }
                                            }
                                        } else {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= immutableList2.size()) {
                                                    z14 = false;
                                                } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                    z14 = true;
                                                } else {
                                                    i13++;
                                                }
                                            }
                                        }
                                        if (z14) {
                                            num2 = 4;
                                        } else if (mediaItemI.equals(playerInfo.i())) {
                                            jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                                            jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                                            if (jC2 == 0) {
                                                if (Math.abs(jC - jC2) > 100) {
                                                    num2 = 5;
                                                } else {
                                                    num2 = null;
                                                }
                                                num3 = null;
                                            } else {
                                                if (Math.abs(jC - jC2) > 100) {
                                                    num2 = 5;
                                                } else {
                                                    num2 = null;
                                                }
                                                num3 = null;
                                            }
                                            num = num3;
                                        } else {
                                            z15 = true;
                                            num = 1;
                                            num2 = 0;
                                        }
                                        z15 = true;
                                    } else {
                                        mediaItemI = controllerInfo.f17354a.i();
                                        mediaItemI.getClass();
                                        QueueTimeline queueTimeline7 = (QueueTimeline) playerInfo.f17502j;
                                        immutableList2 = queueTimeline7.f17524e;
                                        queuedMediaItem = queueTimeline7.f17525f;
                                        if (queuedMediaItem == null) {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= immutableList2.size()) {
                                                    z14 = false;
                                                } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                    z14 = true;
                                                } else {
                                                    i13++;
                                                }
                                            }
                                        } else {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= immutableList2.size()) {
                                                    z14 = false;
                                                } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                                    z14 = true;
                                                } else {
                                                    i13++;
                                                }
                                            }
                                        }
                                        if (z14) {
                                            num2 = 4;
                                        } else if (mediaItemI.equals(playerInfo.i())) {
                                            jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                                            jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                                            if (jC2 == 0) {
                                                if (Math.abs(jC - jC2) > 100) {
                                                    num2 = 5;
                                                } else {
                                                    num2 = null;
                                                }
                                                num3 = null;
                                            } else {
                                                if (Math.abs(jC - jC2) > 100) {
                                                    num2 = 5;
                                                } else {
                                                    num2 = null;
                                                }
                                                num3 = null;
                                            }
                                            num = num3;
                                        } else {
                                            z15 = true;
                                            num = 1;
                                            num2 = 0;
                                        }
                                        z15 = true;
                                    }
                                    Pair pairCreate = Pair.create(num2, num);
                                    Z0(z, legacyPlayerInfo, true, controllerInfo3, (Integer) pairCreate.first, (Integer) pairCreate.second);
                                    if (this.o) {
                                        this.o = false;
                                        if (Looper.myLooper() == mediaController.f17316e.getLooper()) {
                                            z16 = z15;
                                        } else {
                                            z16 = false;
                                        }
                                        Preconditions.q(z16);
                                        mediaController.d.getClass();
                                    }
                                }
                        }
                    } catch (LegacyConversions.ConversionException unused2) {
                    }
                }
                int i110 = i8;
                if (playbackStateCompat2 == null && playbackStateCompat2.f17830b == 3) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (playbackInfo3 == null) {
                    deviceInfoA = DeviceInfo.f13735e;
                } else {
                    if (playbackInfo3.f17774a == 2) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    builder4 = new DeviceInfo.Builder(i10);
                    builder4.f13744c = playbackInfo3.d;
                    String str4 = playbackInfo3.f17778f;
                    if (builder4.f13742a == 0 || str4 == null) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    Preconditions.g(z12);
                    builder4.d = str4;
                    deviceInfoA = builder4.a();
                }
                DeviceInfo deviceInfo2 = deviceInfoA;
                if (playbackInfo3 == null) {
                    i11 = 0;
                } else {
                    i11 = playbackInfo3.f17777e;
                }
                if (playbackInfo3 == null && playbackInfo3.f17777e == 0) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                PlayerInfo playerInfo4 = controllerInfo2.f17354a;
                long j12 = playerInfo4.C;
                long j13 = playerInfo4.D;
                long j14 = playerInfo4.E;
                Bundle bundle9 = legacyPlayerInfo.f17364h;
                i12 = i2;
                if (i12 >= queueTimeline.o()) {
                    mediaItem = null;
                } else {
                    mediaItem = queueTimeline.s(i12).f17526a;
                }
                SessionPositionInfo sessionPositionInfo2 = new SessionPositionInfo(U0(i12, mediaItem, jC3, z8), z8, SystemClock.elapsedRealtime(), jD2, jB, iB, jB2, -9223372036854775807L, jD2, jB);
                Player.PositionInfo positionInfo2 = SessionPositionInfo.f17551k;
                ControllerInfo controllerInfo4 = new ControllerInfo(new PlayerInfo(playbackExceptionO, 0, sessionPositionInfo2, positionInfo2, positionInfo2, 0, playbackParameters, i5, z6, VideoSize.d, queueTimeline, 0, mediaMetadata3, 1.0f, 1.0f, audioAttributes, 0, CueGroup.d, deviceInfo2, i11, z13, z9, 1, 0, i110, z11, false, mediaMetadata, j12, j13, j14, Tracks.f14010b, TrackSelectionParameters.J), sessionCommands2, commandsC, immutableList5, bundle9, sessionError2);
                legacyPlayerInfo2 = this.m;
                controllerInfo = this.p;
                j3 = mediaController.f17317f;
                num = 3;
                zP = controllerInfo.f17354a.f17502j.p();
                playerInfo = controllerInfo4.f17354a;
                boolean zP3 = playerInfo.f17502j.p();
                if (!zP && zP3) {
                    num = null;
                    num2 = null;
                } else if (zP || zP3) {
                    mediaItemI = controllerInfo.f17354a.i();
                    mediaItemI.getClass();
                    QueueTimeline queueTimeline8 = (QueueTimeline) playerInfo.f17502j;
                    immutableList2 = queueTimeline8.f17524e;
                    queuedMediaItem = queueTimeline8.f17525f;
                    if (queuedMediaItem == null && mediaItemI.equals(queuedMediaItem.f17526a)) {
                        z14 = true;
                    } else {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    }
                    if (z14) {
                        if (mediaItemI.equals(playerInfo.i())) {
                            jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                            jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                            if (jC2 == 0 || playerInfo.f17500h != 1) {
                                if (Math.abs(jC - jC2) > 100) {
                                    num2 = 5;
                                } else {
                                    num2 = null;
                                }
                                num3 = null;
                            } else {
                                num2 = 0;
                                num3 = null;
                            }
                            num = num3;
                        } else {
                            z15 = true;
                            num = 1;
                            num2 = 0;
                        }
                        Pair pairCreate2 = Pair.create(num2, num);
                        Z0(z, legacyPlayerInfo, true, controllerInfo4, (Integer) pairCreate2.first, (Integer) pairCreate2.second);
                        if (this.o) {
                            this.o = false;
                            if (Looper.myLooper() == mediaController.f17316e.getLooper()) {
                                z16 = z15;
                            } else {
                                z16 = false;
                            }
                            Preconditions.q(z16);
                            mediaController.d.getClass();
                        }
                    }
                    num2 = 4;
                } else {
                    num2 = 0;
                }
                z15 = true;
                Pair pairCreate3 = Pair.create(num2, num);
                Z0(z, legacyPlayerInfo, true, controllerInfo4, (Integer) pairCreate3.first, (Integer) pairCreate3.second);
                if (this.o) {
                    this.o = false;
                    if (Looper.myLooper() == mediaController.f17316e.getLooper()) {
                        z16 = z15;
                    } else {
                        z16 = false;
                    }
                    Preconditions.q(z16);
                    mediaController.d.getClass();
                }
            }
            bundle = bundle6;
            builder8.a(2);
            if (LegacyConversions.y(j8, 8L)) {
                builder8.a(11);
            }
            if (LegacyConversions.y(j8, 64L)) {
                builder8.a(12);
            }
            zY = LegacyConversions.y(j8, 256L);
            bundle2 = bundle;
            builder = builder8.f13926a;
            if (zY) {
                builder.b(5, 4);
            }
            if (LegacyConversions.y(j8, 32L)) {
                builder.b(9, 8);
            }
            if (LegacyConversions.y(j8, 16L)) {
                builder.b(7, 6);
            }
            i4 = i3;
            if (LegacyConversions.y(j8, 4194304L)) {
                builder8.a(13);
            }
            if (LegacyConversions.y(j8, 1L)) {
                builder8.a(3);
            }
            if (i4 == 1) {
                builder.b(26, 34);
            } else if (i4 == 2) {
                builder.b(26, 34, 25, 33);
            }
            builder.b(23, 17, 18, 16, 21, 32);
            if ((jE & j2) != 0) {
                builder8.a(20);
            }
            if (LegacyConversions.y(j8, 4096L)) {
                builder8.a(10);
            }
            if (z2) {
                if (LegacyConversions.y(j8, 262144L)) {
                    builder8.a(15);
                }
                if (LegacyConversions.y(j8, 2097152L)) {
                    builder8.a(14);
                }
            }
            commandsC = builder8.c();
            charSequence = legacyPlayerInfo3.f17362e;
            charSequence2 = legacyPlayerInfo.f17362e;
            if (charSequence == charSequence2) {
                mediaMetadata2 = controllerInfo2.f17354a.m;
            } else if (charSequence2 == null) {
                mediaMetadata2 = MediaMetadata.L;
            } else {
                MediaMetadata.Builder builder11 = new MediaMetadata.Builder();
                builder11.f13888a = charSequence2;
                mediaMetadata2 = new MediaMetadata(builder11);
            }
            MediaMetadata mediaMetadata4 = mediaMetadata2;
            iS = LegacyConversions.s(legacyPlayerInfo.f17363f);
            zU = LegacyConversions.u(legacyPlayerInfo.g);
            if (playbackStateCompat == playbackStateCompat2) {
                SessionCommands.Builder builder12 = new SessionCommands.Builder();
                builder12.a(SessionCommand.d);
                hashSet = builder12.f17545a;
                if (!z2) {
                    while (r8.hasNext()) {
                        if (sessionCommand.f17539a == 40010) {
                            hashSet.remove(sessionCommand);
                        }
                    }
                }
                if (playbackStateCompat2 != null) {
                    while (r8.hasNext()) {
                        String str5 = customAction.f17847b;
                        bundle5 = customAction.f17849e;
                        if (bundle5 == null) {
                            bundle5 = Bundle.EMPTY;
                        }
                        hashSet.add(new SessionCommand(str5, bundle5));
                    }
                }
                SessionCommands sessionCommands4 = new SessionCommands(hashSet);
                if (playbackStateCompat2 == null) {
                    i5 = iS;
                    z6 = zU;
                    immutableListK = ImmutableList.x();
                    sessionError = null;
                } else {
                    List<PlaybackStateCompat.CustomAction> list4 = playbackStateCompat2.f17836j;
                    builder2 = new ImmutableList.Builder();
                    while (r7.hasNext()) {
                        String str6 = customAction2.f17847b;
                        bundle3 = customAction2.f17849e;
                        if (bundle3 != null) {
                            i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                        } else {
                            i6 = 0;
                        }
                        boolean z23 = zU;
                        builder3 = new CommandButton.Builder(i6, customAction2.d);
                        if (bundle3 == null) {
                            bundle4 = Bundle.EMPTY;
                        } else {
                            bundle4 = bundle3;
                        }
                        SessionCommand sessionCommand3 = new SessionCommand(str6, bundle4);
                        if (builder3.f17248c == -1) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                        builder3.f17247b = sessionCommand3;
                        builder3.f17253j = null;
                        builder3.f17250f = customAction2.f17848c;
                        builder3.f17251h = true;
                        if (bundle3 != null) {
                            builder3.g = new Bundle(bundle3);
                        }
                        if (bundle3 != null) {
                            string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                        } else {
                            string = null;
                        }
                        if (string != null) {
                            uri = Uri.parse(string);
                            scheme = uri.getScheme();
                            if (Objects.equals(scheme, "content")) {
                                builder3.b(uri);
                            } else {
                                builder3.b(uri);
                            }
                        }
                        builder2.e(builder3.a());
                        iS = iS;
                        zU = z23;
                    }
                    i5 = iS;
                    z6 = zU;
                    sessionError = null;
                    immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
                }
                sessionCommands = sessionCommands4;
                immutableList = immutableListK;
            } else {
                SessionCommands.Builder builder13 = new SessionCommands.Builder();
                builder13.a(SessionCommand.d);
                hashSet = builder13.f17545a;
                if (!z2) {
                    while (r8.hasNext()) {
                        if (sessionCommand.f17539a == 40010) {
                            hashSet.remove(sessionCommand);
                        }
                    }
                }
                if (playbackStateCompat2 != null) {
                    while (r8.hasNext()) {
                        String str7 = customAction.f17847b;
                        bundle5 = customAction.f17849e;
                        if (bundle5 == null) {
                            bundle5 = Bundle.EMPTY;
                        }
                        hashSet.add(new SessionCommand(str7, bundle5));
                    }
                }
                SessionCommands sessionCommands5 = new SessionCommands(hashSet);
                if (playbackStateCompat2 == null) {
                    i5 = iS;
                    z6 = zU;
                    immutableListK = ImmutableList.x();
                    sessionError = null;
                } else {
                    List<PlaybackStateCompat.CustomAction> list5 = playbackStateCompat2.f17836j;
                    builder2 = new ImmutableList.Builder();
                    while (r7.hasNext()) {
                        String str8 = customAction2.f17847b;
                        bundle3 = customAction2.f17849e;
                        if (bundle3 != null) {
                            i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                        } else {
                            i6 = 0;
                        }
                        boolean z24 = zU;
                        builder3 = new CommandButton.Builder(i6, customAction2.d);
                        if (bundle3 == null) {
                            bundle4 = Bundle.EMPTY;
                        } else {
                            bundle4 = bundle3;
                        }
                        SessionCommand sessionCommand4 = new SessionCommand(str8, bundle4);
                        if (builder3.f17248c == -1) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                        builder3.f17247b = sessionCommand4;
                        builder3.f17253j = null;
                        builder3.f17250f = customAction2.f17848c;
                        builder3.f17251h = true;
                        if (bundle3 != null) {
                            builder3.g = new Bundle(bundle3);
                        }
                        if (bundle3 != null) {
                            string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                        } else {
                            string = null;
                        }
                        if (string != null) {
                            uri = Uri.parse(string);
                            scheme = uri.getScheme();
                            if (Objects.equals(scheme, "content")) {
                                builder3.b(uri);
                            } else {
                                builder3.b(uri);
                            }
                        }
                        builder2.e(builder3.a());
                        iS = iS;
                        zU = z24;
                    }
                    i5 = iS;
                    z6 = zU;
                    sessionError = null;
                    immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
                }
                sessionCommands = sessionCommands5;
                immutableList = immutableListK;
            }
            Context context2 = this.f17343a;
            PlaybackException playbackExceptionO2 = LegacyConversions.o(playbackStateCompat2, context2);
            if (playbackStateCompat2 == null) {
                i7 = playbackStateCompat2.f17830b;
                int i111 = playbackStateCompat2.g;
                CharSequence charSequence5 = playbackStateCompat2.f17834h;
                Bundle bundle10 = playbackStateCompat2.l;
                if (i7 != 7) {
                }
                sessionError = null;
            }
            long jC4 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
            long jB3 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4);
            SessionError sessionError3 = sessionError;
            sessionCommands2 = sessionCommands;
            ImmutableList immutableList6 = immutableList;
            int iB2 = MediaUtils.b(LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4), LegacyConversions.d(mediaMetadataCompat));
            long jB4 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4) - LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
            if (mediaMetadataCompat == null) {
                z8 = false;
            } else {
                z8 = true;
            }
            if (playbackStateCompat2 == null) {
                playbackParameters = PlaybackParameters.d;
            } else {
                playbackParameters = new PlaybackParameters(playbackStateCompat2.f17832e);
            }
            if (playbackInfo2 == 0) {
                audioAttributes = AudioAttributes.f13689i;
                playbackInfo3 = playbackInfo2;
            } else {
                playbackInfo3 = playbackInfo2;
                audioAttributes = playbackInfo3.f17775b;
            }
            if (playbackStateCompat2 == null) {
                switch (playbackStateCompat2.f17830b) {
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 9:
                    case 10:
                    case 11:
                        z9 = true;
                        break;
                    case 7:
                    case 8:
                    default:
                        z9 = false;
                        break;
                }
            } else {
                z9 = false;
            }
            if (playbackStateCompat2 == null) {
                sessionCommands2 = sessionCommands2;
                i8 = 1;
            } else {
                i9 = playbackStateCompat2.f17830b;
                jD = LegacyConversions.d(mediaMetadataCompat);
                if (jD == -9223372036854775807L) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                switch (i9) {
                    case 0:
                    case 7:
                    case 8:
                        sessionCommands2 = sessionCommands2;
                        i8 = 1;
                        break;
                    case 1:
                        sessionCommands2 = sessionCommands2;
                        if (z10) {
                            i8 = 4;
                        } else {
                            i8 = 1;
                        }
                        break;
                    case 2:
                        sessionCommands2 = sessionCommands2;
                        if (z10) {
                            i8 = 4;
                        } else {
                            i8 = 3;
                        }
                        break;
                    case 3:
                        sessionCommands2 = sessionCommands2;
                        i8 = 3;
                        break;
                    case 4:
                    case 5:
                    case 6:
                    case 9:
                    case 10:
                    case 11:
                        sessionCommands2 = sessionCommands2;
                        i8 = 2;
                        break;
                    default:
                        throw new LegacyConversions.ConversionException("Invalid state of PlaybackStateCompat: " + i9);
                }
            }
            int i112 = i8;
            if (playbackStateCompat2 == null) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (playbackInfo3 == null) {
                deviceInfoA = DeviceInfo.f13735e;
            } else {
                if (playbackInfo3.f17774a == 2) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                builder4 = new DeviceInfo.Builder(i10);
                builder4.f13744c = playbackInfo3.d;
                String str9 = playbackInfo3.f17778f;
                if (builder4.f13742a == 0) {
                    z12 = true;
                } else {
                    z12 = true;
                }
                Preconditions.g(z12);
                builder4.d = str9;
                deviceInfoA = builder4.a();
            }
            DeviceInfo deviceInfo3 = deviceInfoA;
            if (playbackInfo3 == null) {
                i11 = 0;
            } else {
                i11 = playbackInfo3.f17777e;
            }
            if (playbackInfo3 == null) {
                z13 = false;
            } else {
                z13 = true;
            }
            PlayerInfo playerInfo5 = controllerInfo2.f17354a;
            long j15 = playerInfo5.C;
            long j16 = playerInfo5.D;
            long j17 = playerInfo5.E;
            Bundle bundle11 = legacyPlayerInfo.f17364h;
            i12 = i2;
            if (i12 >= queueTimeline.o()) {
                mediaItem = null;
            } else {
                mediaItem = queueTimeline.s(i12).f17526a;
            }
            SessionPositionInfo sessionPositionInfo3 = new SessionPositionInfo(U0(i12, mediaItem, jC4, z8), z8, SystemClock.elapsedRealtime(), jD2, jB3, iB2, jB4, -9223372036854775807L, jD2, jB3);
            Player.PositionInfo positionInfo3 = SessionPositionInfo.f17551k;
            ControllerInfo controllerInfo5 = new ControllerInfo(new PlayerInfo(playbackExceptionO2, 0, sessionPositionInfo3, positionInfo3, positionInfo3, 0, playbackParameters, i5, z6, VideoSize.d, queueTimeline, 0, mediaMetadata4, 1.0f, 1.0f, audioAttributes, 0, CueGroup.d, deviceInfo3, i11, z13, z9, 1, 0, i112, z11, false, mediaMetadata, j15, j16, j17, Tracks.f14010b, TrackSelectionParameters.J), sessionCommands2, commandsC, immutableList6, bundle11, sessionError3);
            legacyPlayerInfo2 = this.m;
            controllerInfo = this.p;
            j3 = mediaController.f17317f;
            num = 3;
            zP = controllerInfo.f17354a.f17502j.p();
            playerInfo = controllerInfo5.f17354a;
            boolean zP4 = playerInfo.f17502j.p();
            if (!zP) {
                if (zP) {
                    mediaItemI = controllerInfo.f17354a.i();
                    mediaItemI.getClass();
                    QueueTimeline queueTimeline9 = (QueueTimeline) playerInfo.f17502j;
                    immutableList2 = queueTimeline9.f17524e;
                    queuedMediaItem = queueTimeline9.f17525f;
                    if (queuedMediaItem == null) {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    } else {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    }
                    if (z14) {
                        num2 = 4;
                    } else if (mediaItemI.equals(playerInfo.i())) {
                        jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                        jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                        if (jC2 == 0) {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        } else {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        }
                        num = num3;
                    } else {
                        z15 = true;
                        num = 1;
                        num2 = 0;
                    }
                    z15 = true;
                } else {
                    mediaItemI = controllerInfo.f17354a.i();
                    mediaItemI.getClass();
                    QueueTimeline queueTimeline10 = (QueueTimeline) playerInfo.f17502j;
                    immutableList2 = queueTimeline10.f17524e;
                    queuedMediaItem = queueTimeline10.f17525f;
                    if (queuedMediaItem == null) {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    } else {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    }
                    if (z14) {
                        num2 = 4;
                    } else if (mediaItemI.equals(playerInfo.i())) {
                        jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                        jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                        if (jC2 == 0) {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        } else {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        }
                        num = num3;
                    } else {
                        z15 = true;
                        num = 1;
                        num2 = 0;
                    }
                    z15 = true;
                }
            } else if (zP) {
                mediaItemI = controllerInfo.f17354a.i();
                mediaItemI.getClass();
                QueueTimeline queueTimeline11 = (QueueTimeline) playerInfo.f17502j;
                immutableList2 = queueTimeline11.f17524e;
                queuedMediaItem = queueTimeline11.f17525f;
                if (queuedMediaItem == null) {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                } else {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                }
                if (z14) {
                    num2 = 4;
                } else if (mediaItemI.equals(playerInfo.i())) {
                    jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                    jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                    if (jC2 == 0) {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    } else {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    }
                    num = num3;
                } else {
                    z15 = true;
                    num = 1;
                    num2 = 0;
                }
                z15 = true;
            } else {
                mediaItemI = controllerInfo.f17354a.i();
                mediaItemI.getClass();
                QueueTimeline queueTimeline12 = (QueueTimeline) playerInfo.f17502j;
                immutableList2 = queueTimeline12.f17524e;
                queuedMediaItem = queueTimeline12.f17525f;
                if (queuedMediaItem == null) {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                } else {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                }
                if (z14) {
                    num2 = 4;
                } else if (mediaItemI.equals(playerInfo.i())) {
                    jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                    jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                    if (jC2 == 0) {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    } else {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    }
                    num = num3;
                } else {
                    z15 = true;
                    num = 1;
                    num2 = 0;
                }
                z15 = true;
            }
            Pair pairCreate4 = Pair.create(num2, num);
            Z0(z, legacyPlayerInfo, true, controllerInfo5, (Integer) pairCreate4.first, (Integer) pairCreate4.second);
            if (this.o) {
                this.o = false;
                if (Looper.myLooper() == mediaController.f17316e.getLooper()) {
                    z16 = z15;
                } else {
                    z16 = false;
                }
                Preconditions.q(z16);
                mediaController.d.getClass();
            }
        }
        j2 = 4;
        builder8.a(z3 ? 1 : 0);
        if (LegacyConversions.y(j8, RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE)) {
            builder8.a(31);
        } else {
            builder8.a(31);
        }
        if (!LegacyConversions.y(j8, 16384L)) {
            bundle = bundle6;
            if (!LegacyConversions.y(j8, 32768L)) {
            }
            if (LegacyConversions.y(j8, 8L)) {
                builder8.a(11);
            }
            if (LegacyConversions.y(j8, 64L)) {
                builder8.a(12);
            }
            zY = LegacyConversions.y(j8, 256L);
            bundle2 = bundle;
            builder = builder8.f13926a;
            if (zY) {
                builder.b(5, 4);
            }
            if (LegacyConversions.y(j8, 32L)) {
                builder.b(9, 8);
            }
            if (LegacyConversions.y(j8, 16L)) {
                builder.b(7, 6);
            }
            i4 = i3;
            if (LegacyConversions.y(j8, 4194304L)) {
                builder8.a(13);
            }
            if (LegacyConversions.y(j8, 1L)) {
                builder8.a(3);
            }
            if (i4 == 1) {
                builder.b(26, 34);
            } else if (i4 == 2) {
                builder.b(26, 34, 25, 33);
            }
            builder.b(23, 17, 18, 16, 21, 32);
            if ((jE & j2) != 0) {
                builder8.a(20);
            }
            if (LegacyConversions.y(j8, 4096L)) {
                builder8.a(10);
            }
            if (z2) {
                if (LegacyConversions.y(j8, 262144L)) {
                    builder8.a(15);
                }
                if (LegacyConversions.y(j8, 2097152L)) {
                    builder8.a(14);
                }
            }
            commandsC = builder8.c();
            charSequence = legacyPlayerInfo3.f17362e;
            charSequence2 = legacyPlayerInfo.f17362e;
            if (charSequence == charSequence2) {
                mediaMetadata2 = controllerInfo2.f17354a.m;
            } else if (charSequence2 == null) {
                mediaMetadata2 = MediaMetadata.L;
            } else {
                MediaMetadata.Builder builder14 = new MediaMetadata.Builder();
                builder14.f13888a = charSequence2;
                mediaMetadata2 = new MediaMetadata(builder14);
            }
            MediaMetadata mediaMetadata5 = mediaMetadata2;
            iS = LegacyConversions.s(legacyPlayerInfo.f17363f);
            zU = LegacyConversions.u(legacyPlayerInfo.g);
            if (playbackStateCompat == playbackStateCompat2) {
                SessionCommands.Builder builder15 = new SessionCommands.Builder();
                builder15.a(SessionCommand.d);
                hashSet = builder15.f17545a;
                if (!z2) {
                    while (r8.hasNext()) {
                        if (sessionCommand.f17539a == 40010) {
                            hashSet.remove(sessionCommand);
                        }
                    }
                }
                if (playbackStateCompat2 != null) {
                    while (r8.hasNext()) {
                        String str10 = customAction.f17847b;
                        bundle5 = customAction.f17849e;
                        if (bundle5 == null) {
                            bundle5 = Bundle.EMPTY;
                        }
                        hashSet.add(new SessionCommand(str10, bundle5));
                    }
                }
                SessionCommands sessionCommands6 = new SessionCommands(hashSet);
                if (playbackStateCompat2 == null) {
                    i5 = iS;
                    z6 = zU;
                    immutableListK = ImmutableList.x();
                    sessionError = null;
                } else {
                    List<PlaybackStateCompat.CustomAction> list6 = playbackStateCompat2.f17836j;
                    builder2 = new ImmutableList.Builder();
                    while (r7.hasNext()) {
                        String str11 = customAction2.f17847b;
                        bundle3 = customAction2.f17849e;
                        if (bundle3 != null) {
                            i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                        } else {
                            i6 = 0;
                        }
                        boolean z25 = zU;
                        builder3 = new CommandButton.Builder(i6, customAction2.d);
                        if (bundle3 == null) {
                            bundle4 = Bundle.EMPTY;
                        } else {
                            bundle4 = bundle3;
                        }
                        SessionCommand sessionCommand5 = new SessionCommand(str11, bundle4);
                        if (builder3.f17248c == -1) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                        builder3.f17247b = sessionCommand5;
                        builder3.f17253j = null;
                        builder3.f17250f = customAction2.f17848c;
                        builder3.f17251h = true;
                        if (bundle3 != null) {
                            builder3.g = new Bundle(bundle3);
                        }
                        if (bundle3 != null) {
                            string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                        } else {
                            string = null;
                        }
                        if (string != null) {
                            uri = Uri.parse(string);
                            scheme = uri.getScheme();
                            if (Objects.equals(scheme, "content")) {
                                builder3.b(uri);
                            } else {
                                builder3.b(uri);
                            }
                        }
                        builder2.e(builder3.a());
                        iS = iS;
                        zU = z25;
                    }
                    i5 = iS;
                    z6 = zU;
                    sessionError = null;
                    immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
                }
                sessionCommands = sessionCommands6;
                immutableList = immutableListK;
            } else {
                SessionCommands.Builder builder16 = new SessionCommands.Builder();
                builder16.a(SessionCommand.d);
                hashSet = builder16.f17545a;
                if (!z2) {
                    while (r8.hasNext()) {
                        if (sessionCommand.f17539a == 40010) {
                            hashSet.remove(sessionCommand);
                        }
                    }
                }
                if (playbackStateCompat2 != null) {
                    while (r8.hasNext()) {
                        String str12 = customAction.f17847b;
                        bundle5 = customAction.f17849e;
                        if (bundle5 == null) {
                            bundle5 = Bundle.EMPTY;
                        }
                        hashSet.add(new SessionCommand(str12, bundle5));
                    }
                }
                SessionCommands sessionCommands7 = new SessionCommands(hashSet);
                if (playbackStateCompat2 == null) {
                    i5 = iS;
                    z6 = zU;
                    immutableListK = ImmutableList.x();
                    sessionError = null;
                } else {
                    List<PlaybackStateCompat.CustomAction> list7 = playbackStateCompat2.f17836j;
                    builder2 = new ImmutableList.Builder();
                    while (r7.hasNext()) {
                        String str13 = customAction2.f17847b;
                        bundle3 = customAction2.f17849e;
                        if (bundle3 != null) {
                            i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                        } else {
                            i6 = 0;
                        }
                        boolean z26 = zU;
                        builder3 = new CommandButton.Builder(i6, customAction2.d);
                        if (bundle3 == null) {
                            bundle4 = Bundle.EMPTY;
                        } else {
                            bundle4 = bundle3;
                        }
                        SessionCommand sessionCommand6 = new SessionCommand(str13, bundle4);
                        if (builder3.f17248c == -1) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                        builder3.f17247b = sessionCommand6;
                        builder3.f17253j = null;
                        builder3.f17250f = customAction2.f17848c;
                        builder3.f17251h = true;
                        if (bundle3 != null) {
                            builder3.g = new Bundle(bundle3);
                        }
                        if (bundle3 != null) {
                            string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                        } else {
                            string = null;
                        }
                        if (string != null) {
                            uri = Uri.parse(string);
                            scheme = uri.getScheme();
                            if (Objects.equals(scheme, "content")) {
                                builder3.b(uri);
                            } else {
                                builder3.b(uri);
                            }
                        }
                        builder2.e(builder3.a());
                        iS = iS;
                        zU = z26;
                    }
                    i5 = iS;
                    z6 = zU;
                    sessionError = null;
                    immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
                }
                sessionCommands = sessionCommands7;
                immutableList = immutableListK;
            }
            Context context3 = this.f17343a;
            PlaybackException playbackExceptionO3 = LegacyConversions.o(playbackStateCompat2, context3);
            if (playbackStateCompat2 == null) {
                i7 = playbackStateCompat2.f17830b;
                int i113 = playbackStateCompat2.g;
                CharSequence charSequence6 = playbackStateCompat2.f17834h;
                Bundle bundle12 = playbackStateCompat2.l;
                if (i7 != 7) {
                }
                sessionError = null;
            }
            long jC5 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
            long jB5 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4);
            SessionError sessionError4 = sessionError;
            sessionCommands2 = sessionCommands;
            ImmutableList immutableList7 = immutableList;
            int iB3 = MediaUtils.b(LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4), LegacyConversions.d(mediaMetadataCompat));
            long jB6 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4) - LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
            if (mediaMetadataCompat == null) {
                z8 = false;
            } else {
                z8 = true;
            }
            if (playbackStateCompat2 == null) {
                playbackParameters = PlaybackParameters.d;
            } else {
                playbackParameters = new PlaybackParameters(playbackStateCompat2.f17832e);
            }
            if (playbackInfo2 == 0) {
                audioAttributes = AudioAttributes.f13689i;
                playbackInfo3 = playbackInfo2;
            } else {
                playbackInfo3 = playbackInfo2;
                audioAttributes = playbackInfo3.f17775b;
            }
            if (playbackStateCompat2 == null) {
                switch (playbackStateCompat2.f17830b) {
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 9:
                    case 10:
                    case 11:
                        z9 = true;
                        break;
                    case 7:
                    case 8:
                    default:
                        z9 = false;
                        break;
                }
            } else {
                z9 = false;
            }
            if (playbackStateCompat2 == null) {
                sessionCommands2 = sessionCommands2;
                i8 = 1;
            } else {
                i9 = playbackStateCompat2.f17830b;
                jD = LegacyConversions.d(mediaMetadataCompat);
                if (jD == -9223372036854775807L) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                switch (i9) {
                    case 0:
                    case 7:
                    case 8:
                        sessionCommands2 = sessionCommands2;
                        i8 = 1;
                        break;
                    case 1:
                        sessionCommands2 = sessionCommands2;
                        if (z10) {
                            i8 = 4;
                        } else {
                            i8 = 1;
                        }
                        break;
                    case 2:
                        sessionCommands2 = sessionCommands2;
                        if (z10) {
                            i8 = 4;
                        } else {
                            i8 = 3;
                        }
                        break;
                    case 3:
                        sessionCommands2 = sessionCommands2;
                        i8 = 3;
                        break;
                    case 4:
                    case 5:
                    case 6:
                    case 9:
                    case 10:
                    case 11:
                        sessionCommands2 = sessionCommands2;
                        i8 = 2;
                        break;
                    default:
                        throw new LegacyConversions.ConversionException("Invalid state of PlaybackStateCompat: " + i9);
                }
            }
            int i114 = i8;
            if (playbackStateCompat2 == null) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (playbackInfo3 == null) {
                deviceInfoA = DeviceInfo.f13735e;
            } else {
                if (playbackInfo3.f17774a == 2) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                builder4 = new DeviceInfo.Builder(i10);
                builder4.f13744c = playbackInfo3.d;
                String str14 = playbackInfo3.f17778f;
                if (builder4.f13742a == 0) {
                    z12 = true;
                } else {
                    z12 = true;
                }
                Preconditions.g(z12);
                builder4.d = str14;
                deviceInfoA = builder4.a();
            }
            DeviceInfo deviceInfo4 = deviceInfoA;
            if (playbackInfo3 == null) {
                i11 = 0;
            } else {
                i11 = playbackInfo3.f17777e;
            }
            if (playbackInfo3 == null) {
                z13 = false;
            } else {
                z13 = true;
            }
            PlayerInfo playerInfo6 = controllerInfo2.f17354a;
            long j18 = playerInfo6.C;
            long j19 = playerInfo6.D;
            long j110 = playerInfo6.E;
            Bundle bundle13 = legacyPlayerInfo.f17364h;
            i12 = i2;
            if (i12 >= queueTimeline.o()) {
                mediaItem = null;
            } else {
                mediaItem = queueTimeline.s(i12).f17526a;
            }
            SessionPositionInfo sessionPositionInfo4 = new SessionPositionInfo(U0(i12, mediaItem, jC5, z8), z8, SystemClock.elapsedRealtime(), jD2, jB5, iB3, jB6, -9223372036854775807L, jD2, jB5);
            Player.PositionInfo positionInfo4 = SessionPositionInfo.f17551k;
            ControllerInfo controllerInfo6 = new ControllerInfo(new PlayerInfo(playbackExceptionO3, 0, sessionPositionInfo4, positionInfo4, positionInfo4, 0, playbackParameters, i5, z6, VideoSize.d, queueTimeline, 0, mediaMetadata5, 1.0f, 1.0f, audioAttributes, 0, CueGroup.d, deviceInfo4, i11, z13, z9, 1, 0, i114, z11, false, mediaMetadata, j18, j19, j110, Tracks.f14010b, TrackSelectionParameters.J), sessionCommands2, commandsC, immutableList7, bundle13, sessionError4);
            legacyPlayerInfo2 = this.m;
            controllerInfo = this.p;
            j3 = mediaController.f17317f;
            num = 3;
            zP = controllerInfo.f17354a.f17502j.p();
            playerInfo = controllerInfo6.f17354a;
            boolean zP5 = playerInfo.f17502j.p();
            if (!zP) {
                if (zP) {
                    mediaItemI = controllerInfo.f17354a.i();
                    mediaItemI.getClass();
                    QueueTimeline queueTimeline13 = (QueueTimeline) playerInfo.f17502j;
                    immutableList2 = queueTimeline13.f17524e;
                    queuedMediaItem = queueTimeline13.f17525f;
                    if (queuedMediaItem == null) {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    } else {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    }
                    if (z14) {
                        num2 = 4;
                    } else if (mediaItemI.equals(playerInfo.i())) {
                        jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                        jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                        if (jC2 == 0) {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        } else {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        }
                        num = num3;
                    } else {
                        z15 = true;
                        num = 1;
                        num2 = 0;
                    }
                    z15 = true;
                } else {
                    mediaItemI = controllerInfo.f17354a.i();
                    mediaItemI.getClass();
                    QueueTimeline queueTimeline14 = (QueueTimeline) playerInfo.f17502j;
                    immutableList2 = queueTimeline14.f17524e;
                    queuedMediaItem = queueTimeline14.f17525f;
                    if (queuedMediaItem == null) {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    } else {
                        i13 = 0;
                        while (true) {
                            if (i13 >= immutableList2.size()) {
                                z14 = false;
                            } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                                z14 = true;
                            } else {
                                i13++;
                            }
                        }
                    }
                    if (z14) {
                        num2 = 4;
                    } else if (mediaItemI.equals(playerInfo.i())) {
                        jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                        jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                        if (jC2 == 0) {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        } else {
                            if (Math.abs(jC - jC2) > 100) {
                                num2 = 5;
                            } else {
                                num2 = null;
                            }
                            num3 = null;
                        }
                        num = num3;
                    } else {
                        z15 = true;
                        num = 1;
                        num2 = 0;
                    }
                    z15 = true;
                }
            } else if (zP) {
                mediaItemI = controllerInfo.f17354a.i();
                mediaItemI.getClass();
                QueueTimeline queueTimeline15 = (QueueTimeline) playerInfo.f17502j;
                immutableList2 = queueTimeline15.f17524e;
                queuedMediaItem = queueTimeline15.f17525f;
                if (queuedMediaItem == null) {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                } else {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                }
                if (z14) {
                    num2 = 4;
                } else if (mediaItemI.equals(playerInfo.i())) {
                    jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                    jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                    if (jC2 == 0) {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    } else {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    }
                    num = num3;
                } else {
                    z15 = true;
                    num = 1;
                    num2 = 0;
                }
                z15 = true;
            } else {
                mediaItemI = controllerInfo.f17354a.i();
                mediaItemI.getClass();
                QueueTimeline queueTimeline16 = (QueueTimeline) playerInfo.f17502j;
                immutableList2 = queueTimeline16.f17524e;
                queuedMediaItem = queueTimeline16.f17525f;
                if (queuedMediaItem == null) {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                } else {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                }
                if (z14) {
                    num2 = 4;
                } else if (mediaItemI.equals(playerInfo.i())) {
                    jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                    jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                    if (jC2 == 0) {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    } else {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    }
                    num = num3;
                } else {
                    z15 = true;
                    num = 1;
                    num2 = 0;
                }
                z15 = true;
            }
            Pair pairCreate5 = Pair.create(num2, num);
            Z0(z, legacyPlayerInfo, true, controllerInfo6, (Integer) pairCreate5.first, (Integer) pairCreate5.second);
            if (this.o) {
                this.o = false;
                if (Looper.myLooper() == mediaController.f17316e.getLooper()) {
                    z16 = z15;
                } else {
                    z16 = false;
                }
                Preconditions.q(z16);
                mediaController.d.getClass();
            }
        }
        bundle = bundle6;
        builder8.a(2);
        if (LegacyConversions.y(j8, 8L)) {
            builder8.a(11);
        }
        if (LegacyConversions.y(j8, 64L)) {
            builder8.a(12);
        }
        zY = LegacyConversions.y(j8, 256L);
        bundle2 = bundle;
        builder = builder8.f13926a;
        if (zY) {
            builder.b(5, 4);
        }
        if (LegacyConversions.y(j8, 32L)) {
            builder.b(9, 8);
        }
        if (LegacyConversions.y(j8, 16L)) {
            builder.b(7, 6);
        }
        i4 = i3;
        if (LegacyConversions.y(j8, 4194304L)) {
            builder8.a(13);
        }
        if (LegacyConversions.y(j8, 1L)) {
            builder8.a(3);
        }
        if (i4 == 1) {
            builder.b(26, 34);
        } else if (i4 == 2) {
            builder.b(26, 34, 25, 33);
        }
        builder.b(23, 17, 18, 16, 21, 32);
        if ((jE & j2) != 0) {
            builder8.a(20);
        }
        if (LegacyConversions.y(j8, 4096L)) {
            builder8.a(10);
        }
        if (z2) {
            if (LegacyConversions.y(j8, 262144L)) {
                builder8.a(15);
            }
            if (LegacyConversions.y(j8, 2097152L)) {
                builder8.a(14);
            }
        }
        commandsC = builder8.c();
        charSequence = legacyPlayerInfo3.f17362e;
        charSequence2 = legacyPlayerInfo.f17362e;
        if (charSequence == charSequence2) {
            mediaMetadata2 = controllerInfo2.f17354a.m;
        } else if (charSequence2 == null) {
            mediaMetadata2 = MediaMetadata.L;
        } else {
            MediaMetadata.Builder builder17 = new MediaMetadata.Builder();
            builder17.f13888a = charSequence2;
            mediaMetadata2 = new MediaMetadata(builder17);
        }
        MediaMetadata mediaMetadata6 = mediaMetadata2;
        iS = LegacyConversions.s(legacyPlayerInfo.f17363f);
        zU = LegacyConversions.u(legacyPlayerInfo.g);
        if (playbackStateCompat == playbackStateCompat2) {
            SessionCommands.Builder builder18 = new SessionCommands.Builder();
            builder18.a(SessionCommand.d);
            hashSet = builder18.f17545a;
            if (!z2) {
                while (r8.hasNext()) {
                    if (sessionCommand.f17539a == 40010) {
                        hashSet.remove(sessionCommand);
                    }
                }
            }
            if (playbackStateCompat2 != null) {
                while (r8.hasNext()) {
                    String str15 = customAction.f17847b;
                    bundle5 = customAction.f17849e;
                    if (bundle5 == null) {
                        bundle5 = Bundle.EMPTY;
                    }
                    hashSet.add(new SessionCommand(str15, bundle5));
                }
            }
            SessionCommands sessionCommands8 = new SessionCommands(hashSet);
            if (playbackStateCompat2 == null) {
                i5 = iS;
                z6 = zU;
                immutableListK = ImmutableList.x();
                sessionError = null;
            } else {
                List<PlaybackStateCompat.CustomAction> list8 = playbackStateCompat2.f17836j;
                builder2 = new ImmutableList.Builder();
                while (r7.hasNext()) {
                    String str16 = customAction2.f17847b;
                    bundle3 = customAction2.f17849e;
                    if (bundle3 != null) {
                        i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                    } else {
                        i6 = 0;
                    }
                    boolean z27 = zU;
                    builder3 = new CommandButton.Builder(i6, customAction2.d);
                    if (bundle3 == null) {
                        bundle4 = Bundle.EMPTY;
                    } else {
                        bundle4 = bundle3;
                    }
                    SessionCommand sessionCommand7 = new SessionCommand(str16, bundle4);
                    if (builder3.f17248c == -1) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                    builder3.f17247b = sessionCommand7;
                    builder3.f17253j = null;
                    builder3.f17250f = customAction2.f17848c;
                    builder3.f17251h = true;
                    if (bundle3 != null) {
                        builder3.g = new Bundle(bundle3);
                    }
                    if (bundle3 != null) {
                        string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                    } else {
                        string = null;
                    }
                    if (string != null) {
                        uri = Uri.parse(string);
                        scheme = uri.getScheme();
                        if (Objects.equals(scheme, "content")) {
                            builder3.b(uri);
                        } else {
                            builder3.b(uri);
                        }
                    }
                    builder2.e(builder3.a());
                    iS = iS;
                    zU = z27;
                }
                i5 = iS;
                z6 = zU;
                sessionError = null;
                immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
            }
            sessionCommands = sessionCommands8;
            immutableList = immutableListK;
        } else {
            SessionCommands.Builder builder19 = new SessionCommands.Builder();
            builder19.a(SessionCommand.d);
            hashSet = builder19.f17545a;
            if (!z2) {
                while (r8.hasNext()) {
                    if (sessionCommand.f17539a == 40010) {
                        hashSet.remove(sessionCommand);
                    }
                }
            }
            if (playbackStateCompat2 != null) {
                while (r8.hasNext()) {
                    String str17 = customAction.f17847b;
                    bundle5 = customAction.f17849e;
                    if (bundle5 == null) {
                        bundle5 = Bundle.EMPTY;
                    }
                    hashSet.add(new SessionCommand(str17, bundle5));
                }
            }
            SessionCommands sessionCommands9 = new SessionCommands(hashSet);
            if (playbackStateCompat2 == null) {
                i5 = iS;
                z6 = zU;
                immutableListK = ImmutableList.x();
                sessionError = null;
            } else {
                List<PlaybackStateCompat.CustomAction> list9 = playbackStateCompat2.f17836j;
                builder2 = new ImmutableList.Builder();
                while (r7.hasNext()) {
                    String str18 = customAction2.f17847b;
                    bundle3 = customAction2.f17849e;
                    if (bundle3 != null) {
                        i6 = bundle3.getInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", 0);
                    } else {
                        i6 = 0;
                    }
                    boolean z28 = zU;
                    builder3 = new CommandButton.Builder(i6, customAction2.d);
                    if (bundle3 == null) {
                        bundle4 = Bundle.EMPTY;
                    } else {
                        bundle4 = bundle3;
                    }
                    SessionCommand sessionCommand8 = new SessionCommand(str18, bundle4);
                    if (builder3.f17248c == -1) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    Preconditions.h(z7, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set.");
                    builder3.f17247b = sessionCommand8;
                    builder3.f17253j = null;
                    builder3.f17250f = customAction2.f17848c;
                    builder3.f17251h = true;
                    if (bundle3 != null) {
                        builder3.g = new Bundle(bundle3);
                    }
                    if (bundle3 != null) {
                        string = bundle3.getString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT");
                    } else {
                        string = null;
                    }
                    if (string != null) {
                        uri = Uri.parse(string);
                        scheme = uri.getScheme();
                        if (Objects.equals(scheme, "content")) {
                            builder3.b(uri);
                        } else {
                            builder3.b(uri);
                        }
                    }
                    builder2.e(builder3.a());
                    iS = iS;
                    zU = z28;
                }
                i5 = iS;
                z6 = zU;
                sessionError = null;
                immutableListK = CommandButton.k(builder2.j(), commandsC, bundle2);
            }
            sessionCommands = sessionCommands9;
            immutableList = immutableListK;
        }
        Context context4 = this.f17343a;
        PlaybackException playbackExceptionO4 = LegacyConversions.o(playbackStateCompat2, context4);
        if (playbackStateCompat2 == null) {
            i7 = playbackStateCompat2.f17830b;
            int i115 = playbackStateCompat2.g;
            CharSequence charSequence7 = playbackStateCompat2.f17834h;
            Bundle bundle14 = playbackStateCompat2.l;
            if (i7 != 7) {
            }
            sessionError = null;
        }
        long jC6 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
        long jB7 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4);
        SessionError sessionError5 = sessionError;
        sessionCommands2 = sessionCommands;
        ImmutableList immutableList8 = immutableList;
        int iB4 = MediaUtils.b(LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4), LegacyConversions.d(mediaMetadataCompat));
        long jB8 = LegacyConversions.b(playbackStateCompat2, mediaMetadataCompat, j4) - LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j4);
        if (mediaMetadataCompat == null) {
            z8 = false;
        } else {
            z8 = true;
        }
        if (playbackStateCompat2 == null) {
            playbackParameters = PlaybackParameters.d;
        } else {
            playbackParameters = new PlaybackParameters(playbackStateCompat2.f17832e);
        }
        if (playbackInfo2 == 0) {
            audioAttributes = AudioAttributes.f13689i;
            playbackInfo3 = playbackInfo2;
        } else {
            playbackInfo3 = playbackInfo2;
            audioAttributes = playbackInfo3.f17775b;
        }
        if (playbackStateCompat2 == null) {
            switch (playbackStateCompat2.f17830b) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                case 11:
                    z9 = true;
                    break;
                case 7:
                case 8:
                default:
                    z9 = false;
                    break;
            }
        } else {
            z9 = false;
        }
        if (playbackStateCompat2 == null) {
            sessionCommands2 = sessionCommands2;
            i8 = 1;
        } else {
            i9 = playbackStateCompat2.f17830b;
            jD = LegacyConversions.d(mediaMetadataCompat);
            if (jD == -9223372036854775807L) {
                z10 = false;
            } else {
                z10 = true;
            }
            switch (i9) {
                case 0:
                case 7:
                case 8:
                    sessionCommands2 = sessionCommands2;
                    i8 = 1;
                    break;
                case 1:
                    sessionCommands2 = sessionCommands2;
                    if (z10) {
                        i8 = 4;
                    } else {
                        i8 = 1;
                    }
                    break;
                case 2:
                    sessionCommands2 = sessionCommands2;
                    if (z10) {
                        i8 = 4;
                    } else {
                        i8 = 3;
                    }
                    break;
                case 3:
                    sessionCommands2 = sessionCommands2;
                    i8 = 3;
                    break;
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                case 11:
                    sessionCommands2 = sessionCommands2;
                    i8 = 2;
                    break;
                default:
                    throw new LegacyConversions.ConversionException("Invalid state of PlaybackStateCompat: " + i9);
            }
        }
        int i116 = i8;
        if (playbackStateCompat2 == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (playbackInfo3 == null) {
            deviceInfoA = DeviceInfo.f13735e;
        } else {
            if (playbackInfo3.f17774a == 2) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            builder4 = new DeviceInfo.Builder(i10);
            builder4.f13744c = playbackInfo3.d;
            String str19 = playbackInfo3.f17778f;
            if (builder4.f13742a == 0) {
                z12 = true;
            } else {
                z12 = true;
            }
            Preconditions.g(z12);
            builder4.d = str19;
            deviceInfoA = builder4.a();
        }
        DeviceInfo deviceInfo5 = deviceInfoA;
        if (playbackInfo3 == null) {
            i11 = 0;
        } else {
            i11 = playbackInfo3.f17777e;
        }
        if (playbackInfo3 == null) {
            z13 = false;
        } else {
            z13 = true;
        }
        PlayerInfo playerInfo7 = controllerInfo2.f17354a;
        long j111 = playerInfo7.C;
        long j112 = playerInfo7.D;
        long j113 = playerInfo7.E;
        Bundle bundle15 = legacyPlayerInfo.f17364h;
        i12 = i2;
        if (i12 >= queueTimeline.o()) {
            mediaItem = null;
        } else {
            mediaItem = queueTimeline.s(i12).f17526a;
        }
        SessionPositionInfo sessionPositionInfo5 = new SessionPositionInfo(U0(i12, mediaItem, jC6, z8), z8, SystemClock.elapsedRealtime(), jD2, jB7, iB4, jB8, -9223372036854775807L, jD2, jB7);
        Player.PositionInfo positionInfo5 = SessionPositionInfo.f17551k;
        ControllerInfo controllerInfo7 = new ControllerInfo(new PlayerInfo(playbackExceptionO4, 0, sessionPositionInfo5, positionInfo5, positionInfo5, 0, playbackParameters, i5, z6, VideoSize.d, queueTimeline, 0, mediaMetadata6, 1.0f, 1.0f, audioAttributes, 0, CueGroup.d, deviceInfo5, i11, z13, z9, 1, 0, i116, z11, false, mediaMetadata, j111, j112, j113, Tracks.f14010b, TrackSelectionParameters.J), sessionCommands2, commandsC, immutableList8, bundle15, sessionError5);
        legacyPlayerInfo2 = this.m;
        controllerInfo = this.p;
        j3 = mediaController.f17317f;
        num = 3;
        zP = controllerInfo.f17354a.f17502j.p();
        playerInfo = controllerInfo7.f17354a;
        boolean zP6 = playerInfo.f17502j.p();
        if (!zP) {
            if (zP) {
                mediaItemI = controllerInfo.f17354a.i();
                mediaItemI.getClass();
                QueueTimeline queueTimeline17 = (QueueTimeline) playerInfo.f17502j;
                immutableList2 = queueTimeline17.f17524e;
                queuedMediaItem = queueTimeline17.f17525f;
                if (queuedMediaItem == null) {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                } else {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                }
                if (z14) {
                    num2 = 4;
                } else if (mediaItemI.equals(playerInfo.i())) {
                    jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                    jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                    if (jC2 == 0) {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    } else {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    }
                    num = num3;
                } else {
                    z15 = true;
                    num = 1;
                    num2 = 0;
                }
                z15 = true;
            } else {
                mediaItemI = controllerInfo.f17354a.i();
                mediaItemI.getClass();
                QueueTimeline queueTimeline18 = (QueueTimeline) playerInfo.f17502j;
                immutableList2 = queueTimeline18.f17524e;
                queuedMediaItem = queueTimeline18.f17525f;
                if (queuedMediaItem == null) {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                } else {
                    i13 = 0;
                    while (true) {
                        if (i13 >= immutableList2.size()) {
                            z14 = false;
                        } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                            z14 = true;
                        } else {
                            i13++;
                        }
                    }
                }
                if (z14) {
                    num2 = 4;
                } else if (mediaItemI.equals(playerInfo.i())) {
                    jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                    jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                    if (jC2 == 0) {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    } else {
                        if (Math.abs(jC - jC2) > 100) {
                            num2 = 5;
                        } else {
                            num2 = null;
                        }
                        num3 = null;
                    }
                    num = num3;
                } else {
                    z15 = true;
                    num = 1;
                    num2 = 0;
                }
                z15 = true;
            }
        } else if (zP) {
            mediaItemI = controllerInfo.f17354a.i();
            mediaItemI.getClass();
            QueueTimeline queueTimeline19 = (QueueTimeline) playerInfo.f17502j;
            immutableList2 = queueTimeline19.f17524e;
            queuedMediaItem = queueTimeline19.f17525f;
            if (queuedMediaItem == null) {
                i13 = 0;
                while (true) {
                    if (i13 >= immutableList2.size()) {
                        z14 = false;
                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                        z14 = true;
                    } else {
                        i13++;
                    }
                }
            } else {
                i13 = 0;
                while (true) {
                    if (i13 >= immutableList2.size()) {
                        z14 = false;
                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                        z14 = true;
                    } else {
                        i13++;
                    }
                }
            }
            if (z14) {
                num2 = 4;
            } else if (mediaItemI.equals(playerInfo.i())) {
                jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                if (jC2 == 0) {
                    if (Math.abs(jC - jC2) > 100) {
                        num2 = 5;
                    } else {
                        num2 = null;
                    }
                    num3 = null;
                } else {
                    if (Math.abs(jC - jC2) > 100) {
                        num2 = 5;
                    } else {
                        num2 = null;
                    }
                    num3 = null;
                }
                num = num3;
            } else {
                z15 = true;
                num = 1;
                num2 = 0;
            }
            z15 = true;
        } else {
            mediaItemI = controllerInfo.f17354a.i();
            mediaItemI.getClass();
            QueueTimeline queueTimeline110 = (QueueTimeline) playerInfo.f17502j;
            immutableList2 = queueTimeline110.f17524e;
            queuedMediaItem = queueTimeline110.f17525f;
            if (queuedMediaItem == null) {
                i13 = 0;
                while (true) {
                    if (i13 >= immutableList2.size()) {
                        z14 = false;
                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                        z14 = true;
                    } else {
                        i13++;
                    }
                }
            } else {
                i13 = 0;
                while (true) {
                    if (i13 >= immutableList2.size()) {
                        z14 = false;
                    } else if (mediaItemI.equals(((QueueTimeline.QueuedMediaItem) immutableList2.get(i13)).f17526a)) {
                        z14 = true;
                    } else {
                        i13++;
                    }
                }
            }
            if (z14) {
                num2 = 4;
            } else if (mediaItemI.equals(playerInfo.i())) {
                jC = LegacyConversions.c(legacyPlayerInfo2.f17360b, legacyPlayerInfo2.f17361c, j3);
                jC2 = LegacyConversions.c(playbackStateCompat2, mediaMetadataCompat, j3);
                if (jC2 == 0) {
                    if (Math.abs(jC - jC2) > 100) {
                        num2 = 5;
                    } else {
                        num2 = null;
                    }
                    num3 = null;
                } else {
                    if (Math.abs(jC - jC2) > 100) {
                        num2 = 5;
                    } else {
                        num2 = null;
                    }
                    num3 = null;
                }
                num = num3;
            } else {
                z15 = true;
                num = 1;
                num2 = 0;
            }
            z15 = true;
        }
        Pair pairCreate6 = Pair.create(num2, num);
        Z0(z, legacyPlayerInfo, true, controllerInfo7, (Integer) pairCreate6.first, (Integer) pairCreate6.second);
        if (this.o) {
            this.o = false;
            if (Looper.myLooper() == mediaController.f17316e.getLooper()) {
                z16 = z15;
            } else {
                z16 = false;
            }
            Preconditions.q(z16);
            mediaController.d.getClass();
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int W() {
        return -1;
    }

    public final void W0() {
        this.s = true;
        Timeline.Window window = new Timeline.Window();
        PlayerInfo playerInfo = this.p.f17354a;
        QueueTimeline queueTimeline = (QueueTimeline) playerInfo.f17502j;
        int i2 = playerInfo.f17497c.f17552a.f13931b;
        queueTimeline.m(i2, window, 0L);
        MediaItem mediaItem = window.f13969c;
        if (queueTimeline.r(i2) != -1) {
            boolean z = this.p.f17354a.v;
            MediaControllerCompat mediaControllerCompat = this.f17349i;
            if (z) {
                mediaControllerCompat.o().c();
            } else {
                mediaControllerCompat.o().g();
            }
        } else {
            MediaItem.RequestMetadata requestMetadata = mediaItem.f13791f;
            String str = mediaItem.f13787a;
            if (requestMetadata.f13857a != null) {
                boolean z2 = this.p.f17354a.v;
                MediaControllerCompat mediaControllerCompat2 = this.f17349i;
                if (z2) {
                    MediaControllerCompat.TransportControls transportControlsO = mediaControllerCompat2.o();
                    Uri uri = requestMetadata.f13857a;
                    Bundle bundle = requestMetadata.f13859c;
                    if (bundle == null) {
                        bundle = Bundle.EMPTY;
                    }
                    transportControlsO.f(uri, bundle);
                } else {
                    MediaControllerCompat.TransportControls transportControlsO2 = mediaControllerCompat2.o();
                    Uri uri2 = requestMetadata.f13857a;
                    Bundle bundle2 = requestMetadata.f13859c;
                    if (bundle2 == null) {
                        bundle2 = Bundle.EMPTY;
                    }
                    transportControlsO2.j(uri2, bundle2);
                }
            } else {
                String str2 = requestMetadata.f13858b;
                ControllerInfo controllerInfo = this.p;
                if (str2 != null) {
                    boolean z3 = controllerInfo.f17354a.v;
                    MediaControllerCompat mediaControllerCompat3 = this.f17349i;
                    if (z3) {
                        MediaControllerCompat.TransportControls transportControlsO3 = mediaControllerCompat3.o();
                        String str3 = requestMetadata.f13858b;
                        Bundle bundle3 = requestMetadata.f13859c;
                        if (bundle3 == null) {
                            bundle3 = Bundle.EMPTY;
                        }
                        transportControlsO3.e(str3, bundle3);
                    } else {
                        MediaControllerCompat.TransportControls transportControlsO4 = mediaControllerCompat3.o();
                        String str4 = requestMetadata.f13858b;
                        Bundle bundle4 = requestMetadata.f13859c;
                        if (bundle4 == null) {
                            bundle4 = Bundle.EMPTY;
                        }
                        transportControlsO4.i(str4, bundle4);
                    }
                } else {
                    boolean z4 = controllerInfo.f17354a.v;
                    MediaControllerCompat mediaControllerCompat4 = this.f17349i;
                    if (z4) {
                        MediaControllerCompat.TransportControls transportControlsO5 = mediaControllerCompat4.o();
                        Bundle bundle5 = requestMetadata.f13859c;
                        if (bundle5 == null) {
                            bundle5 = Bundle.EMPTY;
                        }
                        transportControlsO5.d(str, bundle5);
                    } else {
                        MediaControllerCompat.TransportControls transportControlsO6 = mediaControllerCompat4.o();
                        Bundle bundle6 = requestMetadata.f13859c;
                        if (bundle6 == null) {
                            bundle6 = Bundle.EMPTY;
                        }
                        transportControlsO6.h(str, bundle6);
                    }
                }
            }
        }
        if (this.p.f17354a.f17497c.f17552a.f13934f != 0) {
            this.f17349i.o().l(this.p.f17354a.f17497c.f17552a.f13934f);
        }
        if (this.p.f17356c.a(20)) {
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < queueTimeline.o(); i3++) {
                if (i3 != i2 && queueTimeline.r(i3) == -1) {
                    queueTimeline.m(i3, window, 0L);
                    arrayList.add(window.f13969c);
                }
            }
            Q0(0, arrayList);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void X(boolean z) {
        G(1, z);
    }

    public final void X0() {
        if (this.f17351k || this.l) {
            return;
        }
        this.l = true;
        V0(true, new LegacyPlayerInfo(this.f17349i.h(), T0(this.f17349i.i()), this.f17349i.f(), S0(this.f17349i.j()), this.f17349i.k(), this.f17349i.m(), this.f17349i.n(), this.f17349i.d()));
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void Y(Player.Listener listener) {
        this.d.a(listener);
    }

    public final void Y0(int i2, long j2) {
        Integer num;
        Integer num2;
        int i3;
        long j3;
        long j4;
        long j5;
        int i4 = i2;
        long j6 = j2;
        Preconditions.g(i4 >= 0);
        int iV = v();
        Timeline timeline = this.p.f17354a.f17502j;
        if ((timeline.p() || i4 < timeline.o()) && !j()) {
            if (i4 != iV) {
                long jR = ((QueueTimeline) this.p.f17354a.f17502j).r(i4);
                if (jR != -1) {
                    this.f17349i.o().s(jR);
                    num = 2;
                } else {
                    defpackage.a.u(i4, "Cannot seek to new media item due to the missing queue Id at media item, mediaItemIndex=");
                    i4 = iV;
                    num = null;
                }
            } else {
                i4 = iV;
                num = null;
            }
            long currentPosition = getCurrentPosition();
            if (j6 == -9223372036854775807L) {
                j6 = currentPosition;
                num2 = null;
            } else {
                this.f17349i.o().l(j6);
                num2 = 1;
            }
            if (num == null) {
                long jB0 = B0();
                long duration = getDuration();
                long jMax = j6 < currentPosition ? j6 : Math.max(j6, jB0);
                j3 = jMax;
                i3 = duration == -9223372036854775807L ? 0 : (int) ((100 * jMax) / duration);
                j4 = jMax - j6;
                j5 = duration;
            } else {
                i3 = 0;
                j3 = 0;
                j4 = 0;
                j5 = -9223372036854775807L;
            }
            PlayerInfo playerInfoE = this.p.f17354a.e(new SessionPositionInfo(U0(i4, !timeline.p() ? timeline.m(i4, new Timeline.Window(), 0L).f13969c : null, j6, false), false, SystemClock.elapsedRealtime(), j5, j3, i3, j4, -9223372036854775807L, j5, j3));
            if (playerInfoE.A != 1) {
                playerInfoE = playerInfoE.d(2, null);
            }
            PlayerInfo playerInfo = playerInfoE;
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfo, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), num2, num);
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int Z() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ca  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void Z0(boolean z, LegacyPlayerInfo legacyPlayerInfo, boolean z2, final ControllerInfo controllerInfo, Integer num, Integer num2) {
        PlaybackException playbackExceptionO;
        final int i2;
        final int i3;
        boolean z3;
        boolean z4;
        ImmutableList immutableList = controllerInfo.d;
        LegacyPlayerInfo legacyPlayerInfo2 = this.m;
        ControllerInfo controllerInfo2 = this.p;
        if (z2) {
            this.m = legacyPlayerInfo;
            this.n = legacyPlayerInfo;
            if (R0(controllerInfo)) {
                this.s = true;
            }
        }
        this.p = controllerInfo;
        MediaController mediaController = this.f17344b;
        if (z) {
            mediaController.W0();
            if (controllerInfo2.d.equals(immutableList)) {
                return;
            }
            mediaController.f17316e.post(new j0(this, controllerInfo));
            return;
        }
        PlayerInfo playerInfo = controllerInfo2.f17354a;
        Timeline timeline = playerInfo.f17502j;
        PlayerInfo playerInfo2 = controllerInfo.f17354a;
        SessionError sessionError = controllerInfo.f17358f;
        boolean zEquals = timeline.equals(playerInfo2.f17502j);
        final int i4 = 4;
        ListenerSet listenerSet = this.d;
        if (!zEquals) {
            listenerSet.c(0, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i5 = i4;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i5) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        CharSequence charSequence = legacyPlayerInfo2.f17362e;
        CharSequence charSequence2 = legacyPlayerInfo.f17362e;
        PlaybackStateCompat playbackStateCompat = legacyPlayerInfo.f17360b;
        boolean zEquals2 = TextUtils.equals(charSequence, charSequence2);
        final int i5 = 5;
        if (!zEquals2) {
            listenerSet.c(15, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i6 = i5;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i6) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (num != null) {
            listenerSet.c(11, new i0(controllerInfo2, controllerInfo, num));
        }
        if (num2 != null) {
            listenerSet.c(1, new s(controllerInfo, num2, 4));
        }
        PlaybackStateCompat playbackStateCompat2 = legacyPlayerInfo2.f17360b;
        MediaBrowserServiceCompat.BrowserRoot browserRoot = MediaUtils.f17489a;
        boolean z5 = playbackStateCompat2 != null && playbackStateCompat2.f17830b == 7;
        boolean z6 = playbackStateCompat != null && playbackStateCompat.f17830b == 7;
        final int i6 = 10;
        if (z5 && z6) {
            String str = Util.f14242a;
            if (playbackStateCompat2.g != playbackStateCompat.g || !TextUtils.equals(playbackStateCompat2.f17834h, playbackStateCompat.f17834h)) {
                playbackExceptionO = LegacyConversions.o(playbackStateCompat, this.f17343a);
                listenerSet.c(10, new ls(3, playbackExceptionO));
                if (playbackExceptionO != null) {
                    listenerSet.c(10, new ls(4, playbackExceptionO));
                }
            }
        } else if (z5 != z6) {
            playbackExceptionO = LegacyConversions.o(playbackStateCompat, this.f17343a);
            listenerSet.c(10, new ls(3, playbackExceptionO));
            if (playbackExceptionO != null) {
                listenerSet.c(10, new ls(4, playbackExceptionO));
            }
        }
        if (legacyPlayerInfo2.f17361c != legacyPlayerInfo.f17361c) {
            listenerSet.c(14, new k0(this));
        }
        if (playerInfo.A != playerInfo2.A) {
            final int i7 = 6;
            listenerSet.c(4, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i8 = i7;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i8) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (playerInfo.v != playerInfo2.v) {
            i2 = 7;
            listenerSet.c(5, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i8 = i2;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i8) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        } else {
            i2 = 7;
        }
        final int i8 = 8;
        if (playerInfo.x != playerInfo2.x) {
            listenerSet.c(i2, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i9 = i8;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i9) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        final int i9 = 9;
        final int i10 = 12;
        if (!playerInfo.g.equals(playerInfo2.g)) {
            listenerSet.c(12, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i11 = i9;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i11) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (playerInfo.f17500h != playerInfo2.f17500h) {
            listenerSet.c(8, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i11 = i6;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i11) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (playerInfo.f17501i != playerInfo2.f17501i) {
            final int i11 = 11;
            listenerSet.c(9, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i12 = i11;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i12) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (!playerInfo.q.equals(playerInfo2.q)) {
            listenerSet.c(20, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i12 = i10;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i12) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (playerInfo.p != playerInfo2.p) {
            i3 = 0;
            listenerSet.c(21, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i12 = i3;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i12) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        } else {
            i3 = 0;
        }
        if (playerInfo.s.equals(playerInfo2.s)) {
            z3 = true;
        } else {
            z3 = true;
            final boolean z7 = true ? 1 : 0;
            listenerSet.c(29, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i12 = z7;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i12) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (playerInfo.t != playerInfo2.t || playerInfo.u != playerInfo2.u) {
            final int i12 = 2;
            listenerSet.c(30, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i13 = i12;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i13) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (!controllerInfo2.f17356c.equals(controllerInfo.f17356c)) {
            final int i13 = 3;
            listenerSet.c(13, new ListenerSet.Event() { // from class: androidx.media3.session.h0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i14 = i13;
                    MediaControllerImplLegacy.ControllerInfo controllerInfo3 = controllerInfo;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i14) {
                        case 0:
                            listener.f(controllerInfo3.f17354a.p);
                            break;
                        case 1:
                            listener.r0(controllerInfo3.f17354a.s);
                            break;
                        case 2:
                            PlayerInfo playerInfo3 = controllerInfo3.f17354a;
                            listener.O(playerInfo3.t, playerInfo3.u);
                            break;
                        case 3:
                            listener.Y(controllerInfo3.f17356c);
                            break;
                        case 4:
                            PlayerInfo playerInfo4 = controllerInfo3.f17354a;
                            listener.m0(playerInfo4.f17502j, playerInfo4.f17503k);
                            break;
                        case 5:
                            listener.o0(controllerInfo3.f17354a.m);
                            break;
                        case 6:
                            listener.K(controllerInfo3.f17354a.A);
                            break;
                        case 7:
                            listener.g0(4, controllerInfo3.f17354a.v);
                            break;
                        case 8:
                            listener.x0(controllerInfo3.f17354a.x);
                            break;
                        case 9:
                            listener.h(controllerInfo3.f17354a.g);
                            break;
                        case 10:
                            listener.A(controllerInfo3.f17354a.f17500h);
                            break;
                        case 11:
                            listener.N(controllerInfo3.f17354a.f17501i);
                            break;
                        default:
                            listener.i0(controllerInfo3.f17354a.q);
                            break;
                    }
                }
            });
        }
        if (!controllerInfo2.f17355b.equals(controllerInfo.f17355b)) {
            mediaController.getClass();
            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper() ? z3 ? 1 : 0 : i3);
            mediaController.d.T();
        }
        if (!controllerInfo2.d.equals(immutableList)) {
            mediaController.getClass();
            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper() ? z3 ? 1 : 0 : i3);
            MediaController.Listener listener = mediaController.d;
            listener.getClass();
            MediaController.Listener.z();
            listener.x();
        }
        if (sessionError != null) {
            mediaController.getClass();
            if (Looper.myLooper() != mediaController.f17316e.getLooper()) {
                z4 = z3;
                z4 = i3;
            }
            z4 = z3;
            Preconditions.q(z4);
            mediaController.d.getClass();
        }
        listenerSet.b();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final PlaybackParameters a() {
        return this.p.f17354a.g;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final ListenableFuture a0(SessionCommand sessionCommand, Bundle bundle) {
        Bundle bundle2 = sessionCommand.f17541c;
        if (this.f17349i == null) {
            return Futures.g(new SessionResult(-100));
        }
        if (bundle.isEmpty()) {
            bundle = bundle2;
        } else if (!bundle2.isEmpty()) {
            Bundle bundle3 = new Bundle(bundle2);
            bundle3.putAll(bundle);
            bundle = bundle3;
        }
        this.f17349i.o().m(sessionCommand.f17540b, bundle);
        return Futures.g(new SessionResult(0));
    }

    public final void a1(ControllerInfo controllerInfo, Integer num, Integer num2) {
        Z0(false, this.m, false, controllerInfo, num, num2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final SessionCommands b() {
        return this.p.f17355b;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void b0() {
        Log.g("Session doesn't support muting the player");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void c() {
        P(true);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void c0() {
        I(1);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void connect() {
        SessionToken sessionToken = this.f17345c;
        int type = sessionToken.f17568a.getType();
        MediaController mediaController = this.f17344b;
        if (type != 0) {
            mediaController.Y0(new j0(this, 1));
            return;
        }
        Object objB = sessionToken.f17568a.b();
        objB.getClass();
        int i2 = 0;
        mediaController.Y0(new g0(this, (MediaSessionCompat.Token) objB, i2));
        mediaController.f17316e.postDelayed(new j0(this, i2), 500L);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void d(PlaybackParameters playbackParameters) {
        if (!playbackParameters.equals(a())) {
            PlayerInfo playerInfoC = this.p.f17354a.c(playbackParameters);
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoC, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.o().n(playbackParameters.f13919a);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final TrackSelectionParameters d0() {
        return TrackSelectionParameters.J;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final PlaybackException e() {
        return this.p.f17354a.f17495a;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void e0(TextureView textureView) {
        Log.g("Session doesn't support setting TextureView");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void f() {
        PlayerInfo playerInfo = this.p.f17354a;
        if (playerInfo.A != 1) {
            return;
        }
        PlayerInfo playerInfoD = playerInfo.d(playerInfo.f17502j.p() ? 4 : 2, null);
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfoD, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        if (R0(this.p)) {
            W0();
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int f0() {
        PlayerInfo playerInfo = this.p.f17354a;
        if (playerInfo.s.f13739a == 1) {
            return playerInfo.t;
        }
        MediaControllerCompat mediaControllerCompat = this.f17349i;
        if (mediaControllerCompat == null) {
            return 0;
        }
        MediaControllerCompat.PlaybackInfo playbackInfoH = mediaControllerCompat.h();
        ImmutableSet immutableSet = LegacyConversions.f17303a;
        if (playbackInfoH == null) {
            return 0;
        }
        return playbackInfoH.f17777e;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void g(float f2) {
        Log.g("Session doesn't support setting player volume");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long g0() {
        return -9223372036854775807L;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long getCurrentPosition() {
        long jC = MediaUtils.c(this.p.f17354a, this.q, this.r, this.f17344b.f17317f);
        this.q = jC;
        return jC;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long getDuration() {
        return this.p.f17354a.f17497c.d;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int h() {
        return this.p.f17354a.A;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void h0(int i2, long j2) {
        Y0(i2, j2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int i() {
        return this.p.f17354a.f17500h;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Player.Commands i0() {
        return this.p.f17356c;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean isConnected() {
        return this.l;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean isPlaying() {
        return this.p.f17354a.x;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean j() {
        return this.p.f17354a.f17497c.f17553b;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void j0(boolean z) {
        if (z != w()) {
            PlayerInfo playerInfo = this.p.f17354a;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17510i = z;
            PlayerInfo playerInfoA = builderC.a();
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        MediaControllerCompat.TransportControls transportControlsO = this.f17349i.o();
        ImmutableSet immutableSet = LegacyConversions.f17303a;
        transportControlsO.p(z ? 1 : 0);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void k() {
        Y0(v(), 0L);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long k0() {
        return this.p.f17354a.E;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void l() {
        this.f17349i.o().r();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void l0(int i2, MediaItem mediaItem) {
        K(i2, i2 + 1, ImmutableList.A(mediaItem));
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean m() {
        return false;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long m0() {
        return getDuration();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Tracks n() {
        return Tracks.f14010b;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int n0() {
        return v();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final CueGroup o() {
        Log.g("Session doesn't support getting Cue");
        return CueGroup.d;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void o0(TextureView textureView) {
        Log.g("Session doesn't support clearing TextureView");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final Timeline p() {
        return this.p.f17354a.f17502j;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void p0(AudioAttributes audioAttributes, boolean z) {
        Log.g("Legacy session doesn't support setting audio attributes remotely");
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void pause() {
        P(false);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void q() {
        this.f17349i.o().q();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final float q0() {
        return 1.0f;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean r() {
        return this.p.f17354a.v;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final AudioAttributes r0() {
        return this.p.f17354a.q;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void release() {
        if (this.f17351k) {
            return;
        }
        this.f17351k = true;
        MediaBrowserCompat mediaBrowserCompat = this.f17350j;
        if (mediaBrowserCompat != null) {
            mediaBrowserCompat.b();
            this.f17350j = null;
        }
        MediaControllerCompat mediaControllerCompat = this.f17349i;
        if (mediaControllerCompat != null) {
            ControllerCompatCallback controllerCompatCallback = this.f17346e;
            mediaControllerCompat.u(controllerCompatCallback);
            controllerCompatCallback.d.removeCallbacksAndMessages(null);
            this.f17349i = null;
        }
        this.l = false;
        this.d.d();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final VideoSize s() {
        Log.g("Session doesn't support getting VideoSize");
        return VideoSize.d;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final DeviceInfo s0() {
        return this.p.f17354a.s;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void seekTo(long j2) {
        Y0(v(), j2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void stop() {
        PlayerInfo playerInfo = this.p.f17354a;
        if (playerInfo.A == 1) {
            return;
        }
        SessionPositionInfo sessionPositionInfo = playerInfo.f17497c;
        Player.PositionInfo positionInfo = sessionPositionInfo.f17552a;
        boolean z = sessionPositionInfo.f17553b;
        long j2 = sessionPositionInfo.d;
        long j3 = positionInfo.f13934f;
        PlayerInfo playerInfoE = playerInfo.e(new SessionPositionInfo(positionInfo, z, SystemClock.elapsedRealtime(), j2, j3, MediaUtils.b(j3, j2), 0L, -9223372036854775807L, j2, j3));
        PlayerInfo playerInfo2 = this.p.f17354a;
        if (playerInfo2.A != 1) {
            playerInfoE = playerInfoE.d(1, playerInfo2.f17495a);
        }
        PlayerInfo playerInfo3 = playerInfoE;
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfo3, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        this.s = false;
        this.f17349i.o().t();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void t(float f2) {
        if (f2 != a().f13919a) {
            PlayerInfo playerInfoC = this.p.f17354a.c(new PlaybackParameters(f2));
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoC, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.o().n(f2);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void t0(int i2, int i3) {
        DeviceInfo deviceInfoS0 = s0();
        int i4 = deviceInfoS0.f13740b;
        int i5 = deviceInfoS0.f13741c;
        if (i4 <= i2 && (i5 == 0 || i2 <= i5)) {
            PlayerInfo playerInfoA = this.p.f17354a.a(i2, K0());
            ControllerInfo controllerInfo = this.p;
            a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        }
        this.f17349i.t(i2, i3);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long u() {
        return getCurrentPosition();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean u0() {
        return this.l;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int v() {
        return this.p.f17354a.f17497c.f17552a.f13931b;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final int v0() {
        return -1;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final boolean w() {
        return this.p.f17354a.f17501i;
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void w0(MediaItem mediaItem) {
        R(mediaItem);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long x() {
        return B0();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void x0(List list, int i2, long j2) {
        if (list.isEmpty()) {
            D();
            return;
        }
        QueueTimeline queueTimelineQ = QueueTimeline.g.q(0, list);
        long j3 = j2 == -9223372036854775807L ? 0L : j2;
        PlayerInfo playerInfo = this.p.f17354a;
        SessionPositionInfo sessionPositionInfo = new SessionPositionInfo(U0(i2, (MediaItem) list.get(i2), j3, false), false, SystemClock.elapsedRealtime(), -9223372036854775807L, 0L, 0, 0L, -9223372036854775807L, -9223372036854775807L, 0L);
        PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
        builderC.f17511j = queueTimelineQ;
        builderC.f17506c = sessionPositionInfo;
        builderC.f17512k = 0;
        PlayerInfo playerInfoA = builderC.a();
        ControllerInfo controllerInfo = this.p;
        a1(new ControllerInfo(playerInfoA, controllerInfo.f17355b, controllerInfo.f17356c, controllerInfo.d, controllerInfo.f17357e, null), null, null);
        if (R0(this.p)) {
            W0();
        }
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void y() {
        this.f17349i.o().a();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void y0(int i2) {
        Y0(i2, 0L);
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final void z() {
        this.f17349i.o().k();
    }

    @Override // androidx.media3.session.MediaController.MediaControllerImpl
    public final long z0() {
        return this.p.f17354a.D;
    }

    public static final class LegacyPlayerInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaControllerCompat.PlaybackInfo f17359a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PlaybackStateCompat f17360b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaMetadataCompat f17361c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CharSequence f17362e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f17363f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Bundle f17364h;

        public LegacyPlayerInfo(MediaControllerCompat.PlaybackInfo playbackInfo, PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat, List<MediaSessionCompat.QueueItem> list, CharSequence charSequence, int i2, int i3, Bundle bundle) {
            this.f17359a = playbackInfo;
            this.f17360b = playbackStateCompat;
            this.f17361c = mediaMetadataCompat;
            list.getClass();
            this.d = list;
            this.f17362e = charSequence;
            this.f17363f = i2;
            this.g = i3;
            this.f17364h = bundle == null ? Bundle.EMPTY : bundle;
        }

        public LegacyPlayerInfo() {
            this.f17359a = null;
            this.f17360b = null;
            this.f17361c = null;
            this.d = Collections.EMPTY_LIST;
            this.f17362e = null;
            this.f17363f = 0;
            this.g = 0;
            this.f17364h = Bundle.EMPTY;
        }
    }

    public static class ControllerInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlayerInfo f17354a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SessionCommands f17355b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Player.Commands f17356c;
        public final ImmutableList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f17357e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SessionError f17358f;

        public ControllerInfo() {
            PlayerInfo playerInfo = PlayerInfo.H;
            QueueTimeline queueTimeline = QueueTimeline.g;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17511j = queueTimeline;
            this.f17354a = builderC.a();
            this.f17355b = SessionCommands.f17542b;
            this.f17356c = Player.Commands.f13922b;
            this.d = ImmutableList.x();
            this.f17357e = Bundle.EMPTY;
            this.f17358f = null;
        }

        public ControllerInfo(PlayerInfo playerInfo, SessionCommands sessionCommands, Player.Commands commands, ImmutableList<CommandButton> immutableList, Bundle bundle, SessionError sessionError) {
            this.f17354a = playerInfo;
            this.f17355b = sessionCommands;
            this.f17356c = commands;
            this.d = immutableList;
            this.f17357e = bundle == null ? Bundle.EMPTY : bundle;
            this.f17358f = sessionError;
        }
    }
}

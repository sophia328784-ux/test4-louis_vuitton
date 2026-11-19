package androidx.media3.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.MediaSessionManager;
import androidx.media3.session.legacy.VolumeProviderCompat;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.bm;
import defpackage.d21;
import defpackage.md;
import defpackage.r81;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionImpl {
    public static final SessionResult F = new SessionResult(1);
    public static final Supplier G = Suppliers.a(new f1());
    public final long A;
    public boolean B;
    public final ImmutableList C;
    public final ImmutableList D;
    public final Bundle E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f17426a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f17427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PlayerInfoChangedHandler f17428c;
    public final MediaPlayPauseKeyHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaSession.Callback f17429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Context f17430f;
    public final MediaSessionStub g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MediaSessionLegacyStub f17431h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f17432i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SessionToken f17433j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MediaSession f17434k;
    public final Handler l;
    public final androidx.media3.common.util.BitmapLoader m;
    public final d1 n;
    public final Handler o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final ImmutableList s;
    public PlayerInfo t;
    public PlayerWrapper u;
    public final PendingIntent v;
    public PlayerListener w;
    public MediaSessionService.MediaSessionListener x;
    public MediaSessionServiceLegacyStub y;
    public boolean z;

    public class MediaPlayPauseKeyHandler extends Handler {
        private Runnable playPauseTask;

        public MediaPlayPauseKeyHandler(Looper looper) {
            super(looper);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void lambda$setPendingPlayPauseTask$0(MediaSession.ControllerInfo controllerInfo, KeyEvent keyEvent) {
            boolean zJ = MediaSessionImpl.this.j(controllerInfo);
            MediaSessionImpl mediaSessionImpl = MediaSessionImpl.this;
            if (zJ) {
                mediaSessionImpl.b(keyEvent, false, false);
            } else {
                MediaSessionLegacyStub mediaSessionLegacyStub = mediaSessionImpl.f17431h;
                MediaSessionManager.RemoteUserInfo remoteUserInfo = controllerInfo.f17419a;
                remoteUserInfo.getClass();
                mediaSessionLegacyStub.getClass();
                mediaSessionLegacyStub.D(1, new h1(mediaSessionLegacyStub, 1), remoteUserInfo, true);
            }
            this.playPauseTask = null;
        }

        public Runnable clearPendingPlayPauseTask() {
            Runnable runnable = this.playPauseTask;
            if (runnable == null) {
                return null;
            }
            removeCallbacks(runnable);
            Runnable runnable2 = this.playPauseTask;
            this.playPauseTask = null;
            return runnable2;
        }

        public void flush() {
            Runnable runnableClearPendingPlayPauseTask = clearPendingPlayPauseTask();
            if (runnableClearPendingPlayPauseTask != null) {
                Util.W(this, runnableClearPendingPlayPauseTask);
            }
        }

        public boolean hasPendingPlayPauseTask() {
            return this.playPauseTask != null;
        }

        public void setPendingPlayPauseTask(MediaSession.ControllerInfo controllerInfo, KeyEvent keyEvent) {
            t0 t0Var = new t0(this, controllerInfo, keyEvent, 5);
            this.playPauseTask = t0Var;
            postDelayed(t0Var, ViewConfiguration.getDoubleTapTimeout());
        }
    }

    public class PlayerInfoChangedHandler extends Handler {
        private static final int MSG_PLAYER_INFO_CHANGED = 1;
        private boolean excludeTimeline;
        private boolean excludeTracks;

        public PlayerInfoChangedHandler(Looper looper) {
            super(looper);
            this.excludeTimeline = true;
            this.excludeTracks = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MediaSession.ControllerInfo controllerInfo;
            int iB;
            if (message.what != 1) {
                r81.c(message.what, "Invalid message what=");
                return;
            }
            MediaSessionImpl mediaSessionImpl = MediaSessionImpl.this;
            PlayerInfo playerInfo = mediaSessionImpl.t;
            Timeline timelineZ0 = mediaSessionImpl.u.Z0();
            SessionPositionInfo sessionPositionInfoX0 = MediaSessionImpl.this.u.X0();
            int i2 = MediaSessionImpl.this.t.f17503k;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17511j = timelineZ0;
            builderC.f17506c = sessionPositionInfoX0;
            builderC.f17512k = i2;
            mediaSessionImpl.t = builderC.a();
            MediaSessionImpl mediaSessionImpl2 = MediaSessionImpl.this;
            PlayerInfo playerInfo2 = mediaSessionImpl2.t;
            MediaSessionStub mediaSessionStub = mediaSessionImpl2.g;
            boolean z = this.excludeTimeline;
            boolean z2 = this.excludeTracks;
            PlayerInfo playerInfoN2 = mediaSessionStub.N2(playerInfo2);
            ConnectedControllersManager connectedControllersManager = mediaSessionStub.f17479j;
            ImmutableList immutableListF = connectedControllersManager.f();
            for (int i3 = 0; i3 < immutableListF.size(); i3++) {
                MediaSession.ControllerInfo controllerInfo2 = (MediaSession.ControllerInfo) immutableListF.get(i3);
                try {
                    SequencedFutureManager sequencedFutureManagerJ = connectedControllersManager.j(controllerInfo2);
                    if (sequencedFutureManagerJ != null) {
                        iB = sequencedFutureManagerJ.b();
                    } else if (!mediaSessionImpl2.i(controllerInfo2)) {
                        break;
                    } else {
                        iB = 0;
                    }
                    PlayerInfo playerInfoI = connectedControllersManager.i(controllerInfo2);
                    if (playerInfoI == null) {
                        connectedControllersManager.h(controllerInfo2);
                        Player.Commands commandsD = MediaUtils.d(connectedControllersManager.e(controllerInfo2), mediaSessionImpl2.u.i0());
                        controllerInfo = controllerInfo2;
                        try {
                            MediaSession.ControllerCb controllerCb = controllerInfo.d;
                            controllerCb.getClass();
                            try {
                                controllerCb.a(iB, playerInfoI == null ? playerInfoN2 : playerInfoI, commandsD, z, z2);
                            } catch (DeadObjectException unused) {
                                mediaSessionStub.f17479j.o(controllerInfo);
                            } catch (RemoteException e2) {
                                e = e2;
                                Log.h("Exception in " + controllerInfo, e);
                            }
                        } catch (DeadObjectException unused2) {
                            controllerInfo = controllerInfo;
                        } catch (RemoteException e3) {
                            e = e3;
                            controllerInfo = controllerInfo;
                        }
                    }
                } catch (DeadObjectException unused3) {
                    controllerInfo = controllerInfo2;
                } catch (RemoteException e4) {
                    e = e4;
                    controllerInfo = controllerInfo2;
                }
            }
            this.excludeTimeline = true;
            this.excludeTracks = true;
        }

        public boolean hasPendingPlayerInfoChangedUpdate() {
            return hasMessages(1);
        }

        public void sendPlayerInfoChangedMessage(boolean z, boolean z2) {
            boolean z3 = false;
            this.excludeTimeline = this.excludeTimeline && z;
            if (this.excludeTracks && z2) {
                z3 = true;
            }
            this.excludeTracks = z3;
            if (hasMessages(1)) {
                return;
            }
            sendEmptyMessage(1);
        }
    }

    public static class PlayerListener implements Player.Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WeakReference f17438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference f17439c;

        public PlayerListener(MediaSessionImpl mediaSessionImpl, PlayerWrapper playerWrapper) {
            this.f17438b = new WeakReference(mediaSessionImpl);
            this.f17439c = new WeakReference(playerWrapper);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void A(int i2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17509h = i2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.o(i2);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void B(CueGroup cueGroup) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo.Builder builder = new PlayerInfo.Builder(mediaSessionImplE.t);
            builder.r = cueGroup;
            mediaSessionImplE.t = builder.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void H(int i2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            mediaSessionImplE.t = playerInfo.b(playerInfo.w, i2, playerInfo.v);
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void K(int i2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            PlayerWrapper playerWrapper = (PlayerWrapper) this.f17439c.get();
            if (playerWrapper == null) {
                return;
            }
            mediaSessionImplE.t = mediaSessionImplE.t.d(i2, playerWrapper.e());
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                playerWrapper.e();
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void L(int i2, MediaItem mediaItem) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17505b = i2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.k(mediaItem);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void N(boolean z) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17510i = z;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.p(z);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void O(int i2, boolean z) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            mediaSessionImplE.t = mediaSessionImplE.t.a(i2, z);
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                VolumeProviderCompat volumeProviderCompat = MediaSessionLegacyStub.this.o;
                if (volumeProviderCompat != null) {
                    if (z) {
                        i2 = 0;
                    }
                    volumeProviderCompat.d = i2;
                    volumeProviderCompat.a().setCurrentVolume(i2);
                }
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void P(long j2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.C = j2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.getClass();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void Q(MediaMetadata mediaMetadata) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.B = mediaMetadata;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.l();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void R(TrackSelectionParameters trackSelectionParameters) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.G = trackSelectionParameters;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            mediaSessionImplE.e(new q0(trackSelectionParameters, 5));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.common.Player.Listener
        public final void S() {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            ConnectedControllersManager connectedControllersManager = mediaSessionImplE.g.f17479j;
            ImmutableList immutableListF = connectedControllersManager.f();
            for (int i2 = 0; i2 < immutableListF.size(); i2++) {
                MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) immutableListF.get(i2);
                connectedControllersManager.h(controllerInfo);
                mediaSessionImplE.d(controllerInfo, new q0(6));
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void X(int i2, int i3) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            mediaSessionImplE.e(new r0(i2, i3, 1));
        }

        @Override // androidx.media3.common.Player.Listener
        public final void Y(Player.Commands commands) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            mediaSessionImplE.g(commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void b(VideoSize videoSize) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.l = videoSize;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.getClass();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void d0(int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.d = positionInfo;
            builderC.f17507e = positionInfo2;
            builderC.f17508f = i2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        public final MediaSessionImpl e() {
            return (MediaSessionImpl) this.f17438b.get();
        }

        @Override // androidx.media3.common.Player.Listener
        public final void e0(boolean z) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.y = z;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.getClass();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
            mediaSessionImplE.w();
        }

        @Override // androidx.media3.common.Player.Listener
        public final void f(int i2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.p = i2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.getClass();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void g0(int i2, boolean z) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            mediaSessionImplE.t = playerInfo.b(i2, playerInfo.z, z);
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void h(PlaybackParameters playbackParameters) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            mediaSessionImplE.t = mediaSessionImplE.t.c(playbackParameters);
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void h0(float f2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.o = f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 : builderC.n;
            builderC.n = f2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.getClass();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void i0(AudioAttributes audioAttributes) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.q = audioAttributes;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                if (mediaSessionLegacyStub.f17441f.u.s0().f13739a == 0) {
                    mediaSessionLegacyStub.l.n(audioAttributes);
                }
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void m0(Timeline timeline, int i2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            PlayerWrapper playerWrapper = (PlayerWrapper) this.f17439c.get();
            if (playerWrapper == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            SessionPositionInfo sessionPositionInfoX0 = playerWrapper.X0();
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17511j = timeline;
            builderC.f17506c = sessionPositionInfoX0;
            builderC.f17512k = i2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(false, true);
            try {
                mediaSessionImplE.f17431h.f17442h.q(timeline);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void o0(MediaMetadata mediaMetadata) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.m = mediaMetadata;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.n(mediaMetadata);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void p0(long j2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.D = j2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.getClass();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void q0(Tracks tracks) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.F = tracks;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, false);
            mediaSessionImplE.e(new q0(tracks, 4));
        }

        @Override // androidx.media3.common.Player.Listener
        public final void r0(DeviceInfo deviceInfo) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.s = deviceInfo;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                mediaSessionImplE.f17431h.f17442h.j();
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void s(PlaybackException playbackException) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.f17504a = playbackException;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final void u0(long j2) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.E = j2;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void x0(boolean z) {
            MediaSessionImpl mediaSessionImplE = e();
            if (mediaSessionImplE == null) {
                return;
            }
            SessionResult sessionResult = MediaSessionImpl.F;
            mediaSessionImplE.x();
            if (((PlayerWrapper) this.f17439c.get()) == null) {
                return;
            }
            PlayerInfo playerInfo = mediaSessionImplE.t;
            PlayerInfo.Builder builderC = d21.c(playerInfo, playerInfo);
            builderC.x = z;
            mediaSessionImplE.t = builderC.a();
            mediaSessionImplE.f17428c.sendPlayerInfoChangedMessage(true, true);
            try {
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionImplE.f17431h.f17442h;
                controllerLegacyCbForBroadcast.r();
                MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            } catch (RemoteException e2) {
                Log.e("Exception in using media1 API", e2);
            }
            mediaSessionImplE.w();
        }
    }

    public interface RemoteControllerTask {
        void d(MediaSession.ControllerCb controllerCb, int i2);
    }

    public MediaSessionImpl(MediaSession mediaSession, Context context, String str, Player player, PendingIntent pendingIntent, ImmutableList<CommandButton> immutableList, ImmutableList<CommandButton> immutableList2, ImmutableList<CommandButton> immutableList3, MediaSession.Callback callback, Bundle bundle, Bundle bundle2, androidx.media3.common.util.BitmapLoader bitmapLoader, boolean z, boolean z2, boolean z3) {
        Log.f("Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.10.1] [" + Util.f14242a + "]");
        this.f17434k = mediaSession;
        this.f17430f = context;
        this.f17432i = str;
        this.v = pendingIntent;
        this.C = immutableList;
        this.D = immutableList2;
        this.s = immutableList3;
        this.f17429e = callback;
        this.E = bundle2;
        this.m = bitmapLoader;
        this.p = z;
        this.q = z2;
        this.r = z3;
        MediaSessionStub mediaSessionStub = new MediaSessionStub(this);
        this.g = mediaSessionStub;
        this.o = new Handler(Looper.getMainLooper());
        Looper looperA0 = player.a0();
        Handler handler = new Handler(looperA0);
        this.l = handler;
        this.t = PlayerInfo.H;
        this.f17428c = new PlayerInfoChangedHandler(looperA0);
        this.d = new MediaPlayPauseKeyHandler(looperA0);
        Uri uriC = c(str);
        this.f17427b = uriC;
        MediaSession.ConnectionResult connectionResultA = new MediaSession.ConnectionResult.AcceptedResultBuilder(mediaSession).a();
        MediaSessionLegacyStub mediaSessionLegacyStub = new MediaSessionLegacyStub(this, uriC, handler, bundle, z, immutableList, immutableList2, connectionResultA.f17413a, connectionResultA.f17414b, bundle2);
        this.f17431h = mediaSessionLegacyStub;
        this.f17433j = new SessionToken(Process.myUid(), 1010001300, 9, context.getPackageName(), mediaSessionStub, bundle, mediaSessionLegacyStub.l.c().f17819c);
        PlayerWrapper playerWrapper = new PlayerWrapper(player);
        this.u = playerWrapper;
        Util.W(handler, new g0(this, playerWrapper, 6));
        this.A = HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD;
        this.n = new d1(this, 2);
        Util.W(handler, new d1(this, 3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(MediaSessionImpl mediaSessionImpl) {
        synchronized (mediaSessionImpl.f17426a) {
            try {
                if (mediaSessionImpl.z) {
                    return;
                }
                SessionPositionInfo sessionPositionInfoX0 = mediaSessionImpl.u.X0();
                if (!mediaSessionImpl.f17428c.hasPendingPlayerInfoChangedUpdate() && MediaUtils.a(sessionPositionInfoX0, mediaSessionImpl.t.f17497c)) {
                    ConnectedControllersManager connectedControllersManager = mediaSessionImpl.g.f17479j;
                    ImmutableList immutableListF = connectedControllersManager.f();
                    for (int i2 = 0; i2 < immutableListF.size(); i2++) {
                        MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) immutableListF.get(i2);
                        connectedControllersManager.h(controllerInfo);
                        mediaSessionImpl.d(controllerInfo, new g1(sessionPositionInfoX0, connectedControllersManager.l(controllerInfo, 16), connectedControllersManager.l(controllerInfo, 17), controllerInfo));
                    }
                    try {
                        mediaSessionImpl.f17431h.f17442h.c(0, sessionPositionInfoX0, true, true, 0);
                    } catch (RemoteException e2) {
                        Log.e("Exception in using media1 API", e2);
                    }
                }
                mediaSessionImpl.w();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Uri c(String str) {
        Uri.Builder builderAuthority = new Uri.Builder().scheme("androidx").authority("media3.session");
        if (str == null) {
            str = "";
        }
        return builderAuthority.appendPath(str).build();
    }

    public static boolean l(MediaSession.ControllerInfo controllerInfo) {
        return controllerInfo != null && Objects.equals(controllerInfo.f17419a.a(), "com.android.systemui");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0065  */
    /* JADX WARN: Code duplicated, block: B:32:0x006d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0074  */
    public final boolean b(KeyEvent keyEvent, boolean z, final boolean z2) {
        final c cVar;
        final MediaSession.ControllerInfo controllerInfoF = this.f17434k.f17401a.f();
        if (controllerInfoF == null) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if ((keyCode == 85 || keyCode == 79) && z) {
            keyCode = 87;
        }
        int i2 = 1;
        if (keyCode == 79) {
            if (!this.u.r()) {
                cVar = new c(this, controllerInfoF, 4);
            } else {
                cVar = new c(this, controllerInfoF, 5);
            }
        } else if (keyCode == 126) {
            cVar = new c(this, controllerInfoF, 6);
        } else if (keyCode == 127) {
            cVar = new c(this, controllerInfoF, 7);
        } else if (keyCode == 272) {
            cVar = new c(this, controllerInfoF, 8);
        } else if (keyCode != 273) {
            switch (keyCode) {
                case 85:
                    if (!this.u.r()) {
                        cVar = new c(this, controllerInfoF, 5);
                    } else {
                        cVar = new c(this, controllerInfoF, 4);
                    }
                    break;
                case 86:
                    cVar = new c(this, controllerInfoF, 3);
                    break;
                case 87:
                    cVar = new c(this, controllerInfoF, 8);
                    break;
                case 88:
                    cVar = new c(this, controllerInfoF, 9);
                    break;
                case 89:
                    cVar = new c(this, controllerInfoF, 2);
                    break;
                case Sink.ORIENTATION_90 /* 90 */:
                    cVar = new c(this, controllerInfoF, i2);
                    break;
                default:
                    return false;
            }
        } else {
            cVar = new c(this, controllerInfoF, 9);
        }
        Util.W(this.l, new Runnable() { // from class: androidx.media3.session.e1
            @Override // java.lang.Runnable
            public final void run() {
                int i3;
                MediaSessionImpl mediaSessionImpl = this.f17646b;
                MediaSessionStub mediaSessionStub = mediaSessionImpl.g;
                boolean z3 = z2;
                MediaSession.ControllerInfo controllerInfo = controllerInfoF;
                if (z3) {
                    SessionCommand sessionCommand = new SessionCommand("androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY", Bundle.EMPTY);
                    try {
                        SequencedFutureManager sequencedFutureManagerJ = mediaSessionStub.f17479j.j(controllerInfo);
                        if (sequencedFutureManagerJ != null) {
                            i3 = sequencedFutureManagerJ.a(MediaSessionImpl.F).f17534b;
                        } else if (mediaSessionImpl.i(controllerInfo)) {
                            Futures.g(new SessionResult(0));
                            i3 = 0;
                        } else {
                            Futures.g(new SessionResult(-100));
                        }
                        MediaSession.ControllerCb controllerCb = controllerInfo.d;
                        if (controllerCb != null) {
                            controllerCb.b(i3, sessionCommand);
                        }
                    } catch (DeadObjectException unused) {
                        mediaSessionStub.f17479j.o(controllerInfo);
                        Futures.g(new SessionResult(-100));
                    } catch (RemoteException e2) {
                        Log.h("Exception in " + controllerInfo, e2);
                        Futures.g(new SessionResult(-1));
                    }
                }
                cVar.run();
                mediaSessionStub.f17479j.d(controllerInfo);
            }
        });
        return true;
    }

    public final void d(MediaSession.ControllerInfo controllerInfo, RemoteControllerTask remoteControllerTask) {
        int iB;
        MediaSessionStub mediaSessionStub = this.g;
        try {
            SequencedFutureManager sequencedFutureManagerJ = mediaSessionStub.f17479j.j(controllerInfo);
            if (sequencedFutureManagerJ != null) {
                iB = sequencedFutureManagerJ.b();
            } else if (!i(controllerInfo)) {
                return;
            } else {
                iB = 0;
            }
            MediaSession.ControllerCb controllerCb = controllerInfo.d;
            if (controllerCb != null) {
                remoteControllerTask.d(controllerCb, iB);
            }
        } catch (DeadObjectException unused) {
            mediaSessionStub.f17479j.o(controllerInfo);
        } catch (RemoteException e2) {
            Log.h("Exception in " + controllerInfo, e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(RemoteControllerTask remoteControllerTask) {
        ImmutableList immutableListF = this.g.f17479j.f();
        for (int i2 = 0; i2 < immutableListF.size(); i2++) {
            d((MediaSession.ControllerInfo) immutableListF.get(i2), remoteControllerTask);
        }
        try {
            remoteControllerTask.d(this.f17431h.f17442h, 0);
        } catch (RemoteException e2) {
            Log.e("Exception in using media1 API", e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MediaSession.ControllerInfo f() {
        ImmutableList immutableListF = this.g.f17479j.f();
        for (int i2 = 0; i2 < immutableListF.size(); i2++) {
            MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) immutableListF.get(i2);
            if (j(controllerInfo)) {
                return controllerInfo;
            }
        }
        return null;
    }

    public final void g(Player.Commands commands) {
        this.f17428c.sendPlayerInfoChangedMessage(false, false);
        e(new p0(commands));
        try {
            MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = this.f17431h.f17442h;
            DeviceInfo deviceInfo = this.t.s;
            controllerLegacyCbForBroadcast.j();
        } catch (RemoteException e2) {
            Log.e("Exception in using media1 API", e2);
        }
    }

    public final void h(MediaSession.ControllerInfo controllerInfo, boolean z) {
        if (r()) {
            boolean z2 = this.u.R0(16) && this.u.O0() != null;
            boolean z3 = this.u.R0(31) || this.u.R0(20);
            MediaSession.ControllerInfo controllerInfoV = v(controllerInfo);
            Player.Commands.Builder builder = new Player.Commands.Builder();
            builder.f13926a.a(1);
            Player.Commands commandsC = builder.c();
            if (!z2 && z3) {
                this.f17429e.getClass();
                Futures.a(MediaSession.Callback.b(), new FutureCallback<MediaSession.MediaItemsWithStartPosition>(controllerInfoV, z, commandsC) { // from class: androidx.media3.session.MediaSessionImpl.1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final /* synthetic */ MediaSession.ControllerInfo f17435a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ boolean f17436b;

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public final void onFailure(Throwable th) {
                        if (th instanceof UnsupportedOperationException) {
                            Log.h("UnsupportedOperationException: Make sure to implement MediaSession.Callback.onPlaybackResumption() if you add a media button receiver to your manifest or if you implement the recent media item contract with your MediaLibraryService.", th);
                        } else {
                            Log.e("Failure calling MediaSession.Callback.onPlaybackResumption(): " + th.getMessage(), th);
                        }
                        MediaSessionImpl mediaSessionImpl = MediaSessionImpl.this;
                        Util.G(mediaSessionImpl.u);
                        if (this.f17436b) {
                            mediaSessionImpl.s(this.f17435a);
                        }
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public final void onSuccess(Object obj) {
                        SessionResult sessionResult = MediaSessionImpl.F;
                        MediaSessionImpl mediaSessionImpl = MediaSessionImpl.this;
                        MediaUtils.f(mediaSessionImpl.u, (MediaSession.MediaItemsWithStartPosition) obj);
                        Util.G(mediaSessionImpl.u);
                        if (this.f17436b) {
                            mediaSessionImpl.s(this.f17435a);
                        }
                    }
                }, new g(this, 2));
                return;
            }
            if (!z2) {
                Log.g("Play requested without current MediaItem, but playback resumption prevented by missing available commands");
            }
            Util.G(this.u);
            if (z) {
                s(controllerInfoV);
            }
        }
    }

    public boolean i(MediaSession.ControllerInfo controllerInfo) {
        return this.g.f17479j.k(controllerInfo) || this.f17431h.f17440e.k(controllerInfo);
    }

    public final boolean j(MediaSession.ControllerInfo controllerInfo) {
        return Objects.equals(controllerInfo.f17419a.a(), this.f17430f.getPackageName()) && controllerInfo.f17420b != 0 && new Bundle(controllerInfo.f17422e).getBoolean("androidx.media3.session.MediaNotificationManager", false);
    }

    public final boolean k() {
        boolean z;
        synchronized (this.f17426a) {
            z = this.z;
        }
        return z;
    }

    public final ListenableFuture m(MediaSession.ControllerInfo controllerInfo, List list) {
        return this.f17429e.a(this.f17434k, v(controllerInfo), list);
    }

    public final MediaSession.ConnectionResult n(MediaSession.ControllerInfo controllerInfo) {
        boolean z = this.B;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17431h;
        MediaSession mediaSession = this.f17434k;
        if (z && l(controllerInfo)) {
            mediaSessionLegacyStub.getClass();
            MediaSession.ConnectionResult.AcceptedResultBuilder acceptedResultBuilder = new MediaSession.ConnectionResult.AcceptedResultBuilder(mediaSession);
            SessionCommands sessionCommands = mediaSessionLegacyStub.x;
            sessionCommands.getClass();
            acceptedResultBuilder.f17416a = sessionCommands;
            Player.Commands commands = mediaSessionLegacyStub.y;
            commands.getClass();
            acceptedResultBuilder.f17417b = commands;
            if (mediaSessionLegacyStub.w.isEmpty()) {
                ImmutableList immutableList = mediaSessionLegacyStub.v;
                acceptedResultBuilder.f17418c = immutableList != null ? ImmutableList.t(immutableList) : null;
            } else {
                ImmutableList immutableList2 = mediaSessionLegacyStub.w;
                acceptedResultBuilder.d = immutableList2 != null ? ImmutableList.t(immutableList2) : null;
            }
            return acceptedResultBuilder.a();
        }
        this.f17429e.getClass();
        MediaSession.ConnectionResult connectionResultA = new MediaSession.ConnectionResult.AcceptedResultBuilder(mediaSession).a();
        if (j(controllerInfo)) {
            int i2 = 1;
            this.B = true;
            ImmutableList immutableList3 = connectionResultA.d;
            if (immutableList3 == null) {
                immutableList3 = mediaSession.f17401a.D;
            }
            if (immutableList3.isEmpty()) {
                ImmutableList immutableList4 = connectionResultA.f17415c;
                if (immutableList4 == null) {
                    immutableList4 = mediaSession.f17401a.C;
                }
                mediaSessionLegacyStub.v = immutableList4;
            } else {
                mediaSessionLegacyStub.w = immutableList3;
                mediaSessionLegacyStub.J();
            }
            SessionCommands sessionCommands2 = connectionResultA.f17413a;
            Player.Commands commands2 = connectionResultA.f17414b;
            boolean z2 = mediaSessionLegacyStub.y.a(17) != commands2.a(17);
            mediaSessionLegacyStub.x = sessionCommands2;
            mediaSessionLegacyStub.y = commands2;
            if (!mediaSessionLegacyStub.w.isEmpty()) {
                mediaSessionLegacyStub.J();
            }
            MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.f17441f;
            if (z2) {
                Util.W(mediaSessionImpl.l, new k1(mediaSessionLegacyStub, mediaSessionImpl.u, i2));
                return connectionResultA;
            }
            mediaSessionLegacyStub.K(mediaSessionImpl.u);
        }
        return connectionResultA;
    }

    public final ListenableFuture o(MediaSession.ControllerInfo controllerInfo) {
        v(controllerInfo);
        this.f17429e.getClass();
        return Futures.g(new SessionResult(-6));
    }

    public void p(MediaSession.ControllerInfo controllerInfo) {
        if (this.B) {
            if (l(controllerInfo)) {
                return;
            }
            if (j(controllerInfo)) {
                this.B = false;
            }
        }
        this.f17429e.getClass();
    }

    public final boolean q(MediaSession.ControllerInfo controllerInfo, Intent intent) {
        boolean z;
        int i2 = controllerInfo.f17420b;
        Bundle extras = intent.getExtras();
        KeyEvent keyEvent = (extras == null || !extras.containsKey("android.intent.extra.KEY_EVENT")) ? null : (KeyEvent) extras.getParcelable("android.intent.extra.KEY_EVENT");
        ComponentName component = intent.getComponent();
        if (Objects.equals(intent.getAction(), "android.intent.action.MEDIA_BUTTON")) {
            Context context = this.f17430f;
            if ((component == null || Objects.equals(component.getPackageName(), context.getPackageName())) && keyEvent != null) {
                x();
                this.f17429e.getClass();
                if (keyEvent.getAction() != 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode != 79 && keyCode != 126 && keyCode != 127 && keyCode != 272 && keyCode != 273) {
                        switch (keyCode) {
                        }
                    }
                    return true;
                }
                int keyCode2 = keyEvent.getKeyCode();
                boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.software.leanback");
                MediaPlayPauseKeyHandler mediaPlayPauseKeyHandler = this.d;
                if ((keyCode2 != 79 && keyCode2 != 85) || zHasSystemFeature || i2 != 0 || keyEvent.getRepeatCount() != 0) {
                    mediaPlayPauseKeyHandler.flush();
                    z = false;
                } else {
                    if (!mediaPlayPauseKeyHandler.hasPendingPlayPauseTask()) {
                        mediaPlayPauseKeyHandler.setPendingPlayPauseTask(controllerInfo, keyEvent);
                        return true;
                    }
                    mediaPlayPauseKeyHandler.clearPendingPlayPauseTask();
                    z = true;
                }
                if (this.B) {
                    boolean booleanExtra = intent.getBooleanExtra("androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY", false);
                    if (keyEvent.getRepeatCount() > 0 || b(keyEvent, z, booleanExtra)) {
                        return true;
                    }
                } else {
                    MediaSessionLegacyStub mediaSessionLegacyStub = this.f17431h;
                    if ((keyCode2 == 85 || keyCode2 == 79) && z) {
                        mediaSessionLegacyStub.x();
                        return true;
                    }
                    if (i2 != 0) {
                        mediaSessionLegacyStub.l.f17800b.c(keyEvent);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean r() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                return ((Boolean) CallbackToFutureAdapter.a(new o0(this, 4)).get()).booleanValue();
            } catch (InterruptedException | ExecutionException e2) {
                bm.i(e2);
                return false;
            }
        }
        MediaSessionService.MediaSessionListener mediaSessionListener = this.x;
        if (mediaSessionListener != null) {
            MediaSessionService mediaSessionService = MediaSessionService.this;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 31 && i2 < 33) {
                int i3 = MediaSessionService.f17466j;
                if (!mediaSessionService.d().m) {
                    mediaSessionService.h(this.f17434k, true);
                }
            }
        }
        return true;
    }

    public final void s(MediaSession.ControllerInfo controllerInfo) {
        v(controllerInfo);
        this.f17429e.getClass();
    }

    public final ListenableFuture t(MediaSession.ControllerInfo controllerInfo, List list, int i2, long j2) {
        return this.f17429e.e(this.f17434k, v(controllerInfo), list, i2, j2);
    }

    public final void u() {
        String str;
        StringBuilder sb = new StringBuilder("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [AndroidXMedia3/1.10.1] [");
        sb.append(Util.f14242a);
        sb.append("] [");
        HashSet hashSet = MediaLibraryInfo.f13877a;
        synchronized (MediaLibraryInfo.class) {
            str = MediaLibraryInfo.f13878b;
        }
        sb.append(str);
        sb.append("]");
        Log.f(sb.toString());
        synchronized (this.f17426a) {
            try {
                if (this.z) {
                    return;
                }
                this.z = true;
                this.d.clearPendingPlayPauseTask();
                this.l.removeCallbacksAndMessages(null);
                try {
                    Util.W(this.l, new d1(this, 0));
                } catch (Exception e2) {
                    Log.h("Exception thrown while closing", e2);
                }
                MediaSessionLegacyStub mediaSessionLegacyStub = this.f17431h;
                ComponentName componentName = mediaSessionLegacyStub.n;
                MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.f17441f;
                MediaSessionCompat mediaSessionCompat = mediaSessionLegacyStub.l;
                if (Build.VERSION.SDK_INT < 31) {
                    if (componentName == null) {
                        mediaSessionCompat.k(null);
                    } else {
                        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", mediaSessionImpl.f17427b);
                        intent.setComponent(componentName);
                        mediaSessionCompat.k(PendingIntent.getBroadcast(mediaSessionImpl.f17430f, 0, intent, MediaSessionLegacyStub.z));
                    }
                }
                MediaSessionLegacyStub.MediaButtonReceiver mediaButtonReceiver = mediaSessionLegacyStub.m;
                if (mediaButtonReceiver != null) {
                    mediaSessionImpl.f17430f.unregisterReceiver(mediaButtonReceiver);
                }
                AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver = mediaSessionLegacyStub.f17445k;
                if (androidAutoConnectionStateObserver != null && !androidAutoConnectionStateObserver.f17229f.getAndSet(true)) {
                    androidAutoConnectionStateObserver.f17227c.execute(new a(androidAutoConnectionStateObserver, 0));
                }
                mediaSessionCompat.e();
                MediaSessionStub mediaSessionStub = this.g;
                Set set = mediaSessionStub.f17480k;
                ConnectedControllersManager connectedControllersManager = mediaSessionStub.f17479j;
                for (MediaSession.ControllerInfo controllerInfo : connectedControllersManager.f()) {
                    connectedControllersManager.o(controllerInfo);
                    MediaSession.ControllerCb controllerCb = controllerInfo.d;
                    if (controllerCb != null) {
                        controllerCb.e();
                    }
                }
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    MediaSession.ControllerCb controllerCb2 = ((MediaSession.ControllerInfo) it.next()).d;
                    if (controllerCb2 != null) {
                        controllerCb2.e();
                    }
                }
                set.clear();
                mediaSessionStub.f17478b.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final MediaSession.ControllerInfo v(MediaSession.ControllerInfo controllerInfo) {
        MediaSession.ControllerInfo controllerInfoF;
        return (this.B && l(controllerInfo) && (controllerInfoF = f()) != null) ? controllerInfoF : controllerInfo;
    }

    public final void w() {
        Handler handler = this.l;
        d1 d1Var = this.n;
        handler.removeCallbacks(d1Var);
        if (this.q) {
            long j2 = this.A;
            if (j2 > 0) {
                if (this.u.isPlaying() || this.u.m()) {
                    handler.postDelayed(d1Var, j2);
                }
            }
        }
    }

    public final void x() {
        if (Looper.myLooper() == this.l.getLooper()) {
            return;
        }
        md.k("Player callback method is called from a wrong thread. See javadoc of MediaSession for details.");
    }
}

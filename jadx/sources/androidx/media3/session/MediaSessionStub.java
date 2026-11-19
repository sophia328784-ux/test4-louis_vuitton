package androidx.media3.session;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BundleListRetriever;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.PlayerInfo.InProcessBinder;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import defpackage.sc0;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class MediaSessionStub extends IMediaSession.Stub {
    public static final /* synthetic */ int p = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f17478b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConnectedControllersManager f17479j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Set f17480k = Collections.synchronizedSet(new HashSet());
    public ImmutableBiMap l = ImmutableBiMap.q();
    public ImmutableMap m = ImmutableMap.h();
    public int n;
    public SurfaceHolderWithSize o;

    public static final class Controller2Cb implements MediaSession.ControllerCb {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IMediaController f17481a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17482b;

        public Controller2Cb(IMediaController iMediaController, int i2) {
            this.f17481a = iMediaController;
            this.f17482b = i2;
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void a(int i2, PlayerInfo playerInfo, Player.Commands commands, boolean z, boolean z2) {
            Bundle bundleJ;
            int i3 = this.f17482b;
            Preconditions.q(i3 != 0);
            boolean z3 = z || !commands.a(17);
            boolean z4 = z2 || !commands.a(30);
            IMediaController iMediaController = this.f17481a;
            if (i3 < 2) {
                iMediaController.v2(i2, playerInfo.g(commands, z, true).j(i3), z3);
                return;
            }
            PlayerInfo playerInfoG = playerInfo.g(commands, z, z2);
            if (iMediaController instanceof MediaControllerStub) {
                bundleJ = new Bundle();
                bundleJ.putBinder(PlayerInfo.o0, playerInfoG.new InProcessBinder());
            } else {
                bundleJ = playerInfoG.j(i3);
            }
            PlayerInfo.BundlingExclusions bundlingExclusions = new PlayerInfo.BundlingExclusions(z3, z4);
            Bundle bundle = new Bundle();
            bundle.putBoolean(PlayerInfo.BundlingExclusions.d, bundlingExclusions.f17515a);
            bundle.putBoolean(PlayerInfo.BundlingExclusions.f17514e, bundlingExclusions.f17516b);
            iMediaController.H1(i2, bundleJ, bundle);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void b(int i2, SessionCommand sessionCommand) {
            this.f17481a.C1(i2, sessionCommand.b(), Bundle.EMPTY);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void c(int i2, SessionPositionInfo sessionPositionInfo, boolean z, boolean z2, int i3) {
            this.f17481a.A1(i2, sessionPositionInfo.a(z, z2).c(i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
        
            if (r2 != 4) goto L26;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.session.MediaSession.ControllerCb
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void d(int r10, androidx.media3.session.LibraryResult r11) {
            /*
                r9 = this;
                java.lang.String r0 = androidx.media3.session.LibraryResult.f17306j
                java.lang.Object r1 = r11.f17310c
                int r2 = r11.d
                android.os.Bundle r3 = new android.os.Bundle
                r3.<init>()
                java.lang.String r4 = androidx.media3.session.LibraryResult.g
                int r5 = r11.f17308a
                r3.putInt(r4, r5)
                java.lang.String r4 = androidx.media3.session.LibraryResult.f17304h
                long r5 = r11.f17309b
                r3.putLong(r4, r5)
                androidx.media3.session.MediaLibraryService$LibraryParams r4 = r11.f17311e
                if (r4 == 0) goto L43
                java.lang.String r5 = androidx.media3.session.LibraryResult.f17305i
                android.os.Bundle r6 = new android.os.Bundle
                r6.<init>()
                java.lang.String r7 = androidx.media3.session.MediaLibraryService$LibraryParams.f17368e
                android.os.Bundle r8 = r4.f17371a
                r6.putBundle(r7, r8)
                java.lang.String r7 = androidx.media3.session.MediaLibraryService$LibraryParams.f17369f
                boolean r8 = r4.f17372b
                r6.putBoolean(r7, r8)
                java.lang.String r7 = androidx.media3.session.MediaLibraryService$LibraryParams.g
                boolean r8 = r4.f17373c
                r6.putBoolean(r7, r8)
                java.lang.String r7 = androidx.media3.session.MediaLibraryService$LibraryParams.f17370h
                boolean r4 = r4.d
                r6.putBoolean(r7, r4)
                r3.putBundle(r5, r6)
            L43:
                androidx.media3.session.SessionError r11 = r11.f17312f
                if (r11 == 0) goto L50
                java.lang.String r4 = androidx.media3.session.LibraryResult.l
                android.os.Bundle r11 = r11.b()
                r3.putBundle(r4, r11)
            L50:
                java.lang.String r11 = androidx.media3.session.LibraryResult.f17307k
                r3.putInt(r11, r2)
                if (r1 != 0) goto L58
                goto La0
            L58:
                r11 = 1
                if (r2 == r11) goto La6
                r11 = 2
                r4 = 0
                int r5 = r9.f17482b
                if (r2 == r11) goto L97
                r11 = 3
                if (r2 == r11) goto L68
                r11 = 4
                if (r2 == r11) goto La6
                goto La0
            L68:
                androidx.media3.common.BundleListRetriever r11 = new androidx.media3.common.BundleListRetriever
                com.google.common.collect.ImmutableList r1 = (com.google.common.collect.ImmutableList) r1
                com.google.common.collect.UnmodifiableListIterator r2 = com.google.common.collect.ImmutableList.f33587c
                com.google.common.collect.ImmutableList$Builder r2 = new com.google.common.collect.ImmutableList$Builder
                r2.<init>()
                r6 = r4
            L74:
                int r7 = r1.size()
                if (r6 >= r7) goto L8c
                java.lang.Object r7 = r1.get(r6)
                androidx.media3.common.MediaItem r7 = (androidx.media3.common.MediaItem) r7
                java.lang.String r8 = androidx.media3.session.LibraryResult.g
                android.os.Bundle r7 = r7.c(r5, r4)
                r2.e(r7)
                int r6 = r6 + 1
                goto L74
            L8c:
                com.google.common.collect.ImmutableList r1 = r2.j()
                r11.<init>(r1)
                r3.putBinder(r0, r11)
                goto La0
            L97:
                androidx.media3.common.MediaItem r1 = (androidx.media3.common.MediaItem) r1
                android.os.Bundle r11 = r1.c(r5, r4)
                r3.putBundle(r0, r11)
            La0:
                androidx.media3.session.IMediaController r9 = r9.f17481a
                r9.a0(r10, r3)
                return
            La6:
                defpackage.r81.b()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.session.MediaSessionStub.Controller2Cb.d(int, androidx.media3.session.LibraryResult):void");
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void e() {
            SessionUtil.b(this.f17481a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != Controller2Cb.class) {
                return false;
            }
            return Objects.equals(this.f17481a.asBinder(), ((Controller2Cb) obj).f17481a.asBinder());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void f(int i2) {
            this.f17481a.f(i2);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void g(int i2, int i3, int i4) {
            this.f17481a.g(i2, i3, i4);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void h(int i2, Player.Commands commands) {
            this.f17481a.w1(i2, commands.c());
        }

        public final int hashCode() {
            return Objects.hash(this.f17481a.asBinder());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public final void i(int i2, SessionResult sessionResult) {
            this.f17481a.O0(i2, sessionResult.b());
        }
    }

    public interface ControllerPlayerTask {
        void b(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo);
    }

    public interface MediaItemPlayerTask {
        void e(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list);
    }

    public interface MediaItemsWithStartPositionPlayerTask {
        void b(PlayerWrapper playerWrapper, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition);
    }

    public static class ProgressReporter implements MediaSession.ProgressReporter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ListenableFuture f17483a;

        public ProgressReporter(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2, SessionCommand sessionCommand, Bundle bundle) {
        }
    }

    public interface SessionTask<T, K extends MediaSessionImpl> {
        Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2);
    }

    public MediaSessionStub(MediaSessionImpl mediaSessionImpl) {
        this.f17478b = new WeakReference(mediaSessionImpl);
        this.f17479j = new ConnectedControllersManager(mediaSessionImpl);
    }

    public static ListenableFuture G2(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2, SessionTask sessionTask, Consumer consumer) {
        if (mediaSessionImpl.k()) {
            return Futures.h();
        }
        ListenableFuture listenableFuture = (ListenableFuture) sessionTask.c(mediaSessionImpl, controllerInfo, i2);
        SettableFuture settableFuture = new SettableFuture();
        listenableFuture.addListener(new e(mediaSessionImpl, settableFuture, consumer, listenableFuture, 10), MoreExecutors.b());
        return settableFuture;
    }

    public static void L2(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2, SessionResult sessionResult) {
        try {
            MediaSession.ControllerCb controllerCb = controllerInfo.d;
            controllerCb.getClass();
            controllerCb.i(i2, sessionResult);
            mediaSessionImpl.f17428c.sendPlayerInfoChangedMessage(true, true);
        } catch (RemoteException e2) {
            Log.h("Failed to send result to controller " + controllerInfo, e2);
        }
    }

    public static o0 M2(Consumer consumer) {
        return new o0(new o0(consumer, 11), 10);
    }

    @Override // androidx.media3.session.IMediaSession
    public final void A0(IMediaController iMediaController, int i2, final long j2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 5, M2(new Consumer() { // from class: androidx.media3.session.z1
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                int i3 = MediaSessionStub.p;
                ((PlayerWrapper) obj).seekTo(j2);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.IMediaSession
    public final void A2(IMediaController iMediaController, int i2, IBinder iBinder, int i3, long j2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || iBinder == null) {
            return;
        }
        if ((i3 == -1 || i3 >= 0) && (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) != null) {
            try {
                ImmutableList immutableListA = BundleListRetriever.a(iBinder);
                UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (int i4 = 0; i4 < immutableListA.size(); i4++) {
                    Bundle bundle = (Bundle) immutableListA.get(i4);
                    bundle.getClass();
                    builder.e(MediaItem.b(controllerInfoG.f17421c, bundle));
                }
                K2(controllerInfoG, i2, 20, new c2(new s(new d0(builder.j(), j2, i3), new q0(27), 13), 1));
            } catch (RuntimeException e2) {
                Log.h("Ignoring malformed Bundle for MediaItem", e2);
            }
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void D2(IMediaController iMediaController, int i2, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            J2(iMediaController, i2, 29, M2(new s(this, TrackSelectionParameters.b(bundle), 9)));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for TrackSelectionParameters", e2);
        }
    }

    public final void E2(IMediaController iMediaController, MediaSession.ControllerInfo controllerInfo) {
        if (iMediaController == null) {
            SessionUtil.b(iMediaController);
            return;
        }
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
        if (mediaSessionImpl == null || mediaSessionImpl.k()) {
            SessionUtil.b(iMediaController);
        } else {
            this.f17480k.add(controllerInfo);
            Util.W(mediaSessionImpl.l, new e(this, controllerInfo, mediaSessionImpl, iMediaController, 9));
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void F0(IMediaController iMediaController, int i2, float f2) {
        if (iMediaController == null || f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 > 1.0f) {
            return;
        }
        J2(iMediaController, i2, 24, M2(new u1(f2, 1)));
    }

    public final void F2(IMediaController iMediaController, final int i2, final SessionCommand sessionCommand, final int i3, final SessionTask sessionTask) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.k()) {
                final MediaSession.ControllerInfo controllerInfoG = this.f17479j.g(iMediaController.asBinder());
                if (controllerInfoG == null) {
                    return;
                }
                Util.W(mediaSessionImpl.l, new Runnable() { // from class: androidx.media3.session.a2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConnectedControllersManager connectedControllersManager = this.f17600b.f17479j;
                        MediaSession.ControllerInfo controllerInfo = controllerInfoG;
                        if (connectedControllersManager.k(controllerInfo)) {
                            SessionCommand sessionCommand2 = sessionCommand;
                            MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                            int i4 = i2;
                            if (sessionCommand2 != null) {
                                if (!connectedControllersManager.n(controllerInfo, sessionCommand2)) {
                                    MediaSessionStub.L2(mediaSessionImpl2, controllerInfo, i4, new SessionResult(-4));
                                    return;
                                }
                            } else if (!connectedControllersManager.m(controllerInfo, i3)) {
                                MediaSessionStub.L2(mediaSessionImpl2, controllerInfo, i4, new SessionResult(-4));
                                return;
                            }
                            sessionTask.c(mediaSessionImpl2, controllerInfo, i4);
                        }
                    }
                });
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void G(IMediaController iMediaController, int i2, Bundle bundle) {
        T1(iMediaController, i2, bundle, true);
    }

    @Override // androidx.media3.session.IMediaSession
    public final void G0(IMediaController iMediaController, int i2, Bundle bundle) {
        ConnectedControllersManager.ConnectedControllerRecord connectedControllerRecord;
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            SessionResult sessionResultA = SessionResult.a(bundle);
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                ConnectedControllersManager connectedControllersManager = this.f17479j;
                IBinder iBinderAsBinder = iMediaController.asBinder();
                synchronized (connectedControllersManager.f17254a) {
                    try {
                        MediaSession.ControllerInfo controllerInfoG = connectedControllersManager.g(iBinderAsBinder);
                        connectedControllerRecord = controllerInfoG != null ? (ConnectedControllersManager.ConnectedControllerRecord) connectedControllersManager.f17256c.get(controllerInfoG) : null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SequencedFutureManager sequencedFutureManager = connectedControllerRecord != null ? connectedControllerRecord.f17258b : null;
                if (sequencedFutureManager == null) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                } else {
                    sequencedFutureManager.d(i2, sessionResultA);
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            } catch (Throwable th2) {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                throw th2;
            }
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for SessionResult", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void H0(IMediaController iMediaController, int i2, int i3, int i4) {
        if (iMediaController == null || i3 < 0 || i4 < 0) {
            return;
        }
        J2(iMediaController, i2, 20, M2(new r0(i3, i4, 3)));
    }

    public final int H2(MediaSession.ControllerInfo controllerInfo, PlayerWrapper playerWrapper, int i2) {
        if (!playerWrapper.R0(17)) {
            return i2;
        }
        ConnectedControllersManager connectedControllersManager = this.f17479j;
        return (connectedControllersManager.l(controllerInfo, 17) || !connectedControllersManager.l(controllerInfo, 16)) ? i2 : i2 + playerWrapper.v();
    }

    public final void I2(MediaSession.ControllerInfo controllerInfo, int i2) {
        K2(controllerInfo, i2, 1, M2(new s(this, controllerInfo, 10)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void J0(IMediaController iMediaController, int i2, float f2) {
        if (iMediaController == null || f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        J2(iMediaController, i2, 13, M2(new u1(f2, 0)));
    }

    public final void J2(IMediaController iMediaController, int i2, int i3, o0 o0Var) {
        MediaSession.ControllerInfo controllerInfoG = this.f17479j.g(iMediaController.asBinder());
        if (controllerInfoG != null) {
            K2(controllerInfoG, i2, i3, o0Var);
        }
    }

    public final void K2(final MediaSession.ControllerInfo controllerInfo, final int i2, final int i3, final SessionTask sessionTask) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.k()) {
                Util.W(mediaSessionImpl.l, new Runnable() { // from class: androidx.media3.session.b2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConnectedControllersManager connectedControllersManager = this.f17613b.f17479j;
                        final MediaSession.ControllerInfo controllerInfo2 = controllerInfo;
                        int i4 = i3;
                        boolean zL = connectedControllersManager.l(controllerInfo2, i4);
                        final MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                        final int i5 = i2;
                        if (!zL) {
                            MediaSessionStub.L2(mediaSessionImpl2, controllerInfo2, i5, new SessionResult(-4));
                            return;
                        }
                        int iD = mediaSessionImpl2.f17429e.d(mediaSessionImpl2.f17434k, mediaSessionImpl2.v(controllerInfo2), i4);
                        if (iD != 0) {
                            MediaSessionStub.L2(mediaSessionImpl2, controllerInfo2, i5, new SessionResult(iD));
                            return;
                        }
                        final MediaSessionStub.SessionTask sessionTask2 = sessionTask;
                        if (i4 != 27) {
                            connectedControllersManager.b(controllerInfo2, i4, new ConnectedControllersManager.AsyncCommand() { // from class: androidx.media3.session.f2
                                @Override // androidx.media3.session.ConnectedControllersManager.AsyncCommand
                                public final ListenableFuture run() {
                                    int i6 = MediaSessionStub.p;
                                    return (ListenableFuture) sessionTask2.c(mediaSessionImpl2, controllerInfo2, i5);
                                }
                            });
                            return;
                        }
                        SessionResult sessionResult = MediaSessionImpl.F;
                        sessionTask2.c(mediaSessionImpl2, controllerInfo2, i5);
                        connectedControllersManager.b(controllerInfo2, i4, new sc0());
                    }
                });
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void L(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.k()) {
                Util.W(mediaSessionImpl.l, new g0(this, iMediaController, 10));
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void L0(IMediaController iMediaController, int i2, int i3, Bundle bundle) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || bundle == null || i3 < 0 || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            int i4 = 1;
            K2(controllerInfoG, i2, 20, new c2(new s(new v1(i4, MediaItem.b(controllerInfoG.f17421c, bundle)), new s1(this, i3, 2), 14), i4));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void L1(IMediaController iMediaController) {
        if (iMediaController == null) {
            return;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
            if (mediaSessionImpl != null && !mediaSessionImpl.k()) {
                MediaSession.ControllerInfo controllerInfoG = this.f17479j.g(iMediaController.asBinder());
                if (controllerInfoG != null) {
                    Util.W(mediaSessionImpl.l, new g0(this, controllerInfoG, 11));
                }
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void M1(IMediaController iMediaController, int i2, int i3, int i4) {
        if (iMediaController == null || i3 < 0 || i4 < i3) {
            return;
        }
        J2(iMediaController, i2, 20, new o0(new q1(this, i3, i4), 10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PlayerInfo N2(PlayerInfo playerInfo) {
        ImmutableList immutableList = playerInfo.F.f14012a;
        ImmutableBiMap.Builder builder = new ImmutableBiMap.Builder();
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder();
        for (int i2 = 0; i2 < immutableList.size(); i2++) {
            TrackGroup trackGroup = ((Tracks.Group) immutableList.get(i2)).f14017b;
            String string = (String) this.l.get(trackGroup);
            if (string == null) {
                StringBuilder sb = new StringBuilder();
                int i3 = this.n;
                this.n = i3 + 1;
                String str = Util.f14242a;
                sb.append(Integer.toString(i3, 36));
                sb.append("-");
                sb.append(trackGroup.f13978b);
                string = sb.toString();
            }
            builder.h(trackGroup, string);
            builder2.d(trackGroup.f13978b, string);
        }
        this.l = builder.c();
        this.m = builder2.a(false);
        ImmutableList.Builder builder3 = new ImmutableList.Builder();
        for (int i4 = 0; i4 < immutableList.size(); i4++) {
            Tracks.Group group = (Tracks.Group) immutableList.get(i4);
            builder3.e(new Tracks.Group(O2(group.f14017b), group.f14018c, group.d, group.f14019e));
        }
        Tracks tracks = new Tracks(builder3.j());
        PlayerInfo.Builder builder4 = new PlayerInfo.Builder(playerInfo);
        builder4.F = tracks;
        PlayerInfo playerInfoA = builder4.a();
        TrackSelectionParameters trackSelectionParameters = playerInfoA.G;
        if (trackSelectionParameters.H.isEmpty()) {
            return playerInfoA;
        }
        TrackSelectionParameters.Builder builderC = trackSelectionParameters.a().c();
        UnmodifiableIterator it = trackSelectionParameters.H.values().iterator();
        while (it.hasNext()) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) it.next();
            builderC.a(new TrackSelectionOverride(O2(trackSelectionOverride.f13982a), trackSelectionOverride.f13983b));
        }
        TrackSelectionParameters trackSelectionParametersB = builderC.b();
        PlayerInfo.Builder builder5 = new PlayerInfo.Builder(playerInfoA);
        builder5.G = trackSelectionParametersB;
        return builder5.a();
    }

    public final TrackGroup O2(TrackGroup trackGroup) {
        String str = (String) this.l.get(trackGroup);
        if (str == null) {
            str = trackGroup.f13978b;
        }
        int i2 = 0;
        while (true) {
            int i3 = trackGroup.f13977a;
            Format[] formatArr = trackGroup.d;
            if (i2 >= i3) {
                return new TrackGroup(str, formatArr);
            }
            if (formatArr[i2].m != null) {
                Format[] formatArr2 = new Format[i3];
                for (int i4 = 0; i4 < trackGroup.f13977a; i4++) {
                    Format format = formatArr[i4];
                    String str2 = format.m;
                    String str3 = str2 != null ? (String) this.m.get(str2) : null;
                    if (str3 != null) {
                        Format.Builder builderA = format.a();
                        builderA.l = str3;
                        formatArr2[i4] = new Format(builderA);
                    } else {
                        formatArr2[i4] = format;
                    }
                }
                return new TrackGroup(str, formatArr2);
            }
            i2++;
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void P(IMediaController iMediaController, int i2, boolean z) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 14, M2(new t1(z, 2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.IMediaSession
    public final void Q0(IMediaController iMediaController, int i2, IBinder iBinder) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || iBinder == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            ImmutableList immutableListA = BundleListRetriever.a(iBinder);
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i3 = 0; i3 < immutableListA.size(); i3++) {
                Bundle bundle = (Bundle) immutableListA.get(i3);
                bundle.getClass();
                builder.e(MediaItem.b(controllerInfoG.f17421c, bundle));
            }
            int i4 = 1;
            K2(controllerInfoG, i2, 20, new c2(new s(new w1(builder.j(), i4), new q0(19), 14), i4));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void R(IMediaController iMediaController, int i2, Bundle bundle, boolean z) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            J2(iMediaController, i2, 35, M2(new r1(AudioAttributes.a(bundle), z, 1)));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for AudioAttributes", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void S0(IMediaController iMediaController, int i2, int i3, Bundle bundle) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || bundle == null || i3 < 0 || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            int i4 = 1;
            K2(controllerInfoG, i2, 20, new c2(new s(new v1(0, MediaItem.b(controllerInfoG.f17421c, bundle)), new s1(this, i3, i4), 14), i4));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void T(IMediaController iMediaController, int i2, int i3) {
        if (iMediaController == null || i3 < 0) {
            return;
        }
        J2(iMediaController, i2, 25, M2(new n0(i3, 5)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void T0(IMediaController iMediaController, int i2, int i3, int i4) {
        if (iMediaController == null || i3 < 0) {
            return;
        }
        J2(iMediaController, i2, 33, M2(new r0(i3, i4, 2)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void T1(IMediaController iMediaController, int i2, Bundle bundle, boolean z) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || bundle == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            K2(controllerInfoG, i2, 31, new c2(new s(new r1(MediaItem.b(controllerInfoG.f17421c, bundle), z, 0), new q0(27), 13), 1));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void U0(IMediaController iMediaController, int i2, boolean z) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 26, M2(new t1(z, 1)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void U1(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        K2(controllerInfoG, i2, 3, M2(new q0(21)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.IMediaSession
    public final void V(IMediaController iMediaController, int i2, IBinder iBinder, boolean z) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || iBinder == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            ImmutableList immutableListA = BundleListRetriever.a(iBinder);
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i3 = 0; i3 < immutableListA.size(); i3++) {
                Bundle bundle = (Bundle) immutableListA.get(i3);
                bundle.getClass();
                builder.e(MediaItem.b(controllerInfoG.f17421c, bundle));
            }
            K2(controllerInfoG, i2, 20, new c2(new s(new r1(builder.j(), z, 2), new q0(27), 13), 1));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void W(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 6, M2(new q0(13)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void X1(final IMediaController iMediaController, final int i2, Bundle bundle, Bundle bundle2, boolean z) {
        Bundle bundleP = Util.p(bundle2);
        if (iMediaController == null || bundle == null || bundleP == null) {
            return;
        }
        try {
            final SessionCommand sessionCommandA = SessionCommand.a(bundle);
            if (!CommandButton.n(sessionCommandA.f17540b)) {
                F2(iMediaController, i2, sessionCommandA, 0, new c2(new h(z, sessionCommandA, bundleP), 1));
                return;
            }
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                final MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
                if (mediaSessionImpl != null && !mediaSessionImpl.k()) {
                    final MediaSession.ControllerInfo controllerInfoG = this.f17479j.g(iMediaController.asBinder());
                    if (controllerInfoG == null) {
                        return;
                    }
                    Util.W(mediaSessionImpl.l, new Runnable() { // from class: androidx.media3.session.d2
                        /* JADX WARN: Code duplicated, block: B:19:0x0067  */
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean zBooleanValue;
                            SessionCommand sessionCommand = sessionCommandA;
                            String str = sessionCommand.f17540b;
                            MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                            int i3 = i2;
                            MediaSessionStub mediaSessionStub = this.f17636b;
                            ConnectedControllersManager connectedControllersManager = mediaSessionStub.f17479j;
                            MediaSession.ControllerInfo controllerInfo = controllerInfoG;
                            if (connectedControllersManager.k(controllerInfo)) {
                                try {
                                    CommandButton commandButtonD = CommandButton.d(sessionCommand);
                                    Object obj = commandButtonD.f17245j;
                                    int i4 = commandButtonD.f17239b;
                                    if (!commandButtonD.b()) {
                                        Log.g("Can't execute predefined custom command: " + str);
                                        MediaSessionStub.L2(mediaSessionImpl2, controllerInfo, i3, new SessionResult(-6));
                                        return;
                                    }
                                    SessionCommand sessionCommand2 = commandButtonD.f17238a;
                                    int i5 = 1;
                                    if (sessionCommand2 != null) {
                                        Preconditions.q(sessionCommand2.f17539a == 40010);
                                        mediaSessionStub.F2(iMediaController, i3, null, 40010, new c2(new g2(commandButtonD), i5));
                                        return;
                                    }
                                    PlayerWrapper playerWrapper = mediaSessionImpl2.u;
                                    if (i4 != 1) {
                                        zBooleanValue = false;
                                    } else if (obj != null) {
                                        zBooleanValue = ((Boolean) obj).booleanValue();
                                    } else if (playerWrapper.r()) {
                                        zBooleanValue = false;
                                    } else {
                                        zBooleanValue = true;
                                    }
                                    if (zBooleanValue) {
                                        mediaSessionStub.I2(controllerInfo, i3);
                                    } else if (i4 == 31) {
                                        obj.getClass();
                                        mediaSessionStub.K2(controllerInfo, i3, 31, new c2(new s(new r1((MediaItem) obj, true, 0), new q0(27), 13), i5));
                                    } else {
                                        mediaSessionStub.K2(controllerInfo, i3, i4, MediaSessionStub.M2(new g2(commandButtonD)));
                                    }
                                    connectedControllersManager.d(controllerInfo);
                                } catch (RuntimeException e2) {
                                    Log.h("Failed to convert predefined custom command: " + str, e2);
                                    MediaSessionStub.L2(mediaSessionImpl2, controllerInfo, i3, new SessionResult(-3));
                                }
                            }
                        }
                    });
                }
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for SessionCommand", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void Y(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        K2(controllerInfoG, i2, 9, M2(new q0(16)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void Y0(IMediaController iMediaController, int i2, int i3) {
        if (iMediaController == null || i3 < 0) {
            return;
        }
        J2(iMediaController, i2, 10, new o0(new s1(this, i3, 0), 10));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void Z0(IMediaController iMediaController, int i2, int i3, long j2) {
        if (iMediaController == null || i3 < 0) {
            return;
        }
        J2(iMediaController, i2, 10, new o0(new d0(this, j2, i3), 10));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void a1(IMediaController iMediaController, int i2, int i3) {
        if (iMediaController == null) {
            return;
        }
        if (i3 == 2 || i3 == 0 || i3 == 1) {
            J2(iMediaController, i2, 15, M2(new n0(i3, 3)));
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void e2(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        K2(controllerInfoG, i2, 12, M2(new q0(15)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.IMediaSession
    public final void h2(IMediaController iMediaController, int i2, int i3, int i4, IBinder iBinder) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || iBinder == null || i3 < 0 || i4 < i3 || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            ImmutableList immutableListA = BundleListRetriever.a(iBinder);
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i5 = 0; i5 < immutableListA.size(); i5++) {
                Bundle bundle = (Bundle) immutableListA.get(i5);
                bundle.getClass();
                builder.e(MediaItem.b(controllerInfoG.f17421c, bundle));
            }
            K2(controllerInfoG, i2, 20, new c2(new s(new o0(builder.j(), 6), new q1(this, i3, i4), 14), 1));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void i2(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        I2(controllerInfoG, i2);
    }

    @Override // androidx.media3.session.IMediaSession
    public final void j1(IMediaController iMediaController, int i2, Bundle bundle) {
        if (iMediaController == null || bundle == null) {
            return;
        }
        try {
            J2(iMediaController, i2, 13, M2(new o0(new PlaybackParameters(bundle.getFloat(PlaybackParameters.f13917e, 1.0f), bundle.getFloat(PlaybackParameters.f13918f, 1.0f)), 7)));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for PlaybackParameters", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void j2(IMediaController iMediaController, int i2, boolean z) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 1, M2(new t1(z, 0)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void k0(IMediaController iMediaController, int i2, Bundle bundle) {
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17478b.get();
        if (iMediaController == null || bundle == null || mediaSessionImpl == null) {
            SessionUtil.b(iMediaController);
            return;
        }
        try {
            Context context = mediaSessionImpl.f17430f;
            ConnectionRequest connectionRequestA = ConnectionRequest.a(bundle);
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            String str = connectionRequestA.f17268c;
            if (SessionUtil.a(context, callingUid, str) == 1) {
                Log.g("Ignoring connection from invalid package name " + str + " (uid=" + callingUid + ")");
                SessionUtil.b(iMediaController);
                return;
            }
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            if (callingPid == 0) {
                callingPid = connectionRequestA.d;
            }
            try {
                MediaSessionManager.RemoteUserInfo remoteUserInfo = new MediaSessionManager.RemoteUserInfo(str, callingPid, callingUid);
                boolean zB = MediaSessionManager.a(context).b(remoteUserInfo);
                int i3 = connectionRequestA.f17266a;
                int i4 = connectionRequestA.f17267b;
                E2(iMediaController, new MediaSession.ControllerInfo(remoteUserInfo, i3, i4, zB, new Controller2Cb(iMediaController, i4), connectionRequestA.f17269e));
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for ConnectionRequest", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void l1(IMediaController iMediaController, int i2, final int i3, final int i4, final int i5) {
        if (iMediaController == null || i3 < 0 || i4 < i3 || i5 < 0) {
            return;
        }
        J2(iMediaController, i2, 20, M2(new Consumer() { // from class: androidx.media3.session.x1
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                int i6 = MediaSessionStub.p;
                ((PlayerWrapper) obj).I0(i3, i4, i5);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void l2(IMediaController iMediaController, int i2, int i3) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 34, M2(new n0(i3, 2)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void o(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 26, M2(new q0(10)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void o0(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        K2(controllerInfoG, i2, 7, M2(new q0(12)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void o1(IMediaController iMediaController, int i2, Surface surface) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 27, M2(new s(this, surface, 11)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void o2(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        K2(controllerInfoG, i2, 11, M2(new q0(11)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void p(IMediaController iMediaController, int i2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        K2(controllerInfoG, i2, 1, M2(new q0(8)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void p0(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 24, M2(new q0(22)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.IMediaSession
    public final void p1(IMediaController iMediaController, int i2, int i3, IBinder iBinder) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || iBinder == null || i3 < 0 || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            ImmutableList immutableListA = BundleListRetriever.a(iBinder);
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            int i4 = 0;
            for (int i5 = 0; i5 < immutableListA.size(); i5++) {
                Bundle bundle = (Bundle) immutableListA.get(i5);
                bundle.getClass();
                builder.e(MediaItem.b(controllerInfoG.f17421c, bundle));
            }
            K2(controllerInfoG, i2, 20, new c2(new s(new w1(builder.j(), i4), new s1(this, i3, 3), 14), 1));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void q(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 24, M2(new q0(7)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void q1(IMediaController iMediaController, int i2, Bundle bundle) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || bundle == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            K2(controllerInfoG, i2, 19, M2(new o0(MediaMetadata.b(controllerInfoG.f17421c, bundle), 9)));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaMetadata", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void r(IMediaController iMediaController, int i2, int i3, int i4) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 27, M2(new q1(this, i3, i4)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void r0(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 4, M2(new q0(23)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void s0(IMediaController iMediaController, int i2, int i3) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 34, M2(new n0(i3, 1)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void t(IMediaController iMediaController, int i2, Surface surface, int i3, int i4) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 27, M2(new m(this, surface, i3, i4, 2)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void u2(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 26, M2(new q0(18)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void w2(IMediaController iMediaController, int i2, final boolean z, final int i3) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 34, M2(new Consumer() { // from class: androidx.media3.session.y1
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                int i4 = MediaSessionStub.p;
                ((PlayerWrapper) obj).G(i3, z);
            }
        }));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void x0(IMediaController iMediaController, int i2, Bundle bundle, long j2) {
        MediaSession.ControllerInfo controllerInfoG;
        if (iMediaController == null || bundle == null || (controllerInfoG = this.f17479j.g(iMediaController.asBinder())) == null) {
            return;
        }
        try {
            K2(controllerInfoG, i2, 31, new c2(new s(new t(MediaItem.b(controllerInfoG.f17421c, bundle), j2), new q0(27), 13), 1));
        } catch (RuntimeException e2) {
            Log.h("Ignoring malformed Bundle for MediaItem", e2);
        }
    }

    @Override // androidx.media3.session.IMediaSession
    public final void x1(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 2, M2(new q0(24)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void y(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 20, M2(new q0(25)));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void y0(IMediaController iMediaController, int i2, int i3) {
        if (iMediaController == null || i3 < 0) {
            return;
        }
        J2(iMediaController, i2, 20, new o0(new s1(this, i3, 4), 10));
    }

    @Override // androidx.media3.session.IMediaSession
    public final void y2(IMediaController iMediaController, int i2, Bundle bundle, Bundle bundle2) {
        X1(iMediaController, i2, bundle, bundle2, false);
    }

    @Override // androidx.media3.session.IMediaSession
    public final void z0(IMediaController iMediaController, int i2) {
        if (iMediaController == null) {
            return;
        }
        J2(iMediaController, i2, 8, M2(new q0(9)));
    }

    public static class SurfaceHolderWithSize implements SurfaceHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Surface f17484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f17485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SurfaceHolder.Callback f17486c;

        public SurfaceHolderWithSize(Surface surface, int i2, int i3) {
            Rect rect = new Rect();
            this.f17485b = rect;
            this.f17484a = surface;
            rect.set(0, 0, i2, i3);
        }

        @Override // android.view.SurfaceHolder
        public final void addCallback(SurfaceHolder.Callback callback) {
            this.f17486c = callback;
        }

        @Override // android.view.SurfaceHolder
        public final Surface getSurface() {
            return this.f17484a;
        }

        @Override // android.view.SurfaceHolder
        public final Rect getSurfaceFrame() {
            return this.f17485b;
        }

        @Override // android.view.SurfaceHolder
        public final boolean isCreating() {
            return false;
        }

        @Override // android.view.SurfaceHolder
        public final Canvas lockCanvas() {
            throw new UnsupportedOperationException();
        }

        @Override // android.view.SurfaceHolder
        public final void removeCallback(SurfaceHolder.Callback callback) {
            if (this.f17486c == callback) {
                this.f17486c = null;
            }
        }

        @Override // android.view.SurfaceHolder
        public final void setFixedSize(int i2, int i3) {
            this.f17485b.set(0, 0, i2, i3);
            SurfaceHolder.Callback callback = this.f17486c;
            if (callback != null) {
                callback.surfaceChanged(this, 1, i2, i3);
            }
        }

        @Override // android.view.SurfaceHolder
        public final void setFormat(int i2) {
        }

        @Override // android.view.SurfaceHolder
        public final void setKeepScreenOn(boolean z) {
        }

        @Override // android.view.SurfaceHolder
        public final void setSizeFromLayout() {
        }

        @Override // android.view.SurfaceHolder
        public final void setType(int i2) {
        }

        @Override // android.view.SurfaceHolder
        public final void unlockCanvasAndPost(Canvas canvas) {
        }

        @Override // android.view.SurfaceHolder
        public final Canvas lockCanvas(Rect rect) {
            throw new UnsupportedOperationException();
        }

        public SurfaceHolderWithSize(Surface surface) {
            this.f17485b = new Rect();
            this.f17484a = surface;
        }
    }
}

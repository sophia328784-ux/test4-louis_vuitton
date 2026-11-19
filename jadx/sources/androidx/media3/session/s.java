package androidx.media3.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import defpackage.b5;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements MediaControllerImplBase.RemoteSessionTask, ListenerSet.Event, MediaControllerStub.ControllerTask, MediaSessionLegacyStub.SessionTask, Consumer, MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17903c;
    public final /* synthetic */ Object d;

    public /* synthetic */ s(Object obj, Object obj2, int i2) {
        this.f17902b = i2;
        this.f17903c = obj;
        this.d = obj2;
    }

    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(MediaControllerImplBase mediaControllerImplBase) {
        boolean z;
        boolean z2;
        boolean z3;
        int i2 = this.f17902b;
        Object obj = this.d;
        Object obj2 = this.f17903c;
        switch (i2) {
            case 5:
                int i3 = MediaControllerStub.f17365j;
                mediaControllerImplBase.l1((PlayerInfo) obj2, (PlayerInfo.BundlingExclusions) obj);
                break;
            default:
                SessionCommands sessionCommands = (SessionCommands) obj2;
                Player.Commands commands = (Player.Commands) obj;
                int i4 = MediaControllerStub.f17365j;
                MediaController mediaController = mediaControllerImplBase.f17327a;
                if (mediaControllerImplBase.isConnected()) {
                    boolean zEquals = Objects.equals(mediaControllerImplBase.y, commands);
                    boolean zEquals2 = Objects.equals(mediaControllerImplBase.x, sessionCommands);
                    if (!zEquals || !zEquals2) {
                        mediaControllerImplBase.x = sessionCommands;
                        if (zEquals) {
                            z = false;
                        } else {
                            mediaControllerImplBase.y = commands;
                            Player.Commands commands2 = mediaControllerImplBase.A;
                            Player.Commands commandsT0 = mediaControllerImplBase.T0(commands, mediaControllerImplBase.z);
                            mediaControllerImplBase.A = commandsT0;
                            z = !commandsT0.equals(commands2);
                        }
                        if (!zEquals2 || z) {
                            ImmutableList immutableList = mediaControllerImplBase.v;
                            ImmutableList immutableList2 = mediaControllerImplBase.w;
                            ImmutableList immutableListR1 = MediaControllerImplBase.r1(mediaControllerImplBase.u, mediaControllerImplBase.t, sessionCommands, mediaControllerImplBase.A, mediaControllerImplBase.K);
                            mediaControllerImplBase.v = immutableListR1;
                            mediaControllerImplBase.w = MediaControllerImplBase.q1(immutableListR1, mediaControllerImplBase.t, mediaControllerImplBase.K, sessionCommands, mediaControllerImplBase.A, mediaControllerImplBase.d1());
                            z2 = !mediaControllerImplBase.v.equals(immutableList);
                            z3 = !mediaControllerImplBase.w.equals(immutableList2);
                        } else {
                            z2 = false;
                            z3 = false;
                        }
                        if (z) {
                            mediaControllerImplBase.f17333i.f(13, new o(mediaControllerImplBase, 13));
                        }
                        if (!zEquals2) {
                            mediaController.getClass();
                            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                            mediaController.d.T();
                        }
                        if (z3) {
                            mediaController.getClass();
                            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                            mediaController.d.getClass();
                        }
                        if (z2) {
                            mediaController.getClass();
                            Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                            mediaController.d.x();
                        }
                    }
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        int i2 = this.f17902b;
        Object obj2 = this.d;
        MediaSessionStub mediaSessionStub = (MediaSessionStub) this.f17903c;
        switch (i2) {
            case 9:
                TrackSelectionParameters trackSelectionParametersB = (TrackSelectionParameters) obj2;
                PlayerWrapper playerWrapper = (PlayerWrapper) obj;
                int i3 = MediaSessionStub.p;
                ImmutableMap immutableMap = trackSelectionParametersB.H;
                if (!immutableMap.isEmpty()) {
                    TrackSelectionParameters.Builder builderC = trackSelectionParametersB.a().c();
                    UnmodifiableIterator it = immutableMap.values().iterator();
                    while (it.hasNext()) {
                        TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) it.next();
                        TrackGroup trackGroup = (TrackGroup) mediaSessionStub.l.p().get(trackSelectionOverride.f13982a.f13978b);
                        if (trackGroup == null || trackSelectionOverride.f13982a.f13977a != trackGroup.f13977a) {
                            builderC.a(trackSelectionOverride);
                        } else {
                            builderC.a(new TrackSelectionOverride(trackGroup, trackSelectionOverride.f13983b));
                        }
                    }
                    trackSelectionParametersB = builderC.b();
                }
                playerWrapper.F0(trackSelectionParametersB);
                break;
            case 10:
                MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) obj2;
                MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) mediaSessionStub.f17478b.get();
                if (mediaSessionImpl != null && !mediaSessionImpl.k()) {
                    mediaSessionImpl.h(controllerInfo, false);
                    break;
                }
                break;
            default:
                Surface surface = (Surface) obj2;
                PlayerWrapper playerWrapper2 = (PlayerWrapper) obj;
                MediaSessionImpl mediaSessionImpl2 = (MediaSessionImpl) mediaSessionStub.f17478b.get();
                mediaSessionImpl2.getClass();
                if (mediaSessionImpl2.r) {
                    playerWrapper2.B(surface);
                } else if (surface != null) {
                    MediaSessionStub.SurfaceHolderWithSize surfaceHolderWithSize = new MediaSessionStub.SurfaceHolderWithSize(surface);
                    mediaSessionStub.o = surfaceHolderWithSize;
                    playerWrapper2.O(surfaceHolderWithSize);
                } else {
                    playerWrapper2.O(null);
                    mediaSessionStub.o = null;
                }
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public void b(MediaSession.ControllerInfo controllerInfo) {
        int i2 = this.f17902b;
        Object obj = this.d;
        MediaSessionLegacyStub mediaSessionLegacyStub = (MediaSessionLegacyStub) this.f17903c;
        switch (i2) {
            case 7:
                int i3 = MediaSessionLegacyStub.z;
                String str = ((MediaDescriptionCompat) obj).f17780b;
                if (TextUtils.isEmpty(str)) {
                    Log.g("onRemoveQueueItem(): Media ID shouldn't be null");
                } else {
                    PlayerWrapper playerWrapper = mediaSessionLegacyStub.f17441f.u;
                    if (playerWrapper.R0(17)) {
                        Timeline timelineP = playerWrapper.p();
                        Timeline.Window window = new Timeline.Window();
                        for (int i4 = 0; i4 < timelineP.o(); i4++) {
                            if (TextUtils.equals(timelineP.m(i4, window, 0L).f13969c.f13787a, str)) {
                                playerWrapper.M(i4);
                            }
                        }
                    } else {
                        Log.g("Can't remove item by ID without COMMAND_GET_TIMELINE being available");
                    }
                }
                break;
            default:
                ((CommandButton) obj).h(mediaSessionLegacyStub.f17441f.u);
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(final MediaSessionImpl mediaSessionImpl, final MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = this.f17902b;
        Object obj = this.d;
        Object obj2 = this.f17903c;
        switch (i3) {
            case 12:
                MediaLibrarySessionImpl mediaLibrarySessionImpl = (MediaLibrarySessionImpl) mediaSessionImpl;
                int i4 = MediaSessionStub.p;
                return mediaLibrarySessionImpl.D(controllerInfo, (String) obj2, (MediaLibraryService$LibraryParams) obj);
            case 13:
                MediaSessionStub.SessionTask sessionTask = (MediaSessionStub.SessionTask) obj2;
                final MediaSessionStub.MediaItemsWithStartPositionPlayerTask mediaItemsWithStartPositionPlayerTask = (MediaSessionStub.MediaItemsWithStartPositionPlayerTask) obj;
                int i5 = MediaSessionStub.p;
                if (mediaSessionImpl.k()) {
                    return Futures.g(new SessionResult(-100));
                }
                final int i6 = 0;
                return Util.e0((ListenableFuture) sessionTask.c(mediaSessionImpl, controllerInfo, i2), new AsyncFunction() { // from class: androidx.media3.session.e2
                    @Override // com.google.common.util.concurrent.AsyncFunction
                    public final ListenableFuture apply(Object obj3) {
                        int i7 = i6;
                        Object obj4 = mediaItemsWithStartPositionPlayerTask;
                        switch (i7) {
                            case 0:
                                int i8 = MediaSessionStub.p;
                                MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                                Handler handler = mediaSessionImpl2.l;
                                g0 g0Var = new g0(mediaSessionImpl2, controllerInfo, new t0(mediaSessionImpl2, (MediaSessionStub.MediaItemsWithStartPositionPlayerTask) obj4, (MediaSession.MediaItemsWithStartPosition) obj3, 6));
                                SessionResult sessionResult = new SessionResult(0);
                                String str = Util.f14242a;
                                SettableFuture settableFuture = new SettableFuture();
                                Util.W(handler, new b5(settableFuture, g0Var, sessionResult, 22));
                                return settableFuture;
                            default:
                                List list = (List) obj3;
                                int i9 = MediaSessionStub.p;
                                MediaSessionImpl mediaSessionImpl3 = mediaSessionImpl;
                                Handler handler2 = mediaSessionImpl3.l;
                                MediaSession.ControllerInfo controllerInfo2 = controllerInfo;
                                g0 g0Var2 = new g0(mediaSessionImpl3, controllerInfo2, new e(mediaSessionImpl3, (MediaSessionStub.MediaItemPlayerTask) obj4, controllerInfo2, list, 11));
                                SessionResult sessionResult2 = new SessionResult(0);
                                String str2 = Util.f14242a;
                                SettableFuture settableFuture2 = new SettableFuture();
                                Util.W(handler2, new b5(settableFuture2, g0Var2, sessionResult2, 22));
                                return settableFuture2;
                        }
                    }
                });
            default:
                MediaSessionStub.SessionTask sessionTask2 = (MediaSessionStub.SessionTask) obj2;
                final MediaSessionStub.MediaItemPlayerTask mediaItemPlayerTask = (MediaSessionStub.MediaItemPlayerTask) obj;
                int i7 = MediaSessionStub.p;
                if (mediaSessionImpl.k()) {
                    return Futures.g(new SessionResult(-100));
                }
                final int i8 = 1;
                return Util.e0((ListenableFuture) sessionTask2.c(mediaSessionImpl, controllerInfo, i2), new AsyncFunction() { // from class: androidx.media3.session.e2
                    @Override // com.google.common.util.concurrent.AsyncFunction
                    public final ListenableFuture apply(Object obj3) {
                        int i9 = i8;
                        Object obj4 = mediaItemPlayerTask;
                        switch (i9) {
                            case 0:
                                int i10 = MediaSessionStub.p;
                                MediaSessionImpl mediaSessionImpl2 = mediaSessionImpl;
                                Handler handler = mediaSessionImpl2.l;
                                g0 g0Var = new g0(mediaSessionImpl2, controllerInfo, new t0(mediaSessionImpl2, (MediaSessionStub.MediaItemsWithStartPositionPlayerTask) obj4, (MediaSession.MediaItemsWithStartPosition) obj3, 6));
                                SessionResult sessionResult = new SessionResult(0);
                                String str = Util.f14242a;
                                SettableFuture settableFuture = new SettableFuture();
                                Util.W(handler, new b5(settableFuture, g0Var, sessionResult, 22));
                                return settableFuture;
                            default:
                                List list = (List) obj3;
                                int i11 = MediaSessionStub.p;
                                MediaSessionImpl mediaSessionImpl3 = mediaSessionImpl;
                                Handler handler2 = mediaSessionImpl3.l;
                                MediaSession.ControllerInfo controllerInfo2 = controllerInfo;
                                g0 g0Var2 = new g0(mediaSessionImpl3, controllerInfo2, new e(mediaSessionImpl3, (MediaSessionStub.MediaItemPlayerTask) obj4, controllerInfo2, list, 11));
                                SessionResult sessionResult2 = new SessionResult(0);
                                String str2 = Util.f14242a;
                                SettableFuture settableFuture2 = new SettableFuture();
                                Util.W(handler2, new b5(settableFuture2, g0Var2, sessionResult2, 22));
                                return settableFuture2;
                        }
                    }
                });
        }
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17902b;
        Object obj = this.d;
        MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.f17903c;
        switch (i3) {
            case 0:
                PlaybackParameters playbackParameters = (PlaybackParameters) obj;
                MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                Bundle bundle = new Bundle();
                bundle.putFloat(PlaybackParameters.f13917e, playbackParameters.f13919a);
                bundle.putFloat(PlaybackParameters.f13918f, playbackParameters.f13920b);
                iMediaSession.j1(mediaControllerStub, i2, bundle);
                break;
            case 1:
                iMediaSession.q1(mediaControllerImplBase.f17329c, i2, ((MediaMetadata) obj).c(mediaControllerImplBase.d1()));
                break;
            case 2:
                iMediaSession.o1(mediaControllerImplBase.f17329c, i2, (Surface) obj);
                break;
            default:
                iMediaSession.D2(mediaControllerImplBase.f17329c, i2, ((TrackSelectionParameters) obj).c());
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        MediaControllerImplLegacy.ControllerInfo controllerInfo = (MediaControllerImplLegacy.ControllerInfo) this.f17903c;
        Integer num = (Integer) this.d;
        ((Player.Listener) obj).L(num.intValue(), controllerInfo.f17354a.i());
    }
}

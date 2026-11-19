package androidx.media3.session;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o0 implements MediaControllerStub.ControllerTask, CallbackToFutureAdapter.Resolver, MediaSessionStub.SessionTask, Consumer, MediaSessionStub.ControllerPlayerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17882c;

    public /* synthetic */ o0(int i2, PendingIntent pendingIntent) {
        this.f17881b = 2;
        this.f17882c = pendingIntent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(MediaControllerImplBase mediaControllerImplBase) {
        int i2 = this.f17881b;
        Object obj = this.f17882c;
        switch (i2) {
            case 0:
                ConnectionState connectionState = (ConnectionState) obj;
                int i3 = MediaControllerStub.f17365j;
                IMediaSession iMediaSession = connectionState.f17273c;
                SessionToken sessionToken = mediaControllerImplBase.f17330e;
                MediaController mediaController = mediaControllerImplBase.f17327a;
                if (mediaControllerImplBase.F != null) {
                    Log.d("Cannot be notified about the connection result many times. Probably a bug or malicious app.");
                    mediaController.release();
                } else {
                    ImmutableList immutableList = connectionState.n;
                    Bundle bundle = connectionState.f17277i;
                    mediaControllerImplBase.F = iMediaSession;
                    mediaControllerImplBase.r = connectionState.f17278j;
                    mediaControllerImplBase.s = connectionState.d;
                    mediaControllerImplBase.x = connectionState.f17274e;
                    Player.Commands commands = connectionState.f17275f;
                    mediaControllerImplBase.y = commands;
                    Player.Commands commands2 = connectionState.g;
                    mediaControllerImplBase.z = commands2;
                    Player.Commands commandsT0 = mediaControllerImplBase.T0(commands, commands2);
                    mediaControllerImplBase.A = commandsT0;
                    ImmutableList immutableList2 = connectionState.f17279k;
                    mediaControllerImplBase.t = immutableList2;
                    ImmutableList immutableList3 = connectionState.l;
                    mediaControllerImplBase.u = immutableList3;
                    ImmutableList immutableListR1 = MediaControllerImplBase.r1(immutableList3, immutableList2, mediaControllerImplBase.x, commandsT0, bundle);
                    mediaControllerImplBase.v = immutableListR1;
                    mediaControllerImplBase.w = MediaControllerImplBase.q1(immutableListR1, mediaControllerImplBase.t, connectionState.f17277i, mediaControllerImplBase.x, mediaControllerImplBase.A, connectionState.f17272b);
                    ImmutableMap.Builder builder = new ImmutableMap.Builder();
                    for (int i4 = 0; i4 < immutableList.size(); i4++) {
                        CommandButton commandButton = (CommandButton) immutableList.get(i4);
                        SessionCommand sessionCommand = commandButton.f17238a;
                        if (sessionCommand != null && sessionCommand.f17539a == 0) {
                            builder.d(sessionCommand.f17540b, commandButton);
                        }
                    }
                    builder.a(true);
                    android.media.session.MediaSession.Token tokenG = connectionState.m;
                    if (tokenG == null) {
                        tokenG = sessionToken.f17568a.g();
                    }
                    if (tokenG != null) {
                        mediaControllerImplBase.G = new android.media.session.MediaController(mediaControllerImplBase.d, tokenG);
                    }
                    try {
                        iMediaSession.asBinder().linkToDeath(mediaControllerImplBase.g, 0);
                        mediaControllerImplBase.o = new SessionToken(sessionToken.f17568a.getUid(), connectionState.f17271a, connectionState.f17272b, sessionToken.f17568a.c(), connectionState.f17273c, connectionState.f17276h, tokenG);
                        mediaControllerImplBase.K = bundle;
                        mediaController.W0();
                    } catch (RemoteException unused) {
                        mediaController.release();
                        return;
                    }
                }
                break;
            case 1:
                SessionPositionInfo sessionPositionInfo = (SessionPositionInfo) obj;
                int i5 = MediaControllerStub.f17365j;
                if (mediaControllerImplBase.isConnected() && mediaControllerImplBase.f17335k.isEmpty()) {
                    SessionPositionInfo sessionPositionInfo2 = mediaControllerImplBase.r.f17497c;
                    if (sessionPositionInfo2.f17554c < sessionPositionInfo.f17554c && MediaUtils.a(sessionPositionInfo, sessionPositionInfo2)) {
                        mediaControllerImplBase.r = mediaControllerImplBase.r.e(sessionPositionInfo);
                        break;
                    }
                }
                break;
            case 2:
                PendingIntent pendingIntent = (PendingIntent) obj;
                int i6 = MediaControllerStub.f17365j;
                MediaController mediaController2 = mediaControllerImplBase.f17327a;
                if (mediaControllerImplBase.isConnected() && !Objects.equals(mediaControllerImplBase.s, pendingIntent)) {
                    mediaControllerImplBase.s = pendingIntent;
                    mediaController2.getClass();
                    Preconditions.q(Looper.myLooper() == mediaController2.f17316e.getLooper());
                    mediaController2.d.getClass();
                    break;
                }
                break;
            default:
                Bundle bundle2 = (Bundle) obj;
                int i7 = MediaControllerStub.f17365j;
                if (mediaControllerImplBase.isConnected()) {
                    ImmutableList immutableList4 = mediaControllerImplBase.v;
                    ImmutableList immutableList5 = mediaControllerImplBase.w;
                    mediaControllerImplBase.K = bundle2;
                    ImmutableList immutableListR2 = MediaControllerImplBase.r1(mediaControllerImplBase.u, mediaControllerImplBase.t, mediaControllerImplBase.x, mediaControllerImplBase.A, bundle2);
                    mediaControllerImplBase.v = immutableListR2;
                    mediaControllerImplBase.w = MediaControllerImplBase.q1(immutableListR2, mediaControllerImplBase.t, mediaControllerImplBase.K, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.d1());
                    boolean zEquals = mediaControllerImplBase.v.equals(immutableList4);
                    mediaControllerImplBase.w.equals(immutableList5);
                    MediaController mediaController3 = mediaControllerImplBase.f17327a;
                    mediaController3.getClass();
                    Preconditions.q(Looper.myLooper() == mediaController3.f17316e.getLooper());
                    MediaController.Listener listener = mediaController3.d;
                    listener.getClass();
                    if (!zEquals) {
                        listener.x();
                    }
                    break;
                }
                break;
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        int i2 = this.f17881b;
        Object obj2 = this.f17882c;
        switch (i2) {
            case 7:
                int i3 = MediaSessionStub.p;
                ((PlayerWrapper) obj).d((PlaybackParameters) obj2);
                break;
            default:
                int i4 = MediaSessionStub.p;
                ((PlayerWrapper) obj).L((MediaMetadata) obj2);
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
    public void b(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
        Consumer consumer = (Consumer) this.f17882c;
        int i2 = MediaSessionStub.p;
        consumer.accept(playerWrapper);
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = this.f17881b;
        int i4 = 0;
        Object obj = this.f17882c;
        switch (i3) {
            case 5:
                MediaLibrarySessionImpl mediaLibrarySessionImpl = (MediaLibrarySessionImpl) mediaSessionImpl;
                int i5 = MediaSessionStub.p;
                MediaLibraryService$MediaLibrarySession.Callback callback = mediaLibrarySessionImpl.H;
                mediaLibrarySessionImpl.v(controllerInfo);
                callback.getClass();
                ListenableFuture listenableFutureG = Futures.g(new LibraryResult(0, SystemClock.elapsedRealtime(), null, null, null, 1));
                listenableFutureG.addListener(new t0(mediaLibrarySessionImpl, controllerInfo, (String) obj, 3), new x0(mediaLibrarySessionImpl, i4));
                return listenableFutureG;
            case 6:
                int i6 = MediaSessionStub.p;
                return mediaSessionImpl.m(controllerInfo, (ImmutableList) obj);
            case 7:
            default:
                MediaSessionStub.ControllerPlayerTask controllerPlayerTask = (MediaSessionStub.ControllerPlayerTask) obj;
                int i7 = MediaSessionStub.p;
                if (mediaSessionImpl.k()) {
                    return Futures.h();
                }
                controllerPlayerTask.b(mediaSessionImpl.u, controllerInfo);
                MediaSessionStub.L2(mediaSessionImpl, controllerInfo, i2, new SessionResult(0));
                return Futures.h();
            case 8:
                MediaLibrarySessionImpl mediaLibrarySessionImpl2 = (MediaLibrarySessionImpl) mediaSessionImpl;
                int i8 = MediaSessionStub.p;
                return mediaLibrarySessionImpl2.C(controllerInfo, (MediaLibraryService$LibraryParams) obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17882c;
        mediaSessionImpl.o.post(new g0(mediaSessionImpl, completer, 7));
        return "onPlayRequested";
    }

    public /* synthetic */ o0(Object obj, int i2) {
        this.f17881b = i2;
        this.f17882c = obj;
    }
}

package androidx.media3.session;

import android.content.Intent;
import android.os.RemoteException;
import android.os.ResultReceiver;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Tracks;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import androidx.media3.session.legacy.MediaControllerCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17663c;
    public final /* synthetic */ Object d;

    public /* synthetic */ g0(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, Runnable runnable) {
        this.f17662b = 5;
        this.f17663c = mediaSessionImpl;
        this.d = runnable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        SessionResult sessionResult;
        int i2 = this.f17662b;
        Object obj = this.d;
        Object obj2 = this.f17663c;
        switch (i2) {
            case 0:
                MediaControllerImplLegacy mediaControllerImplLegacy = (MediaControllerImplLegacy) obj2;
                MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(mediaControllerImplLegacy.f17343a, (MediaSessionCompat.Token) obj);
                mediaControllerImplLegacy.f17349i = mediaControllerCompat;
                mediaControllerCompat.r(mediaControllerImplLegacy.f17346e, mediaControllerImplLegacy.f17344b.f17316e);
                break;
            case 1:
                MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) obj2;
                MediaControllerStub.ControllerTask controllerTask = (MediaControllerStub.ControllerTask) obj;
                int i3 = MediaControllerStub.f17365j;
                if (!mediaControllerImplBase.q) {
                    controllerTask.a(mediaControllerImplBase);
                    break;
                }
                break;
            case 2:
                ListenableFuture listenableFuture = (ListenableFuture) obj2;
                MediaBrowserServiceCompat.Result result = (MediaBrowserServiceCompat.Result) obj;
                int i4 = MediaLibraryServiceLegacyStub.n;
                try {
                    SessionResult sessionResult2 = (SessionResult) listenableFuture.get();
                    Preconditions.m(sessionResult2, "SessionResult must not be null");
                    result.f(sessionResult2.f17564b);
                } catch (InterruptedException | CancellationException | ExecutionException e2) {
                    Log.h("Custom action failed", e2);
                    result.e();
                    return;
                }
                break;
            case 3:
                ListenableFuture listenableFuture2 = (ListenableFuture) obj;
                int i5 = MediaLibraryServiceLegacyStub.n;
                if (((SettableFuture) obj2).isCancelled()) {
                    listenableFuture2.cancel(false);
                }
                break;
            case 4:
                ArrayList arrayList = (ArrayList) obj;
                int i6 = MediaLibraryServiceLegacyStub.n;
                if (((SettableFuture) obj2).isCancelled()) {
                    for (int i7 = 0; i7 < arrayList.size(); i7++) {
                        if (arrayList.get(i7) != null) {
                            ((ListenableFuture) arrayList.get(i7)).cancel(false);
                        }
                    }
                }
                break;
            case 5:
                SessionResult sessionResult3 = MediaSessionImpl.F;
                ((MediaSessionImpl) obj2).getClass();
                ((Runnable) obj).run();
                break;
            case 6:
                MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) obj2;
                PlayerWrapper playerWrapper = (PlayerWrapper) obj;
                MediaSessionLegacyStub mediaSessionLegacyStub = mediaSessionImpl.f17431h;
                mediaSessionImpl.u = playerWrapper;
                MediaSessionImpl.PlayerListener playerListener = new MediaSessionImpl.PlayerListener(mediaSessionImpl, playerWrapper);
                playerWrapper.Y(playerListener);
                mediaSessionImpl.w = playerListener;
                try {
                    mediaSessionLegacyStub.f17442h.m(0, playerWrapper);
                } catch (RemoteException e3) {
                    Log.e("Exception in using media1 API", e3);
                }
                mediaSessionLegacyStub.l.g();
                mediaSessionImpl.t = new PlayerInfo(playerWrapper.e(), 0, playerWrapper.X0(), playerWrapper.W0(), playerWrapper.W0(), 0, playerWrapper.a(), playerWrapper.i(), playerWrapper.w(), playerWrapper.s(), playerWrapper.Z0(), 0, playerWrapper.R0(18) ? playerWrapper.C0() : MediaMetadata.L, playerWrapper.R0(22) ? playerWrapper.q0() : 1.0f, 1.0f, playerWrapper.R0(21) ? playerWrapper.r0() : AudioAttributes.f13689i, 0, playerWrapper.R0(28) ? playerWrapper.o() : CueGroup.d, playerWrapper.s0(), playerWrapper.R0(23) ? playerWrapper.f0() : 0, playerWrapper.b1(), playerWrapper.r(), 1, playerWrapper.Z(), playerWrapper.h(), playerWrapper.isPlaying(), playerWrapper.m(), playerWrapper.a1(), playerWrapper.N0(), playerWrapper.z0(), playerWrapper.k0(), playerWrapper.R0(30) ? playerWrapper.n() : Tracks.f14010b, playerWrapper.d0());
                mediaSessionImpl.g(playerWrapper.i0());
                break;
            case 7:
                SessionResult sessionResult4 = MediaSessionImpl.F;
                ((CallbackToFutureAdapter.Completer) obj).b(Boolean.valueOf(((MediaSessionImpl) obj2).r()));
                break;
            case 8:
                ListenableFuture listenableFuture3 = (ListenableFuture) obj2;
                ResultReceiver resultReceiver = (ResultReceiver) obj;
                int i8 = MediaSessionLegacyStub.z;
                try {
                    sessionResult = (SessionResult) listenableFuture3.get();
                    Preconditions.m(sessionResult, "SessionResult must not be null");
                } catch (InterruptedException | ExecutionException e4) {
                    Log.h("Custom command failed", e4);
                    sessionResult = new SessionResult(-1);
                } catch (CancellationException e5) {
                    Log.h("Custom command cancelled", e5);
                    sessionResult = new SessionResult(1);
                }
                resultReceiver.send(sessionResult.f17563a, sessionResult.f17564b);
                break;
            case 9:
                MediaSessionImpl mediaSessionImpl2 = (MediaSessionImpl) obj2;
                Intent intent = (Intent) obj;
                int i9 = MediaSessionService.f17466j;
                MediaSession.ControllerInfo controllerInfoF = mediaSessionImpl2.f();
                if (controllerInfoF == null) {
                    controllerInfoF = MediaSessionService.c(intent);
                }
                if (!mediaSessionImpl2.q(controllerInfoF, intent)) {
                    Log.b("Ignored unrecognized media button intent.");
                }
                break;
            case 10:
                ConnectedControllersManager connectedControllersManager = ((MediaSessionStub) obj2).f17479j;
                MediaSession.ControllerInfo controllerInfoG = connectedControllersManager.g(((IMediaController) obj).asBinder());
                if (controllerInfoG != null) {
                    connectedControllersManager.o(controllerInfoG);
                }
                break;
            default:
                ((MediaSessionStub) obj2).f17479j.d((MediaSession.ControllerInfo) obj);
                break;
        }
    }

    public /* synthetic */ g0(Object obj, Object obj2, int i2) {
        this.f17662b = i2;
        this.f17663c = obj;
        this.d = obj2;
    }
}

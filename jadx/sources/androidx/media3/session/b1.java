package androidx.media3.session;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.util.Log;
import androidx.media3.session.legacy.MediaSessionManager;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17609b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f17610c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17612f;
    public final /* synthetic */ Object g;

    public /* synthetic */ b1(MediaNotificationManager mediaNotificationManager, MediaSession mediaSession, MediaNotification mediaNotification, boolean z, CallbackToFutureAdapter.Completer completer) {
        this.d = mediaNotificationManager;
        this.f17611e = mediaSession;
        this.f17612f = mediaNotification;
        this.f17610c = z;
        this.g = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17609b;
        Object obj = this.g;
        Object obj2 = this.f17612f;
        Object obj3 = this.f17611e;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) obj;
                try {
                    ((MediaNotificationManager) obj4).e((MediaSession) obj3, (MediaNotification) obj2, this.f17610c);
                    completer.b(null);
                    return;
                } catch (IllegalStateException e2) {
                    completer.d(e2);
                    return;
                }
            default:
                MediaSessionService.MediaSessionServiceStub mediaSessionServiceStub = (MediaSessionService.MediaSessionServiceStub) obj4;
                IMediaController iMediaController = (IMediaController) obj3;
                MediaSessionManager.RemoteUserInfo remoteUserInfo = (MediaSessionManager.RemoteUserInfo) obj2;
                ConnectionRequest connectionRequest = (ConnectionRequest) obj;
                boolean z = this.f17610c;
                mediaSessionServiceStub.f17475j.remove(iMediaController);
                try {
                    try {
                        MediaSessionService mediaSessionService = (MediaSessionService) mediaSessionServiceStub.f17473a.get();
                        if (mediaSessionService != null) {
                            int i3 = connectionRequest.f17266a;
                            int i4 = connectionRequest.f17267b;
                            MediaSession.ControllerInfo controllerInfo = new MediaSession.ControllerInfo(remoteUserInfo, i3, i4, z, new MediaSessionStub.Controller2Cb(iMediaController, i4), connectionRequest.f17269e);
                            MediaSession mediaSessionG = mediaSessionService.g(controllerInfo);
                            if (mediaSessionG != null) {
                                mediaSessionService.b(mediaSessionG);
                                mediaSessionG.f17401a.g.E2(iMediaController, controllerInfo);
                                return;
                            }
                        }
                    } catch (Exception e3) {
                        Log.h("Failed to add a session to session service", e3);
                        break;
                    }
                    SessionUtil.b(iMediaController);
                    return;
                } catch (Throwable th) {
                    SessionUtil.b(iMediaController);
                    throw th;
                }
        }
    }

    public /* synthetic */ b1(MediaSessionService.MediaSessionServiceStub mediaSessionServiceStub, IMediaController iMediaController, MediaSessionManager.RemoteUserInfo remoteUserInfo, ConnectionRequest connectionRequest, boolean z) {
        this.d = mediaSessionServiceStub;
        this.f17611e = iMediaController;
        this.f17612f = remoteUserInfo;
        this.g = connectionRequest;
        this.f17610c = z;
    }
}

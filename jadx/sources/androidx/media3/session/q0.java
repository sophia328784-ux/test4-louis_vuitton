package androidx.media3.session;

import android.os.Looper;
import androidx.media3.common.util.Consumer;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.et;
import defpackage.mt;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q0 implements MediaControllerStub.ControllerTask, MediaSessionImpl.RemoteControllerTask, Consumer, MediaSessionStub.SessionTask, MediaSessionStub.MediaItemPlayerTask, MediaSessionStub.MediaItemsWithStartPositionPlayerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17893b;

    public /* synthetic */ q0(int i2, SessionError sessionError) {
        this.f17893b = 0;
    }

    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(MediaControllerImplBase mediaControllerImplBase) {
        switch (this.f17893b) {
            case 0:
                int i2 = MediaControllerStub.f17365j;
                MediaController mediaController = mediaControllerImplBase.f17327a;
                if (mediaControllerImplBase.isConnected()) {
                    mediaController.getClass();
                    Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                    mediaController.d.getClass();
                    return;
                }
                return;
            case 1:
                mediaControllerImplBase.f17333i.f(26, new mt(15));
                return;
            case 2:
                int i3 = MediaControllerStub.f17365j;
                MediaController mediaController2 = mediaControllerImplBase.f17327a;
                Objects.requireNonNull(mediaController2);
                mediaController2.Y0(new et(mediaController2, 25));
                return;
            default:
                throw new ClassCastException();
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        PlayerWrapper playerWrapper = (PlayerWrapper) obj;
        switch (this.f17893b) {
            case 7:
                playerWrapper.b0();
                break;
            case 8:
                playerWrapper.pause();
                break;
            case 9:
                playerWrapper.S();
                break;
            case 10:
                int i2 = MediaSessionStub.p;
                playerWrapper.c0();
                break;
            case 11:
                playerWrapper.z();
                break;
            case 12:
                playerWrapper.l();
                break;
            case 13:
                playerWrapper.F();
                break;
            case 14:
            case 17:
            case 19:
            case 20:
            default:
                playerWrapper.D();
                break;
            case 15:
                playerWrapper.y();
                break;
            case 16:
                playerWrapper.q();
                break;
            case 18:
                int i3 = MediaSessionStub.p;
                playerWrapper.H();
                break;
            case 21:
                playerWrapper.stop();
                break;
            case 22:
                playerWrapper.Q();
                break;
            case 23:
                int i4 = MediaSessionStub.p;
                playerWrapper.k();
                break;
            case 24:
                playerWrapper.f();
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.MediaItemsWithStartPositionPlayerTask
    public void b(PlayerWrapper playerWrapper, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition) {
        MediaUtils.f(playerWrapper, mediaItemsWithStartPosition);
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = 0;
        switch (this.f17893b) {
            case 14:
                MediaLibrarySessionImpl mediaLibrarySessionImpl = (MediaLibrarySessionImpl) mediaSessionImpl;
                int i4 = MediaSessionStub.p;
                MediaLibraryService$MediaLibrarySession.Callback callback = mediaLibrarySessionImpl.H;
                mediaLibrarySessionImpl.v(controllerInfo);
                callback.getClass();
                ListenableFuture listenableFutureC = MediaLibraryService$MediaLibrarySession.Callback.c();
                listenableFutureC.addListener(new y0(mediaLibrarySessionImpl, listenableFutureC, controllerInfo, i3), new x0(mediaLibrarySessionImpl, i3));
                return listenableFutureC;
            case 17:
                int i5 = MediaSessionStub.p;
                MediaSession.Callback callback2 = mediaSessionImpl.f17429e;
                mediaSessionImpl.v(controllerInfo);
                callback2.getClass();
                return Futures.g(new SessionResult(-6));
            case 26:
                MediaLibrarySessionImpl mediaLibrarySessionImpl2 = (MediaLibrarySessionImpl) mediaSessionImpl;
                int i6 = MediaSessionStub.p;
                MediaLibraryService$MediaLibrarySession.Callback callback3 = mediaLibrarySessionImpl2.H;
                mediaLibrarySessionImpl2.v(controllerInfo);
                callback3.getClass();
                ListenableFuture listenableFutureG = Futures.g(LibraryResult.b(-6));
                listenableFutureG.addListener(new y0(mediaLibrarySessionImpl2, listenableFutureG, controllerInfo, 1), new x0(mediaLibrarySessionImpl2, i3));
                return listenableFutureG;
            default:
                int i7 = MediaSessionStub.p;
                MediaSession.Callback callback4 = mediaSessionImpl.f17429e;
                mediaSessionImpl.v(controllerInfo);
                callback4.getClass();
                return Futures.g(new SessionResult(-6));
        }
    }

    @Override // androidx.media3.session.MediaSessionImpl.RemoteControllerTask
    public void d(MediaSession.ControllerCb controllerCb, int i2) {
        switch (this.f17893b) {
            case 4:
                controllerCb.getClass();
                break;
            case 5:
                controllerCb.getClass();
                break;
            default:
                controllerCb.f(i2);
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
    public void e(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
        switch (this.f17893b) {
            case 19:
                int i2 = MediaSessionStub.p;
                playerWrapper.J0(list);
                break;
            default:
                int i3 = MediaSessionStub.p;
                playerWrapper.J0(list);
                break;
        }
    }

    public /* synthetic */ q0(int i2) {
        this.f17893b = i2;
    }

    public /* synthetic */ q0(Object obj, int i2) {
        this.f17893b = i2;
    }

    public /* synthetic */ q0(String str, int i2, Object obj) {
        this.f17893b = i2;
    }
}

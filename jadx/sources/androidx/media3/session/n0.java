package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Consumer;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n0 implements MediaControllerStub.ControllerTask, Consumer, MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17874c;

    public /* synthetic */ n0(int i2, SessionCommand sessionCommand, Bundle bundle, Bundle bundle2) {
        this.f17873b = 0;
        this.f17874c = i2;
    }

    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(MediaControllerImplBase mediaControllerImplBase) {
        MediaController.ProgressListener progressListener;
        int i2 = MediaControllerStub.f17365j;
        if (mediaControllerImplBase.isConnected() && (progressListener = (MediaController.ProgressListener) mediaControllerImplBase.l.get(this.f17874c)) != null) {
            progressListener.a();
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        int i2 = this.f17873b;
        int i3 = this.f17874c;
        PlayerWrapper playerWrapper = (PlayerWrapper) obj;
        switch (i2) {
            case 1:
                int i4 = MediaSessionStub.p;
                playerWrapper.T(i3);
                break;
            case 2:
                int i5 = MediaSessionStub.p;
                playerWrapper.I(i3);
                break;
            case 3:
                int i6 = MediaSessionStub.p;
                playerWrapper.E0(i3);
                break;
            default:
                int i7 = MediaSessionStub.p;
                playerWrapper.L0(i3);
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        MediaLibrarySessionImpl mediaLibrarySessionImpl = (MediaLibrarySessionImpl) mediaSessionImpl;
        int i3 = MediaSessionStub.p;
        MediaLibraryService$MediaLibrarySession.Callback callback = mediaLibrarySessionImpl.H;
        mediaLibrarySessionImpl.v(controllerInfo);
        callback.getClass();
        ListenableFuture listenableFutureG = Futures.g(LibraryResult.b(-6));
        listenableFutureG.addListener(new w0(mediaLibrarySessionImpl, listenableFutureG, controllerInfo, this.f17874c, 1), new x0(mediaLibrarySessionImpl, 0));
        return listenableFutureG;
    }

    public /* synthetic */ n0(int i2, int i3) {
        this.f17873b = i3;
        this.f17874c = i2;
    }

    public /* synthetic */ n0(String str, int i2, int i3, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams) {
        this.f17873b = 4;
        this.f17874c = i3;
    }
}

package androidx.media3.session;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d0 implements MediaControllerImplBase.RemoteSessionTask, MediaSessionStub.ControllerPlayerTask, MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f17633c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d0(Object obj, long j2, int i2) {
        this.d = obj;
        this.f17632b = i2;
        this.f17633c = j2;
    }

    @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
    public void b(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
        MediaSessionStub mediaSessionStub = (MediaSessionStub) this.d;
        int i2 = MediaSessionStub.p;
        playerWrapper.h0(mediaSessionStub.H2(controllerInfo, playerWrapper, this.f17632b), this.f17633c);
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        List list = (List) this.d;
        int i3 = MediaSessionStub.p;
        int i4 = this.f17632b;
        return mediaSessionImpl.t(controllerInfo, list, i4 == -1 ? mediaSessionImpl.u.v() : i4, i4 == -1 ? mediaSessionImpl.u.getCurrentPosition() : this.f17633c);
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.d;
        iMediaSession.Z0(mediaControllerImplBase.f17329c, i2, this.f17632b, this.f17633c);
    }
}

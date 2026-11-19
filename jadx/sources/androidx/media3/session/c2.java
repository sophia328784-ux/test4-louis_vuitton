package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c2 implements MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionStub.SessionTask f17627c;

    public /* synthetic */ c2(MediaSessionStub.SessionTask sessionTask, int i2) {
        this.f17626b = i2;
        this.f17627c = sessionTask;
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public final Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = this.f17626b;
        MediaSessionStub.SessionTask sessionTask = this.f17627c;
        switch (i3) {
            case 0:
                return MediaSessionStub.G2((MediaLibrarySessionImpl) mediaSessionImpl, controllerInfo, i2, sessionTask, new m0(controllerInfo, i2));
            default:
                return MediaSessionStub.G2(mediaSessionImpl, controllerInfo, i2, sessionTask, new n(mediaSessionImpl, controllerInfo, i2, 5));
        }
    }
}

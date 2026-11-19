package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z implements MediaControllerImplBase.RemoteSessionTask, MediaSessionLegacyStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17951c;
    public final /* synthetic */ float d;

    public /* synthetic */ z(Object obj, float f2, int i2) {
        this.f17950b = i2;
        this.f17951c = obj;
        this.d = f2;
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public void b(MediaSession.ControllerInfo controllerInfo) {
        ((MediaSessionLegacyStub) this.f17951c).f17441f.u.t(this.d);
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17950b;
        float f2 = this.d;
        MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.f17951c;
        switch (i3) {
            case 0:
                iMediaSession.J0(mediaControllerImplBase.f17329c, i2, f2);
                break;
            case 1:
                iMediaSession.F0(mediaControllerImplBase.f17329c, i2, f2);
                break;
            default:
                int iD1 = mediaControllerImplBase.d1();
                MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                if (iD1 < 6) {
                    iMediaSession.F0(mediaControllerStub, i2, f2);
                } else {
                    iMediaSession.p0(mediaControllerStub, i2);
                }
                break;
        }
    }
}

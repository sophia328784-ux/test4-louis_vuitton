package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v implements MediaControllerImplBase.RemoteSessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase f17924c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17925e;

    public /* synthetic */ v(MediaControllerImplBase mediaControllerImplBase, int i2, int i3, int i4) {
        this.f17923b = i4;
        this.f17924c = mediaControllerImplBase;
        this.d = i2;
        this.f17925e = i3;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public final void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17923b;
        int i4 = this.f17925e;
        int i5 = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17924c;
        switch (i3) {
            case 0:
                iMediaSession.M1(mediaControllerImplBase.f17329c, i2, i5, i4);
                break;
            case 1:
                iMediaSession.T0(mediaControllerImplBase.f17329c, i2, i5, i4);
                break;
            default:
                iMediaSession.H0(mediaControllerImplBase.f17329c, i2, i5, i4);
                break;
        }
    }
}

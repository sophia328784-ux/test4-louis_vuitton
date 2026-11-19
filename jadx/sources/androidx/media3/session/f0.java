package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f0 implements MediaControllerImplBase.RemoteSessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase.SurfaceCallback f17655c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17656e;

    public /* synthetic */ f0(MediaControllerImplBase.SurfaceCallback surfaceCallback, int i2, int i3, int i4) {
        this.f17654b = i4;
        this.f17655c = surfaceCallback;
        this.d = i2;
        this.f17656e = i3;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public final void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17654b;
        int i4 = this.f17656e;
        int i5 = this.d;
        MediaControllerImplBase.SurfaceCallback surfaceCallback = this.f17655c;
        switch (i3) {
            case 0:
                iMediaSession.r(MediaControllerImplBase.this.f17329c, i2, i5, i4);
                break;
            default:
                iMediaSession.r(MediaControllerImplBase.this.f17329c, i2, i5, i4);
                break;
        }
    }
}

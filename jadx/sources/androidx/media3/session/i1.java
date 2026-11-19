package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i1 implements MediaSessionLegacyStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionLegacyStub f17679c;
    public final /* synthetic */ long d;

    public /* synthetic */ i1(MediaSessionLegacyStub mediaSessionLegacyStub, long j2, int i2) {
        this.f17678b = i2;
        this.f17679c = mediaSessionLegacyStub;
        this.d = j2;
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public final void b(MediaSession.ControllerInfo controllerInfo) {
        int i2 = this.f17678b;
        long j2 = this.d;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17679c;
        switch (i2) {
            case 0:
                mediaSessionLegacyStub.f17441f.u.y0((int) j2);
                break;
            default:
                mediaSessionLegacyStub.f17441f.u.seekTo(j2);
                break;
        }
    }
}

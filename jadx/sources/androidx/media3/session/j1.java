package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j1 implements MediaSessionLegacyStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionLegacyStub f17685c;
    public final /* synthetic */ int d;

    public /* synthetic */ j1(MediaSessionLegacyStub mediaSessionLegacyStub, int i2, int i3) {
        this.f17684b = i3;
        this.f17685c = mediaSessionLegacyStub;
        this.d = i2;
    }

    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
    public final void b(MediaSession.ControllerInfo controllerInfo) {
        int i2 = this.f17684b;
        int i3 = this.d;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17685c;
        switch (i2) {
            case 0:
                mediaSessionLegacyStub.f17441f.u.E0(LegacyConversions.s(i3));
                break;
            default:
                mediaSessionLegacyStub.f17441f.u.j0(LegacyConversions.u(i3));
                break;
        }
    }
}

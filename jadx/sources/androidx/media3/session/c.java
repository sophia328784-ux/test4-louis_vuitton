package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionImpl f17618c;
    public final /* synthetic */ MediaSession.ControllerInfo d;

    public /* synthetic */ c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        this.f17617b = i2;
        this.f17618c = mediaSessionImpl;
        this.d = controllerInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17617b;
        int i3 = 8;
        int i4 = 12;
        MediaSession.ControllerInfo controllerInfo = this.d;
        MediaSessionImpl mediaSessionImpl = this.f17618c;
        switch (i2) {
            case 0:
                if (!mediaSessionImpl.k()) {
                    mediaSessionImpl.p(controllerInfo);
                    break;
                }
                break;
            case 1:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 12, MediaSessionStub.M2(new q0(15)));
                break;
            case 2:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 11, MediaSessionStub.M2(new q0(11)));
                break;
            case 3:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 3, MediaSessionStub.M2(new q0(21)));
                break;
            case 4:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 1, MediaSessionStub.M2(new q0(i3)));
                break;
            case 5:
                mediaSessionImpl.g.I2(controllerInfo, Integer.MIN_VALUE);
                break;
            case 6:
                mediaSessionImpl.g.I2(controllerInfo, Integer.MIN_VALUE);
                break;
            case 7:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 1, MediaSessionStub.M2(new q0(i3)));
                break;
            case 8:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 9, MediaSessionStub.M2(new q0(16)));
                break;
            default:
                mediaSessionImpl.g.K2(controllerInfo, Integer.MIN_VALUE, 7, MediaSessionStub.M2(new q0(i4)));
                break;
        }
    }
}

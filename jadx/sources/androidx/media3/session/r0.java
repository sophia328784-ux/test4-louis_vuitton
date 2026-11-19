package androidx.media3.session;

import androidx.media3.common.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r0 implements MediaControllerStub.ControllerTask, MediaSessionImpl.RemoteControllerTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17899c;
    public final /* synthetic */ int d;

    public /* synthetic */ r0(int i2, int i3, int i4) {
        this.f17898b = i4;
        this.f17899c = i2;
        this.d = i3;
    }

    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(MediaControllerImplBase mediaControllerImplBase) {
        int i2 = MediaControllerStub.f17365j;
        mediaControllerImplBase.m1(this.f17899c, this.d);
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        int i2 = this.f17898b;
        int i3 = this.d;
        int i4 = this.f17899c;
        PlayerWrapper playerWrapper = (PlayerWrapper) obj;
        switch (i2) {
            case 2:
                int i5 = MediaSessionStub.p;
                playerWrapper.t0(i4, i3);
                break;
            default:
                int i6 = MediaSessionStub.p;
                playerWrapper.H0(i4, i3);
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionImpl.RemoteControllerTask
    public void d(MediaSession.ControllerCb controllerCb, int i2) {
        controllerCb.g(i2, this.f17899c, this.d);
    }
}

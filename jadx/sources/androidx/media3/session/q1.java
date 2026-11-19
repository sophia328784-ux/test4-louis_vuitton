package androidx.media3.session;

import androidx.media3.common.util.Consumer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q1 implements MediaSessionStub.ControllerPlayerTask, MediaSessionStub.MediaItemPlayerTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaSessionStub f17894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17895c;
    public final /* synthetic */ int d;

    public /* synthetic */ q1(MediaSessionStub mediaSessionStub, int i2, int i3) {
        this.f17894b = mediaSessionStub;
        this.f17895c = i2;
        this.d = i3;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        MediaSessionStub.SurfaceHolderWithSize surfaceHolderWithSize;
        MediaSessionStub mediaSessionStub = this.f17894b;
        MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) mediaSessionStub.f17478b.get();
        mediaSessionImpl.getClass();
        if (mediaSessionImpl.r || (surfaceHolderWithSize = mediaSessionStub.o) == null) {
            return;
        }
        surfaceHolderWithSize.setFixedSize(this.f17895c, this.d);
    }

    @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
    public void b(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
        int i2 = MediaSessionStub.p;
        MediaSessionStub mediaSessionStub = this.f17894b;
        playerWrapper.N(mediaSessionStub.H2(controllerInfo, playerWrapper, this.f17895c), mediaSessionStub.H2(controllerInfo, playerWrapper, this.d));
    }

    @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
    public void e(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
        int i2 = MediaSessionStub.p;
        MediaSessionStub mediaSessionStub = this.f17894b;
        playerWrapper.K(mediaSessionStub.H2(controllerInfo, playerWrapper, this.f17895c), mediaSessionStub.H2(controllerInfo, playerWrapper, this.d), list);
    }
}

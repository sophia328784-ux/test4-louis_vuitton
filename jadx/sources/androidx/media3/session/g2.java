package androidx.media3.session;

import androidx.media3.common.util.Consumer;
import com.google.common.util.concurrent.Futures;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g2 implements MediaSessionStub.SessionTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CommandButton f17667b;

    public /* synthetic */ g2(CommandButton commandButton) {
        this.f17667b = commandButton;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        int i2 = MediaSessionStub.p;
        this.f17667b.h((PlayerWrapper) obj);
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = MediaSessionStub.p;
        Object obj = this.f17667b.f17245j;
        obj.getClass();
        MediaSession.Callback callback = mediaSessionImpl.f17429e;
        mediaSessionImpl.v(controllerInfo);
        callback.getClass();
        return Futures.g(new SessionResult(-6));
    }
}

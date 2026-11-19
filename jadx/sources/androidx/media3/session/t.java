package androidx.media3.session;

import androidx.media3.common.MediaItem;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t implements MediaControllerImplBase.RemoteSessionTask, MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f17908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17909c;

    public /* synthetic */ t(Object obj, long j2) {
        this.f17909c = obj;
        this.f17908b = j2;
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        MediaItem mediaItem = (MediaItem) this.f17909c;
        int i3 = MediaSessionStub.p;
        return mediaSessionImpl.t(controllerInfo, ImmutableList.A(mediaItem), 0, this.f17908b);
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) this.f17909c;
        iMediaSession.A0(mediaControllerImplBase.f17329c, i2, this.f17908b);
    }
}

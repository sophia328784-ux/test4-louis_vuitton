package androidx.media3.session;

import androidx.media3.common.MediaItem;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements MediaControllerImplBase.RemoteSessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase f17916c;
    public final /* synthetic */ MediaItem d;

    public /* synthetic */ u(MediaControllerImplBase mediaControllerImplBase, MediaItem mediaItem, int i2) {
        this.f17915b = i2;
        this.f17916c = mediaControllerImplBase;
        this.d = mediaItem;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public final void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17915b;
        MediaItem mediaItem = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17916c;
        switch (i3) {
            case 0:
                iMediaSession.G(mediaControllerImplBase.f17329c, i2, mediaItem.c(mediaControllerImplBase.d1(), true));
                break;
            default:
                iMediaSession.T1(mediaControllerImplBase.f17329c, i2, mediaItem.c(mediaControllerImplBase.d1(), true), true);
                break;
        }
    }
}

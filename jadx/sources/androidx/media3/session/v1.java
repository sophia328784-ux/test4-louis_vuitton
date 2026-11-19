package androidx.media3.session;

import androidx.media3.common.MediaItem;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v1 implements MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaItem f17929c;

    public /* synthetic */ v1(int i2, MediaItem mediaItem) {
        this.f17928b = i2;
        this.f17929c = mediaItem;
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public final Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        int i3 = this.f17928b;
        MediaItem mediaItem = this.f17929c;
        switch (i3) {
            case 0:
                int i4 = MediaSessionStub.p;
                break;
            case 1:
                int i5 = MediaSessionStub.p;
                break;
            default:
                int i6 = MediaSessionStub.p;
                break;
        }
        return mediaSessionImpl.m(controllerInfo, ImmutableList.A(mediaItem));
    }
}

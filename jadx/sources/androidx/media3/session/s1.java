package androidx.media3.session;

import androidx.media3.common.MediaItem;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s1 implements MediaSessionStub.ControllerPlayerTask, MediaSessionStub.MediaItemPlayerTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionStub f17907c;
    public final /* synthetic */ int d;

    public /* synthetic */ s1(MediaSessionStub mediaSessionStub, int i2, int i3) {
        this.f17906b = i3;
        this.f17907c = mediaSessionStub;
        this.d = i2;
    }

    @Override // androidx.media3.session.MediaSessionStub.ControllerPlayerTask
    public void b(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo) {
        int i2 = this.f17906b;
        int i3 = this.d;
        MediaSessionStub mediaSessionStub = this.f17907c;
        switch (i2) {
            case 0:
                int i4 = MediaSessionStub.p;
                playerWrapper.y0(mediaSessionStub.H2(controllerInfo, playerWrapper, i3));
                break;
            default:
                int i5 = MediaSessionStub.p;
                playerWrapper.M(mediaSessionStub.H2(controllerInfo, playerWrapper, i3));
                break;
        }
    }

    @Override // androidx.media3.session.MediaSessionStub.MediaItemPlayerTask
    public void e(PlayerWrapper playerWrapper, MediaSession.ControllerInfo controllerInfo, List list) {
        int i2 = this.f17906b;
        int i3 = this.d;
        MediaSessionStub mediaSessionStub = this.f17907c;
        switch (i2) {
            case 1:
                int i4 = MediaSessionStub.p;
                playerWrapper.A0(mediaSessionStub.H2(controllerInfo, playerWrapper, i3), list);
                break;
            case 2:
                int i5 = MediaSessionStub.p;
                if (list.size() != 1) {
                    playerWrapper.K(mediaSessionStub.H2(controllerInfo, playerWrapper, i3), mediaSessionStub.H2(controllerInfo, playerWrapper, i3 + 1), list);
                } else {
                    playerWrapper.l0(mediaSessionStub.H2(controllerInfo, playerWrapper, i3), (MediaItem) list.get(0));
                }
                break;
            default:
                int i6 = MediaSessionStub.p;
                playerWrapper.A0(mediaSessionStub.H2(controllerInfo, playerWrapper, i3), list);
                break;
        }
    }
}

package androidx.media3.session;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements MediaControllerImplBase.RemoteSessionTask, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase f17897c;
    public final /* synthetic */ int d;

    public /* synthetic */ r(MediaControllerImplBase mediaControllerImplBase, int i2, int i3) {
        this.f17896b = i3;
        this.f17897c = mediaControllerImplBase;
        this.d = i2;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17896b;
        int i4 = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17897c;
        switch (i3) {
            case 0:
                iMediaSession.s0(mediaControllerImplBase.f17329c, i2, i4);
                break;
            case 1:
            case 2:
            case 4:
            case 6:
            default:
                iMediaSession.Y0(mediaControllerImplBase.f17329c, i2, i4);
                break;
            case 3:
                iMediaSession.y0(mediaControllerImplBase.f17329c, i2, i4);
                break;
            case 5:
                iMediaSession.l2(mediaControllerImplBase.f17329c, i2, i4);
                break;
            case 7:
                iMediaSession.a1(mediaControllerImplBase.f17329c, i2, i4);
                break;
            case 8:
                iMediaSession.T(mediaControllerImplBase.f17329c, i2, i4);
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f17896b;
        int i3 = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17897c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 1:
                listener.O(i3, mediaControllerImplBase.r.u);
                break;
            case 2:
                listener.O(i3, mediaControllerImplBase.r.u);
                break;
            case 3:
            case 5:
            case 7:
            case 8:
            default:
                listener.O(i3, mediaControllerImplBase.r.u);
                break;
            case 4:
                listener.O(i3, mediaControllerImplBase.r.u);
                break;
            case 6:
                listener.O(i3, mediaControllerImplBase.r.u);
                break;
            case 9:
                listener.O(i3, mediaControllerImplBase.r.u);
                break;
        }
    }
}

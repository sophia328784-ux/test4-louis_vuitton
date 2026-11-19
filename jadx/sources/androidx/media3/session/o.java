package androidx.media3.session;

import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements MediaControllerImplBase.RemoteSessionTask, ListenerSet.IterationFinishedEvent, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase f17880c;

    public /* synthetic */ o(MediaControllerImplBase mediaControllerImplBase, int i2) {
        this.f17879b = i2;
        this.f17880c = mediaControllerImplBase;
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void a(Object obj, FlagSet flagSet) {
        ((Player.Listener) obj).f0(this.f17880c.f17327a, new Player.Events(flagSet));
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17879b;
        MediaControllerImplBase mediaControllerImplBase = this.f17880c;
        switch (i3) {
            case 0:
                iMediaSession.W(mediaControllerImplBase.f17329c, i2);
                break;
            case 1:
                iMediaSession.Y(mediaControllerImplBase.f17329c, i2);
                break;
            case 2:
                iMediaSession.e2(mediaControllerImplBase.f17329c, i2);
                break;
            case 3:
                iMediaSession.r0(mediaControllerImplBase.f17329c, i2);
                break;
            case 4:
            case 13:
            case 14:
            default:
                iMediaSession.u2(mediaControllerImplBase.f17329c, i2);
                break;
            case 5:
                iMediaSession.o0(mediaControllerImplBase.f17329c, i2);
                break;
            case 6:
                iMediaSession.y(mediaControllerImplBase.f17329c, i2);
                break;
            case 7:
                iMediaSession.o2(mediaControllerImplBase.f17329c, i2);
                break;
            case 8:
                iMediaSession.p(mediaControllerImplBase.f17329c, i2);
                break;
            case 9:
                iMediaSession.o(mediaControllerImplBase.f17329c, i2);
                break;
            case 10:
                iMediaSession.i2(mediaControllerImplBase.f17329c, i2);
                break;
            case 11:
                iMediaSession.U1(mediaControllerImplBase.f17329c, i2);
                break;
            case 12:
                iMediaSession.x1(mediaControllerImplBase.f17329c, i2);
                break;
            case 15:
                int iD1 = mediaControllerImplBase.d1();
                MediaControllerStub mediaControllerStub = mediaControllerImplBase.f17329c;
                if (iD1 < 6) {
                    iMediaSession.F0(mediaControllerStub, i2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    iMediaSession.q(mediaControllerStub, i2);
                }
                break;
            case 16:
                iMediaSession.z0(mediaControllerImplBase.f17329c, i2);
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f17879b;
        MediaControllerImplBase mediaControllerImplBase = this.f17880c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 13:
                listener.Y(mediaControllerImplBase.A);
                break;
            default:
                listener.Y(mediaControllerImplBase.A);
                break;
        }
    }
}

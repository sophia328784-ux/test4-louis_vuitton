package androidx.media3.session;

import androidx.media3.common.Player;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17623c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17625f;

    public /* synthetic */ c1(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f17622b = i3;
        this.d = obj;
        this.f17623c = i2;
        this.f17624e = obj2;
        this.f17625f = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17622b;
        Object obj = this.f17625f;
        Object obj2 = this.f17624e;
        int i3 = this.f17623c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                MediaNotificationManager mediaNotificationManager = (MediaNotificationManager) obj3;
                MediaSession mediaSession = (MediaSession) obj2;
                MediaNotification mediaNotification = (MediaNotification) obj;
                if (i3 == mediaNotificationManager.f17392k) {
                    mediaNotificationManager.e(mediaSession, mediaNotification, mediaNotificationManager.c(false));
                }
                break;
            default:
                List list = (List) obj2;
                MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) obj;
                MediaSessionImpl mediaSessionImpl = MediaSessionLegacyStub.this.f17441f;
                if (i3 == -1) {
                    mediaSessionImpl.u.J0(list);
                } else {
                    mediaSessionImpl.u.A0(i3, list);
                }
                Player.Commands.Builder builder = new Player.Commands.Builder();
                builder.f13926a.a(20);
                builder.c();
                mediaSessionImpl.s(controllerInfo);
                break;
        }
    }
}

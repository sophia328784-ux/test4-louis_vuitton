package androidx.media3.session;

import android.os.Bundle;
import android.os.Looper;
import androidx.media3.session.MediaNotificationManager.MediaControllerListener;
import androidx.media3.session.MediaSessionService.MediaSessionListener;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionService f17889c;
    public final /* synthetic */ MediaSession d;

    public /* synthetic */ p1(MediaSessionService mediaSessionService, MediaSession mediaSession, int i2) {
        this.f17888b = i2;
        this.f17889c = mediaSessionService;
        this.d = mediaSession;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17888b;
        MediaSessionService mediaSessionService = this.f17889c;
        switch (i2) {
            case 0:
                MediaSession mediaSession = this.d;
                MediaSessionImpl mediaSessionImpl = mediaSession.f17401a;
                int i3 = MediaSessionService.f17466j;
                MediaNotificationManager mediaNotificationManagerD = mediaSessionService.d();
                MediaSessionService mediaSessionService2 = mediaNotificationManagerD.f17385b;
                HashMap map = mediaNotificationManagerD.f17390i;
                if (!map.containsKey(mediaSession)) {
                    MediaNotificationManager.MediaControllerListener mediaControllerListener = mediaNotificationManagerD.new MediaControllerListener(mediaSessionService2, mediaSession);
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("androidx.media3.session.MediaNotificationManager", true);
                    MediaController.Builder builder = new MediaController.Builder(mediaSessionService2, mediaSessionImpl.f17433j);
                    builder.f17321c = new Bundle(bundle);
                    builder.d = mediaControllerListener;
                    Looper mainLooper = Looper.getMainLooper();
                    mainLooper.getClass();
                    builder.f17322e = mainLooper;
                    ListenableFuture listenableFutureA = builder.a();
                    map.put(mediaSession, new MediaNotificationManager.ControllerInfo(listenableFutureA));
                    ((AbstractFuture) listenableFutureA).addListener(new e(mediaNotificationManagerD, listenableFutureA, mediaControllerListener, mediaSession, 6), mediaNotificationManagerD.f17388f);
                }
                mediaSessionImpl.x = mediaSessionService.new MediaSessionListener();
                break;
            default:
                int i4 = MediaSessionService.f17466j;
                HashMap map2 = mediaSessionService.d().f17390i;
                MediaSession mediaSession2 = this.d;
                MediaNotificationManager.ControllerInfo controllerInfo = (MediaNotificationManager.ControllerInfo) map2.remove(mediaSession2);
                if (controllerInfo != null) {
                    MediaController.X0(controllerInfo.f17394a);
                }
                mediaSession2.f17401a.x = null;
                break;
        }
    }
}

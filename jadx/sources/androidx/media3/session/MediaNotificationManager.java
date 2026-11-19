package androidx.media3.session;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.content.ContextCompat;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.bm;
import defpackage.r81;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
final class MediaNotificationManager implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaSessionService f17385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaNotification.ActionFactory f17386c;
    public final NotificationManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f17387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final g f17388f;
    public final Intent g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f17389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f17390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MediaNotification.Provider f17391j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17392k;
    public MediaNotification l;
    public boolean m;
    public boolean n;
    public boolean o;
    public final long p;
    public final int q;

    public static final class ControllerInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ListenableFuture f17394a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17396c;

        public ControllerInfo(ListenableFuture<MediaController> listenableFuture) {
            this.f17394a = listenableFuture;
        }
    }

    public final class MediaControllerListener implements MediaController.Listener, Player.Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSessionService f17397b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaSession f17398c;

        public MediaControllerListener(MediaSessionService mediaSessionService, MediaSession mediaSession) {
            this.f17397b = mediaSessionService;
            this.f17398c = mediaSession;
        }

        @Override // androidx.media3.session.MediaController.Listener
        public final void T() {
            this.f17397b.h(this.f17398c, false);
        }

        @Override // androidx.media3.session.MediaController.Listener
        public final ListenableFuture V(SessionCommand sessionCommand) {
            int i2;
            if (sessionCommand.f17540b.equals("androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY")) {
                ControllerInfo controllerInfo = (ControllerInfo) MediaNotificationManager.this.f17390i.get(this.f17398c);
                if (controllerInfo != null) {
                    controllerInfo.f17395b = true;
                }
                i2 = 0;
            } else {
                i2 = -6;
            }
            return Futures.g(new SessionResult(i2));
        }

        @Override // androidx.media3.session.MediaController.Listener
        public final void e() {
            MediaSessionService mediaSessionService = this.f17397b;
            MediaSession mediaSession = this.f17398c;
            if (mediaSessionService.f(mediaSession)) {
                mediaSessionService.i(mediaSession);
            }
            mediaSessionService.h(mediaSession, false);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void f0(Player player, Player.Events events) {
            if (events.f13927a.a(4, 5, 14, 0)) {
                this.f17397b.h(this.f17398c, false);
            }
        }

        @Override // androidx.media3.session.MediaController.Listener
        public final void x() {
            this.f17397b.h(this.f17398c, false);
        }
    }

    public MediaNotificationManager(MediaSessionService mediaSessionService, MediaNotification.Provider provider, MediaNotification.ActionFactory actionFactory) {
        this.f17385b = mediaSessionService;
        this.f17391j = provider;
        this.f17386c = actionFactory;
        NotificationManager notificationManager = (NotificationManager) mediaSessionService.getSystemService("notification");
        notificationManager.getClass();
        this.d = notificationManager;
        Looper mainLooper = Looper.getMainLooper();
        String str = Util.f14242a;
        this.f17387e = new Handler(mainLooper, this);
        this.f17388f = new g(this, 1);
        Intent intent = new Intent(mediaSessionService, mediaSessionService.getClass());
        this.g = intent;
        String string = UUID.randomUUID().toString();
        this.f17389h = string;
        intent.putExtra("androidx.media3.session.intent.uid", string);
        this.f17390i = new HashMap();
        this.m = false;
        this.o = true;
        this.p = com.networkbench.agent.impl.performance.coulometry.b.j.f37873a;
        this.q = 3;
    }

    public final void a() {
        this.o = false;
        Handler handler = this.f17387e;
        if (handler.hasMessages(1)) {
            handler.removeMessages(1);
            MediaSessionService mediaSessionService = this.f17385b;
            ArrayList arrayListE = mediaSessionService.e();
            for (int i2 = 0; i2 < arrayListE.size(); i2++) {
                mediaSessionService.h((MediaSession) arrayListE.get(i2), false);
            }
        }
    }

    public final MediaController b(MediaSession mediaSession) {
        ControllerInfo controllerInfo = (ControllerInfo) this.f17390i.get(mediaSession);
        if (controllerInfo != null) {
            ListenableFuture listenableFuture = controllerInfo.f17394a;
            if (listenableFuture.isDone()) {
                try {
                    return (MediaController) Futures.d(listenableFuture);
                } catch (ExecutionException e2) {
                    bm.i(e2);
                }
            }
        }
        return null;
    }

    public final boolean c(boolean z) {
        boolean z2;
        ArrayList arrayListE = this.f17385b.e();
        int i2 = 0;
        while (true) {
            if (i2 >= arrayListE.size()) {
                z2 = false;
                break;
            }
            MediaController mediaControllerB = b((MediaSession) arrayListE.get(i2));
            if (mediaControllerB != null && ((mediaControllerB.r() || z) && (mediaControllerB.h() == 3 || mediaControllerB.h() == 2))) {
                z2 = true;
                break;
            }
            i2++;
        }
        boolean z3 = this.o;
        long j2 = this.p;
        boolean z4 = z3 && j2 > 0;
        boolean z5 = this.n;
        Handler handler = this.f17387e;
        if (z5 && !z2 && z4) {
            handler.sendEmptyMessageDelayed(1, j2);
        } else if (z2) {
            handler.removeMessages(1);
        }
        this.n = z2;
        return z2 || handler.hasMessages(1);
    }

    public final boolean d(MediaSession mediaSession) {
        MediaController mediaControllerB = b(mediaSession);
        if (mediaControllerB != null && !mediaControllerB.p().p()) {
            ControllerInfo controllerInfo = (ControllerInfo) this.f17390i.get(mediaSession);
            controllerInfo.getClass();
            if (mediaControllerB.h() != 1) {
                controllerInfo.f17395b = false;
                controllerInfo.f17396c = true;
                return true;
            }
            int i2 = this.q;
            if (i2 == 1) {
                return !controllerInfo.f17395b;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    r81.b();
                    return false;
                }
                if (!controllerInfo.f17395b && controllerInfo.f17396c) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void e(MediaSession mediaSession, MediaNotification mediaNotification, boolean z) {
        android.media.session.MediaSession.Token token = mediaSession.f17401a.f17431h.l.c().f17819c;
        Notification notification = mediaNotification.f17382b;
        int i2 = mediaNotification.f17381a;
        notification.extras.putParcelable("android.mediaSession", token);
        this.l = mediaNotification;
        MediaSessionService mediaSessionService = this.f17385b;
        if (!z) {
            this.d.notify(i2, notification);
            String str = Util.f14242a;
            mediaSessionService.stopForeground(2);
            return;
        }
        ContextCompat.startForegroundService(mediaSessionService, this.g);
        String str2 = Util.f14242a;
        try {
            mediaSessionService.startForeground(i2, notification, 2);
            this.m = true;
        } catch (RuntimeException e2) {
            Log.d("The service must be declared with a foregroundServiceType that includes mediaPlayback");
            throw e2;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            return false;
        }
        MediaSessionService mediaSessionService = this.f17385b;
        ArrayList arrayListE = mediaSessionService.e();
        for (int i2 = 0; i2 < arrayListE.size(); i2++) {
            mediaSessionService.h((MediaSession) arrayListE.get(i2), false);
        }
        return true;
    }
}

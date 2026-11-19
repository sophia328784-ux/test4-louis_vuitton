package androidx.media3.session;

import android.os.Bundle;
import android.os.Handler;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements MediaControllerImplBase.RemoteSessionTask, CallbackToFutureAdapter.Resolver, MediaSessionStub.SessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f17668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17669c;
    public final /* synthetic */ Object d;

    public /* synthetic */ h(Object obj, Object obj2, boolean z) {
        this.f17669c = obj;
        this.d = obj2;
        this.f17668b = z;
    }

    @Override // androidx.media3.session.MediaSessionStub.SessionTask
    public Object c(MediaSessionImpl mediaSessionImpl, MediaSession.ControllerInfo controllerInfo, int i2) {
        MediaSessionImpl mediaSessionImpl2;
        MediaSession.ControllerInfo controllerInfo2;
        MediaSessionStub.ProgressReporter progressReporter;
        SessionCommand sessionCommand = (SessionCommand) this.f17669c;
        Bundle bundle = (Bundle) this.d;
        int i3 = MediaSessionStub.p;
        if (this.f17668b) {
            mediaSessionImpl2 = mediaSessionImpl;
            controllerInfo2 = controllerInfo;
            progressReporter = new MediaSessionStub.ProgressReporter(mediaSessionImpl2, controllerInfo2, i2, sessionCommand, bundle);
        } else {
            mediaSessionImpl2 = mediaSessionImpl;
            controllerInfo2 = controllerInfo;
            progressReporter = null;
        }
        ListenableFuture listenableFutureO = mediaSessionImpl2.o(controllerInfo2);
        if (progressReporter != null) {
            progressReporter.f17483a = listenableFutureO;
        }
        return listenableFutureO;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        iMediaSession.R(((MediaControllerImplBase) this.f17669c).f17329c, i2, ((AudioAttributes) this.d).d(), this.f17668b);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(final CallbackToFutureAdapter.Completer completer) {
        final MediaNotificationManager mediaNotificationManager = (MediaNotificationManager) this.f17669c;
        final MediaSession mediaSession = (MediaSession) this.d;
        MediaSessionService mediaSessionService = mediaNotificationManager.f17385b;
        if (!mediaSessionService.f(mediaSession) || !mediaNotificationManager.d(mediaSession)) {
            String str = Util.f14242a;
            mediaSessionService.stopForeground(1);
            MediaNotification mediaNotification = mediaNotificationManager.l;
            if (mediaNotification != null) {
                mediaNotificationManager.d.cancel(mediaNotification.f17381a);
                mediaNotificationManager.f17392k++;
                mediaNotificationManager.l = null;
            }
            completer.b(null);
            return "notificationRemoved";
        }
        int i2 = mediaNotificationManager.f17392k + 1;
        mediaNotificationManager.f17392k = i2;
        MediaController mediaControllerB = mediaNotificationManager.b(mediaSession);
        mediaControllerB.getClass();
        mediaControllerB.Z0();
        MediaController.MediaControllerImpl mediaControllerImpl = mediaControllerB.f17315c;
        final ImmutableList immutableListO0 = mediaControllerImpl.isConnected() ? mediaControllerImpl.O0() : ImmutableList.x();
        final n nVar = new n(mediaNotificationManager, i2, mediaSession, 2);
        Handler handler = new Handler(mediaSession.a().a0());
        final boolean z = this.f17668b;
        Util.W(handler, new Runnable() { // from class: androidx.media3.session.a1
            @Override // java.lang.Runnable
            public final void run() {
                MediaNotificationManager mediaNotificationManager2 = mediaNotificationManager;
                MediaSession mediaSession2 = mediaSession;
                ImmutableList immutableList = immutableListO0;
                n nVar2 = nVar;
                boolean z2 = z;
                CallbackToFutureAdapter.Completer completer2 = completer;
                try {
                    MediaNotification mediaNotificationB = mediaNotificationManager2.f17391j.b(mediaSession2, immutableList, mediaNotificationManager2.f17386c, nVar2);
                    Preconditions.p("notification ID 20938 is already used internally.", mediaNotificationB.f17381a != 20938);
                    mediaNotificationManager2.f17388f.execute(new b1(mediaNotificationManager2, mediaSession2, mediaNotificationB, z2, completer2));
                } catch (RuntimeException e2) {
                    completer2.d(e2);
                }
            }
        });
        return "notificationUpdated";
    }

    public /* synthetic */ h(boolean z, SessionCommand sessionCommand, Bundle bundle) {
        this.f17668b = z;
        this.f17669c = sessionCommand;
        this.d = bundle;
    }
}

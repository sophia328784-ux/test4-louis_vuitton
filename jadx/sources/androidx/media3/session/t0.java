package androidx.media3.session;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import com.google.common.base.Preconditions;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17911c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17912e;

    public /* synthetic */ t0(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, MediaSession.ControllerInfo controllerInfo, MediaBrowserServiceCompat.Result result, String str) {
        this.f17910b = 1;
        this.f17911c = mediaLibraryServiceLegacyStub;
        this.d = controllerInfo;
        this.f17912e = result;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0076  */
    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    /* JADX WARN: Code duplicated, block: B:31:0x0087  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        SessionCommand sessionCommand;
        ListenableFuture listenableFutureG;
        int i2 = this.f17910b;
        Bitmap bitmap = null;
        SessionCommand sessionCommand2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object obj = this.f17912e;
        Object obj2 = this.d;
        Object obj3 = this.f17911c;
        switch (i2) {
            case 0:
                ListenableFuture listenableFuture = (ListenableFuture) obj3;
                SettableFuture settableFuture = (SettableFuture) obj2;
                MediaItem mediaItem = (MediaItem) obj;
                int i3 = MediaLibraryServiceLegacyStub.n;
                try {
                    bitmap = (Bitmap) Futures.d(listenableFuture);
                } catch (CancellationException | ExecutionException e2) {
                    Log.c("failed to get bitmap", e2);
                }
                settableFuture.set(LegacyConversions.a(mediaItem, bitmap));
                break;
            case 1:
                MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub = (MediaLibraryServiceLegacyStub) obj3;
                MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) obj2;
                MediaBrowserServiceCompat.Result result = (MediaBrowserServiceCompat.Result) obj;
                int i4 = MediaLibraryServiceLegacyStub.n;
                if (!mediaLibraryServiceLegacyStub.l.m(controllerInfo, 50004)) {
                    result.f(null);
                } else {
                    MediaLibrarySessionImpl mediaLibrarySessionImpl = mediaLibraryServiceLegacyStub.m;
                    MediaLibraryService$MediaLibrarySession.Callback callback = mediaLibrarySessionImpl.H;
                    mediaLibrarySessionImpl.v(controllerInfo);
                    callback.getClass();
                    ListenableFuture listenableFutureC = MediaLibraryService$MediaLibrarySession.Callback.c();
                    listenableFutureC.addListener(new y0(mediaLibrarySessionImpl, listenableFutureC, controllerInfo, objArr4 == true ? 1 : 0), new x0(mediaLibrarySessionImpl, objArr3 == true ? 1 : 0));
                    SettableFuture settableFutureE0 = Util.e0(listenableFutureC, new s0(mediaLibraryServiceLegacyStub, objArr2 == true ? 1 : 0));
                    settableFutureE0.addListener(new v0(settableFutureE0, result, objArr == true ? 1 : 0), MoreExecutors.b());
                }
                break;
            case 2:
                MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub2 = (MediaLibraryServiceLegacyStub) obj3;
                MediaSession.ControllerInfo controllerInfo2 = (MediaSession.ControllerInfo) obj2;
                String str = (String) obj;
                int i5 = MediaLibraryServiceLegacyStub.n;
                if (mediaLibraryServiceLegacyStub2.l.m(controllerInfo2, 50002)) {
                    MediaLibrarySessionImpl mediaLibrarySessionImpl2 = mediaLibraryServiceLegacyStub2.m;
                    MediaLibraryService$MediaLibrarySession.Callback callback2 = mediaLibrarySessionImpl2.H;
                    mediaLibrarySessionImpl2.v(controllerInfo2);
                    callback2.getClass();
                    Futures.g(new LibraryResult(0, SystemClock.elapsedRealtime(), null, null, null, 1)).addListener(new t0(mediaLibrarySessionImpl2, controllerInfo2, str, 3), new x0(mediaLibrarySessionImpl2, objArr5 == true ? 1 : 0));
                    break;
                }
                break;
            case 3:
                int i6 = MediaLibrarySessionImpl.L;
                ((MediaLibrarySessionImpl) obj3).E((MediaSession.ControllerInfo) obj2, (String) obj);
                break;
            case 4:
                MediaController mediaController = (MediaController) obj3;
                final String str2 = (String) obj2;
                Bundle bundle = (Bundle) obj;
                mediaController.Z0();
                MediaController.MediaControllerImpl mediaControllerImpl = mediaController.f17315c;
                UnmodifiableIterator it = (!mediaControllerImpl.isConnected() ? SessionCommands.f17542b : mediaControllerImpl.b()).f17544a.iterator();
                while (it.hasNext()) {
                    SessionCommand sessionCommand3 = (SessionCommand) it.next();
                    if (sessionCommand3.f17539a == 0 && sessionCommand3.f17540b.equals(str2)) {
                        sessionCommand2 = sessionCommand3;
                        if (sessionCommand2 == null || CommandButton.n(str2)) {
                            sessionCommand = new SessionCommand(str2, bundle);
                            mediaController.Z0();
                            Preconditions.h(sessionCommand.f17539a == 0, "command must be a custom command");
                            if (mediaControllerImpl.isConnected()) {
                                listenableFutureG = mediaControllerImpl.a0(sessionCommand, bundle);
                            } else {
                                listenableFutureG = Futures.g(new SessionResult(-100));
                            }
                            Futures.a(listenableFutureG, new FutureCallback<SessionResult>() { // from class: androidx.media3.session.MediaNotificationManager.1

                                /* JADX INFO: renamed from: a */
                                public final /* synthetic */ String f17393a;

                                public AnonymousClass1() {
                                    str = str2;
                                }

                                @Override // com.google.common.util.concurrent.FutureCallback
                                public final void onFailure(Throwable th) {
                                    Log.h("custom command " + str + " produced an error: " + th.getMessage(), th);
                                }

                                @Override // com.google.common.util.concurrent.FutureCallback
                                public final /* bridge */ /* synthetic */ void onSuccess(Object obj4) {
                                }
                            }, MoreExecutors.b());
                        }
                        break;
                    }
                }
                if (sessionCommand2 == null) {
                }
                sessionCommand = new SessionCommand(str2, bundle);
                mediaController.Z0();
                Preconditions.h(sessionCommand.f17539a == 0, "command must be a custom command");
                if (mediaControllerImpl.isConnected()) {
                    listenableFutureG = mediaControllerImpl.a0(sessionCommand, bundle);
                } else {
                    listenableFutureG = Futures.g(new SessionResult(-100));
                }
                Futures.a(listenableFutureG, new FutureCallback<SessionResult>() { // from class: androidx.media3.session.MediaNotificationManager.1

                    /* JADX INFO: renamed from: a */
                    public final /* synthetic */ String f17393a;

                    public AnonymousClass1() {
                        str = str2;
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public final void onFailure(Throwable th) {
                        Log.h("custom command " + str + " produced an error: " + th.getMessage(), th);
                    }

                    @Override // com.google.common.util.concurrent.FutureCallback
                    public final /* bridge */ /* synthetic */ void onSuccess(Object obj4) {
                    }
                }, MoreExecutors.b());
                break;
            case 5:
                ((MediaSessionImpl.MediaPlayPauseKeyHandler) obj3).lambda$setPendingPlayPauseTask$0((MediaSession.ControllerInfo) obj2, (KeyEvent) obj);
                break;
            default:
                MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) obj3;
                MediaSessionStub.MediaItemsWithStartPositionPlayerTask mediaItemsWithStartPositionPlayerTask = (MediaSessionStub.MediaItemsWithStartPositionPlayerTask) obj2;
                MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition = (MediaSession.MediaItemsWithStartPosition) obj;
                int i7 = MediaSessionStub.p;
                if (!mediaSessionImpl.k()) {
                    mediaItemsWithStartPositionPlayerTask.b(mediaSessionImpl.u, mediaItemsWithStartPosition);
                }
                break;
        }
    }

    public /* synthetic */ t0(MediaNotificationManager mediaNotificationManager, MediaController mediaController, String str, Bundle bundle) {
        this.f17910b = 4;
        this.f17911c = mediaController;
        this.d = str;
        this.f17912e = bundle;
    }

    public /* synthetic */ t0(Object obj, Object obj2, Object obj3, int i2) {
        this.f17910b = i2;
        this.f17911c = obj;
        this.d = obj2;
        this.f17912e = obj3;
    }
}

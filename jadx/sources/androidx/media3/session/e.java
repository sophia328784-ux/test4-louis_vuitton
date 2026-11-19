package androidx.media3.session;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.session.ConnectionState.InProcessBinder;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17641c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17643f;

    public /* synthetic */ e(ConnectedControllersManager connectedControllersManager, AtomicBoolean atomicBoolean, ConnectedControllersManager.ConnectedControllerRecord connectedControllerRecord, AtomicBoolean atomicBoolean2) {
        this.f17640b = 0;
        this.f17641c = connectedControllersManager;
        this.d = atomicBoolean;
        this.f17643f = connectedControllerRecord;
        this.f17642e = atomicBoolean2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap;
        Bitmap bitmap2;
        IMediaController iMediaController;
        int i2;
        Bundle bundleB;
        int i3 = 0;
        switch (this.f17640b) {
            case 0:
                ConnectedControllersManager connectedControllersManager = (ConnectedControllersManager) this.f17641c;
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.d;
                ConnectedControllersManager.ConnectedControllerRecord connectedControllerRecord = (ConnectedControllersManager.ConnectedControllerRecord) this.f17643f;
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f17642e;
                synchronized (connectedControllersManager.f17254a) {
                    try {
                        if (atomicBoolean.get()) {
                            atomicBoolean2.set(true);
                        } else {
                            connectedControllersManager.c(connectedControllerRecord);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            case 1:
                AtomicInteger atomicInteger = (AtomicInteger) this.f17641c;
                ImmutableList immutableList = (ImmutableList) this.d;
                ArrayList arrayList = (ArrayList) this.f17642e;
                SettableFuture settableFuture = (SettableFuture) this.f17643f;
                int i4 = MediaLibraryServiceLegacyStub.n;
                if (atomicInteger.incrementAndGet() == immutableList.size()) {
                    ArrayList arrayList2 = new ArrayList();
                    while (i3 < arrayList.size()) {
                        ListenableFuture listenableFuture = (ListenableFuture) arrayList.get(i3);
                        if (listenableFuture != null) {
                            try {
                                bitmap = (Bitmap) Futures.d(listenableFuture);
                            } catch (CancellationException | ExecutionException e2) {
                                Log.c("Failed to get bitmap", e2);
                                bitmap = null;
                            }
                        } else {
                            bitmap = null;
                        }
                        arrayList2.add(LegacyConversions.a((MediaItem) immutableList.get(i3), bitmap));
                        i3++;
                    }
                    settableFuture.set(arrayList2);
                    return;
                }
                return;
            case 2:
                MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub = (MediaLibraryServiceLegacyStub) this.f17641c;
                MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) this.d;
                Bundle bundle = (Bundle) this.f17642e;
                String str = (String) this.f17643f;
                MediaLibrarySessionImpl mediaLibrarySessionImpl = mediaLibraryServiceLegacyStub.m;
                if (mediaLibraryServiceLegacyStub.l.m(controllerInfo, 50001)) {
                    mediaLibrarySessionImpl.D(controllerInfo, str, LegacyConversions.h(mediaLibrarySessionImpl.f17430f, bundle));
                    return;
                }
                return;
            case 3:
                MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub2 = (MediaLibraryServiceLegacyStub) this.f17641c;
                String str2 = (String) this.d;
                MediaSession.ControllerInfo controllerInfo2 = (MediaSession.ControllerInfo) this.f17642e;
                MediaBrowserServiceCompat.Result result = (MediaBrowserServiceCompat.Result) this.f17643f;
                MediaLibrarySessionImpl mediaLibrarySessionImpl2 = mediaLibraryServiceLegacyStub2.m;
                if (!mediaLibraryServiceLegacyStub2.l.n(controllerInfo2, new SessionCommand(str2, Bundle.EMPTY))) {
                    result.e();
                    return;
                }
                MediaLibraryServiceLegacyStub.ProgressReporter progressReporter = new MediaLibraryServiceLegacyStub.ProgressReporter(mediaLibrarySessionImpl2, result);
                ListenableFuture listenableFutureO = mediaLibrarySessionImpl2.o(controllerInfo2);
                progressReporter.f17380a = listenableFutureO;
                listenableFutureO.addListener(new g0(listenableFutureO, result, 2), MoreExecutors.b());
                return;
            case 4:
                MediaLibrarySessionImpl mediaLibrarySessionImpl3 = (MediaLibrarySessionImpl) this.f17641c;
                ListenableFuture listenableFuture2 = (ListenableFuture) this.d;
                MediaSession.ControllerInfo controllerInfo3 = (MediaSession.ControllerInfo) this.f17642e;
                String str3 = (String) this.f17643f;
                LibraryResult libraryResult = (LibraryResult) MediaLibrarySessionImpl.F(listenableFuture2);
                if (libraryResult == null || libraryResult.f17308a != 0) {
                    mediaLibrarySessionImpl3.E(controllerInfo3, str3);
                    return;
                }
                return;
            case 5:
                MediaNotificationManager mediaNotificationManager = (MediaNotificationManager) this.f17641c;
                String str4 = (String) this.d;
                Bundle bundle2 = (Bundle) this.f17642e;
                MediaController mediaController = (MediaController) this.f17643f;
                mediaNotificationManager.f17391j.getClass();
                mediaNotificationManager.f17388f.execute(new t0(mediaNotificationManager, mediaController, str4, bundle2));
                return;
            case 6:
                MediaNotificationManager mediaNotificationManager2 = (MediaNotificationManager) this.f17641c;
                ListenableFuture listenableFuture3 = (ListenableFuture) this.d;
                MediaNotificationManager.MediaControllerListener mediaControllerListener = (MediaNotificationManager.MediaControllerListener) this.f17642e;
                MediaSession mediaSession = (MediaSession) this.f17643f;
                try {
                    MediaController mediaController2 = (MediaController) ((AbstractFuture) listenableFuture3).get(0L, TimeUnit.MILLISECONDS);
                    if (mediaNotificationManager2.d(mediaSession)) {
                        mediaControllerListener.f17397b.h(mediaControllerListener.f17398c, false);
                    }
                    mediaController2.Y(mediaControllerListener);
                    return;
                } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException unused) {
                    mediaNotificationManager2.f17385b.i(mediaSession);
                    return;
                }
            case 7:
                MediaSessionLegacyStub.ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = (MediaSessionLegacyStub.ControllerLegacyCbForBroadcast) this.f17641c;
                AtomicInteger atomicInteger2 = (AtomicInteger) this.d;
                ArrayList arrayList3 = (ArrayList) this.f17642e;
                ArrayList arrayList4 = (ArrayList) this.f17643f;
                if (atomicInteger2.incrementAndGet() == arrayList3.size()) {
                    ArrayList arrayList5 = new ArrayList();
                    while (i3 < arrayList4.size()) {
                        ListenableFuture listenableFuture4 = (ListenableFuture) arrayList4.get(i3);
                        if (listenableFuture4 != null) {
                            try {
                                bitmap2 = (Bitmap) Futures.d(listenableFuture4);
                            } catch (CancellationException | ExecutionException e3) {
                                Log.c("Failed to get bitmap", e3);
                                bitmap2 = null;
                            }
                        } else {
                            bitmap2 = null;
                        }
                        arrayList5.add(new MediaSessionCompat.QueueItem(LegacyConversions.i((MediaItem) arrayList3.get(i3), bitmap2), i3 == -1 ? -1L : i3));
                        i3++;
                        break;
                    }
                    MediaSessionLegacyStub.this.l.p(arrayList5);
                    return;
                }
                return;
            case 8:
                MediaSessionServiceLegacyStub mediaSessionServiceLegacyStub = (MediaSessionServiceLegacyStub) this.f17641c;
                AtomicReference atomicReference = (AtomicReference) this.d;
                MediaSession.ControllerInfo controllerInfo4 = (MediaSession.ControllerInfo) this.f17642e;
                ConditionVariable conditionVariable = (ConditionVariable) this.f17643f;
                atomicReference.set(mediaSessionServiceLegacyStub.f17477k.n(controllerInfo4));
                conditionVariable.d();
                return;
            case 9:
                MediaSessionStub mediaSessionStub = (MediaSessionStub) this.f17641c;
                MediaSession.ControllerInfo controllerInfo5 = (MediaSession.ControllerInfo) this.d;
                MediaSessionImpl mediaSessionImpl = (MediaSessionImpl) this.f17642e;
                IMediaController iMediaController2 = (IMediaController) this.f17643f;
                int i5 = MediaSessionStub.p;
                ConnectedControllersManager connectedControllersManager2 = mediaSessionStub.f17479j;
                try {
                    mediaSessionStub.f17480k.remove(controllerInfo5);
                    if (!mediaSessionImpl.k()) {
                        MediaSessionStub.Controller2Cb controller2Cb = (MediaSessionStub.Controller2Cb) controllerInfo5.d;
                        controller2Cb.getClass();
                        IBinder iBinderAsBinder = controller2Cb.f17481a.asBinder();
                        MediaSession.ConnectionResult connectionResultN = mediaSessionImpl.n(controllerInfo5);
                        if (connectedControllersManager2.k(controllerInfo5)) {
                            Log.g("Controller " + controllerInfo5 + " has sent connection request multiple times");
                        }
                        connectedControllersManager2.a(iBinderAsBinder, controllerInfo5, connectionResultN.f17413a, connectionResultN.f17414b);
                        SequencedFutureManager sequencedFutureManagerJ = connectedControllersManager2.j(controllerInfo5);
                        if (sequencedFutureManagerJ == null) {
                            Log.g("Ignoring connection request from unknown controller info");
                        } else {
                            PlayerWrapper playerWrapper = mediaSessionImpl.u;
                            PlayerInfo playerInfo = mediaSessionImpl.t;
                            Player.Commands commands = connectionResultN.f17414b;
                            PlayerInfo playerInfoN2 = mediaSessionStub.N2(playerInfo);
                            android.media.session.MediaSession.Token token = mediaSessionImpl.f17431h.l.c().f17819c;
                            try {
                                PendingIntent pendingIntent = mediaSessionImpl.v;
                                ImmutableList immutableList2 = connectionResultN.f17415c;
                                if (immutableList2 == null) {
                                    immutableList2 = mediaSessionImpl.C;
                                }
                                ImmutableList immutableList3 = connectionResultN.d;
                                if (immutableList3 == null) {
                                    immutableList3 = mediaSessionImpl.D;
                                }
                                try {
                                    iMediaController = iMediaController2;
                                    try {
                                        ConnectionState connectionState = new ConnectionState(1010001300, 9, mediaSessionStub, pendingIntent, immutableList2, immutableList3, mediaSessionImpl.s, connectionResultN.f17413a, commands, playerWrapper.i0(), mediaSessionImpl.f17433j.f17568a.getExtras(), mediaSessionImpl.E, playerInfoN2, token);
                                        if (!mediaSessionImpl.k()) {
                                            try {
                                                int iB = sequencedFutureManagerJ.b();
                                                if (iMediaController instanceof MediaControllerStub) {
                                                    bundleB = new Bundle();
                                                    bundleB.putBinder(ConnectionState.B, connectionState.new InProcessBinder());
                                                } else {
                                                    bundleB = connectionState.b(controllerInfo5.f17421c);
                                                }
                                                iMediaController.E(iB, bundleB);
                                                i2 = 1;
                                            } catch (RemoteException unused2) {
                                                i2 = 0;
                                            }
                                            if (i2 != 0) {
                                                try {
                                                    if (!mediaSessionImpl.B || !MediaSessionImpl.l(controllerInfo5)) {
                                                        mediaSessionImpl.f17429e.getClass();
                                                        break;
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    i3 = i2;
                                                    if (i3 == 0) {
                                                        SessionUtil.b(iMediaController);
                                                    }
                                                    throw th;
                                                }
                                            }
                                            if (i2 != 0) {
                                                return;
                                            }
                                        }
                                        SessionUtil.b(iMediaController);
                                        return;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    iMediaController = iMediaController2;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                iMediaController = iMediaController2;
                            }
                        }
                        break;
                    }
                    SessionUtil.b(iMediaController2);
                    return;
                } catch (Throwable th6) {
                    th = th6;
                    iMediaController = iMediaController2;
                }
                break;
            case 10:
                MediaSessionImpl mediaSessionImpl2 = (MediaSessionImpl) this.f17641c;
                SettableFuture settableFuture2 = (SettableFuture) this.d;
                Consumer consumer = (Consumer) this.f17642e;
                ListenableFuture listenableFuture5 = (ListenableFuture) this.f17643f;
                int i6 = MediaSessionStub.p;
                if (mediaSessionImpl2.k()) {
                    settableFuture2.set(null);
                    return;
                }
                try {
                    consumer.accept(listenableFuture5);
                    settableFuture2.set(null);
                    return;
                } catch (Throwable th7) {
                    settableFuture2.setException(th7);
                    return;
                }
            default:
                MediaSessionImpl mediaSessionImpl3 = (MediaSessionImpl) this.f17641c;
                MediaSessionStub.MediaItemPlayerTask mediaItemPlayerTask = (MediaSessionStub.MediaItemPlayerTask) this.d;
                MediaSession.ControllerInfo controllerInfo6 = (MediaSession.ControllerInfo) this.f17642e;
                List list = (List) this.f17643f;
                int i7 = MediaSessionStub.p;
                if (mediaSessionImpl3.k()) {
                    return;
                }
                mediaItemPlayerTask.e(mediaSessionImpl3.u, controllerInfo6, list);
                return;
        }
    }

    public /* synthetic */ e(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, MediaSession.ControllerInfo controllerInfo, MediaBrowserServiceCompat.Result result, Bundle bundle, String str) {
        this.f17640b = 3;
        this.f17641c = mediaLibraryServiceLegacyStub;
        this.d = str;
        this.f17642e = controllerInfo;
        this.f17643f = result;
    }

    public /* synthetic */ e(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, AtomicInteger atomicInteger, ImmutableList immutableList, ArrayList arrayList, SettableFuture settableFuture) {
        this.f17640b = 1;
        this.f17641c = atomicInteger;
        this.d = immutableList;
        this.f17642e = arrayList;
        this.f17643f = settableFuture;
    }

    public /* synthetic */ e(MediaNotificationManager mediaNotificationManager, MediaSession mediaSession, String str, Bundle bundle, MediaController mediaController) {
        this.f17640b = 5;
        this.f17641c = mediaNotificationManager;
        this.d = str;
        this.f17642e = bundle;
        this.f17643f = mediaController;
    }

    public /* synthetic */ e(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f17640b = i2;
        this.f17641c = obj;
        this.d = obj2;
        this.f17642e = obj3;
        this.f17643f = obj4;
    }
}

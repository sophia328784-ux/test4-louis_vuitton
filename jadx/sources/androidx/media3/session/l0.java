package androidx.media3.session;

import android.graphics.Bitmap;
import android.os.RemoteException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Log;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17694b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17695c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f17696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f17697f;
    public final /* synthetic */ Object g;

    public /* synthetic */ l0(MediaControllerImplLegacy mediaControllerImplLegacy, AtomicInteger atomicInteger, List list, ArrayList arrayList, int i2) {
        this.d = mediaControllerImplLegacy;
        this.f17696e = atomicInteger;
        this.f17697f = list;
        this.g = arrayList;
        this.f17695c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap;
        int i2 = this.f17694b;
        Object obj = this.g;
        Object obj2 = this.f17697f;
        int i3 = this.f17695c;
        Object obj3 = this.f17696e;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                MediaControllerImplLegacy mediaControllerImplLegacy = (MediaControllerImplLegacy) obj4;
                List list = (List) obj2;
                ArrayList arrayList = (ArrayList) obj;
                if (((AtomicInteger) obj3).incrementAndGet() == list.size() && !mediaControllerImplLegacy.f17351k && (mediaControllerImplLegacy.f17349i.e() & 4) != 0) {
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        ListenableFuture listenableFuture = (ListenableFuture) arrayList.get(i4);
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
                        mediaControllerImplLegacy.f17349i.a(LegacyConversions.i((MediaItem) list.get(i4), bitmap), i3 + i4);
                    }
                    break;
                }
                break;
            default:
                MediaSessionLegacyStub mediaSessionLegacyStub = (MediaSessionLegacyStub) obj4;
                SessionCommand sessionCommand = (SessionCommand) obj3;
                MediaSessionManager.RemoteUserInfo remoteUserInfo = (MediaSessionManager.RemoteUserInfo) obj2;
                MediaSessionLegacyStub.SessionTask sessionTask = (MediaSessionLegacyStub.SessionTask) obj;
                if (!mediaSessionLegacyStub.f17441f.k()) {
                    if (!mediaSessionLegacyStub.l.d()) {
                        StringBuilder sb = new StringBuilder("Ignore incoming session command before initialization. command=");
                        sb.append(sessionCommand == null ? Integer.valueOf(i3) : sessionCommand.f17540b);
                        sb.append(", pid=");
                        sb.append(remoteUserInfo.b());
                        Log.g(sb.toString());
                    } else {
                        MediaSession.ControllerInfo controllerInfoH = mediaSessionLegacyStub.H(remoteUserInfo);
                        ConnectedControllersManager connectedControllersManager = mediaSessionLegacyStub.f17440e;
                        if (sessionCommand != null) {
                            if (!connectedControllersManager.n(controllerInfoH, sessionCommand)) {
                            }
                        } else if (!connectedControllersManager.m(controllerInfoH, i3)) {
                        }
                        try {
                            sessionTask.b(controllerInfoH);
                        } catch (RemoteException e3) {
                            Log.h("Exception in " + controllerInfoH, e3);
                        }
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ l0(MediaSessionLegacyStub mediaSessionLegacyStub, SessionCommand sessionCommand, int i2, MediaSessionManager.RemoteUserInfo remoteUserInfo, MediaSessionLegacyStub.SessionTask sessionTask) {
        this.d = mediaSessionLegacyStub;
        this.f17696e = sessionCommand;
        this.f17695c = i2;
        this.f17697f = remoteUserInfo;
        this.g = sessionTask;
    }
}

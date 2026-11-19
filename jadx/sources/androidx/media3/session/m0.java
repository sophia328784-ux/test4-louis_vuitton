package androidx.media3.session;

import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m0 implements MediaControllerStub.ControllerTask, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17867c;
    public final /* synthetic */ Object d;

    public /* synthetic */ m0(int i2, SessionCommand sessionCommand, Bundle bundle) {
        this.f17866b = 2;
        this.f17867c = i2;
        this.d = sessionCommand;
    }

    @Override // androidx.media3.session.MediaControllerStub.ControllerTask
    public void a(final MediaControllerImplBase mediaControllerImplBase) {
        int i2 = this.f17866b;
        Object obj = this.d;
        final int i3 = this.f17867c;
        switch (i2) {
            case 0:
                ImmutableList immutableList = (ImmutableList) obj;
                int i4 = MediaControllerStub.f17365j;
                if (mediaControllerImplBase.isConnected()) {
                    ImmutableList immutableList2 = mediaControllerImplBase.v;
                    ImmutableList immutableList3 = mediaControllerImplBase.w;
                    mediaControllerImplBase.u = ImmutableList.t(immutableList);
                    ImmutableList immutableListR1 = MediaControllerImplBase.r1(immutableList, mediaControllerImplBase.t, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.K);
                    mediaControllerImplBase.v = immutableListR1;
                    mediaControllerImplBase.w = MediaControllerImplBase.q1(immutableListR1, mediaControllerImplBase.t, mediaControllerImplBase.K, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.d1());
                    boolean zEquals = mediaControllerImplBase.v.equals(immutableList2);
                    mediaControllerImplBase.w.equals(immutableList3);
                    MediaController mediaController = mediaControllerImplBase.f17327a;
                    mediaController.getClass();
                    Preconditions.q(Looper.myLooper() == mediaController.f17316e.getLooper());
                    MediaController.Listener listener = mediaController.d;
                    listener.getClass();
                    final ListenableFuture listenableFutureZ = MediaController.Listener.z();
                    if (!zEquals) {
                        listener.x();
                    }
                    listenableFutureZ.addListener(new Runnable() { // from class: androidx.media3.session.k
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            SessionResult sessionResult;
                            ListenableFuture listenableFuture = listenableFutureZ;
                            int i5 = i3;
                            try {
                                sessionResult = (SessionResult) listenableFuture.get();
                                Preconditions.m(sessionResult, "SessionResult must not be null");
                            } catch (InterruptedException | ExecutionException e2) {
                                Log.h("Session operation failed", e2);
                                sessionResult = new SessionResult(-1);
                            } catch (CancellationException e3) {
                                Log.h("Session operation cancelled", e3);
                                sessionResult = new SessionResult(1);
                            }
                            MediaControllerImplBase mediaControllerImplBase2 = mediaControllerImplBase;
                            IMediaSession iMediaSession = mediaControllerImplBase2.F;
                            if (iMediaSession == null) {
                                return;
                            }
                            try {
                                iMediaSession.G0(mediaControllerImplBase2.f17329c, i5, sessionResult.b());
                            } catch (RemoteException unused) {
                                Log.g("Error in sending");
                            }
                        }
                    }, MoreExecutors.b());
                    break;
                }
                break;
            case 1:
                List list = (List) obj;
                int i5 = MediaControllerStub.f17365j;
                if (mediaControllerImplBase.isConnected()) {
                    ImmutableList immutableList4 = mediaControllerImplBase.v;
                    ImmutableList immutableList5 = mediaControllerImplBase.w;
                    mediaControllerImplBase.t = ImmutableList.t(list);
                    ImmutableList immutableListR2 = MediaControllerImplBase.r1(mediaControllerImplBase.u, list, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.K);
                    mediaControllerImplBase.v = immutableListR2;
                    mediaControllerImplBase.w = MediaControllerImplBase.q1(immutableListR2, list, mediaControllerImplBase.K, mediaControllerImplBase.x, mediaControllerImplBase.A, mediaControllerImplBase.d1());
                    boolean zEquals2 = mediaControllerImplBase.v.equals(immutableList4);
                    mediaControllerImplBase.w.equals(immutableList5);
                    MediaController mediaController2 = mediaControllerImplBase.f17327a;
                    mediaController2.getClass();
                    Preconditions.q(Looper.myLooper() == mediaController2.f17316e.getLooper());
                    MediaController.Listener listener2 = mediaController2.d;
                    listener2.getClass();
                    final ListenableFuture listenableFutureZ2 = MediaController.Listener.z();
                    if (!zEquals2) {
                        listener2.x();
                    }
                    listenableFutureZ2.addListener(new Runnable() { // from class: androidx.media3.session.k
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            SessionResult sessionResult;
                            ListenableFuture listenableFuture = listenableFutureZ2;
                            int i6 = i3;
                            try {
                                sessionResult = (SessionResult) listenableFuture.get();
                                Preconditions.m(sessionResult, "SessionResult must not be null");
                            } catch (InterruptedException | ExecutionException e2) {
                                Log.h("Session operation failed", e2);
                                sessionResult = new SessionResult(-1);
                            } catch (CancellationException e3) {
                                Log.h("Session operation cancelled", e3);
                                sessionResult = new SessionResult(1);
                            }
                            MediaControllerImplBase mediaControllerImplBase2 = mediaControllerImplBase;
                            IMediaSession iMediaSession = mediaControllerImplBase2.F;
                            if (iMediaSession == null) {
                                return;
                            }
                            try {
                                iMediaSession.G0(mediaControllerImplBase2.f17329c, i6, sessionResult.b());
                            } catch (RemoteException unused) {
                                Log.g("Error in sending");
                            }
                        }
                    }, MoreExecutors.b());
                    break;
                }
                break;
            default:
                SessionCommand sessionCommand = (SessionCommand) obj;
                int i6 = MediaControllerStub.f17365j;
                MediaController mediaController3 = mediaControllerImplBase.f17327a;
                if (mediaControllerImplBase.isConnected()) {
                    mediaController3.getClass();
                    Preconditions.q(Looper.myLooper() == mediaController3.f17316e.getLooper());
                    final ListenableFuture listenableFutureV = mediaController3.d.V(sessionCommand);
                    listenableFutureV.addListener(new Runnable() { // from class: androidx.media3.session.k
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            SessionResult sessionResult;
                            ListenableFuture listenableFuture = listenableFutureV;
                            int i7 = i3;
                            try {
                                sessionResult = (SessionResult) listenableFuture.get();
                                Preconditions.m(sessionResult, "SessionResult must not be null");
                            } catch (InterruptedException | ExecutionException e2) {
                                Log.h("Session operation failed", e2);
                                sessionResult = new SessionResult(-1);
                            } catch (CancellationException e3) {
                                Log.h("Session operation cancelled", e3);
                                sessionResult = new SessionResult(1);
                            }
                            MediaControllerImplBase mediaControllerImplBase2 = mediaControllerImplBase;
                            IMediaSession iMediaSession = mediaControllerImplBase2.F;
                            if (iMediaSession == null) {
                                return;
                            }
                            try {
                                iMediaSession.G0(mediaControllerImplBase2.f17329c, i7, sessionResult.b());
                            } catch (RemoteException unused) {
                                Log.g("Error in sending");
                            }
                        }
                    }, MoreExecutors.b());
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        LibraryResult libraryResultB;
        MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) this.d;
        int i2 = this.f17867c;
        ListenableFuture listenableFuture = (ListenableFuture) obj;
        int i3 = MediaSessionStub.p;
        try {
            libraryResultB = (LibraryResult) listenableFuture.get();
            Preconditions.m(libraryResultB, "LibraryResult must not be null");
        } catch (InterruptedException | ExecutionException e2) {
            Log.h("Library operation failed", e2);
            libraryResultB = LibraryResult.b(-1);
        } catch (CancellationException e3) {
            Log.h("Library operation cancelled", e3);
            libraryResultB = LibraryResult.b(1);
        }
        try {
            MediaSession.ControllerCb controllerCb = controllerInfo.d;
            controllerCb.getClass();
            controllerCb.d(i2, libraryResultB);
        } catch (RemoteException e4) {
            Log.h("Failed to send result to browser " + controllerInfo, e4);
        }
    }

    public /* synthetic */ m0(int i2, List list, int i3) {
        this.f17866b = i3;
        this.f17867c = i2;
        this.d = list;
    }

    public /* synthetic */ m0(MediaSession.ControllerInfo controllerInfo, int i2) {
        this.f17866b = 3;
        this.d = controllerInfo;
        this.f17867c = i2;
    }
}

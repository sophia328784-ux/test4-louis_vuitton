package androidx.media3.session;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaLibrarySessionImpl f17933c;
    public final /* synthetic */ ListenableFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSession.ControllerInfo f17934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f17935f;

    public /* synthetic */ w0(MediaLibrarySessionImpl mediaLibrarySessionImpl, ListenableFuture listenableFuture, MediaSession.ControllerInfo controllerInfo, int i2, int i3) {
        this.f17932b = i3;
        this.f17933c = mediaLibrarySessionImpl;
        this.d = listenableFuture;
        this.f17934e = controllerInfo;
        this.f17935f = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17932b;
        int i3 = this.f17935f;
        MediaSession.ControllerInfo controllerInfo = this.f17934e;
        ListenableFuture listenableFuture = this.d;
        MediaLibrarySessionImpl mediaLibrarySessionImpl = this.f17933c;
        switch (i2) {
            case 0:
                int i4 = MediaLibrarySessionImpl.L;
                mediaLibrarySessionImpl.getClass();
                LibraryResult libraryResult = (LibraryResult) MediaLibrarySessionImpl.F(listenableFuture);
                if (libraryResult != null) {
                    mediaLibrarySessionImpl.A(controllerInfo, libraryResult);
                    MediaLibrarySessionImpl.G(i3, libraryResult);
                }
                break;
            default:
                int i5 = MediaLibrarySessionImpl.L;
                mediaLibrarySessionImpl.getClass();
                LibraryResult libraryResult2 = (LibraryResult) MediaLibrarySessionImpl.F(listenableFuture);
                if (libraryResult2 != null) {
                    mediaLibrarySessionImpl.A(controllerInfo, libraryResult2);
                    MediaLibrarySessionImpl.G(i3, libraryResult2);
                }
                break;
        }
    }
}

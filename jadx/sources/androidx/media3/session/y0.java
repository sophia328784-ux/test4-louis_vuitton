package androidx.media3.session;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaLibrarySessionImpl f17946c;
    public final /* synthetic */ ListenableFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSession.ControllerInfo f17947e;

    public /* synthetic */ y0(MediaLibrarySessionImpl mediaLibrarySessionImpl, ListenableFuture listenableFuture, MediaSession.ControllerInfo controllerInfo, int i2) {
        this.f17945b = i2;
        this.f17946c = mediaLibrarySessionImpl;
        this.d = listenableFuture;
        this.f17947e = controllerInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17945b;
        MediaSession.ControllerInfo controllerInfo = this.f17947e;
        ListenableFuture listenableFuture = this.d;
        MediaLibrarySessionImpl mediaLibrarySessionImpl = this.f17946c;
        switch (i2) {
            case 0:
                int i3 = MediaLibrarySessionImpl.L;
                mediaLibrarySessionImpl.getClass();
                LibraryResult libraryResult = (LibraryResult) MediaLibrarySessionImpl.F(listenableFuture);
                if (libraryResult != null) {
                    mediaLibrarySessionImpl.A(controllerInfo, libraryResult);
                }
                break;
            default:
                int i4 = MediaLibrarySessionImpl.L;
                mediaLibrarySessionImpl.getClass();
                LibraryResult libraryResult2 = (LibraryResult) MediaLibrarySessionImpl.F(listenableFuture);
                if (libraryResult2 != null) {
                    mediaLibrarySessionImpl.A(controllerInfo, libraryResult2);
                }
                break;
        }
    }
}

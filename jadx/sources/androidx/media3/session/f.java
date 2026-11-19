package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerHolder f17653c;
    public final /* synthetic */ MediaController d;

    public /* synthetic */ f(MediaControllerHolder mediaControllerHolder, MediaController mediaController, int i2) {
        this.f17652b = i2;
        this.f17653c = mediaControllerHolder;
        this.d = mediaController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17652b;
        MediaController mediaController = this.d;
        MediaControllerHolder mediaControllerHolder = this.f17653c;
        switch (i2) {
            case 0:
                mediaControllerHolder.f17326c = mediaController;
                if (mediaControllerHolder.d) {
                    mediaControllerHolder.set(mediaController);
                }
                mediaControllerHolder.addListener(new f(mediaControllerHolder, mediaController, 1), new g(mediaControllerHolder, 0));
                break;
            default:
                int i3 = MediaControllerHolder.f17324e;
                if (mediaControllerHolder.isCancelled()) {
                    mediaController.release();
                }
                break;
        }
    }
}

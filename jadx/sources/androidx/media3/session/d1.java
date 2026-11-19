package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSessionImpl f17635c;

    public /* synthetic */ d1(MediaSessionImpl mediaSessionImpl, int i2) {
        this.f17634b = i2;
        this.f17635c = mediaSessionImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17634b;
        MediaSessionImpl mediaSessionImpl = this.f17635c;
        switch (i2) {
            case 0:
                MediaSessionImpl.PlayerListener playerListener = mediaSessionImpl.w;
                if (playerListener != null) {
                    mediaSessionImpl.u.V(playerListener);
                }
                break;
            case 1:
                MediaSessionService.MediaSessionListener mediaSessionListener = mediaSessionImpl.x;
                if (mediaSessionListener != null) {
                    MediaSessionService.this.h(mediaSessionImpl.f17434k, false);
                }
                break;
            case 2:
                MediaSessionImpl.a(mediaSessionImpl);
                break;
            default:
                SessionResult sessionResult = MediaSessionImpl.F;
                mediaSessionImpl.w();
                break;
        }
    }
}

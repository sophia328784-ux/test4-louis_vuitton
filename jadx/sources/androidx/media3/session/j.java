package androidx.media3.session;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17681c;

    public /* synthetic */ j(Object obj, int i2) {
        this.f17680b = i2;
        this.f17681c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17680b;
        Object obj = this.f17681c;
        switch (i2) {
            case 0:
                MediaControllerImplBase mediaControllerImplBase = (MediaControllerImplBase) obj;
                MediaControllerImplBase.SessionServiceConnection sessionServiceConnection = mediaControllerImplBase.p;
                if (sessionServiceConnection != null) {
                    mediaControllerImplBase.d.unbindService(sessionServiceConnection);
                    mediaControllerImplBase.p = null;
                }
                mediaControllerImplBase.f17329c.f17366a.clear();
                break;
            case 1:
                MediaControllerImplBase mediaControllerImplBase2 = (MediaControllerImplBase) obj;
                PlayerInfo playerInfo = mediaControllerImplBase2.J;
                if (playerInfo != null) {
                    mediaControllerImplBase2.l1(playerInfo, PlayerInfo.BundlingExclusions.f17513c);
                }
                break;
            default:
                ((SequencedFutureManager) obj).c();
                break;
        }
    }
}

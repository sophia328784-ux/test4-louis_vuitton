package androidx.media3.exoplayer.drm;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15110c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f15109b = i2;
        this.f15110c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15109b;
        Object obj = this.f15110c;
        switch (i2) {
            case 0:
                DefaultDrmSessionManager.PreacquiredSessionReference preacquiredSessionReference = (DefaultDrmSessionManager.PreacquiredSessionReference) obj;
                if (!preacquiredSessionReference.d) {
                    DrmSession drmSession = preacquiredSessionReference.f15070c;
                    if (drmSession != null) {
                        drmSession.f(preacquiredSessionReference.f15069b);
                    }
                    DefaultDrmSessionManager.this.n.remove(preacquiredSessionReference);
                    preacquiredSessionReference.d = true;
                    break;
                }
                break;
            default:
                ((DefaultDrmSession) obj).f(null);
                break;
        }
    }
}

package androidx.media3.common.util;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NetworkTypeObserver.ListenerHolder f14266b;

    @Override // java.lang.Runnable
    public final void run() {
        NetworkTypeObserver.ListenerHolder listenerHolder = this.f14266b;
        NetworkTypeObserver.Listener listener = (NetworkTypeObserver.Listener) listenerHolder.f14185a.get();
        if (listener != null) {
            listener.a(listenerHolder.f14187c.b());
        }
    }
}

package defpackage;

import androidx.camera.core.impl.LiveDataObservable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z90 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LiveDataObservable f81580c;

    public /* synthetic */ z90(LiveDataObservable liveDataObservable, int i2) {
        this.f81579b = i2;
        this.f81580c = liveDataObservable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81579b;
        LiveDataObservable liveDataObservable = this.f81580c;
        switch (i2) {
            case 0:
                zi ziVar = liveDataObservable.f2310c;
                if (ziVar != null) {
                    liveDataObservable.f2308a.removeObserver(ziVar);
                }
                break;
            default:
                if (liveDataObservable.f2310c == null) {
                    liveDataObservable.f2310c = new zi(liveDataObservable, 3);
                }
                liveDataObservable.f2308a.observeForever(liveDataObservable.f2310c);
                break;
        }
    }
}

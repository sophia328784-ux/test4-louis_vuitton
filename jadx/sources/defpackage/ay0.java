package defpackage;

import com.perfectcorp.perfectlib.SkuHandler;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ay0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuHandler.DownloadSkuSetsCallback f20661c;
    public final /* synthetic */ AtomicInteger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f20662e;

    public /* synthetic */ ay0(SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback, AtomicInteger atomicInteger, int i2, int i3) {
        this.f20660b = i3;
        this.f20661c = downloadSkuSetsCallback;
        this.d = atomicInteger;
        this.f20662e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f20660b;
        int i3 = this.f20662e;
        AtomicInteger atomicInteger = this.d;
        SkuHandler.DownloadSkuSetsCallback downloadSkuSetsCallback = this.f20661c;
        switch (i2) {
            case 0:
                downloadSkuSetsCallback.progress(((double) atomicInteger.incrementAndGet()) / ((double) i3));
                break;
            case 1:
                downloadSkuSetsCallback.progress(((double) atomicInteger.incrementAndGet()) / ((double) i3));
                break;
            default:
                downloadSkuSetsCallback.progress(((double) atomicInteger.incrementAndGet()) / ((double) i3));
                break;
        }
    }
}

package defpackage;

import com.perfectcorp.common.network.ProgressCallback;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rx0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProgressCallback f79639c;
    public final /* synthetic */ AtomicInteger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f79640e;

    public /* synthetic */ rx0(ProgressCallback progressCallback, AtomicInteger atomicInteger, int i2, int i3) {
        this.f79638b = i3;
        this.f79639c = progressCallback;
        this.d = atomicInteger;
        this.f79640e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79638b;
        int i3 = this.f79640e;
        AtomicInteger atomicInteger = this.d;
        ProgressCallback progressCallback = this.f79639c;
        switch (i2) {
            case 0:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 1:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 2:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 3:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 4:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 5:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 6:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 7:
                progressCallback.a(((double) atomicInteger.get()) / ((double) i3));
                break;
            case 8:
                progressCallback.a(((((double) atomicInteger.incrementAndGet()) * 0.59d) / ((double) i3)) + 0.2d);
                break;
            default:
                progressCallback.a(((((double) atomicInteger.incrementAndGet()) * 0.59d) / ((double) i3)) + 0.2d);
                break;
        }
    }
}

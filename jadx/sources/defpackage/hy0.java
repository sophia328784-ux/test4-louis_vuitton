package defpackage;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.r;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hy0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f69812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f69813c;
    public final /* synthetic */ int d;

    public /* synthetic */ hy0(ProgressCallback progressCallback, AtomicInteger atomicInteger, int i2) {
        this.f69811a = 1;
        this.f69812b = progressCallback;
        this.f69813c = atomicInteger;
        this.d = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f69811a;
        Object obj2 = this.f69812b;
        int i3 = this.d;
        AtomicInteger atomicInteger = this.f69813c;
        switch (i2) {
            case 0:
                final ProgressCallback progressCallback = (ProgressCallback) obj2;
                final double dIncrementAndGet = ((((double) atomicInteger.incrementAndGet()) * 0.7d) / ((double) i3)) + 0.2d;
                PfCommons.c(new Runnable() { // from class: ly0
                    @Override // java.lang.Runnable
                    public final void run() {
                        progressCallback.a(dIncrementAndGet);
                    }
                });
                break;
            case 1:
                PfCommons.c(new rx0((ProgressCallback) obj2, atomicInteger, i3, 9));
                break;
            default:
                PfCommons.c(new r(atomicInteger, i3, (RecommendationHandler.SyncServerCallback) obj2));
                break;
        }
    }

    public /* synthetic */ hy0(AtomicInteger atomicInteger, int i2, Object obj, int i3) {
        this.f69811a = i3;
        this.f69813c = atomicInteger;
        this.d = i2;
        this.f69812b = obj;
    }
}

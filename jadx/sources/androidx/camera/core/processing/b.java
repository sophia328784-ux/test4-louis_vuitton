package androidx.camera.core.processing;

import androidx.camera.core.SurfaceOutput;
import androidx.core.util.Consumer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2575c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(Object obj, Object obj2, int i2) {
        this.f2574b = i2;
        this.f2575c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f2574b;
        Object obj = this.d;
        Object obj2 = this.f2575c;
        switch (i2) {
            case 0:
                ((DefaultSurfaceProcessor) obj2).l.add((AutoValue_DefaultSurfaceProcessor_PendingSnapshot) obj);
                break;
            default:
                ((Consumer) ((AtomicReference) obj).get()).accept(SurfaceOutput.Event.a((SurfaceOutputImpl) obj2));
                break;
        }
    }
}

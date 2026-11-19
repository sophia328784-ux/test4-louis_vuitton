package defpackage;

import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kt implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeferrableSurface f75867c;

    public /* synthetic */ kt(String str, DeferrableSurface deferrableSurface) {
        this.f75866b = 0;
        this.f75867c = deferrableSurface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f75866b;
        DeferrableSurface deferrableSurface = this.f75867c;
        switch (i2) {
            case 0:
                Size size = DeferrableSurface.f2286k;
                try {
                    deferrableSurface.f2290e.get();
                    DeferrableSurface.n.decrementAndGet();
                    DeferrableSurface.m.get();
                    deferrableSurface.e();
                    return;
                } catch (Exception e2) {
                    deferrableSurface.toString();
                    Logger.a("DeferrableSurface");
                    synchronized (deferrableSurface.f2287a) {
                        throw new IllegalArgumentException(String.format("DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception.", deferrableSurface, Boolean.valueOf(deferrableSurface.f2289c), Integer.valueOf(deferrableSurface.f2288b)), e2);
                    }
                }
            case 1:
                deferrableSurface.a();
                return;
            default:
                deferrableSurface.b();
                return;
        }
    }

    public /* synthetic */ kt(DeferrableSurface deferrableSurface, int i2) {
        this.f75866b = i2;
        this.f75867c = deferrableSurface;
    }
}

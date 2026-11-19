package androidx.camera.core.processing;

import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2602c;

    public /* synthetic */ e(Object obj, int i2) {
        this.f2601b = i2;
        this.f2602c = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f2601b;
        Object obj = this.f2602c;
        switch (i2) {
            case 0:
                SurfaceEdge.SettableSurface settableSurface = (SurfaceEdge.SettableSurface) obj;
                settableSurface.p = completer;
                return "SettableFuture hashCode: " + settableSurface.hashCode();
            default:
                ((SurfaceOutputImpl) obj).m = completer;
                return "SurfaceOutputImpl close future complete";
        }
    }
}

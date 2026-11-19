package defpackage;

import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q00 implements CallbackToFutureAdapter.Resolver, AsyncFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f78970c;

    public /* synthetic */ q00(ListenableFuture listenableFuture, int i2) {
        this.f78969b = i2;
        this.f78970c = listenableFuture;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        int i2 = this.f78969b;
        ListenableFuture listenableFuture = this.f78970c;
        switch (i2) {
            case 2:
                return ((CameraCapturePipeline) listenableFuture.get()).a();
            default:
                return ((CameraCapturePipeline) listenableFuture.get()).b();
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f78969b;
        ListenableFuture listenableFuture = this.f78970c;
        switch (i2) {
            case 0:
                Futures.j(false, listenableFuture, completer, CameraXExecutors.a());
                return "nonCancellationPropagating[" + listenableFuture + "]";
            default:
                listenableFuture.addListener(new zs(completer, 1), CameraXExecutors.a());
                return "transformVoidFuture [" + listenableFuture + "]";
        }
    }
}

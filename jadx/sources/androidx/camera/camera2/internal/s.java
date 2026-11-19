package androidx.camera.camera2.internal;

import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.r00;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements CallbackToFutureAdapter.Resolver, AsyncFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CapturePipeline.TorchTask f1835c;

    public /* synthetic */ s(Camera2CapturePipeline.TorchTask torchTask, int i2) {
        this.f1834b = i2;
        this.f1835c = torchTask;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        int i2 = this.f1834b;
        Camera2CapturePipeline.TorchTask torchTask = this.f1835c;
        switch (i2) {
            case 1:
                if (!torchTask.f1515f) {
                    return Futures.g(null);
                }
                FocusMeteringControl focusMeteringControl = torchTask.f1511a.f1420h;
                focusMeteringControl.getClass();
                return CallbackToFutureAdapter.a(new n(focusMeteringControl, 5));
            default:
                ScheduledExecutorService scheduledExecutorService = torchTask.f1514e;
                Camera2CameraControlImpl camera2CameraControlImpl = torchTask.f1511a;
                Camera2CapturePipeline.ResultListener resultListener = new Camera2CapturePipeline.ResultListener(new q(2));
                camera2CameraControlImpl.n(resultListener);
                d dVar = new d(camera2CameraControlImpl, resultListener, 3);
                Executor executor = camera2CameraControlImpl.f1417c;
                ListenableFuture listenableFuture = resultListener.f1505b;
                listenableFuture.addListener(dVar, executor);
                return CallbackToFutureAdapter.a(new r00(listenableFuture, scheduledExecutorService, 2000L, 1));
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        this.f1835c.f1511a.f1422j.a(completer, 2);
        return "TorchOn";
    }
}

package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.compat.quirk.TorchFlashRequiredFor3aUpdateQuirk;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.r00;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements AsyncFunction, CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Camera2CapturePipeline.ScreenFlashTask f1833c;

    public /* synthetic */ r(Camera2CapturePipeline.ScreenFlashTask screenFlashTask, int i2) {
        this.f1832b = i2;
        this.f1833c = screenFlashTask;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        int i2 = this.f1832b;
        int i3 = 5;
        int i4 = 1;
        Camera2CapturePipeline.ScreenFlashTask screenFlashTask = this.f1833c;
        switch (i2) {
            case 0:
                FocusMeteringControl focusMeteringControl = screenFlashTask.f1507a.f1420h;
                return Camera2CameraControlImpl.r(focusMeteringControl.f1580a.f1418e, 5) != 5 ? Futures.g(null) : CallbackToFutureAdapter.a(new w(focusMeteringControl, true));
            case 1:
                return CallbackToFutureAdapter.a(new r(screenFlashTask, 4));
            case 2:
                FocusMeteringControl focusMeteringControl2 = screenFlashTask.f1507a.f1420h;
                focusMeteringControl2.getClass();
                return CallbackToFutureAdapter.a(new n(focusMeteringControl2, i3));
            default:
                ScheduledExecutorService scheduledExecutorService = screenFlashTask.f1509c;
                Camera2CameraControlImpl camera2CameraControlImpl = screenFlashTask.f1507a;
                Camera2CapturePipeline.ResultListener resultListener = new Camera2CapturePipeline.ResultListener(new q(i4));
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
        Camera2CapturePipeline.ScreenFlashTask screenFlashTask = this.f1833c;
        TorchFlashRequiredFor3aUpdateQuirk torchFlashRequiredFor3aUpdateQuirk = screenFlashTask.f1510e.f1789a;
        boolean z = (torchFlashRequiredFor3aUpdateQuirk == null || Camera2CameraControlImpl.r(torchFlashRequiredFor3aUpdateQuirk.f1757a, 5) == 5) ? false : true;
        Logger.c(3, "UseFlashModeTorchFor3aUpdate");
        if (!z) {
            completer.b(null);
            return "EnableTorchInternal";
        }
        Logger.c(3, "Camera2CapturePipeline");
        screenFlashTask.f1507a.p(2);
        completer.b(null);
        return "EnableTorchInternal";
    }
}

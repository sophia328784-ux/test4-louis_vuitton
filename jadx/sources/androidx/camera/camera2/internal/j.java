package androidx.camera.camera2.internal;

import androidx.camera.core.Logger;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.r00;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j implements AsyncFunction, CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1818c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j(Object obj, Object obj2, int i2) {
        this.f1817b = i2;
        this.f1818c = obj;
        this.d = obj2;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public ListenableFuture apply(Object obj) {
        int i2 = this.f1817b;
        Object obj2 = this.d;
        Object obj3 = this.f1818c;
        switch (i2) {
            case 0:
                CaptureSession captureSession = (CaptureSession) obj3;
                captureSession.close();
                ((ImmediateSurface) obj2).a();
                return captureSession.release();
            case 1:
            default:
                ArrayList arrayList = (ArrayList) obj2;
                List list = (List) obj;
                ((SynchronizedCaptureSessionBaseImpl) obj3).toString();
                Objects.toString(list);
                Logger.c(3, "SyncCaptureSessionBase");
                if (list.isEmpty()) {
                    return Futures.e(new IllegalArgumentException("Unable to open capture session without surfaces"));
                }
                return list.contains(null) ? Futures.e(new DeferrableSurface.SurfaceClosedException("Surface closed", (DeferrableSurface) arrayList.get(list.indexOf(null)))) : Futures.g(list);
            case 2:
                return CallbackToFutureAdapter.a(new r00((ListenableFuture) obj2, ((Camera2CapturePipeline.ScreenFlashTask) obj3).f1509c, HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD, 1));
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f1817b;
        Object obj = this.d;
        Object obj2 = this.f1818c;
        switch (i2) {
            case 1:
                CameraXExecutors.c().execute(new b((Camera2CapturePipeline.ScreenFlashTask) obj2, (AtomicReference) obj, completer, 1));
                return "OnScreenFlashStart";
            default:
                ZoomControl zoomControl = (ZoomControl) obj2;
                zoomControl.f1658b.execute(new b(zoomControl, completer, (ZoomState) obj, 2));
                return "setZoomRatio";
        }
    }
}

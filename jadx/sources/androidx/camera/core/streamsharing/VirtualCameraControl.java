package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.ForwardingCameraControl;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.gy0;
import defpackage.q00;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VirtualCameraControl extends ForwardingCameraControl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f2667c;

    public VirtualCameraControl(CameraControlInternal cameraControlInternal, a aVar) {
        super(cameraControlInternal);
        this.f2667c = aVar;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.impl.CameraControlInternal
    public final ListenableFuture j(int i2, int i3, List list) {
        Preconditions.b(list.size() == 1, "Only support one capture config.");
        ListenableFuture listenableFutureM = this.f2301b.m(i2);
        return Futures.b(Collections.singletonList(FutureChain.from(listenableFutureM).transformAsync(new q00(listenableFutureM, 2), CameraXExecutors.a()).transformAsync(new gy0(this, list, 8), CameraXExecutors.a()).transformAsync(new q00(listenableFutureM, 3), CameraXExecutors.a())));
    }
}

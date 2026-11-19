package androidx.camera.camera2.internal;

import android.hardware.camera2.TotalCaptureResult;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements Camera2CapturePipeline.ResultListener.Checker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1831a;

    public /* synthetic */ q(int i2) {
        this.f1831a = i2;
    }

    @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.ResultListener.Checker
    public final boolean a(TotalCaptureResult totalCaptureResult) {
        switch (this.f1831a) {
            case 0:
                return Camera2CapturePipeline.b(totalCaptureResult, false);
            case 1:
                return Camera2CapturePipeline.b(totalCaptureResult, false);
            default:
                return Camera2CapturePipeline.b(totalCaptureResult, true);
        }
    }
}

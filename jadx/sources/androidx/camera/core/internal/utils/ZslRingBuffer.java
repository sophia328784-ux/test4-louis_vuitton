package androidx.camera.core.internal.utils;

import androidx.camera.core.ImageInfo;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;

/* JADX INFO: loaded from: classes.dex */
public final class ZslRingBuffer extends ArrayRingBuffer<ImageProxy> {
    public ZslRingBuffer(int i2, RingBuffer.OnRemoveCallback<ImageProxy> onRemoveCallback) {
        super(i2, onRemoveCallback);
    }

    @Override // androidx.camera.core.internal.utils.ArrayRingBuffer
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final void b(ImageProxy imageProxy) {
        ImageInfo imageInfoP1 = imageProxy.p1();
        CameraCaptureResult cameraCaptureResult = imageInfoP1 instanceof CameraCaptureResultImageInfo ? ((CameraCaptureResultImageInfo) imageInfoP1).f2471a : null;
        if (cameraCaptureResult != null && ((cameraCaptureResult.f() == CameraCaptureMetaData$AfState.LOCKED_FOCUSED || cameraCaptureResult.f() == CameraCaptureMetaData$AfState.PASSIVE_FOCUSED) && cameraCaptureResult.h() == CameraCaptureMetaData$AeState.CONVERGED && cameraCaptureResult.g() == CameraCaptureMetaData$AwbState.CONVERGED)) {
            super.b(imageProxy);
        } else {
            this.d.d(imageProxy);
        }
    }
}

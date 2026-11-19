package defpackage;

import android.content.Context;
import androidx.camera.camera2.internal.Camera2CameraFactory;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.internal.StreamSpecsCalculatorImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qi implements CameraFactory.Provider {
    @Override // androidx.camera.core.impl.CameraFactory.Provider
    public final Camera2CameraFactory a(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j2, CameraXConfig cameraXConfig, StreamSpecsCalculatorImpl streamSpecsCalculatorImpl) {
        return new Camera2CameraFactory(context, cameraThreadConfig, cameraSelector, j2, cameraXConfig, streamSpecsCalculatorImpl);
    }
}

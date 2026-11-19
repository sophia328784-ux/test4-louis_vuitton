package androidx.camera.core.impl;

import android.hardware.camera2.CaptureResult;
import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes.dex */
public interface CameraCaptureResult {

    public static final class EmptyCameraCaptureResult implements CameraCaptureResult {
        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final CameraCaptureMetaData$FlashState a() {
            return CameraCaptureMetaData$FlashState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final TagBundle c() {
            return TagBundle.f2361b;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final long d() {
            return -1L;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final CaptureResult e() {
            return null;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final CameraCaptureMetaData$AfState f() {
            return CameraCaptureMetaData$AfState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final CameraCaptureMetaData$AwbState g() {
            return CameraCaptureMetaData$AwbState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public final CameraCaptureMetaData$AeState h() {
            return CameraCaptureMetaData$AeState.UNKNOWN;
        }
    }

    CameraCaptureMetaData$FlashState a();

    default void b(ExifData.Builder builder) {
        builder.d(a());
    }

    TagBundle c();

    long d();

    default CaptureResult e() {
        return null;
    }

    CameraCaptureMetaData$AfState f();

    CameraCaptureMetaData$AwbState g();

    CameraCaptureMetaData$AeState h();
}

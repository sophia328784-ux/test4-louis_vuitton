package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureResult;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureMetaData$FlashState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;
import java.nio.BufferUnderflowException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Camera2CameraCaptureResult implements CameraCaptureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TagBundle f1414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CaptureResult f1415b;

    public Camera2CameraCaptureResult(TagBundle tagBundle, CaptureResult captureResult) {
        this.f1414a = tagBundle;
        this.f1415b = captureResult;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$FlashState a() {
        Integer num = (Integer) this.f1415b.get(CaptureResult.FLASH_STATE);
        if (num == null) {
            return CameraCaptureMetaData$FlashState.UNKNOWN;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0 || iIntValue == 1) {
            return CameraCaptureMetaData$FlashState.NONE;
        }
        if (iIntValue == 2) {
            return CameraCaptureMetaData$FlashState.READY;
        }
        if (iIntValue == 3 || iIntValue == 4) {
            return CameraCaptureMetaData$FlashState.FIRED;
        }
        Logger.a("C2CameraCaptureResult");
        return CameraCaptureMetaData$FlashState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final void b(ExifData.Builder builder) {
        String strValueOf;
        CaptureResult captureResult = this.f1415b;
        super.b(builder);
        ArrayList arrayList = builder.f2409a;
        try {
            Integer num = (Integer) captureResult.get(CaptureResult.JPEG_ORIENTATION);
            if (num != null) {
                builder.f(num.intValue());
            }
        } catch (BufferUnderflowException unused) {
            Logger.c(5, "C2CameraCaptureResult");
        }
        Long l = (Long) captureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        if (l != null) {
            builder.c("ExposureTime", String.valueOf(l.longValue() / 1.0E9d), arrayList);
        }
        Float f2 = (Float) captureResult.get(CaptureResult.LENS_APERTURE);
        if (f2 != null) {
            builder.c("FNumber", String.valueOf(f2.floatValue()), arrayList);
        }
        Integer numValueOf = (Integer) captureResult.get(CaptureResult.SENSOR_SENSITIVITY);
        if (numValueOf != null) {
            Integer num2 = (Integer) captureResult.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST);
            if (num2 != null) {
                numValueOf = Integer.valueOf(numValueOf.intValue() * ((int) (num2.intValue() / 100.0f)));
            }
            int iIntValue = numValueOf.intValue();
            builder.c("SensitivityType", String.valueOf(3), arrayList);
            builder.c("PhotographicSensitivity", String.valueOf(Math.min(65535, iIntValue)), arrayList);
        }
        Float f3 = (Float) captureResult.get(CaptureResult.LENS_FOCAL_LENGTH);
        if (f3 != null) {
            builder.e(f3.floatValue());
        }
        Integer num3 = (Integer) captureResult.get(CaptureResult.CONTROL_AWB_MODE);
        if (num3 != null) {
            ExifData.WhiteBalanceMode whiteBalanceMode = ExifData.WhiteBalanceMode.AUTO;
            if (num3.intValue() == 0) {
                whiteBalanceMode = ExifData.WhiteBalanceMode.MANUAL;
            }
            int iOrdinal = whiteBalanceMode.ordinal();
            if (iOrdinal != 0) {
                strValueOf = iOrdinal != 1 ? null : String.valueOf(1);
            } else {
                strValueOf = String.valueOf(0);
            }
            builder.c("WhiteBalance", strValueOf, arrayList);
        }
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final TagBundle c() {
        return this.f1414a;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final long d() {
        Long l = (Long) this.f1415b.get(CaptureResult.SENSOR_TIMESTAMP);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CaptureResult e() {
        return this.f1415b;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$AfState f() {
        Integer num = (Integer) this.f1415b.get(CaptureResult.CONTROL_AF_STATE);
        if (num == null) {
            return CameraCaptureMetaData$AfState.UNKNOWN;
        }
        switch (num.intValue()) {
            case 0:
                return CameraCaptureMetaData$AfState.INACTIVE;
            case 1:
            case 3:
                return CameraCaptureMetaData$AfState.SCANNING;
            case 2:
                return CameraCaptureMetaData$AfState.PASSIVE_FOCUSED;
            case 4:
                return CameraCaptureMetaData$AfState.LOCKED_FOCUSED;
            case 5:
                return CameraCaptureMetaData$AfState.LOCKED_NOT_FOCUSED;
            case 6:
                return CameraCaptureMetaData$AfState.PASSIVE_NOT_FOCUSED;
            default:
                Logger.a("C2CameraCaptureResult");
                return CameraCaptureMetaData$AfState.UNKNOWN;
        }
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$AwbState g() {
        Integer num = (Integer) this.f1415b.get(CaptureResult.CONTROL_AWB_STATE);
        if (num == null) {
            return CameraCaptureMetaData$AwbState.UNKNOWN;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return CameraCaptureMetaData$AwbState.INACTIVE;
        }
        if (iIntValue == 1) {
            return CameraCaptureMetaData$AwbState.METERING;
        }
        if (iIntValue == 2) {
            return CameraCaptureMetaData$AwbState.CONVERGED;
        }
        if (iIntValue == 3) {
            return CameraCaptureMetaData$AwbState.LOCKED;
        }
        Logger.a("C2CameraCaptureResult");
        return CameraCaptureMetaData$AwbState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public final CameraCaptureMetaData$AeState h() {
        Integer num = (Integer) this.f1415b.get(CaptureResult.CONTROL_AE_STATE);
        if (num == null) {
            return CameraCaptureMetaData$AeState.UNKNOWN;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return CameraCaptureMetaData$AeState.INACTIVE;
        }
        if (iIntValue != 1) {
            if (iIntValue == 2) {
                return CameraCaptureMetaData$AeState.CONVERGED;
            }
            if (iIntValue == 3) {
                return CameraCaptureMetaData$AeState.LOCKED;
            }
            if (iIntValue == 4) {
                return CameraCaptureMetaData$AeState.FLASH_REQUIRED;
            }
            if (iIntValue != 5) {
                Logger.a("C2CameraCaptureResult");
                return CameraCaptureMetaData$AeState.UNKNOWN;
            }
        }
        return CameraCaptureMetaData$AeState.SEARCHING;
    }

    public Camera2CameraCaptureResult(CaptureResult captureResult) {
        this(TagBundle.f2361b, captureResult);
    }
}

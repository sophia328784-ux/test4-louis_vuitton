package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Range;
import android.view.Surface;
import androidx.camera.camera2.internal.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.StreamSpec;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class Camera2CaptureRequestBuilder {
    public static void a(CaptureRequest.Builder builder, OptionsBundle optionsBundle) {
        CaptureRequestOptions captureRequestOptionsB = CaptureRequestOptions.Builder.c(optionsBundle).b();
        for (Config.Option option : captureRequestOptionsB.d()) {
            CaptureRequest.Key key = (CaptureRequest.Key) option.d();
            try {
                builder.set(key, captureRequestOptionsB.a(option));
            } catch (IllegalArgumentException unused) {
                Objects.toString(key);
                Logger.a("Camera2CaptureRequestBuilder");
            }
        }
    }

    public static void b(CaptureRequest.Builder builder, int i2, TemplateParamsOverride templateParamsOverride) {
        Map mapUnmodifiableMap;
        if (i2 == 3 && templateParamsOverride.f1786a) {
            HashMap map = new HashMap();
            map.put(CaptureRequest.CONTROL_CAPTURE_INTENT, 1);
            mapUnmodifiableMap = Collections.unmodifiableMap(map);
        } else {
            if (i2 != 4) {
                templateParamsOverride.getClass();
            } else if (templateParamsOverride.f1787b) {
                HashMap map2 = new HashMap();
                map2.put(CaptureRequest.CONTROL_CAPTURE_INTENT, 2);
                mapUnmodifiableMap = Collections.unmodifiableMap(map2);
            }
            mapUnmodifiableMap = Collections.EMPTY_MAP;
        }
        for (Map.Entry entry : mapUnmodifiableMap.entrySet()) {
            builder.set((CaptureRequest.Key) entry.getKey(), entry.getValue());
        }
    }

    public static CaptureRequest c(CaptureConfig captureConfig, CameraDevice cameraDevice, HashMap map, boolean z, TemplateParamsOverride templateParamsOverride) throws CameraAccessException {
        CaptureRequest.Builder builderCreateCaptureRequest;
        if (cameraDevice != null) {
            ArrayList arrayList = captureConfig.f2268a;
            int i2 = captureConfig.f2270c;
            OptionsBundle optionsBundle = captureConfig.f2269b;
            TreeMap treeMap = optionsBundle.M;
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = listUnmodifiableList.iterator();
            while (it.hasNext()) {
                Surface surface = (Surface) map.get((DeferrableSurface) it.next());
                if (surface == null) {
                    md.n("DeferrableSurface not in configuredSurfaceMap");
                    return null;
                }
                arrayList2.add(surface);
            }
            if (!arrayList2.isEmpty()) {
                CameraCaptureResult cameraCaptureResult = captureConfig.f2273h;
                if (i2 == 5 && cameraCaptureResult != null && (cameraCaptureResult.e() instanceof TotalCaptureResult)) {
                    Logger.c(3, "Camera2CaptureRequestBuilder");
                    builderCreateCaptureRequest = cameraDevice.createReprocessCaptureRequest((TotalCaptureResult) cameraCaptureResult.e());
                } else {
                    Logger.c(3, "Camera2CaptureRequestBuilder");
                    if (i2 == 5) {
                        builderCreateCaptureRequest = cameraDevice.createCaptureRequest(z ? 1 : 2);
                    } else {
                        builderCreateCaptureRequest = cameraDevice.createCaptureRequest(i2);
                    }
                }
                b(builderCreateCaptureRequest, i2, templateParamsOverride);
                Range rangeA = captureConfig.a();
                if (!rangeA.equals(StreamSpec.f2348a)) {
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, rangeA);
                }
                rangeA.toString();
                Logger.c(3, "Camera2CaptureRequestBuilder");
                Integer numE = e(captureConfig);
                if (numE != null) {
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, numE);
                }
                Logger.c(3, "Camera2CaptureRequestBuilder");
                Config.Option option = CaptureConfig.f2265i;
                if (treeMap.containsKey(option)) {
                    builderCreateCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, (Integer) optionsBundle.a(option));
                }
                Config.Option option2 = CaptureConfig.f2266j;
                if (treeMap.containsKey(option2)) {
                    builderCreateCaptureRequest.set(CaptureRequest.JPEG_QUALITY, Byte.valueOf(((Integer) optionsBundle.a(option2)).byteValue()));
                }
                a(builderCreateCaptureRequest, optionsBundle);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    builderCreateCaptureRequest.addTarget((Surface) it2.next());
                }
                builderCreateCaptureRequest.setTag(captureConfig.g);
                return builderCreateCaptureRequest.build();
            }
        }
        return null;
    }

    public static CaptureRequest d(CaptureConfig captureConfig, CameraDevice cameraDevice, TemplateParamsOverride templateParamsOverride) throws CameraAccessException {
        if (cameraDevice == null) {
            return null;
        }
        int i2 = captureConfig.f2270c;
        Logger.c(3, "Camera2CaptureRequestBuilder");
        CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(i2);
        b(builderCreateCaptureRequest, i2, templateParamsOverride);
        Range rangeA = captureConfig.a();
        if (!rangeA.equals(StreamSpec.f2348a)) {
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, rangeA);
        }
        rangeA.toString();
        Logger.c(3, "Camera2CaptureRequestBuilder");
        a(builderCreateCaptureRequest, captureConfig.f2269b);
        return builderCreateCaptureRequest.build();
    }

    public static Integer e(CaptureConfig captureConfig) {
        if (captureConfig.c() == 1 || captureConfig.d() == 1) {
            return 0;
        }
        if (captureConfig.c() == 2) {
            return 2;
        }
        return captureConfig.d() == 2 ? 1 : null;
    }
}

package androidx.camera.core.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Logger;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CameraSelector f2263a;

    public static class Api34Impl {
        public static int a(Context context) {
            return context.getDeviceId();
        }
    }

    public static class CameraIdListIncorrectException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2264b;

        public CameraIdListIncorrectException(String str, int i2, Throwable th) {
            super(str, th);
            this.f2264b = i2;
        }
    }

    static {
        CameraSelector.Builder builder = new CameraSelector.Builder();
        builder.a(2);
        f2263a = new CameraSelector(builder.f1894a);
    }

    public static void a(Context context, CameraRepository cameraRepository, CameraSelector cameraSelector) throws CameraIdListIncorrectException {
        Integer numB;
        if (Build.VERSION.SDK_INT >= 34 && Api34Impl.a(context) != 0) {
            LinkedHashSet linkedHashSetG = cameraRepository.g();
            Api34Impl.a(context);
            linkedHashSetG.size();
            Logger.c(3, "CameraValidator");
            return;
        }
        IllegalArgumentException e2 = null;
        if (cameraSelector != null) {
            try {
                numB = cameraSelector.b();
                if (numB == null) {
                    Logger.c(5, "CameraValidator");
                    return;
                }
            } catch (IllegalStateException unused) {
                Logger.b("CameraValidator");
                return;
            }
        } else {
            numB = null;
        }
        String str = Build.DEVICE;
        Logger.c(3, "CameraValidator");
        PackageManager packageManager = context.getPackageManager();
        int i2 = 0;
        try {
            if (packageManager.hasSystemFeature("android.hardware.camera") && (cameraSelector == null || numB.intValue() == 1)) {
                CameraSelector.f1892c.c(cameraRepository.g());
                i2 = 1;
            }
        } catch (IllegalArgumentException e3) {
            e2 = e3;
            Logger.c(5, "CameraValidator");
        }
        try {
            if (packageManager.hasSystemFeature("android.hardware.camera.front") && (cameraSelector == null || numB.intValue() == 0)) {
                CameraSelector.f1891b.c(cameraRepository.g());
                i2++;
            }
        } catch (IllegalArgumentException e4) {
            e2 = e4;
            Logger.c(5, "CameraValidator");
        }
        try {
            f2263a.c(cameraRepository.g());
            Logger.c(3, "CameraValidator");
            i2++;
        } catch (IllegalArgumentException unused2) {
        }
        if (e2 == null) {
            return;
        }
        cameraRepository.g().toString();
        Logger.a("CameraValidator");
        throw new CameraIdListIncorrectException("Expected camera missing from device.", i2, e2);
    }
}

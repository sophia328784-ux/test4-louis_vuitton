package androidx.camera.core.impl.utils;

import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public abstract class SurfaceUtil {

    public static class SurfaceInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2428a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2429b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2430c = 0;
    }

    static {
        System.loadLibrary("surface_util_jni");
    }

    public static SurfaceInfo a(Surface surface) {
        int[] iArrNativeGetSurfaceInfo = nativeGetSurfaceInfo(surface);
        SurfaceInfo surfaceInfo = new SurfaceInfo();
        surfaceInfo.f2428a = iArrNativeGetSurfaceInfo[0];
        surfaceInfo.f2429b = iArrNativeGetSurfaceInfo[1];
        surfaceInfo.f2430c = iArrNativeGetSurfaceInfo[2];
        return surfaceInfo;
    }

    private static native int[] nativeGetSurfaceInfo(Surface surface);
}

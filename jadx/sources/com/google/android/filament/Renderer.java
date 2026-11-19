package com.google.android.filament;

import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class Renderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DisplayInfo f28570b;

    public static class ClearOptions {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float[] f28571a = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f28572b = false;
    }

    public static class DisplayInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f28573a = 60.0f;
    }

    private static native boolean nBeginFrame(long j2, long j3, long j4);

    private static native void nEndFrame(long j2);

    private static native void nRender(long j2, long j3);

    private static native void nSetClearOptions(long j2, float f2, float f3, float f4, float f5, boolean z, boolean z2);

    private static native void nSetDisplayInfo(long j2, float f2);

    public final boolean a(SwapChain swapChain, long j2) {
        long jC = c();
        long j3 = swapChain.f28577b;
        if (j3 != 0) {
            return nBeginFrame(jC, j3, j2);
        }
        md.k("Calling method on destroyed SwapChain");
        return false;
    }

    public final void b() {
        nEndFrame(c());
    }

    public final long c() {
        long j2 = this.f28569a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed Renderer");
        return 0L;
    }

    public final void d(View view) {
        nRender(c(), view.a());
    }

    public final void e(ClearOptions clearOptions) {
        long jC = c();
        float[] fArr = clearOptions.f28571a;
        nSetClearOptions(jC, fArr[0], fArr[1], fArr[2], fArr[3], clearOptions.f28572b, true);
    }

    public final void f(DisplayInfo displayInfo) {
        this.f28570b = displayInfo;
        nSetDisplayInfo(c(), displayInfo.f28573a);
    }
}

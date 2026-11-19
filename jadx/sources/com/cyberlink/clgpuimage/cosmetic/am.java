package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.GPUImageFilter;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class am extends com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.b {
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f25772e;

    public am(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
        this.d = 1.0f;
        this.f25772e = 1.0f;
    }

    public final void b() {
        List list = this.f42018a;
        GPUImageFilter gPUImageFilter = (GPUImageFilter) list.get(0);
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(gPUImageFilter.getProgram(), "texelWidthOffset");
        int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(gPUImageFilter.getProgram(), "texelHeightOffset");
        gPUImageFilter.setFloat(iGlGetUniformLocation, this.d / this.f42019b);
        gPUImageFilter.setFloat(iGlGetUniformLocation2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        GPUImageFilter gPUImageFilter2 = (GPUImageFilter) list.get(1);
        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(gPUImageFilter2.getProgram(), "texelWidthOffset");
        int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(gPUImageFilter2.getProgram(), "texelHeightOffset");
        gPUImageFilter2.setFloat(iGlGetUniformLocation3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        gPUImageFilter2.setFloat(iGlGetUniformLocation4, this.f25772e / this.f42020c);
    }
}

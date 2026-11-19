package com.cyberlink.clgpuimage;

import android.app.ActivityManager;
import android.content.Context;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class GPUImage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GPUImageRenderer f25439a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ScaleType {
        public static final ScaleType CENTER_CROP_CAMERA_YUV_BUFFER;
        public static final ScaleType CENTER_INSIDE_CAMERA_YUV_BUFFER;
        public static final ScaleType FIT_XY_CAMERA_YUV_BUFFER;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ ScaleType[] f25440a;

        static {
            ScaleType scaleType = new ScaleType("CENTER_CROP_CAMERA_YUV_BUFFER", 0);
            CENTER_CROP_CAMERA_YUV_BUFFER = scaleType;
            ScaleType scaleType2 = new ScaleType("CENTER_INSIDE_CAMERA_YUV_BUFFER", 1);
            CENTER_INSIDE_CAMERA_YUV_BUFFER = scaleType2;
            ScaleType scaleType3 = new ScaleType("FIT_XY_CAMERA_YUV_BUFFER", 2);
            FIT_XY_CAMERA_YUV_BUFFER = scaleType3;
            f25440a = new ScaleType[]{scaleType, scaleType2, scaleType3};
        }

        public static ScaleType valueOf(String str) {
            return (ScaleType) Enum.valueOf(ScaleType.class, str);
        }

        public static ScaleType[] values() {
            return (ScaleType[]) f25440a.clone();
        }
    }

    public GPUImage(Context context) {
        if (((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getDeviceConfigurationInfo().reqGlEsVersion >= 196608) {
            this.f25439a = new GPUImageRenderer(new GPUImageFilter(), false);
        } else {
            md.k("OpenGL ES 3.0 is not supported on this phone.");
            throw null;
        }
    }
}

package com.vuitton.core.infrastructure.perfectcorp;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class CameraLibrary {
    private static final /* synthetic */ CameraLibrary[] $VALUES;
    public static final CameraLibrary CAMERA_1;
    public static final CameraLibrary CAMERA_2;

    static {
        CameraLibrary cameraLibrary = new CameraLibrary("CAMERA_1", 0);
        CAMERA_1 = cameraLibrary;
        CameraLibrary cameraLibrary2 = new CameraLibrary("CAMERA_2", 1);
        CAMERA_2 = cameraLibrary2;
        $VALUES = new CameraLibrary[]{cameraLibrary, cameraLibrary2};
    }

    public static CameraLibrary valueOf(String str) {
        return (CameraLibrary) Enum.valueOf(CameraLibrary.class, str);
    }

    public static CameraLibrary[] values() {
        return (CameraLibrary[]) $VALUES.clone();
    }
}

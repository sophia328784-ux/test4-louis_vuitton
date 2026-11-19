package com.vuitton.core.infrastructure.perfectcorp;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class CameraFacing {
    private static final /* synthetic */ CameraFacing[] $VALUES;
    public static final CameraFacing BACK;
    public static final CameraFacing FRONT;

    static {
        CameraFacing cameraFacing = new CameraFacing("BACK", 0);
        BACK = cameraFacing;
        CameraFacing cameraFacing2 = new CameraFacing("FRONT", 1);
        FRONT = cameraFacing2;
        $VALUES = new CameraFacing[]{cameraFacing, cameraFacing2};
    }

    public static CameraFacing valueOf(String str) {
        return (CameraFacing) Enum.valueOf(CameraFacing.class, str);
    }

    public static CameraFacing[] values() {
        return (CameraFacing[]) $VALUES.clone();
    }
}

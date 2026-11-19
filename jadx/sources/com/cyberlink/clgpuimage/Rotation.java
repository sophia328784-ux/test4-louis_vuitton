package com.cyberlink.clgpuimage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class Rotation {
    public static final Rotation NORMAL;
    public static final Rotation ROTATION_180;
    public static final Rotation ROTATION_270;
    public static final Rotation ROTATION_90;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ Rotation[] f25506a;

    static {
        Rotation rotation = new Rotation("NORMAL", 0);
        NORMAL = rotation;
        Rotation rotation2 = new Rotation("ROTATION_90", 1);
        ROTATION_90 = rotation2;
        Rotation rotation3 = new Rotation("ROTATION_180", 2);
        ROTATION_180 = rotation3;
        Rotation rotation4 = new Rotation("ROTATION_270", 3);
        ROTATION_270 = rotation4;
        f25506a = new Rotation[]{rotation, rotation2, rotation3, rotation4};
    }

    public static Rotation valueOf(String str) {
        return (Rotation) Enum.valueOf(Rotation.class, str);
    }

    public static Rotation[] values() {
        return (Rotation[]) f25506a.clone();
    }
}

package com.otaliastudios.cameraview.engine.offset;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class Axis {
    private static final /* synthetic */ Axis[] $VALUES;
    public static final Axis ABSOLUTE;
    public static final Axis RELATIVE_TO_SENSOR;

    static {
        Axis axis = new Axis("ABSOLUTE", 0);
        ABSOLUTE = axis;
        Axis axis2 = new Axis("RELATIVE_TO_SENSOR", 1);
        RELATIVE_TO_SENSOR = axis2;
        $VALUES = new Axis[]{axis, axis2};
    }

    public static Axis valueOf(String str) {
        return (Axis) Enum.valueOf(Axis.class, str);
    }

    public static Axis[] values() {
        return (Axis[]) $VALUES.clone();
    }
}

package com.otaliastudios.cameraview.gesture;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class GestureType {
    private static final /* synthetic */ GestureType[] $VALUES;
    public static final GestureType CONTINUOUS;
    public static final GestureType ONE_SHOT;

    static {
        GestureType gestureType = new GestureType("ONE_SHOT", 0);
        ONE_SHOT = gestureType;
        GestureType gestureType2 = new GestureType("CONTINUOUS", 1);
        CONTINUOUS = gestureType2;
        $VALUES = new GestureType[]{gestureType, gestureType2};
    }

    public static GestureType valueOf(String str) {
        return (GestureType) Enum.valueOf(GestureType.class, str);
    }

    public static GestureType[] values() {
        return (GestureType[]) $VALUES.clone();
    }
}

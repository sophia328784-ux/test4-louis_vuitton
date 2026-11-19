package com.lightup.sdk.device.utils.firmware;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class RequiredUpdateType {
    private static final /* synthetic */ RequiredUpdateType[] $VALUES;
    public static final RequiredUpdateType NONE;
    public static final RequiredUpdateType UPDATE_NOT_POSSIBLE;
    public static final RequiredUpdateType UPDATE_POSSIBLE;

    static {
        RequiredUpdateType requiredUpdateType = new RequiredUpdateType("NONE", 0);
        NONE = requiredUpdateType;
        RequiredUpdateType requiredUpdateType2 = new RequiredUpdateType("UPDATE_POSSIBLE", 1);
        UPDATE_POSSIBLE = requiredUpdateType2;
        RequiredUpdateType requiredUpdateType3 = new RequiredUpdateType("UPDATE_NOT_POSSIBLE", 2);
        UPDATE_NOT_POSSIBLE = requiredUpdateType3;
        $VALUES = new RequiredUpdateType[]{requiredUpdateType, requiredUpdateType2, requiredUpdateType3};
    }

    public static RequiredUpdateType valueOf(String str) {
        return (RequiredUpdateType) Enum.valueOf(RequiredUpdateType.class, str);
    }

    public static RequiredUpdateType[] values() {
        return (RequiredUpdateType[]) $VALUES.clone();
    }
}

package com.dynatrace.android.lifecycle.event;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class ActivityEventType {
    private static final /* synthetic */ ActivityEventType[] $VALUES;
    public static final ActivityEventType ON_CREATE;
    public static final ActivityEventType ON_RESUME;
    public static final ActivityEventType ON_START;

    static {
        ActivityEventType activityEventType = new ActivityEventType("ON_CREATE", 0);
        ON_CREATE = activityEventType;
        ActivityEventType activityEventType2 = new ActivityEventType("ON_START", 1);
        ON_START = activityEventType2;
        ActivityEventType activityEventType3 = new ActivityEventType("ON_RESUME", 2);
        ON_RESUME = activityEventType3;
        $VALUES = new ActivityEventType[]{activityEventType, activityEventType2, activityEventType3};
    }

    public static ActivityEventType valueOf(String str) {
        return (ActivityEventType) Enum.valueOf(ActivityEventType.class, str);
    }

    public static ActivityEventType[] values() {
        return (ActivityEventType[]) $VALUES.clone();
    }
}

package com.cyberlink.clgpuimage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class GetFrameInfoFilter$CaptureFrameType {
    public static final GetFrameInfoFilter$CaptureFrameType CAPTURE_AFTER_MAKEUP_FILTERS;
    public static final GetFrameInfoFilter$CaptureFrameType CAPTURE_BOTH;
    public static final GetFrameInfoFilter$CaptureFrameType CAPTURE_SOURCE;
    public static final GetFrameInfoFilter$CaptureFrameType NONE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ GetFrameInfoFilter$CaptureFrameType[] f25486a;

    static {
        GetFrameInfoFilter$CaptureFrameType getFrameInfoFilter$CaptureFrameType = new GetFrameInfoFilter$CaptureFrameType("NONE", 0);
        NONE = getFrameInfoFilter$CaptureFrameType;
        GetFrameInfoFilter$CaptureFrameType getFrameInfoFilter$CaptureFrameType2 = new GetFrameInfoFilter$CaptureFrameType("CAPTURE_SOURCE", 1);
        CAPTURE_SOURCE = getFrameInfoFilter$CaptureFrameType2;
        GetFrameInfoFilter$CaptureFrameType getFrameInfoFilter$CaptureFrameType3 = new GetFrameInfoFilter$CaptureFrameType("CAPTURE_AFTER_MAKEUP_FILTERS", 2);
        CAPTURE_AFTER_MAKEUP_FILTERS = getFrameInfoFilter$CaptureFrameType3;
        GetFrameInfoFilter$CaptureFrameType getFrameInfoFilter$CaptureFrameType4 = new GetFrameInfoFilter$CaptureFrameType("CAPTURE_BOTH", 3);
        CAPTURE_BOTH = getFrameInfoFilter$CaptureFrameType4;
        f25486a = new GetFrameInfoFilter$CaptureFrameType[]{getFrameInfoFilter$CaptureFrameType, getFrameInfoFilter$CaptureFrameType2, getFrameInfoFilter$CaptureFrameType3, getFrameInfoFilter$CaptureFrameType4};
    }

    public static GetFrameInfoFilter$CaptureFrameType valueOf(String str) {
        return (GetFrameInfoFilter$CaptureFrameType) Enum.valueOf(GetFrameInfoFilter$CaptureFrameType.class, str);
    }

    public static GetFrameInfoFilter$CaptureFrameType[] values() {
        return (GetFrameInfoFilter$CaptureFrameType[]) f25486a.clone();
    }
}

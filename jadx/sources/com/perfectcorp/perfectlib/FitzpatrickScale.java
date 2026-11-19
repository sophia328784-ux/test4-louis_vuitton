package com.perfectcorp.perfectlib;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class FitzpatrickScale {
    public static final FitzpatrickScale TYPE1;
    public static final FitzpatrickScale TYPE2;
    public static final FitzpatrickScale TYPE3;
    public static final FitzpatrickScale TYPE4;
    public static final FitzpatrickScale TYPE5;
    public static final FitzpatrickScale TYPE6;
    public static final FitzpatrickScale UNKNOWN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ FitzpatrickScale[] f39617a;

    static {
        FitzpatrickScale fitzpatrickScale = new FitzpatrickScale("UNKNOWN", 0);
        UNKNOWN = fitzpatrickScale;
        FitzpatrickScale fitzpatrickScale2 = new FitzpatrickScale("TYPE1", 1);
        TYPE1 = fitzpatrickScale2;
        FitzpatrickScale fitzpatrickScale3 = new FitzpatrickScale("TYPE2", 2);
        TYPE2 = fitzpatrickScale3;
        FitzpatrickScale fitzpatrickScale4 = new FitzpatrickScale("TYPE3", 3);
        TYPE3 = fitzpatrickScale4;
        FitzpatrickScale fitzpatrickScale5 = new FitzpatrickScale("TYPE4", 4);
        TYPE4 = fitzpatrickScale5;
        FitzpatrickScale fitzpatrickScale6 = new FitzpatrickScale("TYPE5", 5);
        TYPE5 = fitzpatrickScale6;
        FitzpatrickScale fitzpatrickScale7 = new FitzpatrickScale("TYPE6", 6);
        TYPE6 = fitzpatrickScale7;
        f39617a = new FitzpatrickScale[]{fitzpatrickScale, fitzpatrickScale2, fitzpatrickScale3, fitzpatrickScale4, fitzpatrickScale5, fitzpatrickScale6, fitzpatrickScale7};
    }

    public static FitzpatrickScale fromInt(int i2) {
        switch (i2) {
            case 1:
                return TYPE1;
            case 2:
                return TYPE2;
            case 3:
                return TYPE3;
            case 4:
                return TYPE4;
            case 5:
                return TYPE5;
            case 6:
                return TYPE6;
            default:
                return UNKNOWN;
        }
    }

    public static FitzpatrickScale valueOf(String str) {
        return (FitzpatrickScale) Enum.valueOf(FitzpatrickScale.class, str);
    }

    public static FitzpatrickScale[] values() {
        return (FitzpatrickScale[]) f39617a.clone();
    }
}

package com.kakao.sdk.user.model;

import com.google.gson.annotations.SerializedName;
import com.kakao.sdk.common.json.UnknownValue;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/kakao/sdk/user/model/AgeRange;", "", "AGE_0_9", "AGE_10_14", "AGE_15_19", "AGE_20_29", "AGE_30_39", "AGE_40_49", "AGE_50_59", "AGE_60_69", "AGE_70_79", "AGE_80_89", "AGE_90_ABOVE", "UNKNOWN", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AgeRange {
    private static final /* synthetic */ AgeRange[] $VALUES;

    @SerializedName("0~9")
    public static final AgeRange AGE_0_9;

    @SerializedName("10~14")
    public static final AgeRange AGE_10_14;

    @SerializedName("15~19")
    public static final AgeRange AGE_15_19;

    @SerializedName("20~29")
    public static final AgeRange AGE_20_29;

    @SerializedName("30~39")
    public static final AgeRange AGE_30_39;

    @SerializedName("40~49")
    public static final AgeRange AGE_40_49;

    @SerializedName("50~59")
    public static final AgeRange AGE_50_59;

    @SerializedName("60~69")
    public static final AgeRange AGE_60_69;

    @SerializedName("70~79")
    public static final AgeRange AGE_70_79;

    @SerializedName("80~89")
    public static final AgeRange AGE_80_89;

    @SerializedName("90~")
    public static final AgeRange AGE_90_ABOVE;

    @UnknownValue
    public static final AgeRange UNKNOWN;

    static {
        AgeRange ageRange = new AgeRange("AGE_0_9", 0);
        AGE_0_9 = ageRange;
        AgeRange ageRange2 = new AgeRange("AGE_10_14", 1);
        AGE_10_14 = ageRange2;
        AgeRange ageRange3 = new AgeRange("AGE_15_19", 2);
        AGE_15_19 = ageRange3;
        AgeRange ageRange4 = new AgeRange("AGE_20_29", 3);
        AGE_20_29 = ageRange4;
        AgeRange ageRange5 = new AgeRange("AGE_30_39", 4);
        AGE_30_39 = ageRange5;
        AgeRange ageRange6 = new AgeRange("AGE_40_49", 5);
        AGE_40_49 = ageRange6;
        AgeRange ageRange7 = new AgeRange("AGE_50_59", 6);
        AGE_50_59 = ageRange7;
        AgeRange ageRange8 = new AgeRange("AGE_60_69", 7);
        AGE_60_69 = ageRange8;
        AgeRange ageRange9 = new AgeRange("AGE_70_79", 8);
        AGE_70_79 = ageRange9;
        AgeRange ageRange10 = new AgeRange("AGE_80_89", 9);
        AGE_80_89 = ageRange10;
        AgeRange ageRange11 = new AgeRange("AGE_90_ABOVE", 10);
        AGE_90_ABOVE = ageRange11;
        AgeRange ageRange12 = new AgeRange("UNKNOWN", 11);
        UNKNOWN = ageRange12;
        $VALUES = new AgeRange[]{ageRange, ageRange2, ageRange3, ageRange4, ageRange5, ageRange6, ageRange7, ageRange8, ageRange9, ageRange10, ageRange11, ageRange12};
    }

    public static AgeRange valueOf(String str) {
        return (AgeRange) Enum.valueOf(AgeRange.class, str);
    }

    public static AgeRange[] values() {
        return (AgeRange[]) $VALUES.clone();
    }
}

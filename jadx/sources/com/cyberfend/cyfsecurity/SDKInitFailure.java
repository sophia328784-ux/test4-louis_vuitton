package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class SDKInitFailure {
    public static final SDKInitFailure COMMON_ADDITIONAL_DEVICE_INFO_FAILURE;

    /* JADX INFO: Incorrect field signature: Lshort; */
    private static final /* synthetic */ SDKInitFailure[] GnaWzB;
    public static final SDKInitFailure MOTION_SENSOR_FAILURE;
    public static final SDKInitFailure ORIENTATION_SENSOR_FAILURE;
    public static final SDKInitFailure SYSTEM_INFO_FAILURE;

    static {
        SDKInitFailure sDKInitFailure = new SDKInitFailure(CNATAC.a("CjAz||psT\u007ffsgiqy`f~~h"), 0);
        MOTION_SENSOR_FAILURE = sDKInitFailure;
        SDKInitFailure sDKInitFailure2 = new SDKInitFailure(CNATAC.a("Aw\\v}fntX~{cfsykfxtjlgcesg"), 1);
        ORIENTATION_SENSOR_FAILURE = sDKInitFailure2;
        SDKInitFailure sDKInitFailure3 = new SDKInitFailure(CNATAC.a("MjX~||paUu|h|yyyeuoi{glu~kmbjyaiqVNNX"), 2);
        COMMON_ADDITIONAL_DEVICE_INFO_FAILURE = sDKInitFailure3;
        SDKInitFailure sDKInitFailure4 = new SDKInitFailure(CNATAC.a("]|Fgv\u007fpi_wzcsw~t|xn"), 3);
        SYSTEM_INFO_FAILURE = sDKInitFailure4;
        GnaWzB = new SDKInitFailure[]{sDKInitFailure, sDKInitFailure2, sDKInitFailure3, sDKInitFailure4};
    }

    public static SDKInitFailure valueOf(String str) {
        return (SDKInitFailure) Enum.valueOf(SDKInitFailure.class, str);
    }

    public static SDKInitFailure[] values() {
        return (SDKInitFailure[]) GnaWzB.clone();
    }
}

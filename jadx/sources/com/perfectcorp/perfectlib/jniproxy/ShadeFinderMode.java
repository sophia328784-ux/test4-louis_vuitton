package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public enum ShadeFinderMode {
    SHADE_FINDER_DISABLE,
    SHADE_FINDER_WITH_CALIBRATION,
    SHADE_FINDER_WITHOUT_CALIBRATION,
    SHADE_FINDER_WITHOUT_CALIBRATION_V2,
    SHADE_FINDER_WITHOUT_CALIBRATION_V3,
    SHADE_FINDER_WITHOUT_CALIBRATION_V4,
    SHADE_FINDER_WITHOUT_CALIBRATION_V4_FACE_ATTRIBUTE,
    SHADE_FINDER_LV_SHADE_DETECT;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f40409a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f40410a;
    }

    ShadeFinderMode() {
        this.f40409a = 0;
        a.f40410a = 1;
    }

    public final int a() {
        return this.f40409a;
    }

    ShadeFinderMode() {
        int i2 = a.f40410a;
        a.f40410a = i2 + 1;
        this.f40409a = i2;
    }
}

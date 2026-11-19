package com.perfectcorp.common.utility;

import com.perfectcorp.thirdparty.com.google.common.collect.Range;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ValueChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Range f39439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Range f39440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Range f39441c;
    public static final Range d;

    static {
        Range.c(0, 255);
        f39439a = Range.c(0, 100);
        Range.c(0, 150);
        Range.c(0, 300);
        f39440b = Range.c(-100, 100);
        Range.c(Float.valueOf(0.5f), Float.valueOf(1.5f));
        Range.c(-100, 100);
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Float fValueOf2 = Float.valueOf(1.0f);
        f39441c = Range.c(fValueOf, fValueOf2);
        d = Range.c(Float.valueOf(-1.0f), fValueOf2);
    }
}

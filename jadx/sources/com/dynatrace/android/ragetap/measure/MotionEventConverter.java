package com.dynatrace.android.ragetap.measure;

import defpackage.lc0;

/* JADX INFO: loaded from: classes2.dex */
public class MotionEventConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f27714a;

    public MotionEventConverter(float f2) {
        float f3 = 1.0f / f2;
        this.f27714a = f3;
        if (Float.isNaN(f3) || Float.isInfinite(f3)) {
            lc0.l("invalid value");
            throw null;
        }
    }
}

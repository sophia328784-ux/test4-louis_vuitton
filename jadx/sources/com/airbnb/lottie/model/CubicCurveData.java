package com.airbnb.lottie.model;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes.dex */
public class CubicCurveData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PointF f22060a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PointF f22061b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PointF f22062c;

    public CubicCurveData() {
        this.f22060a = new PointF();
        this.f22061b = new PointF();
        this.f22062c = new PointF();
    }

    public final String toString() {
        PointF pointF = this.f22062c;
        Float fValueOf = Float.valueOf(pointF.x);
        Float fValueOf2 = Float.valueOf(pointF.y);
        PointF pointF2 = this.f22060a;
        Float fValueOf3 = Float.valueOf(pointF2.x);
        Float fValueOf4 = Float.valueOf(pointF2.y);
        PointF pointF3 = this.f22061b;
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", fValueOf, fValueOf2, fValueOf3, fValueOf4, Float.valueOf(pointF3.x), Float.valueOf(pointF3.y));
    }

    public CubicCurveData(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f22060a = pointF;
        this.f22061b = pointF2;
        this.f22062c = pointF3;
    }
}

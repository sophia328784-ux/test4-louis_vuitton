package com.dynatrace.android.agent.measurement;

import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class MeasurementPoint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27549b;

    public MeasurementPoint(long j2, int i2) {
        this.f27548a = j2;
        this.f27549b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MeasurementPoint measurementPoint = (MeasurementPoint) obj;
            if (this.f27549b == measurementPoint.f27549b && this.f27548a == measurementPoint.f27548a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f27549b * 31;
        long j2 = this.f27548a;
        return i2 + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MeasurementPoint{sequenceNumber=");
        sb.append(this.f27549b);
        sb.append(", timestamp=");
        return fc.k(sb, this.f27548a, '}');
    }
}

package com.dynatrace.android.lifecycle.event;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import defpackage.tr;
import java.lang.Enum;

/* JADX INFO: loaded from: classes2.dex */
public class LifecycleEvent<T extends Enum<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Enum f27693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27695c;

    public LifecycleEvent(T t, MeasurementPoint measurementPoint) {
        this.f27693a = t;
        this.f27694b = measurementPoint.f27548a;
        this.f27695c = measurementPoint.f27549b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LifecycleEvent lifecycleEvent = (LifecycleEvent) obj;
            if (this.f27694b == lifecycleEvent.f27694b && this.f27695c == lifecycleEvent.f27695c && this.f27693a == lifecycleEvent.f27693a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f27693a.hashCode() * 31;
        long j2 = this.f27694b;
        return ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f27695c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LifecycleEvent{eventType=");
        sb.append(this.f27693a);
        sb.append(", timestamp=");
        sb.append(this.f27694b);
        sb.append(", sequenceNumber=");
        return tr.k(sb, this.f27695c, '}');
    }
}

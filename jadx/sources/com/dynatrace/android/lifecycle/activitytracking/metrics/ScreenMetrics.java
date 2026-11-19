package com.dynatrace.android.lifecycle.activitytracking.metrics;

import com.dynatrace.agent.metrics.OneAgentScreenMetrics;
import defpackage.a;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenMetrics implements OneAgentScreenMetrics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27662c;
    public final float d;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f27663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f27664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f27665c;
        public float d;
    }

    public ScreenMetrics(Builder builder) {
        this.f27660a = builder.f27663a;
        this.f27661b = builder.f27664b;
        this.d = builder.d;
        this.f27662c = builder.f27665c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ScreenMetrics screenMetrics = (ScreenMetrics) obj;
            if (this.f27660a == screenMetrics.f27660a && this.f27661b == screenMetrics.f27661b && this.f27662c == screenMetrics.f27662c && Float.compare(screenMetrics.d, this.d) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = ((((this.f27660a * 31) + this.f27661b) * 31) + this.f27662c) * 31;
        float f2 = this.d;
        return i2 + (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.floatToIntBits(f2) : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActivityMetrics{screenWidth=");
        sb.append(this.f27660a);
        sb.append(", screenHeight=");
        sb.append(this.f27661b);
        sb.append(", screenDensityDpi=");
        sb.append(this.f27662c);
        sb.append(", screenDensityFactor=");
        return a.m(sb, this.d, '}');
    }
}

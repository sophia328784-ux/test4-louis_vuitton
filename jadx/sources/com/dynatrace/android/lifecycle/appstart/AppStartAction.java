package com.dynatrace.android.lifecycle.appstart;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.useraction.AppStartPlaceholderSegment;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;

/* JADX INFO: loaded from: classes2.dex */
public class AppStartAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MeasurementPoint f27670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DTXAutoActionWrapper f27671c;
    public final MeasurementPoint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppStartPlaceholderSegment f27672e;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27673a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MeasurementPoint f27674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MeasurementPoint f27675c;
        public DTXAutoActionWrapper d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public AppStartPlaceholderSegment f27676e;
    }

    public AppStartAction(Builder builder) {
        this.f27669a = builder.f27673a;
        this.f27670b = builder.f27674b;
        this.f27671c = builder.d;
        this.f27672e = builder.f27676e;
        this.d = builder.f27675c;
    }

    public final String toString() {
        return "AppStartAction{name='" + this.f27669a + "', startPoint=" + this.f27670b + ", parentAction=" + this.f27671c + ", endPoint=" + this.d + '}';
    }
}

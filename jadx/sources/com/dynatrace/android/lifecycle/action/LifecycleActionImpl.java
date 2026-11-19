package com.dynatrace.android.lifecycle.action;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.event.LifecycleEvent;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;
import com.dynatrace.android.useraction.InternalUserAction;
import com.dynatrace.android.useraction.LifecyclePlaceholderSegment;
import java.lang.Enum;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class LifecycleActionImpl<T extends Enum<T>> implements LifecycleAction<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MeasurementPoint f27648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DTXAutoActionWrapper f27649c;
    public final LifecyclePlaceholderSegment d;
    public MeasurementPoint g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f27651f = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f27650e = new AtomicBoolean(false);

    public static class ImmutableData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27652a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MeasurementPoint f27653b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DTXAutoActionWrapper f27654c;
        public LifecyclePlaceholderSegment d;
    }

    public LifecycleActionImpl(ImmutableData immutableData) {
        this.f27647a = immutableData.f27652a;
        this.f27648b = immutableData.f27653b;
        this.f27649c = immutableData.f27654c;
        this.d = immutableData.d;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final AtomicBoolean a() {
        return this.f27650e;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final MeasurementPoint b() {
        return this.f27648b;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final void c(LifecycleEvent lifecycleEvent) {
        this.f27651f.put(lifecycleEvent.f27693a, new MeasurementPoint(lifecycleEvent.f27694b, lifecycleEvent.f27695c));
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final LifecyclePlaceholderSegment d() {
        return this.d;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final HashMap e() {
        return this.f27651f;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final MeasurementPoint f() {
        return this.g;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final InternalUserAction g() {
        return this.f27649c;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final String getName() {
        return this.f27647a;
    }

    @Override // com.dynatrace.android.lifecycle.action.LifecycleAction
    public final void h(MeasurementPoint measurementPoint) {
        this.g = measurementPoint;
    }

    public final String toString() {
        return "LifecycleActionImpl{name='" + this.f27647a + "', startPoint=" + this.f27648b + ", endPoint=" + this.g + ", parentAction=" + this.f27649c + ", lifecycleEvents=" + this.f27651f + '}';
    }
}

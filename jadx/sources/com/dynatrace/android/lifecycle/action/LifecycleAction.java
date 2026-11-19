package com.dynatrace.android.lifecycle.action;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.event.LifecycleEvent;
import com.dynatrace.android.useraction.InternalUserAction;
import com.dynatrace.android.useraction.LifecyclePlaceholderSegment;
import java.lang.Enum;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public interface LifecycleAction<T extends Enum<T>> {
    AtomicBoolean a();

    MeasurementPoint b();

    void c(LifecycleEvent lifecycleEvent);

    LifecyclePlaceholderSegment d();

    HashMap e();

    MeasurementPoint f();

    InternalUserAction g();

    String getName();

    void h(MeasurementPoint measurementPoint);
}

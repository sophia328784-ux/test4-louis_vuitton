package com.dynatrace.android.lifecycle;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.action.LifecycleAction;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;

/* JADX INFO: loaded from: classes2.dex */
public interface ActionAggregator {
    DTXAutoActionWrapper a(MeasurementPoint measurementPoint, String str);

    void b(LifecycleAction lifecycleAction, DTXAutoActionWrapper dTXAutoActionWrapper, LifecycleController lifecycleController);
}

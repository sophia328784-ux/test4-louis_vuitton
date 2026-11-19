package com.dynatrace.android.lifecycle.action;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;
import com.dynatrace.android.useraction.LifecyclePlaceholderSegment;

/* JADX INFO: loaded from: classes2.dex */
public class LifecycleActionFactoryImpl implements LifecycleActionFactory {
    @Override // com.dynatrace.android.lifecycle.action.LifecycleActionFactory
    public final LifecycleActionImpl a(String str, DTXAutoActionWrapper dTXAutoActionWrapper, MeasurementPoint measurementPoint) {
        LifecycleActionImpl.ImmutableData immutableData = new LifecycleActionImpl.ImmutableData();
        immutableData.f27652a = str;
        immutableData.f27653b = measurementPoint;
        immutableData.f27654c = dTXAutoActionWrapper;
        immutableData.d = new LifecyclePlaceholderSegment(str, dTXAutoActionWrapper);
        return new LifecycleActionImpl(immutableData);
    }
}

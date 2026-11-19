package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.ActionAggregator;
import com.dynatrace.android.lifecycle.LifecycleController;
import com.dynatrace.android.lifecycle.action.LifecycleAction;

/* JADX INFO: loaded from: classes2.dex */
public class ActionAggregatorImpl implements ActionAggregator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActionNameCustomizer f27721a;

    public ActionAggregatorImpl(ActionNameCustomizer actionNameCustomizer) {
        this.f27721a = actionNameCustomizer;
    }

    @Override // com.dynatrace.android.lifecycle.ActionAggregator
    public final DTXAutoActionWrapper a(MeasurementPoint measurementPoint, String str) {
        return new DTXAutoActionWrapper(UserActionUtil.a(measurementPoint, this.f27721a.a(str)));
    }

    @Override // com.dynatrace.android.lifecycle.ActionAggregator
    public final void b(LifecycleAction lifecycleAction, DTXAutoActionWrapper dTXAutoActionWrapper, LifecycleController lifecycleController) {
        LifecyclePlaceholderSegment lifecyclePlaceholderSegmentD = lifecycleAction.d();
        lifecyclePlaceholderSegmentD.z = lifecycleController;
        lifecyclePlaceholderSegmentD.A = lifecycleAction;
        dTXAutoActionWrapper.e(lifecyclePlaceholderSegmentD);
        Core.f27287j.a(lifecyclePlaceholderSegmentD);
    }
}

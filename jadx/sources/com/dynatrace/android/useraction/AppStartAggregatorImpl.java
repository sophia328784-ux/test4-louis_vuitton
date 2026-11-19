package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.appstart.AppStartAggregator;

/* JADX INFO: loaded from: classes2.dex */
public class AppStartAggregatorImpl implements AppStartAggregator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActionNameCustomizer f27722a;

    public AppStartAggregatorImpl(ActionNameCustomizer actionNameCustomizer) {
        this.f27722a = actionNameCustomizer;
    }

    @Override // com.dynatrace.android.lifecycle.appstart.AppStartAggregator
    public final DTXAutoActionWrapper a(MeasurementPoint measurementPoint, String str) {
        return new DTXAutoActionWrapper(UserActionUtil.a(measurementPoint, this.f27722a.a(str)));
    }

    @Override // com.dynatrace.android.lifecycle.appstart.AppStartAggregator
    public final void b(AppStartPlaceholderSegment appStartPlaceholderSegment) {
        appStartPlaceholderSegment.A.e(appStartPlaceholderSegment);
        Core.f27287j.a(appStartPlaceholderSegment);
    }
}

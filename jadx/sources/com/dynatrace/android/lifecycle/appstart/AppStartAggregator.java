package com.dynatrace.android.lifecycle.appstart;

import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.useraction.AppStartPlaceholderSegment;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;

/* JADX INFO: loaded from: classes2.dex */
public interface AppStartAggregator {
    DTXAutoActionWrapper a(MeasurementPoint measurementPoint, String str);

    void b(AppStartPlaceholderSegment appStartPlaceholderSegment);
}

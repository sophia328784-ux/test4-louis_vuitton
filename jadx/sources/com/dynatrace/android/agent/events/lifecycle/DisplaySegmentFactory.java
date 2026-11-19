package com.dynatrace.android.agent.events.lifecycle;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.SegmentFactory;
import com.dynatrace.android.lifecycle.action.LifecycleAction;
import com.dynatrace.android.lifecycle.event.ActivityEventType;

/* JADX INFO: loaded from: classes2.dex */
public class DisplaySegmentFactory implements SegmentFactory<LifecycleAction<ActivityEventType>, DisplaySegment> {
    static {
        boolean z = Global.f27307a;
    }

    public static MeasurementPoint a(long j2, MeasurementPoint measurementPoint) {
        if (measurementPoint == null) {
            return null;
        }
        return new MeasurementPoint(measurementPoint.f27548a - j2, measurementPoint.f27549b);
    }
}

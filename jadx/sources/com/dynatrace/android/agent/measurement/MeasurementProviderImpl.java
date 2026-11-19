package com.dynatrace.android.agent.measurement;

import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class MeasurementProviderImpl implements MeasurementProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeLineProvider f27550a;

    public MeasurementProviderImpl(TimeLineProvider timeLineProvider) {
        this.f27550a = timeLineProvider;
    }

    @Override // com.dynatrace.android.agent.measurement.MeasurementProvider
    public final MeasurementPoint a() {
        return new MeasurementPoint(this.f27550a.a(), Utility.f27585a.getAndIncrement());
    }
}

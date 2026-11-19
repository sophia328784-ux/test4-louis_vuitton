package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.measurement.MeasurementPoint;

/* JADX INFO: loaded from: classes2.dex */
public class UserActionFactoryImpl implements UserActionFactory {
    @Override // com.dynatrace.android.useraction.UserActionFactory
    public final DTXAutoActionWrapper a(MeasurementPoint measurementPoint, String str) {
        int i2 = UserActionUtil.f27724a;
        DTXAutoAction dTXAutoActionB = DTXAutoAction.B(str, Session.b(measurementPoint.f27548a, false), AdkSettings.f27249k.f27252c);
        dTXAutoActionB.f27293b = measurementPoint.f27548a - dTXAutoActionB.f27297h.f27475a;
        dTXAutoActionB.g = measurementPoint.f27549b;
        return new DTXAutoActionWrapper(dTXAutoActionB);
    }
}

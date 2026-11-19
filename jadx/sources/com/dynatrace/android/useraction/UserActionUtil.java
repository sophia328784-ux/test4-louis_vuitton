package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.CustomSegment;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UserActionUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f27724a = 0;

    static {
        boolean z = Global.f27307a;
    }

    public static DTXAutoAction a(MeasurementPoint measurementPoint, String str) {
        DTXAutoAction dTXAutoAction = DTXAutoAction.N;
        DTXAutoAction dTXAutoActionB = null;
        if (dTXAutoAction != null && dTXAutoAction.x >= 9) {
            if (Global.f27307a) {
                Utility.n("Maximum depth of actions reached (10). Do not attach lifecycle action to user action '" + dTXAutoAction.o + "'");
            }
            dTXAutoAction = null;
        }
        if (dTXAutoAction == null || !dTXAutoAction.l()) {
            dTXAutoActionB = dTXAutoAction;
        } else if (Global.f27307a) {
            Utility.n("Limit of auto user actions is reached: " + CustomSegment.t);
        }
        if (dTXAutoActionB == null) {
            dTXAutoActionB = DTXAutoAction.B(str, Session.b(measurementPoint.f27548a, false), AdkSettings.f27249k.f27252c);
            dTXAutoActionB.f27293b = measurementPoint.f27548a - dTXAutoActionB.f27297h.f27475a;
            dTXAutoActionB.g = measurementPoint.f27549b;
        }
        dTXAutoActionB.z();
        dTXAutoActionB.f27297h.j(TimeLineProvider.f27311c.a());
        return dTXAutoActionB;
    }
}

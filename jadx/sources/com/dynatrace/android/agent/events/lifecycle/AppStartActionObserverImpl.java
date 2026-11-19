package com.dynatrace.android.agent.events.lifecycle;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import com.dynatrace.android.lifecycle.SimpleClassNameGenerator;
import com.dynatrace.android.lifecycle.appstart.AppStartAction;
import com.dynatrace.android.lifecycle.appstart.AppStartActionObserver;
import com.dynatrace.android.useraction.AppStartPlaceholderSegment;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;

/* JADX INFO: loaded from: classes2.dex */
public class AppStartActionObserverImpl implements AppStartActionObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppStartSegmentFactory f27522a = new AppStartSegmentFactory();

    static {
        boolean z = Global.f27307a;
    }

    @Override // com.dynatrace.android.lifecycle.appstart.AppStartActionObserver
    public final void a(AppStartAction appStartAction) {
        DTXAutoAction dTXAutoAction;
        DTXAutoActionWrapper dTXAutoActionWrapper = appStartAction.f27671c;
        if (dTXAutoActionWrapper == null || dTXAutoActionWrapper.f27723a.f27295e) {
            boolean z = Global.f27307a;
            return;
        }
        if (!AdkSettings.f27249k.f27254f.f27346j && (dTXAutoAction = DTXAutoAction.N) != null) {
            dTXAutoAction.z();
        }
        if (Dynatrace.c()) {
            AppStartSegmentFactory appStartSegmentFactory = this.f27522a;
            DTXAutoAction dTXAutoAction2 = dTXAutoActionWrapper.f27723a;
            Session session = dTXAutoAction2.f27297h;
            int i2 = dTXAutoAction2.f27298i;
            appStartSegmentFactory.getClass();
            boolean z2 = Global.f27307a;
            long j2 = session.f27475a;
            MeasurementPoint measurementPoint = appStartAction.f27670b;
            String str = appStartAction.f27669a;
            long j3 = measurementPoint.f27548a;
            MeasurementPoint measurementPoint2 = new MeasurementPoint(j3 - j2, measurementPoint.f27549b);
            String strA = str != null ? new SimpleClassNameGenerator().a(str) : null;
            AppStartSegment.Builder builder = new AppStartSegment.Builder();
            builder.f27523a = strA;
            builder.f27524b = session;
            builder.f27525c = i2;
            DTXAutoActionWrapper dTXAutoActionWrapper2 = appStartAction.f27671c;
            builder.d = dTXAutoActionWrapper2 != null ? dTXAutoActionWrapper2.f27723a.q : 0L;
            builder.f27526e = EventType.APP_START;
            builder.f27527f = measurementPoint2;
            MeasurementPoint measurementPoint3 = appStartAction.d;
            builder.g = measurementPoint3 != null ? new MeasurementPoint(measurementPoint3.f27548a - j3, measurementPoint3.f27549b) : null;
            builder.f27528h = true;
            AppStartSegment appStartSegment = new AppStartSegment(builder);
            ActivityLifecycleMonitor activityLifecycleMonitor = Core.f27280a;
            Core.g(appStartSegment, appStartSegment.p);
        }
        AppStartPlaceholderSegment appStartPlaceholderSegment = appStartAction.f27672e;
        Core.f27287j.e(appStartPlaceholderSegment);
        appStartPlaceholderSegment.a();
        dTXAutoActionWrapper.c();
    }
}

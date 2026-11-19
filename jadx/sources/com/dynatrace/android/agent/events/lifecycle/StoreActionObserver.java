package com.dynatrace.android.agent.events.lifecycle;

import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import com.dynatrace.android.lifecycle.SimpleClassNameGenerator;
import com.dynatrace.android.lifecycle.action.LifecycleAction;
import com.dynatrace.android.lifecycle.action.LifecycleActionObserver;
import com.dynatrace.android.lifecycle.event.ActivityEventType;
import com.dynatrace.android.useraction.InternalUserAction;
import com.dynatrace.android.useraction.LifecyclePlaceholderSegment;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class StoreActionObserver implements LifecycleActionObserver {
    static {
        boolean z = Global.f27307a;
    }

    public final void a(LifecycleAction lifecycleAction) {
        DisplaySegment displaySegment;
        InternalUserAction internalUserActionG = lifecycleAction.g();
        if (internalUserActionG == null || internalUserActionG.a()) {
            boolean z = Global.f27307a;
            return;
        }
        if (Dynatrace.c()) {
            new DisplaySegmentFactory();
            Session session = internalUserActionG.getSession();
            int iD = internalUserActionG.d();
            synchronized (lifecycleAction) {
                try {
                    boolean z2 = Global.f27307a;
                    HashMap mapE = lifecycleAction.e();
                    long j2 = session.f27475a;
                    long j3 = lifecycleAction.b().f27548a;
                    MeasurementPoint measurementPointA = DisplaySegmentFactory.a(j2, lifecycleAction.b());
                    SimpleClassNameGenerator simpleClassNameGenerator = new SimpleClassNameGenerator();
                    DisplaySegment.Builder builder = new DisplaySegment.Builder();
                    builder.f27530a = simpleClassNameGenerator.a(lifecycleAction.getName());
                    builder.f27531b = session;
                    builder.f27532c = iD;
                    builder.d = lifecycleAction.g() != null ? lifecycleAction.g().b() : 0L;
                    ActivityEventType activityEventType = ActivityEventType.ON_CREATE;
                    builder.f27533e = mapE.containsKey(activityEventType) ? EventType.DISPLAY : EventType.REDISPLAY;
                    builder.f27534f = measurementPointA;
                    builder.g = DisplaySegmentFactory.a(j3, (MeasurementPoint) mapE.get(activityEventType));
                    builder.f27535h = DisplaySegmentFactory.a(j3, (MeasurementPoint) mapE.get(ActivityEventType.ON_START));
                    builder.f27536i = DisplaySegmentFactory.a(j3, (MeasurementPoint) mapE.get(ActivityEventType.ON_RESUME));
                    builder.f27537j = DisplaySegmentFactory.a(j3, lifecycleAction.f());
                    builder.f27538k = true;
                    displaySegment = new DisplaySegment(builder);
                } catch (Throwable th) {
                    throw th;
                }
            }
            ActivityLifecycleMonitor activityLifecycleMonitor = Core.f27280a;
            Core.g(displaySegment, displaySegment.p);
        }
        LifecyclePlaceholderSegment lifecyclePlaceholderSegmentD = lifecycleAction.d();
        Core.f27287j.e(lifecyclePlaceholderSegmentD);
        lifecyclePlaceholderSegmentD.a();
    }
}

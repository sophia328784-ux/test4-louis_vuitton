package com.dynatrace.android.lifecycle;

import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.events.lifecycle.FinishedActionObserver;
import com.dynatrace.android.agent.events.lifecycle.StoreActionObserver;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.agent.measurement.MeasurementProvider;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.action.LifecycleAction;
import com.dynatrace.android.lifecycle.action.LifecycleActionFactory;
import com.dynatrace.android.lifecycle.action.LifecycleActionImpl;
import com.dynatrace.android.lifecycle.callback.ComponentIdentity;
import com.dynatrace.android.lifecycle.event.ActivityEventType;
import com.dynatrace.android.lifecycle.event.LifecycleEvent;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;
import com.dynatrace.android.useraction.InternalUserAction;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class LifecycleController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f27642a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LifecycleActionFactory f27643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FinishedActionObserver f27644c;
    public final StoreActionObserver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MeasurementProvider f27645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ActionAggregator f27646f;

    static {
        boolean z = Global.f27307a;
    }

    public LifecycleController(LifecycleActionFactory lifecycleActionFactory, FinishedActionObserver finishedActionObserver, StoreActionObserver storeActionObserver, MeasurementProvider measurementProvider, ActionAggregator actionAggregator) {
        this.f27643b = lifecycleActionFactory;
        this.f27644c = finishedActionObserver;
        this.d = storeActionObserver;
        this.f27645e = measurementProvider;
        this.f27646f = actionAggregator;
    }

    public final void a(ComponentIdentity componentIdentity, ActivityEventType activityEventType) {
        MeasurementPoint measurementPointA;
        LifecycleAction lifecycleAction = (LifecycleAction) this.f27642a.get(componentIdentity);
        if (lifecycleAction != null) {
            measurementPointA = this.f27645e.a();
        } else {
            if (Global.f27307a) {
                Utility.n("start activity monitoring for " + componentIdentity);
            }
            MeasurementPoint measurementPointA2 = this.f27645e.a();
            MeasurementPoint measurementPointA3 = this.f27645e.a();
            MeasurementPoint measurementPointA4 = this.f27645e.a();
            DTXAutoActionWrapper dTXAutoActionWrapperA = this.f27646f.a(measurementPointA2, componentIdentity.f27691a);
            LifecycleActionImpl lifecycleActionImplA = this.f27643b.a(componentIdentity.f27691a, dTXAutoActionWrapperA, measurementPointA3);
            this.f27646f.b(lifecycleActionImplA, dTXAutoActionWrapperA, this);
            this.f27642a.put(componentIdentity, lifecycleActionImplA);
            lifecycleAction = lifecycleActionImplA;
            measurementPointA = measurementPointA4;
        }
        LifecycleEvent lifecycleEvent = new LifecycleEvent(activityEventType, measurementPointA);
        synchronized (lifecycleAction) {
            lifecycleAction.c(lifecycleEvent);
        }
    }

    public final void b(ComponentIdentity componentIdentity) {
        LifecycleAction lifecycleAction = (LifecycleAction) this.f27642a.remove(componentIdentity);
        if (lifecycleAction == null) {
            return;
        }
        if (Global.f27307a) {
            Utility.n("finish activity monitoring for " + componentIdentity);
        }
        if (lifecycleAction.a().compareAndSet(false, true)) {
            lifecycleAction.h(this.f27645e.a());
            this.f27644c.f27539a.a(lifecycleAction);
            InternalUserAction internalUserActionG = lifecycleAction.g();
            if (internalUserActionG == null || internalUserActionG.a()) {
                return;
            }
            internalUserActionG.c();
        }
    }
}

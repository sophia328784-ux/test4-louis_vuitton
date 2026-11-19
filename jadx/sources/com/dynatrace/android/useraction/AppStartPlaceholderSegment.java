package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.DTXActionImpl;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.appstart.AppStartController;

/* JADX INFO: loaded from: classes2.dex */
public class AppStartPlaceholderSegment extends DTXActionImpl {
    public final DTXAutoActionWrapper A;
    public final AppStartController z;

    /* JADX WARN: Illegal instructions before constructor call */
    public AppStartPlaceholderSegment(String str, DTXAutoActionWrapper dTXAutoActionWrapper, AppStartController appStartController) {
        EventType eventType = EventType.ACTION_MANUAL;
        DTXAutoAction dTXAutoAction = dTXAutoActionWrapper.f27723a;
        super(str, eventType, dTXAutoAction.q, dTXAutoAction.f27297h, dTXAutoAction.f27298i, false, dTXAutoAction);
        this.z = appStartController;
        this.A = dTXAutoActionWrapper;
    }

    @Override // com.dynatrace.android.agent.DTXActionImpl, com.dynatrace.android.agent.CustomSegment
    public final StringBuilder h() {
        return new StringBuilder();
    }

    @Override // com.dynatrace.android.agent.DTXActionImpl
    public final void v(boolean z) {
        if (this.f27295e) {
            return;
        }
        super.v(false);
        AppStartController appStartController = this.z;
        appStartController.a(appStartController.f27678a.a(), null);
    }

    public final void y() {
        if (this.f27295e) {
            return;
        }
        super.v(false);
        AppStartController appStartController = this.z;
        if (appStartController.d.compareAndSet(false, true)) {
            appStartController.f27682f.unregisterActivityLifecycleCallbacks(appStartController.f27681e);
            if (Global.f27307a) {
                int i2 = AppStartController.f27677h;
                Utility.n("AppStart action dropped");
            }
        }
    }
}

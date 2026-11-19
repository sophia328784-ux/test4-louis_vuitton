package com.dynatrace.android.useraction;

import com.dynatrace.android.agent.DTXActionImpl;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.lifecycle.LifecycleController;
import com.dynatrace.android.lifecycle.action.LifecycleAction;

/* JADX INFO: loaded from: classes2.dex */
public class LifecyclePlaceholderSegment extends DTXActionImpl {
    public LifecycleAction A;
    public LifecycleController z;

    /* JADX WARN: Illegal instructions before constructor call */
    public LifecyclePlaceholderSegment(String str, DTXAutoActionWrapper dTXAutoActionWrapper) {
        EventType eventType = EventType.ACTION_MANUAL;
        DTXAutoAction dTXAutoAction = dTXAutoActionWrapper.f27723a;
        super(str, eventType, dTXAutoAction.q, dTXAutoAction.f27297h, dTXAutoAction.f27298i, false, dTXAutoAction);
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
        LifecycleController lifecycleController = this.z;
        LifecycleAction lifecycleAction = this.A;
        lifecycleController.getClass();
        if (lifecycleAction.a().compareAndSet(false, true)) {
            lifecycleAction.h(lifecycleController.f27645e.a());
            lifecycleController.d.a(lifecycleAction);
        }
    }
}

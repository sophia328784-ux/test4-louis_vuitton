package com.dynatrace.agent.userinteraction;

import android.view.MotionEvent;
import android.view.View;
import com.dynatrace.android.agent.useraction.OneAgentUserInteractionManagerBridge;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;", "Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;", "Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;", "oneAgentUserInteractionManager", "<init>", "(Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentUserInteractionManagerBridgeImpl implements OneAgentUserInteractionManagerBridge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OneAgentUserInteractionManager f27110a;

    public OneAgentUserInteractionManagerBridgeImpl(OneAgentUserInteractionManager oneAgentUserInteractionManager) {
        oneAgentUserInteractionManager.getClass();
        this.f27110a = oneAgentUserInteractionManager;
    }

    @Override // com.dynatrace.android.agent.useraction.OneAgentUserInteractionManagerBridge
    public final void a(View view, MotionEvent motionEvent) {
        view.getClass();
        motionEvent.getClass();
        this.f27110a.a(view, motionEvent);
    }

    @Override // com.dynatrace.android.agent.useraction.OneAgentUserInteractionManagerBridge
    public final void b(View view) {
        view.getClass();
        this.f27110a.b(view);
    }
}

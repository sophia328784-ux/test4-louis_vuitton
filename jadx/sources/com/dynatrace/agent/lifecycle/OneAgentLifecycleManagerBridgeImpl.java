package com.dynatrace.agent.lifecycle;

import android.app.Application;
import com.dynatrace.agent.lifecycle.model.AppStartupInstantType;
import com.dynatrace.agent.view.ViewContextManagerApi;
import com.dynatrace.android.agent.lifecycle.OneAgentLifecycleManagerBridge;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;", "Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;", "Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;", "oneAgentLifecycleManager", "Lcom/dynatrace/agent/view/ViewContextManagerApi;", "viewContextManager", "<init>", "(Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManager;Lcom/dynatrace/agent/view/ViewContextManagerApi;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentLifecycleManagerBridgeImpl implements OneAgentLifecycleManagerBridge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OneAgentLifecycleManager f26843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewContextManagerApi f26844b;

    public OneAgentLifecycleManagerBridgeImpl(OneAgentLifecycleManager oneAgentLifecycleManager, ViewContextManagerApi viewContextManagerApi) {
        oneAgentLifecycleManager.getClass();
        viewContextManagerApi.getClass();
        this.f26843a = oneAgentLifecycleManager;
        this.f26844b = viewContextManagerApi;
    }

    @Override // com.dynatrace.android.agent.lifecycle.OneAgentLifecycleManagerBridge
    public final void a() {
        Utility.b("onAppStart");
        OneAgentLifecycleManager oneAgentLifecycleManager = this.f26843a;
        Application application = oneAgentLifecycleManager.f26839b;
        if (oneAgentLifecycleManager.f26840c) {
            return;
        }
        oneAgentLifecycleManager.f26840c = true;
        oneAgentLifecycleManager.f26838a.d(AppStartupInstantType.APPLICATION_CREATE_START);
        application.registerActivityLifecycleCallbacks(oneAgentLifecycleManager.d);
        application.registerComponentCallbacks(oneAgentLifecycleManager.f26841e);
    }

    @Override // com.dynatrace.android.agent.lifecycle.OneAgentLifecycleManagerBridge
    public final void b() {
        Utility.b("stop OneAgent, unregister lifecycle callbacks");
        OneAgentLifecycleManager oneAgentLifecycleManager = this.f26843a;
        oneAgentLifecycleManager.f26840c = false;
        oneAgentLifecycleManager.f26839b.unregisterActivityLifecycleCallbacks(oneAgentLifecycleManager.d);
    }

    @Override // com.dynatrace.android.agent.lifecycle.OneAgentLifecycleManagerBridge
    public final void c() {
        this.f26844b.d();
    }
}

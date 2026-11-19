package com.networkbench.agent.impl.okhttp3.tcp;

import okhttp3.Call;
import okhttp3.EventListener;

/* JADX INFO: loaded from: classes4.dex */
public class NBSHttpTcpFactory implements EventListener.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EventListener.Factory f37589a;

    @Override // okhttp3.EventListener.Factory
    public EventListener create(Call call) {
        EventListener.Factory factory = this.f37589a;
        if (factory == null) {
            return new NBSHttpTcpListener(call.getF77119c().f76969a);
        }
        EventListener eventListenerCreate = factory.create(call);
        return eventListenerCreate.getClass().getName().startsWith("com.tencent") ? eventListenerCreate : new NBSHttpTcpListener(call.getF77119c().f76969a, eventListenerCreate);
    }

    public void setFactory(EventListener.Factory factory) {
        if (factory.getClass().getName().startsWith("com.networkbench.agent.impl")) {
            return;
        }
        this.f37589a = factory;
    }
}

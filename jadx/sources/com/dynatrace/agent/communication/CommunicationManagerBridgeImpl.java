package com.dynatrace.agent.communication;

import com.dynatrace.android.agent.communication.CommunicationManagerBridge;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;", "Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;", "Lcom/dynatrace/agent/communication/CommunicationManager;", "communicationManager", "<init>", "(Lcom/dynatrace/agent/communication/CommunicationManager;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CommunicationManagerBridgeImpl implements CommunicationManagerBridge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CommunicationManager f26521a;

    public CommunicationManagerBridgeImpl(CommunicationManager communicationManager) {
        communicationManager.getClass();
        this.f26521a = communicationManager;
    }

    @Override // com.dynatrace.android.agent.communication.CommunicationManagerBridge
    public final void a(ServerConfiguration serverConfiguration) {
        serverConfiguration.getClass();
        this.f26521a.d(serverConfiguration);
    }

    @Override // com.dynatrace.android.agent.communication.CommunicationManagerBridge
    public final void b(int i2) {
        this.f26521a.c(Integer.valueOf(i2));
        Utility.b("received external server id update to: " + i2);
    }
}

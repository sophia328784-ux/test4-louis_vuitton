package com.dynatrace.android.agent.communication;

import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.android.agent.conf.ServerConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public interface ServerConfigurationListener {
    void a(ServerConfiguration serverConfiguration);

    void b(AgentState agentState);
}

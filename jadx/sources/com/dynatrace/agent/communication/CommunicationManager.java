package com.dynatrace.agent.communication;

import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationManager;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface CommunicationManager {
    void a();

    Unit b(ServerConfigurationV4 serverConfigurationV4, ServerConfiguration serverConfiguration);

    void c(Integer num);

    void d(ServerConfiguration serverConfiguration);
}

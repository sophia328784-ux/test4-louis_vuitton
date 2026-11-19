package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/communication/LocalServerData;", "", "Lcom/dynatrace/agent/communication/api/AgentState;", "state", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;", "config", "Lcom/dynatrace/android/agent/conf/ServerConfiguration;", "configV3", "<init>", "(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class LocalServerData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AgentState f26561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServerConfigurationV4 f26562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerConfiguration f26563c;

    public LocalServerData(AgentState agentState, ServerConfigurationV4 serverConfigurationV4, ServerConfiguration serverConfiguration) {
        agentState.getClass();
        serverConfigurationV4.getClass();
        serverConfiguration.getClass();
        this.f26561a = agentState;
        this.f26562b = serverConfigurationV4;
        this.f26563c = serverConfiguration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalServerData)) {
            return false;
        }
        LocalServerData localServerData = (LocalServerData) obj;
        return Intrinsics.c(this.f26561a, localServerData.f26561a) && Intrinsics.c(this.f26562b, localServerData.f26562b) && Intrinsics.c(this.f26563c, localServerData.f26563c);
    }

    public final int hashCode() {
        return this.f26563c.hashCode() + ((this.f26562b.hashCode() + (this.f26561a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "LocalServerData(state=" + this.f26561a + ", config=" + this.f26562b + ", configV3=" + this.f26563c + ')';
    }
}

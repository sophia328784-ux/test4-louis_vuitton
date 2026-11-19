package com.dynatrace.agent.communication.api;

import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/communication/api/ServerDataUpdate;", "", "Lcom/dynatrace/agent/communication/api/AgentState;", "state", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;", "config", "Lcom/dynatrace/android/agent/conf/ServerConfiguration;", "configV3", "<init>", "(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ServerDataUpdate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AgentState f26621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServerConfigurationV4 f26622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerConfiguration f26623c;

    public ServerDataUpdate(AgentState agentState, ServerConfigurationV4 serverConfigurationV4, ServerConfiguration serverConfiguration) {
        agentState.getClass();
        this.f26621a = agentState;
        this.f26622b = serverConfigurationV4;
        this.f26623c = serverConfiguration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerDataUpdate)) {
            return false;
        }
        ServerDataUpdate serverDataUpdate = (ServerDataUpdate) obj;
        return Intrinsics.c(this.f26621a, serverDataUpdate.f26621a) && Intrinsics.c(this.f26622b, serverDataUpdate.f26622b) && Intrinsics.c(this.f26623c, serverDataUpdate.f26623c);
    }

    public final int hashCode() {
        int iHashCode = this.f26621a.hashCode() * 31;
        ServerConfigurationV4 serverConfigurationV4 = this.f26622b;
        int iHashCode2 = (iHashCode + (serverConfigurationV4 == null ? 0 : serverConfigurationV4.hashCode())) * 31;
        ServerConfiguration serverConfiguration = this.f26623c;
        return iHashCode2 + (serverConfiguration != null ? serverConfiguration.hashCode() : 0);
    }

    public final String toString() {
        return "ServerDataUpdate(state=" + this.f26621a + ", config=" + this.f26622b + ", configV3=" + this.f26623c + ')';
    }
}

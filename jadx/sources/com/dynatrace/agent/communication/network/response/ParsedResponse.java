package com.dynatrace.agent.communication.network.response;

import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ParsedResponse;", "", "Lcom/dynatrace/agent/communication/api/AgentState;", "state", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;", "configuration", "<init>", "(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ParsedResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AgentState f26653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ServerConfigurationV4 f26654b;

    public ParsedResponse(AgentState agentState, ServerConfigurationV4 serverConfigurationV4) {
        agentState.getClass();
        this.f26653a = agentState;
        this.f26654b = serverConfigurationV4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParsedResponse)) {
            return false;
        }
        ParsedResponse parsedResponse = (ParsedResponse) obj;
        return Intrinsics.c(this.f26653a, parsedResponse.f26653a) && Intrinsics.c(this.f26654b, parsedResponse.f26654b);
    }

    public final int hashCode() {
        int iHashCode = this.f26653a.hashCode() * 31;
        ServerConfigurationV4 serverConfigurationV4 = this.f26654b;
        return iHashCode + (serverConfigurationV4 == null ? 0 : serverConfigurationV4.hashCode());
    }

    public final String toString() {
        return "ParsedResponse(state=" + this.f26653a + ", configuration=" + this.f26654b + ')';
    }
}

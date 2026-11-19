package com.dynatrace.agent.common.connectivity;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/common/connectivity/NetworkState;", "", "", "isConnected", "Lcom/dynatrace/agent/common/connectivity/NetworkType;", "networkType", "<init>", "(ZLcom/dynatrace/agent/common/connectivity/NetworkType;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class NetworkState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f26507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NetworkType f26508b;

    public NetworkState(boolean z, NetworkType networkType) {
        networkType.getClass();
        this.f26507a = z;
        this.f26508b = networkType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        NetworkState networkState = (NetworkState) obj;
        return this.f26507a == networkState.f26507a && this.f26508b == networkState.f26508b;
    }

    public final int hashCode() {
        return this.f26508b.hashCode() + (Boolean.hashCode(this.f26507a) * 31);
    }

    public final String toString() {
        return "NetworkState(isConnected=" + this.f26507a + ", networkType=" + this.f26508b + ')';
    }
}

package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.ServerDataUpdate;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationContext;", "", "Lkotlin/time/Duration;", "waitingTime", "Lcom/dynatrace/agent/communication/CommunicationState;", "commState", "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;", "serverData", "<init>", "(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class CommunicationContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CommunicationState f26513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerDataUpdate f26514c;

    public CommunicationContext(long j2, CommunicationState communicationState, ServerDataUpdate serverDataUpdate, DefaultConstructorMarker defaultConstructorMarker) {
        communicationState.getClass();
        this.f26512a = j2;
        this.f26513b = communicationState;
        this.f26514c = serverDataUpdate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommunicationContext)) {
            return false;
        }
        CommunicationContext communicationContext = (CommunicationContext) obj;
        return Duration.d(this.f26512a, communicationContext.f26512a) && this.f26513b.equals(communicationContext.f26513b) && Intrinsics.c(this.f26514c, communicationContext.f26514c);
    }

    public final int hashCode() {
        Duration.Companion companion = Duration.INSTANCE;
        int iHashCode = (this.f26513b.hashCode() + (Long.hashCode(this.f26512a) * 31)) * 31;
        ServerDataUpdate serverDataUpdate = this.f26514c;
        return iHashCode + (serverDataUpdate == null ? 0 : serverDataUpdate.hashCode());
    }

    public final String toString() {
        return "CommunicationContext(waitingTime=" + ((Object) Duration.l(this.f26512a)) + ", commState=" + this.f26513b + ", serverData=" + this.f26514c + ')';
    }
}

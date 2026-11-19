package com.dynatrace.agent.useraction;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/useraction/RetiredUserAction;", "", "Lcom/dynatrace/agent/useraction/ActiveUserAction;", "userAction", "", "endTime", "Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;", "completeReason", "", "interruptedByInstanceId", "<init>", "(Lcom/dynatrace/agent/useraction/ActiveUserAction;JLcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RetiredUserAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActiveUserAction f27067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ActiveUserAction.CompleteReason f27069c;

    public RetiredUserAction(ActiveUserAction activeUserAction, long j2, ActiveUserAction.CompleteReason completeReason, String str) {
        activeUserAction.getClass();
        completeReason.getClass();
        this.f27067a = activeUserAction;
        this.f27068b = j2;
        this.f27069c = completeReason;
    }

    public /* synthetic */ RetiredUserAction(ActiveUserAction activeUserAction, long j2, ActiveUserAction.CompleteReason completeReason, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(activeUserAction, j2, completeReason, (i2 & 8) != 0 ? null : str);
    }
}

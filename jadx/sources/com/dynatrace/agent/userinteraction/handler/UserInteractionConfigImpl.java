package com.dynatrace.agent.userinteraction.handler;

import com.dynatrace.agent.common.InstrumentationFlavor;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;", "Lcom/dynatrace/agent/common/InstrumentationFlavor;", "instrumentationFlavor", "<init>", "(Lcom/dynatrace/agent/common/InstrumentationFlavor;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class UserInteractionConfigImpl implements UserInteractionConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InstrumentationFlavor f27130a;

    public UserInteractionConfigImpl(InstrumentationFlavor instrumentationFlavor) {
        instrumentationFlavor.getClass();
        this.f27130a = instrumentationFlavor;
    }

    @Override // com.dynatrace.agent.userinteraction.handler.UserInteractionConfig
    public final boolean a() {
        InstrumentationFlavor instrumentationFlavor = InstrumentationFlavor.PLAIN;
        InstrumentationFlavor instrumentationFlavor2 = this.f27130a;
        return instrumentationFlavor2 == instrumentationFlavor || instrumentationFlavor2 == InstrumentationFlavor.JETPACK_COMPOSE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UserInteractionConfigImpl) && this.f27130a == ((UserInteractionConfigImpl) obj).f27130a;
    }

    public final int hashCode() {
        return this.f27130a.hashCode();
    }

    public final String toString() {
        return "UserInteractionConfigImpl(instrumentationFlavor=" + this.f27130a + ')';
    }
}

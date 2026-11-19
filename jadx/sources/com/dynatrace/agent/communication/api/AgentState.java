package com.dynatrace.agent.communication.api;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/api/AgentState;", "", "Enabled", "Disabled", "Lcom/dynatrace/agent/communication/api/AgentState$Disabled;", "Lcom/dynatrace/agent/communication/api/AgentState$Enabled;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class AgentState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/api/AgentState$Disabled;", "Lcom/dynatrace/agent/communication/api/AgentState;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Disabled extends AgentState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Disabled f26619a = new Disabled(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Disabled);
        }

        public final int hashCode() {
            return 264509867;
        }

        public final String toString() {
            return "Disabled";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/api/AgentState$Enabled;", "Lcom/dynatrace/agent/communication/api/AgentState;", "", "onlyHighPriorityEvents", "<init>", "(Z)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Enabled extends AgentState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f26620a;

        public Enabled(boolean z) {
            super(null);
            this.f26620a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Enabled) && this.f26620a == ((Enabled) obj).f26620a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f26620a);
        }

        public final String toString() {
            return d21.q(new StringBuilder("Enabled(onlyHighPriorityEvents="), this.f26620a, ')');
        }
    }

    public AgentState(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

package com.dynatrace.agent.useraction;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/useraction/SignificantEvent;", "", "WebRequest", "Navigation", "Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;", "Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class SignificantEvent {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;", "Lcom/dynatrace/agent/useraction/SignificantEvent;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Navigation extends SignificantEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Navigation f27070a = new Navigation(null);

        public final String toString() {
            return "Navigation";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;", "Lcom/dynatrace/agent/useraction/SignificantEvent;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class WebRequest extends SignificantEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final WebRequest f27071a = new WebRequest(null);

        public final String toString() {
            return "WebRequest";
        }
    }

    public SignificantEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}

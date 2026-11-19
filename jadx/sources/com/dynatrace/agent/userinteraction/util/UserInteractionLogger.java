package com.dynatrace.agent.userinteraction.util;

import com.dynatrace.agent.userinteraction.model.UiElement;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;", "", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserInteractionLogger {
    public static String a(UiElement uiElement) {
        return "class: " + uiElement.f27190b + " name: " + uiElement.f27189a + " id: " + uiElement.f27191c;
    }
}

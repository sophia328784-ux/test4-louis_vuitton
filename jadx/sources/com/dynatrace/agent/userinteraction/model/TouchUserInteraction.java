package com.dynatrace.agent.userinteraction.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchUserInteraction;", "", "", "Lcom/dynatrace/agent/userinteraction/model/TouchEvent;", "positions", "Lcom/dynatrace/agent/userinteraction/model/UiElement;", "element", "responder", "<init>", "(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/UiElement;Lcom/dynatrace/agent/userinteraction/model/UiElement;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TouchUserInteraction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f27181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UiElement f27182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UiElement f27183c;

    public TouchUserInteraction(List<TouchEvent> list, UiElement uiElement, UiElement uiElement2) {
        list.getClass();
        uiElement.getClass();
        this.f27181a = list;
        this.f27182b = uiElement;
        this.f27183c = uiElement2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TouchUserInteraction)) {
            return false;
        }
        TouchUserInteraction touchUserInteraction = (TouchUserInteraction) obj;
        return Intrinsics.c(this.f27181a, touchUserInteraction.f27181a) && Intrinsics.c(this.f27182b, touchUserInteraction.f27182b) && Intrinsics.c(this.f27183c, touchUserInteraction.f27183c);
    }

    public final int hashCode() {
        int iHashCode = (this.f27182b.hashCode() + (this.f27181a.hashCode() * 31)) * 31;
        UiElement uiElement = this.f27183c;
        return iHashCode + (uiElement == null ? 0 : uiElement.hashCode());
    }

    public final String toString() {
        return "TouchUserInteraction(positions=" + this.f27181a + ", element=" + this.f27182b + ", responder=" + this.f27183c + ')';
    }
}

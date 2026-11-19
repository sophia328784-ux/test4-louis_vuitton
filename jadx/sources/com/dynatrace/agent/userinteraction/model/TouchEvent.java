package com.dynatrace.agent.userinteraction.model;

import defpackage.a;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchEvent;", "", "Lcom/dynatrace/agent/userinteraction/model/TouchAction;", "action", "", "x", "y", "<init>", "(Lcom/dynatrace/agent/userinteraction/model/TouchAction;FF)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class TouchEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TouchAction f27178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f27179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f27180c;

    public TouchEvent(TouchAction touchAction, float f2, float f3) {
        touchAction.getClass();
        this.f27178a = touchAction;
        this.f27179b = f2;
        this.f27180c = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TouchEvent)) {
            return false;
        }
        TouchEvent touchEvent = (TouchEvent) obj;
        return this.f27178a == touchEvent.f27178a && Float.compare(this.f27179b, touchEvent.f27179b) == 0 && Float.compare(this.f27180c, touchEvent.f27180c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f27180c) + pq0.b(this.f27178a.hashCode() * 31, 31, this.f27179b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TouchEvent(action=");
        sb.append(this.f27178a);
        sb.append(", x=");
        sb.append(this.f27179b);
        sb.append(", y=");
        return a.m(sb, this.f27180c, ')');
    }
}

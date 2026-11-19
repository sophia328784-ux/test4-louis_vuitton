package com.dynatrace.agent.compose.userinteraction.model;

import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/model/ComposeTouchEvent;", "", "Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;", "hitElementInfo", "", "overlappedElementsInfo", "clickableElementInfo", "<init>", "(Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;Ljava/util/List;Lcom/dynatrace/agent/compose/userinteraction/model/ComposeElementInfo;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ComposeTouchEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ComposeElementInfo f26691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ComposeElementInfo f26693c;

    public ComposeTouchEvent(ComposeElementInfo composeElementInfo, List<ComposeElementInfo> list, ComposeElementInfo composeElementInfo2) {
        composeElementInfo.getClass();
        list.getClass();
        this.f26691a = composeElementInfo;
        this.f26692b = list;
        this.f26693c = composeElementInfo2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposeTouchEvent)) {
            return false;
        }
        ComposeTouchEvent composeTouchEvent = (ComposeTouchEvent) obj;
        return Intrinsics.c(this.f26691a, composeTouchEvent.f26691a) && Intrinsics.c(this.f26692b, composeTouchEvent.f26692b) && Intrinsics.c(this.f26693c, composeTouchEvent.f26693c);
    }

    public final int hashCode() {
        int iA = n00.a(this.f26691a.hashCode() * 31, 31, this.f26692b);
        ComposeElementInfo composeElementInfo = this.f26693c;
        return iA + (composeElementInfo == null ? 0 : composeElementInfo.hashCode());
    }

    public final String toString() {
        return "ComposeTouchEvent(hitElementInfo=" + this.f26691a + ", overlappedElementsInfo=" + this.f26692b + ", clickableElementInfo=" + this.f26693c + ')';
    }

    public /* synthetic */ ComposeTouchEvent(ComposeElementInfo composeElementInfo, List list, ComposeElementInfo composeElementInfo2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(composeElementInfo, list, (i2 & 4) != 0 ? null : composeElementInfo2);
    }
}

package com.dynatrace.agent.userinteraction.model;

import defpackage.fc;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B7\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureUserInteraction;", "", "", "Lcom/dynatrace/agent/userinteraction/model/GesturePosition;", "positions", "Lcom/dynatrace/agent/userinteraction/model/GestureIntention;", "intention", "", "intentionScore", "", "durationMillis", "pointers", "<init>", "(Ljava/util/List;Lcom/dynatrace/agent/userinteraction/model/GestureIntention;Ljava/lang/Integer;JI)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class GestureUserInteraction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f27162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GestureIntention f27163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f27164c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27165e;

    public GestureUserInteraction(List<GesturePosition> list, GestureIntention gestureIntention, Integer num, long j2, int i2) {
        list.getClass();
        gestureIntention.getClass();
        this.f27162a = list;
        this.f27163b = gestureIntention;
        this.f27164c = num;
        this.d = j2;
        this.f27165e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GestureUserInteraction)) {
            return false;
        }
        GestureUserInteraction gestureUserInteraction = (GestureUserInteraction) obj;
        return Intrinsics.c(this.f27162a, gestureUserInteraction.f27162a) && this.f27163b == gestureUserInteraction.f27163b && Intrinsics.c(this.f27164c, gestureUserInteraction.f27164c) && this.d == gestureUserInteraction.d && this.f27165e == gestureUserInteraction.f27165e;
    }

    public final int hashCode() {
        int iHashCode = (this.f27163b.hashCode() + (this.f27162a.hashCode() * 31)) * 31;
        Integer num = this.f27164c;
        return Integer.hashCode(this.f27165e) + fc.a((iHashCode + (num == null ? 0 : num.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GestureUserInteraction(positions=");
        sb.append(this.f27162a);
        sb.append(", intention=");
        sb.append(this.f27163b);
        sb.append(", intentionScore=");
        sb.append(this.f27164c);
        sb.append(", durationMillis=");
        sb.append(this.d);
        sb.append(", pointers=");
        return tr.k(sb, this.f27165e, ')');
    }
}

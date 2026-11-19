package com.dynatrace.agent.view;

import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/view/ViewContextHistory;", "", "<init>", "()V", "Entry", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ViewContextHistory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f27220a = new ArrayDeque();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/view/ViewContextHistory$Entry;", "", "", "startingAtMs", "Lcom/dynatrace/agent/view/ViewContext;", "viewContext", "endingAtMs", "<init>", "(JLcom/dynatrace/agent/view/ViewContext;Ljava/lang/Long;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f27221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ViewContext f27222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Long f27223c;

        public Entry(long j2, ViewContext viewContext, Long l) {
            viewContext.getClass();
            this.f27221a = j2;
            this.f27222b = viewContext;
            this.f27223c = l;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.f27221a == entry.f27221a && Intrinsics.c(this.f27222b, entry.f27222b) && Intrinsics.c(this.f27223c, entry.f27223c);
        }

        public final int hashCode() {
            int iHashCode = (this.f27222b.hashCode() + (Long.hashCode(this.f27221a) * 31)) * 31;
            Long l = this.f27223c;
            return iHashCode + (l == null ? 0 : l.hashCode());
        }

        public final String toString() {
            return "Entry(startingAtMs=" + this.f27221a + ", viewContext=" + this.f27222b + ", endingAtMs=" + this.f27223c + ')';
        }

        public /* synthetic */ Entry(long j2, ViewContext viewContext, Long l, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(j2, viewContext, (i2 & 4) != 0 ? null : l);
        }
    }
}

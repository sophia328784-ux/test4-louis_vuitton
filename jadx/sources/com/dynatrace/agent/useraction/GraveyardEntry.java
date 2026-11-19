package com.dynatrace.agent.useraction;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/useraction/GraveyardEntry;", "", "", "instanceId", "", "startTime", "endTime", "<init>", "(Ljava/lang/String;JJ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class GraveyardEntry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f27063c;

    public GraveyardEntry(String str, long j2, long j3) {
        str.getClass();
        this.f27061a = str;
        this.f27062b = j2;
        this.f27063c = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GraveyardEntry)) {
            return false;
        }
        GraveyardEntry graveyardEntry = (GraveyardEntry) obj;
        return Intrinsics.c(this.f27061a, graveyardEntry.f27061a) && this.f27062b == graveyardEntry.f27062b && this.f27063c == graveyardEntry.f27063c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f27063c) + fc.a(this.f27061a.hashCode() * 31, 31, this.f27062b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GraveyardEntry(instanceId=");
        sb.append(this.f27061a);
        sb.append(", startTime=");
        sb.append(this.f27062b);
        sb.append(", endTime=");
        return fc.k(sb, this.f27063c, ')');
    }
}

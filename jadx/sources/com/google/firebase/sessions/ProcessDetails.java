package com.google.firebase.sessions;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.d21;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/google/firebase/sessions/ProcessDetails;", "", "", "processName", "", m.q, "importance", "", "isDefaultProcess", "<init>", "(Ljava/lang/String;IIZ)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ProcessDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f35458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f35459c;
    public final boolean d;

    public ProcessDetails(String str, int i2, int i3, boolean z) {
        str.getClass();
        this.f35457a = str;
        this.f35458b = i2;
        this.f35459c = i3;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProcessDetails)) {
            return false;
        }
        ProcessDetails processDetails = (ProcessDetails) obj;
        return Intrinsics.c(this.f35457a, processDetails.f35457a) && this.f35458b == processDetails.f35458b && this.f35459c == processDetails.f35459c && this.d == processDetails.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + tr.b(this.f35459c, tr.b(this.f35458b, this.f35457a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProcessDetails(processName=");
        sb.append(this.f35457a);
        sb.append(", pid=");
        sb.append(this.f35458b);
        sb.append(", importance=");
        sb.append(this.f35459c);
        sb.append(", isDefaultProcess=");
        return d21.q(sb, this.d, ')');
    }
}

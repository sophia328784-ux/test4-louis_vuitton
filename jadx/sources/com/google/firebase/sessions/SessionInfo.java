package com.google.firebase.sessions;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/google/firebase/sessions/SessionInfo;", "", "", "sessionId", "firstSessionId", "", "sessionIndex", "", "eventTimestampUs", "Lcom/google/firebase/sessions/DataCollectionStatus;", "dataCollectionStatus", "firebaseInstallationId", "firebaseAuthenticationToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;IJLcom/google/firebase/sessions/DataCollectionStatus;Ljava/lang/String;Ljava/lang/String;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class SessionInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f35499c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DataCollectionStatus f35500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f35501f;
    public final String g;

    public SessionInfo(String str, String str2, int i2, long j2, DataCollectionStatus dataCollectionStatus, String str3, String str4) {
        str.getClass();
        str2.getClass();
        dataCollectionStatus.getClass();
        str3.getClass();
        str4.getClass();
        this.f35497a = str;
        this.f35498b = str2;
        this.f35499c = i2;
        this.d = j2;
        this.f35500e = dataCollectionStatus;
        this.f35501f = str3;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionInfo)) {
            return false;
        }
        SessionInfo sessionInfo = (SessionInfo) obj;
        return Intrinsics.c(this.f35497a, sessionInfo.f35497a) && Intrinsics.c(this.f35498b, sessionInfo.f35498b) && this.f35499c == sessionInfo.f35499c && this.d == sessionInfo.d && Intrinsics.c(this.f35500e, sessionInfo.f35500e) && Intrinsics.c(this.f35501f, sessionInfo.f35501f) && Intrinsics.c(this.g, sessionInfo.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + fc.b((this.f35500e.hashCode() + fc.a(tr.b(this.f35499c, fc.b(this.f35497a.hashCode() * 31, 31, this.f35498b), 31), 31, this.d)) * 31, 31, this.f35501f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionInfo(sessionId=");
        sb.append(this.f35497a);
        sb.append(", firstSessionId=");
        sb.append(this.f35498b);
        sb.append(", sessionIndex=");
        sb.append(this.f35499c);
        sb.append(", eventTimestampUs=");
        sb.append(this.d);
        sb.append(", dataCollectionStatus=");
        sb.append(this.f35500e);
        sb.append(", firebaseInstallationId=");
        sb.append(this.f35501f);
        sb.append(", firebaseAuthenticationToken=");
        return fc.l(sb, this.g, ')');
    }
}

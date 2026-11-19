package com.vuitton.foundation.model.domain.model.distantrepairs;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;", "", "", "availabilityId", "startTime", "gmtStartTime", "appointmentId", "date", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RepairTimeSlot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67535c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67536e;

    public RepairTimeSlot(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f67533a = str;
        this.f67534b = str2;
        this.f67535c = str3;
        this.d = str4;
        this.f67536e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RepairTimeSlot)) {
            return false;
        }
        RepairTimeSlot repairTimeSlot = (RepairTimeSlot) obj;
        return Intrinsics.c(this.f67533a, repairTimeSlot.f67533a) && Intrinsics.c(this.f67534b, repairTimeSlot.f67534b) && Intrinsics.c(this.f67535c, repairTimeSlot.f67535c) && Intrinsics.c(this.d, repairTimeSlot.d) && Intrinsics.c(this.f67536e, repairTimeSlot.f67536e);
    }

    public final int hashCode() {
        return this.f67536e.hashCode() + fc.b(fc.b(fc.b(this.f67533a.hashCode() * 31, 31, this.f67534b), 31, this.f67535c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("RepairTimeSlot(availabilityId=", this.f67533a, ", startTime=", this.f67534b, ", gmtStartTime=");
        cj.C(sbS, this.f67535c, ", appointmentId=", this.d, ", date=");
        return n00.r(this.f67536e, ")", sbS);
    }
}

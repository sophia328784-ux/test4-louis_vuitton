package com.vuitton.foundation.model.domain.model.osa;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;", "appointmentType", "Ljava/time/Instant;", "endDateTime", "startDateTime", "timeZone", "Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;", "storeInformation", "Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;", "reason", "availabilityId", "", "isVirtualStudioAppointment", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentType f67773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f67774c;
    public final Instant d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StoreInformationItem f67776f;
    public final OsaReason g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67777h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f67778i;

    public OsaItem(String str, AppointmentType appointmentType, Instant instant, Instant instant2, String str2, StoreInformationItem storeInformationItem, OsaReason osaReason, String str3, boolean z) {
        str.getClass();
        str2.getClass();
        this.f67772a = str;
        this.f67773b = appointmentType;
        this.f67774c = instant;
        this.d = instant2;
        this.f67775e = str2;
        this.f67776f = storeInformationItem;
        this.g = osaReason;
        this.f67777h = str3;
        this.f67778i = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaItem)) {
            return false;
        }
        OsaItem osaItem = (OsaItem) obj;
        return Intrinsics.c(this.f67772a, osaItem.f67772a) && this.f67773b == osaItem.f67773b && Intrinsics.c(this.f67774c, osaItem.f67774c) && Intrinsics.c(this.d, osaItem.d) && Intrinsics.c(this.f67775e, osaItem.f67775e) && Intrinsics.c(this.f67776f, osaItem.f67776f) && Intrinsics.c(this.g, osaItem.g) && Intrinsics.c(this.f67777h, osaItem.f67777h) && this.f67778i == osaItem.f67778i;
    }

    public final int hashCode() {
        int iHashCode = this.f67772a.hashCode() * 31;
        AppointmentType appointmentType = this.f67773b;
        int iHashCode2 = (iHashCode + (appointmentType == null ? 0 : appointmentType.hashCode())) * 31;
        Instant instant = this.f67774c;
        int iHashCode3 = (iHashCode2 + (instant == null ? 0 : instant.hashCode())) * 31;
        Instant instant2 = this.d;
        int iB = fc.b((iHashCode3 + (instant2 == null ? 0 : instant2.hashCode())) * 31, 31, this.f67775e);
        StoreInformationItem storeInformationItem = this.f67776f;
        int iHashCode4 = (iB + (storeInformationItem == null ? 0 : storeInformationItem.hashCode())) * 31;
        OsaReason osaReason = this.g;
        int iHashCode5 = (iHashCode4 + (osaReason == null ? 0 : osaReason.hashCode())) * 31;
        String str = this.f67777h;
        return Boolean.hashCode(this.f67778i) + ((iHashCode5 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OsaItem(id=");
        sb.append(this.f67772a);
        sb.append(", appointmentType=");
        sb.append(this.f67773b);
        sb.append(", endDateTime=");
        sb.append(this.f67774c);
        sb.append(", startDateTime=");
        sb.append(this.d);
        sb.append(", timeZone=");
        sb.append(this.f67775e);
        sb.append(", storeInformation=");
        sb.append(this.f67776f);
        sb.append(", reason=");
        sb.append(this.g);
        sb.append(", availabilityId=");
        sb.append(this.f67777h);
        sb.append(", isVirtualStudioAppointment=");
        return a.p(sb, this.f67778i, ")");
    }
}

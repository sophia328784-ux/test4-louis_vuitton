package com.vuitton.foundation.model.domain.model.appointment;

import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;", "", "", "appointmentId", "availabilityId", "Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;", "appointmentType", "reason", "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;", "phoneNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class UpdateAppointmentRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppointmentType f66546c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.vuitton.foundation.model.domain.model.account.PhoneNumber f66547e;

    public UpdateAppointmentRequest(String str, String str2, AppointmentType appointmentType, String str3, com.vuitton.foundation.model.domain.model.account.PhoneNumber phoneNumber) {
        str.getClass();
        str2.getClass();
        appointmentType.getClass();
        this.f66544a = str;
        this.f66545b = str2;
        this.f66546c = appointmentType;
        this.d = str3;
        this.f66547e = phoneNumber;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateAppointmentRequest)) {
            return false;
        }
        UpdateAppointmentRequest updateAppointmentRequest = (UpdateAppointmentRequest) obj;
        return Intrinsics.c(this.f66544a, updateAppointmentRequest.f66544a) && Intrinsics.c(this.f66545b, updateAppointmentRequest.f66545b) && this.f66546c == updateAppointmentRequest.f66546c && Intrinsics.c(this.d, updateAppointmentRequest.d) && Intrinsics.c(this.f66547e, updateAppointmentRequest.f66547e);
    }

    public final int hashCode() {
        int iHashCode = (this.f66546c.hashCode() + fc.b(this.f66544a.hashCode() * 31, 31, this.f66545b)) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        com.vuitton.foundation.model.domain.model.account.PhoneNumber phoneNumber = this.f66547e;
        return iHashCode2 + (phoneNumber != null ? phoneNumber.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("UpdateAppointmentRequest(appointmentId=", this.f66544a, ", availabilityId=", this.f66545b, ", appointmentType=");
        sbS.append(this.f66546c);
        sbS.append(", reason=");
        sbS.append(this.d);
        sbS.append(", phoneNumber=");
        sbS.append(this.f66547e);
        sbS.append(")");
        return sbS.toString();
    }
}

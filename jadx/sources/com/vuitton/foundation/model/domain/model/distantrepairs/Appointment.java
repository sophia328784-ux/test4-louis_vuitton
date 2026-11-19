package com.vuitton.foundation.model.domain.model.distantrepairs;

import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;", "", "", "appointmentId", "Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;", "appointmentType", "availabilityId", "email", "firstName", "lastName", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;", "dispatchRegionCode", "phoneNumber", "phoneNumberPrefix", "phoneNumberCountry", "phoneNumberType", "salutation", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", "careServiceId", "civilityCode", "", "subscribedInNewsletter", "reasonId", "selectionId", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Appointment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentType f67525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67526c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67528f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67532k;
    public final String l;
    public final String m;
    public final String n;
    public final boolean o;
    public final String p;
    public final String q;

    public Appointment(String str, AppointmentType appointmentType, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, boolean z, String str14, String str15, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        appointmentType.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        pq0.z(str5, str6, str7, str8, str9);
        pq0.z(str10, str11, str12, str13, str14);
        this.f67524a = str;
        this.f67525b = appointmentType;
        this.f67526c = str2;
        this.d = str3;
        this.f67527e = str4;
        this.f67528f = str5;
        this.g = str6;
        this.f67529h = str7;
        this.f67530i = str8;
        this.f67531j = str9;
        this.f67532k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.o = z;
        this.p = str14;
        this.q = str15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Appointment)) {
            return false;
        }
        Appointment appointment = (Appointment) obj;
        if (!Intrinsics.c(this.f67524a, appointment.f67524a) || this.f67525b != appointment.f67525b || !Intrinsics.c(this.f67526c, appointment.f67526c) || !Intrinsics.c(this.d, appointment.d) || !Intrinsics.c(this.f67527e, appointment.f67527e) || !Intrinsics.c(this.f67528f, appointment.f67528f)) {
            return false;
        }
        String str = appointment.g;
        DispatchRegionCode.Companion companion = DispatchRegionCode.f67495b;
        RegionCode.Companion companion2 = RegionCode.f67513b;
        if (!Intrinsics.c(this.g, str) || !Intrinsics.c(this.f67529h, appointment.f67529h) || !Intrinsics.c(this.f67530i, appointment.f67530i) || !Intrinsics.c(this.f67531j, appointment.f67531j) || !Intrinsics.c(this.f67532k, appointment.f67532k) || !Intrinsics.c(this.l, appointment.l)) {
            return false;
        }
        String str2 = appointment.m;
        CareServiceId.Companion companion3 = CareServiceId.INSTANCE;
        return Intrinsics.c(this.m, str2) && Intrinsics.c(this.n, appointment.n) && this.o == appointment.o && Intrinsics.c(this.p, appointment.p) && Intrinsics.c(this.q, appointment.q);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b((this.f67525b.hashCode() + (this.f67524a.hashCode() * 31)) * 31, 31, this.f67526c), 31, this.d), 31, this.f67527e), 31, this.f67528f);
        DispatchRegionCode.Companion companion = DispatchRegionCode.f67495b;
        RegionCode.Companion companion2 = RegionCode.f67513b;
        int iB2 = fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(iB, 31, this.g), 31, this.f67529h), 31, this.f67530i), 31, this.f67531j), 31, this.f67532k), 31, this.l);
        CareServiceId.Companion companion3 = CareServiceId.INSTANCE;
        int iB3 = fc.b(o60.b(fc.b(fc.b(iB2, 31, this.m), 31, this.n), 31, this.o), 31, this.p);
        String str = this.q;
        return iB3 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String strA = DispatchRegionCode.a(this.g);
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        StringBuilder sb = new StringBuilder("Appointment(appointmentId=");
        sb.append(this.f67524a);
        sb.append(", appointmentType=");
        sb.append(this.f67525b);
        sb.append(", availabilityId=");
        cj.C(sb, this.f67526c, ", email=", this.d, ", firstName=");
        cj.C(sb, this.f67527e, ", lastName=", this.f67528f, ", dispatchRegionCode=");
        cj.C(sb, strA, ", phoneNumber=", this.f67529h, ", phoneNumberPrefix=");
        cj.C(sb, this.f67530i, ", phoneNumberCountry=", this.f67531j, ", phoneNumberType=");
        cj.C(sb, this.f67532k, ", salutation=", this.l, ", careServiceId=");
        cj.C(sb, this.m, ", civilityCode=", this.n, ", subscribedInNewsletter=");
        cj.A(", reasonId=", this.p, ", selectionId=", sb, this.o);
        return n00.r(this.q, ")", sb);
    }

    public /* synthetic */ Appointment(String str, AppointmentType appointmentType, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, boolean z, String str14, String str15, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, appointmentType, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, z, str14, (i2 & 65536) != 0 ? null : str15, null);
    }
}

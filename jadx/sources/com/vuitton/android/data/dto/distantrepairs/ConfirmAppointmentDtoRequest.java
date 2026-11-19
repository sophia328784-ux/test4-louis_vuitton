package com.vuitton.android.data.dto.distantrepairs;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.oo;
import defpackage.pq0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016B¯\u0001\b\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u0015\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;", "", "", "availabilityId", "appointmentId", "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;", "appointmentType", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", "careServiceId", "email", "firstName", "lastName", "dispatchRegionCodeIso31661Alpha2", "phoneNumberWithoutPrefix", "phoneNumberCountry", "phoneNumberType", "civilityCode", "", "subscribedInNewsletter", "reasonId", "selectionId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ConfirmAppointmentDtoRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] p = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new oo(28)), null, null, null, null, null, null, null, null, null, null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppointmentTypeDto f45713c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45715f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45716h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45717i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f45718j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f45719k;
    public final String l;
    public final boolean m;
    public final String n;
    public final String o;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConfirmAppointmentDtoRequest> serializer() {
            return ConfirmAppointmentDtoRequest$$serializer.f45720a;
        }
    }

    public /* synthetic */ ConfirmAppointmentDtoRequest(int i2, String str, String str2, AppointmentTypeDto appointmentTypeDto, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z, String str12, String str13, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (8191 != (i2 & 8191)) {
            PluginExceptionsKt.b(i2, 8191, ConfirmAppointmentDtoRequest$$serializer.f45720a.getF19838b());
            throw null;
        }
        this.f45711a = str;
        this.f45712b = str2;
        this.f45713c = appointmentTypeDto;
        this.d = str3;
        this.f45714e = str4;
        this.f45715f = str5;
        this.g = str6;
        this.f45716h = str7;
        this.f45717i = str8;
        this.f45718j = str9;
        this.f45719k = str10;
        this.l = str11;
        this.m = z;
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = str12;
        }
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = str13;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfirmAppointmentDtoRequest)) {
            return false;
        }
        ConfirmAppointmentDtoRequest confirmAppointmentDtoRequest = (ConfirmAppointmentDtoRequest) obj;
        if (!Intrinsics.c(this.f45711a, confirmAppointmentDtoRequest.f45711a) || !Intrinsics.c(this.f45712b, confirmAppointmentDtoRequest.f45712b) || this.f45713c != confirmAppointmentDtoRequest.f45713c) {
            return false;
        }
        String str = confirmAppointmentDtoRequest.d;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        return Intrinsics.c(this.d, str) && Intrinsics.c(this.f45714e, confirmAppointmentDtoRequest.f45714e) && Intrinsics.c(this.f45715f, confirmAppointmentDtoRequest.f45715f) && Intrinsics.c(this.g, confirmAppointmentDtoRequest.g) && Intrinsics.c(this.f45716h, confirmAppointmentDtoRequest.f45716h) && Intrinsics.c(this.f45717i, confirmAppointmentDtoRequest.f45717i) && Intrinsics.c(this.f45718j, confirmAppointmentDtoRequest.f45718j) && Intrinsics.c(this.f45719k, confirmAppointmentDtoRequest.f45719k) && Intrinsics.c(this.l, confirmAppointmentDtoRequest.l) && this.m == confirmAppointmentDtoRequest.m && Intrinsics.c(this.n, confirmAppointmentDtoRequest.n) && Intrinsics.c(this.o, confirmAppointmentDtoRequest.o);
    }

    public final int hashCode() {
        int iHashCode = (this.f45713c.hashCode() + fc.b(this.f45711a.hashCode() * 31, 31, this.f45712b)) * 31;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iB = o60.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(iHashCode, 31, this.d), 31, this.f45714e), 31, this.f45715f), 31, this.g), 31, this.f45716h), 31, this.f45717i), 31, this.f45718j), 31, this.f45719k), 31, this.l), 31, this.m);
        String str = this.n;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.o;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        StringBuilder sbS = fc.s("ConfirmAppointmentDtoRequest(availabilityId=", this.f45711a, ", appointmentId=", this.f45712b, ", appointmentType=");
        sbS.append(this.f45713c);
        sbS.append(", careServiceId=");
        sbS.append(this.d);
        sbS.append(", email=");
        cj.C(sbS, this.f45714e, ", firstName=", this.f45715f, ", lastName=");
        cj.C(sbS, this.g, ", dispatchRegionCodeIso31661Alpha2=", this.f45716h, ", phoneNumberWithoutPrefix=");
        cj.C(sbS, this.f45717i, ", phoneNumberCountry=", this.f45718j, ", phoneNumberType=");
        cj.C(sbS, this.f45719k, ", civilityCode=", this.l, ", subscribedInNewsletter=");
        cj.A(", reasonId=", this.n, ", selectionId=", sbS, this.m);
        return n00.r(this.o, ")", sbS);
    }

    public ConfirmAppointmentDtoRequest(String str, String str2, AppointmentTypeDto appointmentTypeDto, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z, String str12, String str13, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        appointmentTypeDto.getClass();
        str3.getClass();
        str4.getClass();
        pq0.z(str5, str6, str7, str8, str9);
        str10.getClass();
        str11.getClass();
        this.f45711a = str;
        this.f45712b = str2;
        this.f45713c = appointmentTypeDto;
        this.d = str3;
        this.f45714e = str4;
        this.f45715f = str5;
        this.g = str6;
        this.f45716h = str7;
        this.f45717i = str8;
        this.f45718j = str9;
        this.f45719k = str10;
        this.l = str11;
        this.m = z;
        this.n = str12;
        this.o = str13;
    }

    public /* synthetic */ ConfirmAppointmentDtoRequest(String str, String str2, AppointmentTypeDto appointmentTypeDto, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z, String str12, String str13, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, appointmentTypeDto, str3, str4, str5, str6, str7, str8, str9, str10, str11, z, (i2 & 8192) != 0 ? null : str12, (i2 & 16384) != 0 ? null : str13, null);
    }
}

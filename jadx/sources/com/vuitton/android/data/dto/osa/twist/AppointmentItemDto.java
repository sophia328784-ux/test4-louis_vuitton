package com.vuitton.android.data.dto.osa.twist;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import defpackage.cj;
import defpackage.g5;
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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011Bu\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0010\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;", "appointmentType", "startTime", "endTime", "timeZone", "Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;", Payload.TYPE_STORE, "Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;", "reason", "availabilityId", "", "isVirtualStudioAppointment", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;Ljava/lang/String;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AppointmentItemDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Lazy[] f46136j = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new g5(20)), null, null, null, null, null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentTypeDto f46138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46139c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46140e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppointmentStoreDto f46141f;
    public final OsaReasonDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46142h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f46143i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AppointmentItemDto> serializer() {
            return AppointmentItemDto$$serializer.f46144a;
        }
    }

    public /* synthetic */ AppointmentItemDto(int i2, String str, AppointmentTypeDto appointmentTypeDto, String str2, String str3, String str4, AppointmentStoreDto appointmentStoreDto, OsaReasonDto osaReasonDto, String str5, Boolean bool, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, AppointmentItemDto$$serializer.f46144a.getF19838b());
            throw null;
        }
        this.f46137a = str;
        if ((i2 & 2) == 0) {
            this.f46138b = null;
        } else {
            this.f46138b = appointmentTypeDto;
        }
        if ((i2 & 4) == 0) {
            this.f46139c = null;
        } else {
            this.f46139c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f46140e = null;
        } else {
            this.f46140e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f46141f = null;
        } else {
            this.f46141f = appointmentStoreDto;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = osaReasonDto;
        }
        if ((i2 & 128) == 0) {
            this.f46142h = null;
        } else {
            this.f46142h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f46143i = null;
        } else {
            this.f46143i = bool;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppointmentItemDto)) {
            return false;
        }
        AppointmentItemDto appointmentItemDto = (AppointmentItemDto) obj;
        return Intrinsics.c(this.f46137a, appointmentItemDto.f46137a) && this.f46138b == appointmentItemDto.f46138b && Intrinsics.c(this.f46139c, appointmentItemDto.f46139c) && Intrinsics.c(this.d, appointmentItemDto.d) && Intrinsics.c(this.f46140e, appointmentItemDto.f46140e) && Intrinsics.c(this.f46141f, appointmentItemDto.f46141f) && Intrinsics.c(this.g, appointmentItemDto.g) && Intrinsics.c(this.f46142h, appointmentItemDto.f46142h) && Intrinsics.c(this.f46143i, appointmentItemDto.f46143i);
    }

    public final int hashCode() {
        int iHashCode = this.f46137a.hashCode() * 31;
        AppointmentTypeDto appointmentTypeDto = this.f46138b;
        int iHashCode2 = (iHashCode + (appointmentTypeDto == null ? 0 : appointmentTypeDto.hashCode())) * 31;
        String str = this.f46139c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46140e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        AppointmentStoreDto appointmentStoreDto = this.f46141f;
        int iHashCode6 = (iHashCode5 + (appointmentStoreDto == null ? 0 : appointmentStoreDto.hashCode())) * 31;
        OsaReasonDto osaReasonDto = this.g;
        int iHashCode7 = (iHashCode6 + (osaReasonDto == null ? 0 : osaReasonDto.hashCode())) * 31;
        String str4 = this.f46142h;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.f46143i;
        return iHashCode8 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppointmentItemDto(id=");
        sb.append(this.f46137a);
        sb.append(", appointmentType=");
        sb.append(this.f46138b);
        sb.append(", startTime=");
        cj.C(sb, this.f46139c, ", endTime=", this.d, ", timeZone=");
        sb.append(this.f46140e);
        sb.append(", store=");
        sb.append(this.f46141f);
        sb.append(", reason=");
        sb.append(this.g);
        sb.append(", availabilityId=");
        sb.append(this.f46142h);
        sb.append(", isVirtualStudioAppointment=");
        sb.append(this.f46143i);
        sb.append(")");
        return sb.toString();
    }

    public AppointmentItemDto(String str, AppointmentTypeDto appointmentTypeDto, String str2, String str3, String str4, AppointmentStoreDto appointmentStoreDto, OsaReasonDto osaReasonDto, String str5, Boolean bool) {
        str.getClass();
        this.f46137a = str;
        this.f46138b = appointmentTypeDto;
        this.f46139c = str2;
        this.d = str3;
        this.f46140e = str4;
        this.f46141f = appointmentStoreDto;
        this.g = osaReasonDto;
        this.f46142h = str5;
        this.f46143i = bool;
    }

    public /* synthetic */ AppointmentItemDto(String str, AppointmentTypeDto appointmentTypeDto, String str2, String str3, String str4, AppointmentStoreDto appointmentStoreDto, OsaReasonDto osaReasonDto, String str5, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : appointmentTypeDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : appointmentStoreDto, (i2 & 64) != 0 ? null : osaReasonDto, (i2 & 128) != 0 ? null : str5, (i2 & 256) != 0 ? null : bool);
    }
}

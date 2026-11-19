package com.vuitton.android.data.dto.osa.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import defpackage.b51;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBM\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;", "", "", "appointmentId", "availabilityId", "Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;", "appointmentType", "reason", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "phoneNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UpdateAppointmentDtoRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f46163f = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(7)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppointmentTypeDto f46166c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PhoneNumberDto f46167e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/osa/twist/UpdateAppointmentDtoRequest;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UpdateAppointmentDtoRequest> serializer() {
            return UpdateAppointmentDtoRequest$$serializer.f46168a;
        }
    }

    public /* synthetic */ UpdateAppointmentDtoRequest(int i2, String str, String str2, AppointmentTypeDto appointmentTypeDto, String str3, PhoneNumberDto phoneNumberDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, UpdateAppointmentDtoRequest$$serializer.f46168a.getF19838b());
            throw null;
        }
        this.f46164a = str;
        this.f46165b = str2;
        this.f46166c = appointmentTypeDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f46167e = null;
        } else {
            this.f46167e = phoneNumberDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateAppointmentDtoRequest)) {
            return false;
        }
        UpdateAppointmentDtoRequest updateAppointmentDtoRequest = (UpdateAppointmentDtoRequest) obj;
        return Intrinsics.c(this.f46164a, updateAppointmentDtoRequest.f46164a) && Intrinsics.c(this.f46165b, updateAppointmentDtoRequest.f46165b) && this.f46166c == updateAppointmentDtoRequest.f46166c && Intrinsics.c(this.d, updateAppointmentDtoRequest.d) && Intrinsics.c(this.f46167e, updateAppointmentDtoRequest.f46167e);
    }

    public final int hashCode() {
        int iHashCode = (this.f46166c.hashCode() + fc.b(this.f46164a.hashCode() * 31, 31, this.f46165b)) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        PhoneNumberDto phoneNumberDto = this.f46167e;
        return iHashCode2 + (phoneNumberDto != null ? phoneNumberDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("UpdateAppointmentDtoRequest(appointmentId=", this.f46164a, ", availabilityId=", this.f46165b, ", appointmentType=");
        sbS.append(this.f46166c);
        sbS.append(", reason=");
        sbS.append(this.d);
        sbS.append(", phoneNumber=");
        sbS.append(this.f46167e);
        sbS.append(")");
        return sbS.toString();
    }

    public UpdateAppointmentDtoRequest(String str, String str2, AppointmentTypeDto appointmentTypeDto, String str3, PhoneNumberDto phoneNumberDto) {
        str.getClass();
        str2.getClass();
        appointmentTypeDto.getClass();
        this.f46164a = str;
        this.f46165b = str2;
        this.f46166c = appointmentTypeDto;
        this.d = str3;
        this.f46167e = phoneNumberDto;
    }

    public /* synthetic */ UpdateAppointmentDtoRequest(String str, String str2, AppointmentTypeDto appointmentTypeDto, String str3, PhoneNumberDto phoneNumberDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, appointmentTypeDto, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : phoneNumberDto);
    }
}

package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010B\u007f\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "civility", "firstName", "lastName", "firstName2", "lastName2", "country", "subscribedToNewsletter", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "phone", "email", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class GuestAppointmentFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66100c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66102f;
    public final FormFieldDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FormFieldDto f66103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormFieldPhoneDto f66104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FormFieldDto f66105j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<GuestAppointmentFormDto> serializer() {
            return GuestAppointmentFormDto$$serializer.f66106a;
        }
    }

    public /* synthetic */ GuestAppointmentFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto8, SerializationConstructorMarker serializationConstructorMarker) {
        if (975 != (i2 & 975)) {
            PluginExceptionsKt.b(i2, 975, GuestAppointmentFormDto$$serializer.f66106a.getF19838b());
            throw null;
        }
        this.f66098a = str;
        this.f66099b = formFieldDto;
        this.f66100c = formFieldDto2;
        this.d = formFieldDto3;
        if ((i2 & 16) == 0) {
            this.f66101e = null;
        } else {
            this.f66101e = formFieldDto4;
        }
        if ((i2 & 32) == 0) {
            this.f66102f = null;
        } else {
            this.f66102f = formFieldDto5;
        }
        this.g = formFieldDto6;
        this.f66103h = formFieldDto7;
        this.f66104i = formFieldPhoneDto;
        this.f66105j = formFieldDto8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GuestAppointmentFormDto)) {
            return false;
        }
        GuestAppointmentFormDto guestAppointmentFormDto = (GuestAppointmentFormDto) obj;
        return Intrinsics.c(this.f66098a, guestAppointmentFormDto.f66098a) && Intrinsics.c(this.f66099b, guestAppointmentFormDto.f66099b) && Intrinsics.c(this.f66100c, guestAppointmentFormDto.f66100c) && Intrinsics.c(this.d, guestAppointmentFormDto.d) && Intrinsics.c(this.f66101e, guestAppointmentFormDto.f66101e) && Intrinsics.c(this.f66102f, guestAppointmentFormDto.f66102f) && Intrinsics.c(this.g, guestAppointmentFormDto.g) && Intrinsics.c(this.f66103h, guestAppointmentFormDto.f66103h) && Intrinsics.c(this.f66104i, guestAppointmentFormDto.f66104i) && Intrinsics.c(this.f66105j, guestAppointmentFormDto.f66105j);
    }

    public final int hashCode() {
        int iB = a.b(this.d, a.b(this.f66100c, a.b(this.f66099b, this.f66098a.hashCode() * 31, 31), 31), 31);
        FormFieldDto formFieldDto = this.f66101e;
        int iHashCode = (iB + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31;
        FormFieldDto formFieldDto2 = this.f66102f;
        return this.f66105j.hashCode() + ((this.f66104i.hashCode() + a.b(this.f66103h, a.b(this.g, (iHashCode + (formFieldDto2 != null ? formFieldDto2.hashCode() : 0)) * 31, 31), 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GuestAppointmentFormDto(identifier=");
        sb.append(this.f66098a);
        sb.append(", civility=");
        sb.append(this.f66099b);
        sb.append(", firstName=");
        a.z(sb, this.f66100c, ", lastName=", this.d, ", firstName2=");
        a.z(sb, this.f66101e, ", lastName2=", this.f66102f, ", country=");
        a.z(sb, this.g, ", subscribedToNewsletter=", this.f66103h, ", phone=");
        sb.append(this.f66104i);
        sb.append(", email=");
        sb.append(this.f66105j);
        sb.append(")");
        return sb.toString();
    }

    public GuestAppointmentFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto8) {
        str.getClass();
        formFieldDto.getClass();
        formFieldDto2.getClass();
        formFieldDto3.getClass();
        formFieldDto6.getClass();
        formFieldDto7.getClass();
        formFieldPhoneDto.getClass();
        formFieldDto8.getClass();
        this.f66098a = str;
        this.f66099b = formFieldDto;
        this.f66100c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66101e = formFieldDto4;
        this.f66102f = formFieldDto5;
        this.g = formFieldDto6;
        this.f66103h = formFieldDto7;
        this.f66104i = formFieldPhoneDto;
        this.f66105j = formFieldDto8;
    }

    public /* synthetic */ GuestAppointmentFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, formFieldDto, formFieldDto2, formFieldDto3, (i2 & 16) != 0 ? null : formFieldDto4, (i2 & 32) != 0 ? null : formFieldDto5, formFieldDto6, formFieldDto7, formFieldPhoneDto, formFieldDto8);
    }
}

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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Bs\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0010\u0010\u0011B\u0089\u0001\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0010\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "civility", "firstName", "lastName", "firstName2", "lastName2", "country", "email", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "phone", "marketingEmailsConsent", "personalDataCollectionConsent", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class BookingPersonalInfoFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66026c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66028f;
    public final FormFieldDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FormFieldDto f66029h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormFieldPhoneDto f66030i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FormFieldDto f66031j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FormFieldDto f66032k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<BookingPersonalInfoFormDto> serializer() {
            return BookingPersonalInfoFormDto$$serializer.f66033a;
        }
    }

    public /* synthetic */ BookingPersonalInfoFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, SerializationConstructorMarker serializationConstructorMarker) {
        if (909 != (i2 & 909)) {
            PluginExceptionsKt.b(i2, 909, BookingPersonalInfoFormDto$$serializer.f66033a.getF19838b());
            throw null;
        }
        this.f66024a = str;
        if ((i2 & 2) == 0) {
            this.f66025b = null;
        } else {
            this.f66025b = formFieldDto;
        }
        this.f66026c = formFieldDto2;
        this.d = formFieldDto3;
        if ((i2 & 16) == 0) {
            this.f66027e = null;
        } else {
            this.f66027e = formFieldDto4;
        }
        if ((i2 & 32) == 0) {
            this.f66028f = null;
        } else {
            this.f66028f = formFieldDto5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = formFieldDto6;
        }
        this.f66029h = formFieldDto7;
        this.f66030i = formFieldPhoneDto;
        this.f66031j = formFieldDto8;
        if ((i2 & 1024) == 0) {
            this.f66032k = null;
        } else {
            this.f66032k = formFieldDto9;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BookingPersonalInfoFormDto)) {
            return false;
        }
        BookingPersonalInfoFormDto bookingPersonalInfoFormDto = (BookingPersonalInfoFormDto) obj;
        return Intrinsics.c(this.f66024a, bookingPersonalInfoFormDto.f66024a) && Intrinsics.c(this.f66025b, bookingPersonalInfoFormDto.f66025b) && Intrinsics.c(this.f66026c, bookingPersonalInfoFormDto.f66026c) && Intrinsics.c(this.d, bookingPersonalInfoFormDto.d) && Intrinsics.c(this.f66027e, bookingPersonalInfoFormDto.f66027e) && Intrinsics.c(this.f66028f, bookingPersonalInfoFormDto.f66028f) && Intrinsics.c(this.g, bookingPersonalInfoFormDto.g) && Intrinsics.c(this.f66029h, bookingPersonalInfoFormDto.f66029h) && Intrinsics.c(this.f66030i, bookingPersonalInfoFormDto.f66030i) && Intrinsics.c(this.f66031j, bookingPersonalInfoFormDto.f66031j) && Intrinsics.c(this.f66032k, bookingPersonalInfoFormDto.f66032k);
    }

    public final int hashCode() {
        int iHashCode = this.f66024a.hashCode() * 31;
        FormFieldDto formFieldDto = this.f66025b;
        int iB = a.b(this.d, a.b(this.f66026c, (iHashCode + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31, 31), 31);
        FormFieldDto formFieldDto2 = this.f66027e;
        int iHashCode2 = (iB + (formFieldDto2 == null ? 0 : formFieldDto2.hashCode())) * 31;
        FormFieldDto formFieldDto3 = this.f66028f;
        int iHashCode3 = (iHashCode2 + (formFieldDto3 == null ? 0 : formFieldDto3.hashCode())) * 31;
        FormFieldDto formFieldDto4 = this.g;
        int iB2 = a.b(this.f66031j, (this.f66030i.hashCode() + a.b(this.f66029h, (iHashCode3 + (formFieldDto4 == null ? 0 : formFieldDto4.hashCode())) * 31, 31)) * 31, 31);
        FormFieldDto formFieldDto5 = this.f66032k;
        return iB2 + (formFieldDto5 != null ? formFieldDto5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BookingPersonalInfoFormDto(identifier=");
        sb.append(this.f66024a);
        sb.append(", civility=");
        sb.append(this.f66025b);
        sb.append(", firstName=");
        a.z(sb, this.f66026c, ", lastName=", this.d, ", firstName2=");
        a.z(sb, this.f66027e, ", lastName2=", this.f66028f, ", country=");
        a.z(sb, this.g, ", email=", this.f66029h, ", phone=");
        sb.append(this.f66030i);
        sb.append(", marketingEmailsConsent=");
        sb.append(this.f66031j);
        sb.append(", personalDataCollectionConsent=");
        sb.append(this.f66032k);
        sb.append(")");
        return sb.toString();
    }

    public BookingPersonalInfoFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9) {
        str.getClass();
        formFieldDto2.getClass();
        formFieldDto3.getClass();
        formFieldDto7.getClass();
        formFieldPhoneDto.getClass();
        formFieldDto8.getClass();
        this.f66024a = str;
        this.f66025b = formFieldDto;
        this.f66026c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66027e = formFieldDto4;
        this.f66028f = formFieldDto5;
        this.g = formFieldDto6;
        this.f66029h = formFieldDto7;
        this.f66030i = formFieldPhoneDto;
        this.f66031j = formFieldDto8;
        this.f66032k = formFieldDto9;
    }

    public /* synthetic */ BookingPersonalInfoFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : formFieldDto, formFieldDto2, formFieldDto3, (i2 & 16) != 0 ? null : formFieldDto4, (i2 & 32) != 0 ? null : formFieldDto5, (i2 & 64) != 0 ? null : formFieldDto6, formFieldDto7, formFieldPhoneDto, formFieldDto8, (i2 & 1024) != 0 ? null : formFieldDto9);
    }
}

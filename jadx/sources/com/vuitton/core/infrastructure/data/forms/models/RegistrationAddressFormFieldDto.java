package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nBW\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;", "", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "address1", "address2", "address3", "city", "postalCode", "state", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class RegistrationAddressFormFieldDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormFieldDto f66121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66123c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66125f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RegistrationAddressFormFieldDto> serializer() {
            return RegistrationAddressFormFieldDto$$serializer.f66126a;
        }
    }

    public /* synthetic */ RegistrationAddressFormFieldDto(int i2, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f66121a = null;
        } else {
            this.f66121a = formFieldDto;
        }
        if ((i2 & 2) == 0) {
            this.f66122b = null;
        } else {
            this.f66122b = formFieldDto2;
        }
        if ((i2 & 4) == 0) {
            this.f66123c = null;
        } else {
            this.f66123c = formFieldDto3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = formFieldDto4;
        }
        if ((i2 & 16) == 0) {
            this.f66124e = null;
        } else {
            this.f66124e = formFieldDto5;
        }
        if ((i2 & 32) == 0) {
            this.f66125f = null;
        } else {
            this.f66125f = formFieldDto6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegistrationAddressFormFieldDto)) {
            return false;
        }
        RegistrationAddressFormFieldDto registrationAddressFormFieldDto = (RegistrationAddressFormFieldDto) obj;
        return Intrinsics.c(this.f66121a, registrationAddressFormFieldDto.f66121a) && Intrinsics.c(this.f66122b, registrationAddressFormFieldDto.f66122b) && Intrinsics.c(this.f66123c, registrationAddressFormFieldDto.f66123c) && Intrinsics.c(this.d, registrationAddressFormFieldDto.d) && Intrinsics.c(this.f66124e, registrationAddressFormFieldDto.f66124e) && Intrinsics.c(this.f66125f, registrationAddressFormFieldDto.f66125f);
    }

    public final int hashCode() {
        FormFieldDto formFieldDto = this.f66121a;
        int iHashCode = (formFieldDto == null ? 0 : formFieldDto.hashCode()) * 31;
        FormFieldDto formFieldDto2 = this.f66122b;
        int iHashCode2 = (iHashCode + (formFieldDto2 == null ? 0 : formFieldDto2.hashCode())) * 31;
        FormFieldDto formFieldDto3 = this.f66123c;
        int iHashCode3 = (iHashCode2 + (formFieldDto3 == null ? 0 : formFieldDto3.hashCode())) * 31;
        FormFieldDto formFieldDto4 = this.d;
        int iHashCode4 = (iHashCode3 + (formFieldDto4 == null ? 0 : formFieldDto4.hashCode())) * 31;
        FormFieldDto formFieldDto5 = this.f66124e;
        int iHashCode5 = (iHashCode4 + (formFieldDto5 == null ? 0 : formFieldDto5.hashCode())) * 31;
        FormFieldDto formFieldDto6 = this.f66125f;
        return iHashCode5 + (formFieldDto6 != null ? formFieldDto6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RegistrationAddressFormFieldDto(address1=");
        sb.append(this.f66121a);
        sb.append(", address2=");
        sb.append(this.f66122b);
        sb.append(", address3=");
        a.z(sb, this.f66123c, ", city=", this.d, ", postalCode=");
        sb.append(this.f66124e);
        sb.append(", state=");
        sb.append(this.f66125f);
        sb.append(")");
        return sb.toString();
    }

    public RegistrationAddressFormFieldDto() {
        this((FormFieldDto) null, (FormFieldDto) null, (FormFieldDto) null, (FormFieldDto) null, (FormFieldDto) null, (FormFieldDto) null, 63, (DefaultConstructorMarker) null);
    }

    public RegistrationAddressFormFieldDto(FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6) {
        this.f66121a = formFieldDto;
        this.f66122b = formFieldDto2;
        this.f66123c = formFieldDto3;
        this.d = formFieldDto4;
        this.f66124e = formFieldDto5;
        this.f66125f = formFieldDto6;
    }

    public /* synthetic */ RegistrationAddressFormFieldDto(FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : formFieldDto, (i2 & 2) != 0 ? null : formFieldDto2, (i2 & 4) != 0 ? null : formFieldDto3, (i2 & 8) != 0 ? null : formFieldDto4, (i2 & 16) != 0 ? null : formFieldDto5, (i2 & 32) != 0 ? null : formFieldDto6);
    }
}

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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u0083\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016B§\u0001\b\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u0015\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "email", "password", "confirmPassword", "civility", "firstName", "lastName", "firstName2", "lastName2", "birthDate", "country", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "phone", "Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;", "consents", "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;", "address", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class RegistrationFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66129c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66131f;
    public final FormFieldDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FormFieldDto f66132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormFieldDto f66133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FormFieldDto f66134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FormFieldDto f66135k;
    public final FormFieldPhoneDto l;
    public final RegisterConsentsFormFieldDto m;
    public final RegistrationAddressFormFieldDto n;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RegistrationFormDto> serializer() {
            return RegistrationFormDto$$serializer.f66136a;
        }
    }

    public /* synthetic */ RegistrationFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, FormFieldDto formFieldDto10, FormFieldPhoneDto formFieldPhoneDto, RegisterConsentsFormFieldDto registerConsentsFormFieldDto, RegistrationAddressFormFieldDto registrationAddressFormFieldDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7807 != (i2 & 7807)) {
            PluginExceptionsKt.b(i2, 7807, RegistrationFormDto$$serializer.f66136a.getF19838b());
            throw null;
        }
        this.f66127a = str;
        this.f66128b = formFieldDto;
        this.f66129c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66130e = formFieldDto4;
        this.f66131f = formFieldDto5;
        this.g = formFieldDto6;
        if ((i2 & 128) == 0) {
            this.f66132h = null;
        } else {
            this.f66132h = formFieldDto7;
        }
        if ((i2 & 256) == 0) {
            this.f66133i = null;
        } else {
            this.f66133i = formFieldDto8;
        }
        this.f66134j = formFieldDto9;
        this.f66135k = formFieldDto10;
        this.l = formFieldPhoneDto;
        this.m = registerConsentsFormFieldDto;
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = registrationAddressFormFieldDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegistrationFormDto)) {
            return false;
        }
        RegistrationFormDto registrationFormDto = (RegistrationFormDto) obj;
        return Intrinsics.c(this.f66127a, registrationFormDto.f66127a) && Intrinsics.c(this.f66128b, registrationFormDto.f66128b) && Intrinsics.c(this.f66129c, registrationFormDto.f66129c) && Intrinsics.c(this.d, registrationFormDto.d) && Intrinsics.c(this.f66130e, registrationFormDto.f66130e) && Intrinsics.c(this.f66131f, registrationFormDto.f66131f) && Intrinsics.c(this.g, registrationFormDto.g) && Intrinsics.c(this.f66132h, registrationFormDto.f66132h) && Intrinsics.c(this.f66133i, registrationFormDto.f66133i) && Intrinsics.c(this.f66134j, registrationFormDto.f66134j) && Intrinsics.c(this.f66135k, registrationFormDto.f66135k) && Intrinsics.c(this.l, registrationFormDto.l) && Intrinsics.c(this.m, registrationFormDto.m) && Intrinsics.c(this.n, registrationFormDto.n);
    }

    public final int hashCode() {
        int iB = a.b(this.g, a.b(this.f66131f, a.b(this.f66130e, a.b(this.d, a.b(this.f66129c, a.b(this.f66128b, this.f66127a.hashCode() * 31, 31), 31), 31), 31), 31), 31);
        FormFieldDto formFieldDto = this.f66132h;
        int iHashCode = (iB + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31;
        FormFieldDto formFieldDto2 = this.f66133i;
        int iHashCode2 = (this.m.hashCode() + ((this.l.hashCode() + a.b(this.f66135k, a.b(this.f66134j, (iHashCode + (formFieldDto2 == null ? 0 : formFieldDto2.hashCode())) * 31, 31), 31)) * 31)) * 31;
        RegistrationAddressFormFieldDto registrationAddressFormFieldDto = this.n;
        return iHashCode2 + (registrationAddressFormFieldDto != null ? registrationAddressFormFieldDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RegistrationFormDto(identifier=");
        sb.append(this.f66127a);
        sb.append(", email=");
        sb.append(this.f66128b);
        sb.append(", password=");
        a.z(sb, this.f66129c, ", confirmPassword=", this.d, ", civility=");
        a.z(sb, this.f66130e, ", firstName=", this.f66131f, ", lastName=");
        a.z(sb, this.g, ", firstName2=", this.f66132h, ", lastName2=");
        a.z(sb, this.f66133i, ", birthDate=", this.f66134j, ", country=");
        sb.append(this.f66135k);
        sb.append(", phone=");
        sb.append(this.l);
        sb.append(", consents=");
        sb.append(this.m);
        sb.append(", address=");
        sb.append(this.n);
        sb.append(")");
        return sb.toString();
    }

    public RegistrationFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, FormFieldDto formFieldDto10, FormFieldPhoneDto formFieldPhoneDto, RegisterConsentsFormFieldDto registerConsentsFormFieldDto, RegistrationAddressFormFieldDto registrationAddressFormFieldDto) {
        str.getClass();
        formFieldDto.getClass();
        formFieldDto2.getClass();
        formFieldDto3.getClass();
        formFieldDto4.getClass();
        formFieldDto5.getClass();
        formFieldDto6.getClass();
        formFieldDto9.getClass();
        formFieldDto10.getClass();
        formFieldPhoneDto.getClass();
        registerConsentsFormFieldDto.getClass();
        this.f66127a = str;
        this.f66128b = formFieldDto;
        this.f66129c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66130e = formFieldDto4;
        this.f66131f = formFieldDto5;
        this.g = formFieldDto6;
        this.f66132h = formFieldDto7;
        this.f66133i = formFieldDto8;
        this.f66134j = formFieldDto9;
        this.f66135k = formFieldDto10;
        this.l = formFieldPhoneDto;
        this.m = registerConsentsFormFieldDto;
        this.n = registrationAddressFormFieldDto;
    }

    public /* synthetic */ RegistrationFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, FormFieldDto formFieldDto10, FormFieldPhoneDto formFieldPhoneDto, RegisterConsentsFormFieldDto registerConsentsFormFieldDto, RegistrationAddressFormFieldDto registrationAddressFormFieldDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, formFieldDto, formFieldDto2, formFieldDto3, formFieldDto4, formFieldDto5, formFieldDto6, (i2 & 128) != 0 ? null : formFieldDto7, (i2 & 256) != 0 ? null : formFieldDto8, formFieldDto9, formFieldDto10, formFieldPhoneDto, registerConsentsFormFieldDto, (i2 & 8192) != 0 ? null : registrationAddressFormFieldDto);
    }
}

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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002 \u001fB×\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0018\u0010\u0019BÙ\u0001\b\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u0018\u0010\u001e¨\u0006!"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "address1", "address2", "address3", "city", "civility", "companyName", "country", "county", "description", "firstName", "firstName2", "lastName", "lastName2", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "phones", "postalCode", "state", "street", "streetNumber", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AddressFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66012c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66014f;
    public final FormFieldDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FormFieldDto f66015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormFieldDto f66016i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FormFieldDto f66017j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FormFieldDto f66018k;
    public final FormFieldDto l;
    public final FormFieldDto m;
    public final FormFieldDto n;
    public final FormFieldPhoneDto o;
    public final FormFieldDto p;
    public final FormFieldDto q;
    public final FormFieldDto r;
    public final FormFieldDto s;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AddressFormDto> serializer() {
            return AddressFormDto$$serializer.f66019a;
        }
    }

    public /* synthetic */ AddressFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, FormFieldDto formFieldDto10, FormFieldDto formFieldDto11, FormFieldDto formFieldDto12, FormFieldDto formFieldDto13, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto14, FormFieldDto formFieldDto15, FormFieldDto formFieldDto16, FormFieldDto formFieldDto17, SerializationConstructorMarker serializationConstructorMarker) {
        if (16533 != (i2 & 16533)) {
            PluginExceptionsKt.b(i2, 16533, AddressFormDto$$serializer.f66019a.getF19838b());
            throw null;
        }
        this.f66010a = str;
        if ((i2 & 2) == 0) {
            this.f66011b = null;
        } else {
            this.f66011b = formFieldDto;
        }
        this.f66012c = formFieldDto2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = formFieldDto3;
        }
        this.f66013e = formFieldDto4;
        if ((i2 & 32) == 0) {
            this.f66014f = null;
        } else {
            this.f66014f = formFieldDto5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = formFieldDto6;
        }
        this.f66015h = formFieldDto7;
        if ((i2 & 256) == 0) {
            this.f66016i = null;
        } else {
            this.f66016i = formFieldDto8;
        }
        if ((i2 & 512) == 0) {
            this.f66017j = null;
        } else {
            this.f66017j = formFieldDto9;
        }
        if ((i2 & 1024) == 0) {
            this.f66018k = null;
        } else {
            this.f66018k = formFieldDto10;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = formFieldDto11;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = formFieldDto12;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = formFieldDto13;
        }
        this.o = formFieldPhoneDto;
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = formFieldDto14;
        }
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = formFieldDto15;
        }
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = formFieldDto16;
        }
        if ((i2 & 262144) == 0) {
            this.s = null;
        } else {
            this.s = formFieldDto17;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressFormDto)) {
            return false;
        }
        AddressFormDto addressFormDto = (AddressFormDto) obj;
        return Intrinsics.c(this.f66010a, addressFormDto.f66010a) && Intrinsics.c(this.f66011b, addressFormDto.f66011b) && Intrinsics.c(this.f66012c, addressFormDto.f66012c) && Intrinsics.c(this.d, addressFormDto.d) && Intrinsics.c(this.f66013e, addressFormDto.f66013e) && Intrinsics.c(this.f66014f, addressFormDto.f66014f) && Intrinsics.c(this.g, addressFormDto.g) && Intrinsics.c(this.f66015h, addressFormDto.f66015h) && Intrinsics.c(this.f66016i, addressFormDto.f66016i) && Intrinsics.c(this.f66017j, addressFormDto.f66017j) && Intrinsics.c(this.f66018k, addressFormDto.f66018k) && Intrinsics.c(this.l, addressFormDto.l) && Intrinsics.c(this.m, addressFormDto.m) && Intrinsics.c(this.n, addressFormDto.n) && Intrinsics.c(this.o, addressFormDto.o) && Intrinsics.c(this.p, addressFormDto.p) && Intrinsics.c(this.q, addressFormDto.q) && Intrinsics.c(this.r, addressFormDto.r) && Intrinsics.c(this.s, addressFormDto.s);
    }

    public final int hashCode() {
        int iHashCode = this.f66010a.hashCode() * 31;
        FormFieldDto formFieldDto = this.f66011b;
        int iB = a.b(this.f66012c, (iHashCode + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31, 31);
        FormFieldDto formFieldDto2 = this.d;
        int iB2 = a.b(this.f66013e, (iB + (formFieldDto2 == null ? 0 : formFieldDto2.hashCode())) * 31, 31);
        FormFieldDto formFieldDto3 = this.f66014f;
        int iHashCode2 = (iB2 + (formFieldDto3 == null ? 0 : formFieldDto3.hashCode())) * 31;
        FormFieldDto formFieldDto4 = this.g;
        int iB3 = a.b(this.f66015h, (iHashCode2 + (formFieldDto4 == null ? 0 : formFieldDto4.hashCode())) * 31, 31);
        FormFieldDto formFieldDto5 = this.f66016i;
        int iHashCode3 = (iB3 + (formFieldDto5 == null ? 0 : formFieldDto5.hashCode())) * 31;
        FormFieldDto formFieldDto6 = this.f66017j;
        int iHashCode4 = (iHashCode3 + (formFieldDto6 == null ? 0 : formFieldDto6.hashCode())) * 31;
        FormFieldDto formFieldDto7 = this.f66018k;
        int iHashCode5 = (iHashCode4 + (formFieldDto7 == null ? 0 : formFieldDto7.hashCode())) * 31;
        FormFieldDto formFieldDto8 = this.l;
        int iHashCode6 = (iHashCode5 + (formFieldDto8 == null ? 0 : formFieldDto8.hashCode())) * 31;
        FormFieldDto formFieldDto9 = this.m;
        int iHashCode7 = (iHashCode6 + (formFieldDto9 == null ? 0 : formFieldDto9.hashCode())) * 31;
        FormFieldDto formFieldDto10 = this.n;
        int iHashCode8 = (this.o.hashCode() + ((iHashCode7 + (formFieldDto10 == null ? 0 : formFieldDto10.hashCode())) * 31)) * 31;
        FormFieldDto formFieldDto11 = this.p;
        int iHashCode9 = (iHashCode8 + (formFieldDto11 == null ? 0 : formFieldDto11.hashCode())) * 31;
        FormFieldDto formFieldDto12 = this.q;
        int iHashCode10 = (iHashCode9 + (formFieldDto12 == null ? 0 : formFieldDto12.hashCode())) * 31;
        FormFieldDto formFieldDto13 = this.r;
        int iHashCode11 = (iHashCode10 + (formFieldDto13 == null ? 0 : formFieldDto13.hashCode())) * 31;
        FormFieldDto formFieldDto14 = this.s;
        return iHashCode11 + (formFieldDto14 != null ? formFieldDto14.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AddressFormDto(identifier=");
        sb.append(this.f66010a);
        sb.append(", address1=");
        sb.append(this.f66011b);
        sb.append(", address2=");
        a.z(sb, this.f66012c, ", address3=", this.d, ", city=");
        a.z(sb, this.f66013e, ", civility=", this.f66014f, ", companyName=");
        a.z(sb, this.g, ", country=", this.f66015h, ", county=");
        a.z(sb, this.f66016i, ", description=", this.f66017j, ", firstName=");
        a.z(sb, this.f66018k, ", firstName2=", this.l, ", lastName=");
        a.z(sb, this.m, ", lastName2=", this.n, ", phones=");
        sb.append(this.o);
        sb.append(", postalCode=");
        sb.append(this.p);
        sb.append(", state=");
        a.z(sb, this.q, ", street=", this.r, ", streetNumber=");
        sb.append(this.s);
        sb.append(")");
        return sb.toString();
    }

    public AddressFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, FormFieldDto formFieldDto10, FormFieldDto formFieldDto11, FormFieldDto formFieldDto12, FormFieldDto formFieldDto13, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto14, FormFieldDto formFieldDto15, FormFieldDto formFieldDto16, FormFieldDto formFieldDto17) {
        str.getClass();
        formFieldDto2.getClass();
        formFieldDto4.getClass();
        formFieldDto7.getClass();
        formFieldPhoneDto.getClass();
        this.f66010a = str;
        this.f66011b = formFieldDto;
        this.f66012c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66013e = formFieldDto4;
        this.f66014f = formFieldDto5;
        this.g = formFieldDto6;
        this.f66015h = formFieldDto7;
        this.f66016i = formFieldDto8;
        this.f66017j = formFieldDto9;
        this.f66018k = formFieldDto10;
        this.l = formFieldDto11;
        this.m = formFieldDto12;
        this.n = formFieldDto13;
        this.o = formFieldPhoneDto;
        this.p = formFieldDto14;
        this.q = formFieldDto15;
        this.r = formFieldDto16;
        this.s = formFieldDto17;
    }

    public /* synthetic */ AddressFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldDto formFieldDto8, FormFieldDto formFieldDto9, FormFieldDto formFieldDto10, FormFieldDto formFieldDto11, FormFieldDto formFieldDto12, FormFieldDto formFieldDto13, FormFieldPhoneDto formFieldPhoneDto, FormFieldDto formFieldDto14, FormFieldDto formFieldDto15, FormFieldDto formFieldDto16, FormFieldDto formFieldDto17, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : formFieldDto, formFieldDto2, (i2 & 8) != 0 ? null : formFieldDto3, formFieldDto4, (i2 & 32) != 0 ? null : formFieldDto5, (i2 & 64) != 0 ? null : formFieldDto6, formFieldDto7, (i2 & 256) != 0 ? null : formFieldDto8, (i2 & 512) != 0 ? null : formFieldDto9, (i2 & 1024) != 0 ? null : formFieldDto10, (i2 & 2048) != 0 ? null : formFieldDto11, (i2 & 4096) != 0 ? null : formFieldDto12, (i2 & 8192) != 0 ? null : formFieldDto13, formFieldPhoneDto, (32768 & i2) != 0 ? null : formFieldDto14, (65536 & i2) != 0 ? null : formFieldDto15, (131072 & i2) != 0 ? null : formFieldDto16, (i2 & 262144) != 0 ? null : formFieldDto17);
    }
}

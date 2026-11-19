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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "email", "postalCode", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "phoneNumber", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66036c;
    public final FormFieldPhoneDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceFormDto> serializer() {
            return CareServiceFormDto$$serializer.f66037a;
        }
    }

    public /* synthetic */ CareServiceFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldPhoneDto formFieldPhoneDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (11 != (i2 & 11)) {
            PluginExceptionsKt.b(i2, 11, CareServiceFormDto$$serializer.f66037a.getF19838b());
            throw null;
        }
        this.f66034a = str;
        this.f66035b = formFieldDto;
        if ((i2 & 4) == 0) {
            this.f66036c = null;
        } else {
            this.f66036c = formFieldDto2;
        }
        this.d = formFieldPhoneDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceFormDto)) {
            return false;
        }
        CareServiceFormDto careServiceFormDto = (CareServiceFormDto) obj;
        return Intrinsics.c(this.f66034a, careServiceFormDto.f66034a) && Intrinsics.c(this.f66035b, careServiceFormDto.f66035b) && Intrinsics.c(this.f66036c, careServiceFormDto.f66036c) && Intrinsics.c(this.d, careServiceFormDto.d);
    }

    public final int hashCode() {
        int iB = a.b(this.f66035b, this.f66034a.hashCode() * 31, 31);
        FormFieldDto formFieldDto = this.f66036c;
        return this.d.hashCode() + ((iB + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31);
    }

    public final String toString() {
        return "CareServiceFormDto(identifier=" + this.f66034a + ", email=" + this.f66035b + ", postalCode=" + this.f66036c + ", phoneNumber=" + this.d + ")";
    }

    public CareServiceFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldPhoneDto formFieldPhoneDto) {
        str.getClass();
        formFieldDto.getClass();
        formFieldPhoneDto.getClass();
        this.f66034a = str;
        this.f66035b = formFieldDto;
        this.f66036c = formFieldDto2;
        this.d = formFieldPhoneDto;
    }

    public /* synthetic */ CareServiceFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldPhoneDto formFieldPhoneDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, formFieldDto, (i2 & 4) != 0 ? null : formFieldDto2, formFieldPhoneDto);
    }
}

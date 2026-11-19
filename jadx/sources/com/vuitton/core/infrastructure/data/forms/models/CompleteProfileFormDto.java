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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBk\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "email", "civility", "firstName", "lastName", "firstName2", "lastName2", "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;", "consents", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CompleteProfileFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66045c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66047f;
    public final FormFieldDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CompleteProfileConsentsFormFieldDto f66048h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CompleteProfileFormDto> serializer() {
            return CompleteProfileFormDto$$serializer.f66049a;
        }
    }

    public /* synthetic */ CompleteProfileFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, CompleteProfileConsentsFormFieldDto completeProfileConsentsFormFieldDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (159 != (i2 & 159)) {
            PluginExceptionsKt.b(i2, 159, CompleteProfileFormDto$$serializer.f66049a.getF19838b());
            throw null;
        }
        this.f66043a = str;
        this.f66044b = formFieldDto;
        this.f66045c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66046e = formFieldDto4;
        if ((i2 & 32) == 0) {
            this.f66047f = null;
        } else {
            this.f66047f = formFieldDto5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = formFieldDto6;
        }
        this.f66048h = completeProfileConsentsFormFieldDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompleteProfileFormDto)) {
            return false;
        }
        CompleteProfileFormDto completeProfileFormDto = (CompleteProfileFormDto) obj;
        return Intrinsics.c(this.f66043a, completeProfileFormDto.f66043a) && Intrinsics.c(this.f66044b, completeProfileFormDto.f66044b) && Intrinsics.c(this.f66045c, completeProfileFormDto.f66045c) && Intrinsics.c(this.d, completeProfileFormDto.d) && Intrinsics.c(this.f66046e, completeProfileFormDto.f66046e) && Intrinsics.c(this.f66047f, completeProfileFormDto.f66047f) && Intrinsics.c(this.g, completeProfileFormDto.g) && Intrinsics.c(this.f66048h, completeProfileFormDto.f66048h);
    }

    public final int hashCode() {
        int iB = a.b(this.f66046e, a.b(this.d, a.b(this.f66045c, a.b(this.f66044b, this.f66043a.hashCode() * 31, 31), 31), 31), 31);
        FormFieldDto formFieldDto = this.f66047f;
        int iHashCode = (iB + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31;
        FormFieldDto formFieldDto2 = this.g;
        return this.f66048h.hashCode() + ((iHashCode + (formFieldDto2 != null ? formFieldDto2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CompleteProfileFormDto(identifier=");
        sb.append(this.f66043a);
        sb.append(", email=");
        sb.append(this.f66044b);
        sb.append(", civility=");
        a.z(sb, this.f66045c, ", firstName=", this.d, ", lastName=");
        a.z(sb, this.f66046e, ", firstName2=", this.f66047f, ", lastName2=");
        sb.append(this.g);
        sb.append(", consents=");
        sb.append(this.f66048h);
        sb.append(")");
        return sb.toString();
    }

    public CompleteProfileFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, CompleteProfileConsentsFormFieldDto completeProfileConsentsFormFieldDto) {
        str.getClass();
        formFieldDto.getClass();
        formFieldDto2.getClass();
        formFieldDto3.getClass();
        formFieldDto4.getClass();
        completeProfileConsentsFormFieldDto.getClass();
        this.f66043a = str;
        this.f66044b = formFieldDto;
        this.f66045c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66046e = formFieldDto4;
        this.f66047f = formFieldDto5;
        this.g = formFieldDto6;
        this.f66048h = completeProfileConsentsFormFieldDto;
    }

    public /* synthetic */ CompleteProfileFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, CompleteProfileConsentsFormFieldDto completeProfileConsentsFormFieldDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, formFieldDto, formFieldDto2, formFieldDto3, formFieldDto4, (i2 & 32) != 0 ? null : formFieldDto5, (i2 & 64) != 0 ? null : formFieldDto6, completeProfileConsentsFormFieldDto);
    }
}

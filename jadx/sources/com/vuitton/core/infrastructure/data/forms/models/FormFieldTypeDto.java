package com.vuitton.core.infrastructure.data.forms.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fBW\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;", "", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;", "freeform", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;", "readOnlyEnum", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;", "dependentEnum", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;", "enum", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;", "dependentRemoteEnum", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;", "boolean", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeFreeformDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeBooleanDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormFieldTypeDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormFieldTypeFreeformDto f66083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldTypeReadOnlyEnumDto f66084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldTypeDependentEnumDto f66085c;
    public final FormFieldTypeEnumDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldTypeDependentRemoteEnumDto f66086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldTypeBooleanDto f66087f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormFieldTypeDto> serializer() {
            return FormFieldTypeDto$$serializer.f66088a;
        }
    }

    public /* synthetic */ FormFieldTypeDto(int i2, FormFieldTypeFreeformDto formFieldTypeFreeformDto, FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto, FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto, FormFieldTypeEnumDto formFieldTypeEnumDto, FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto, FormFieldTypeBooleanDto formFieldTypeBooleanDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f66083a = null;
        } else {
            this.f66083a = formFieldTypeFreeformDto;
        }
        if ((i2 & 2) == 0) {
            this.f66084b = null;
        } else {
            this.f66084b = formFieldTypeReadOnlyEnumDto;
        }
        if ((i2 & 4) == 0) {
            this.f66085c = null;
        } else {
            this.f66085c = formFieldTypeDependentEnumDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = formFieldTypeEnumDto;
        }
        if ((i2 & 16) == 0) {
            this.f66086e = null;
        } else {
            this.f66086e = formFieldTypeDependentRemoteEnumDto;
        }
        if ((i2 & 32) == 0) {
            this.f66087f = null;
        } else {
            this.f66087f = formFieldTypeBooleanDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldTypeDto)) {
            return false;
        }
        FormFieldTypeDto formFieldTypeDto = (FormFieldTypeDto) obj;
        return Intrinsics.c(this.f66083a, formFieldTypeDto.f66083a) && Intrinsics.c(this.f66084b, formFieldTypeDto.f66084b) && Intrinsics.c(this.f66085c, formFieldTypeDto.f66085c) && Intrinsics.c(this.d, formFieldTypeDto.d) && Intrinsics.c(this.f66086e, formFieldTypeDto.f66086e) && Intrinsics.c(this.f66087f, formFieldTypeDto.f66087f);
    }

    public final int hashCode() {
        FormFieldTypeFreeformDto formFieldTypeFreeformDto = this.f66083a;
        int iHashCode = (formFieldTypeFreeformDto == null ? 0 : formFieldTypeFreeformDto.hashCode()) * 31;
        FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto = this.f66084b;
        int iHashCode2 = (iHashCode + (formFieldTypeReadOnlyEnumDto == null ? 0 : formFieldTypeReadOnlyEnumDto.f66096a.hashCode())) * 31;
        FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto = this.f66085c;
        int iHashCode3 = (iHashCode2 + (formFieldTypeDependentEnumDto == null ? 0 : formFieldTypeDependentEnumDto.hashCode())) * 31;
        FormFieldTypeEnumDto formFieldTypeEnumDto = this.d;
        int iHashCode4 = (iHashCode3 + (formFieldTypeEnumDto == null ? 0 : formFieldTypeEnumDto.hashCode())) * 31;
        FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto = this.f66086e;
        int iHashCode5 = (iHashCode4 + (formFieldTypeDependentRemoteEnumDto == null ? 0 : formFieldTypeDependentRemoteEnumDto.hashCode())) * 31;
        FormFieldTypeBooleanDto formFieldTypeBooleanDto = this.f66087f;
        return iHashCode5 + (formFieldTypeBooleanDto != null ? formFieldTypeBooleanDto.hashCode() : 0);
    }

    public final String toString() {
        return "FormFieldTypeDto(freeform=" + this.f66083a + ", readOnlyEnum=" + this.f66084b + ", dependentEnum=" + this.f66085c + ", enum=" + this.d + ", dependentRemoteEnum=" + this.f66086e + ", boolean=" + this.f66087f + ")";
    }

    public FormFieldTypeDto() {
        this((FormFieldTypeFreeformDto) null, (FormFieldTypeReadOnlyEnumDto) null, (FormFieldTypeDependentEnumDto) null, (FormFieldTypeEnumDto) null, (FormFieldTypeDependentRemoteEnumDto) null, (FormFieldTypeBooleanDto) null, 63, (DefaultConstructorMarker) null);
    }

    public FormFieldTypeDto(FormFieldTypeFreeformDto formFieldTypeFreeformDto, FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto, FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto, FormFieldTypeEnumDto formFieldTypeEnumDto, FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto, FormFieldTypeBooleanDto formFieldTypeBooleanDto) {
        this.f66083a = formFieldTypeFreeformDto;
        this.f66084b = formFieldTypeReadOnlyEnumDto;
        this.f66085c = formFieldTypeDependentEnumDto;
        this.d = formFieldTypeEnumDto;
        this.f66086e = formFieldTypeDependentRemoteEnumDto;
        this.f66087f = formFieldTypeBooleanDto;
    }

    public /* synthetic */ FormFieldTypeDto(FormFieldTypeFreeformDto formFieldTypeFreeformDto, FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto, FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto, FormFieldTypeEnumDto formFieldTypeEnumDto, FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto, FormFieldTypeBooleanDto formFieldTypeBooleanDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : formFieldTypeFreeformDto, (i2 & 2) != 0 ? null : formFieldTypeReadOnlyEnumDto, (i2 & 4) != 0 ? null : formFieldTypeDependentEnumDto, (i2 & 8) != 0 ? null : formFieldTypeEnumDto, (i2 & 16) != 0 ? null : formFieldTypeDependentRemoteEnumDto, (i2 & 32) != 0 ? null : formFieldTypeBooleanDto);
    }
}

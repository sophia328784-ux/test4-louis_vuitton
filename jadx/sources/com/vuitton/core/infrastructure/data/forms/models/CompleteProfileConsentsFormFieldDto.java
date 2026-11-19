package com.vuitton.core.infrastructure.data.forms.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;", "", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "privacyPolicyConsent", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CompleteProfileConsentsFormFieldDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormFieldDto f66041a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CompleteProfileConsentsFormFieldDto> serializer() {
            return CompleteProfileConsentsFormFieldDto$$serializer.f66042a;
        }
    }

    public /* synthetic */ CompleteProfileConsentsFormFieldDto(int i2, FormFieldDto formFieldDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f66041a = null;
        } else {
            this.f66041a = formFieldDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CompleteProfileConsentsFormFieldDto) && Intrinsics.c(this.f66041a, ((CompleteProfileConsentsFormFieldDto) obj).f66041a);
    }

    public final int hashCode() {
        FormFieldDto formFieldDto = this.f66041a;
        if (formFieldDto == null) {
            return 0;
        }
        return formFieldDto.hashCode();
    }

    public final String toString() {
        return "CompleteProfileConsentsFormFieldDto(privacyPolicyConsent=" + this.f66041a + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CompleteProfileConsentsFormFieldDto() {
        this((FormFieldDto) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public CompleteProfileConsentsFormFieldDto(FormFieldDto formFieldDto) {
        this.f66041a = formFieldDto;
    }

    public /* synthetic */ CompleteProfileConsentsFormFieldDto(FormFieldDto formFieldDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : formFieldDto);
    }
}

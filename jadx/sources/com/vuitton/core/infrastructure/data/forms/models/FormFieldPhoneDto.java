package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.a;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bBQ\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\n\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "", "", "minCount", "maxCount", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "phoneNumberType", "phoneNumberCountry", "phoneNumber", "order", "<init>", "(IILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;I)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IIILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormFieldPhoneDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f66068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f66069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66070c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f66072f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormFieldPhoneDto> serializer() {
            return FormFieldPhoneDto$$serializer.f66073a;
        }
    }

    public /* synthetic */ FormFieldPhoneDto(int i2, int i3, int i4, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, int i5, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i2 & 63)) {
            PluginExceptionsKt.b(i2, 63, FormFieldPhoneDto$$serializer.f66073a.getF19838b());
            throw null;
        }
        this.f66068a = i3;
        this.f66069b = i4;
        this.f66070c = formFieldDto;
        this.d = formFieldDto2;
        this.f66071e = formFieldDto3;
        this.f66072f = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldPhoneDto)) {
            return false;
        }
        FormFieldPhoneDto formFieldPhoneDto = (FormFieldPhoneDto) obj;
        return this.f66068a == formFieldPhoneDto.f66068a && this.f66069b == formFieldPhoneDto.f66069b && Intrinsics.c(this.f66070c, formFieldPhoneDto.f66070c) && Intrinsics.c(this.d, formFieldPhoneDto.d) && Intrinsics.c(this.f66071e, formFieldPhoneDto.f66071e) && this.f66072f == formFieldPhoneDto.f66072f;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f66072f) + a.b(this.f66071e, a.b(this.d, a.b(this.f66070c, tr.b(this.f66069b, Integer.hashCode(this.f66068a) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = fc.p(this.f66068a, this.f66069b, "FormFieldPhoneDto(minCount=", ", maxCount=", ", phoneNumberType=");
        a.z(sbP, this.f66070c, ", phoneNumberCountry=", this.d, ", phoneNumber=");
        sbP.append(this.f66071e);
        sbP.append(", order=");
        sbP.append(this.f66072f);
        sbP.append(")");
        return sbP.toString();
    }

    public FormFieldPhoneDto(int i2, int i3, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, int i4) {
        formFieldDto.getClass();
        formFieldDto2.getClass();
        formFieldDto3.getClass();
        this.f66068a = i2;
        this.f66069b = i3;
        this.f66070c = formFieldDto;
        this.d = formFieldDto2;
        this.f66071e = formFieldDto3;
        this.f66072f = i4;
    }
}

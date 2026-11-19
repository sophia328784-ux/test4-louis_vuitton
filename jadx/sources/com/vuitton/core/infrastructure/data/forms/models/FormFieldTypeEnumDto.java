package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.tx;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB!\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;", "", "", "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;", "enumValueList", "defaultEnumValue", "<init>", "(Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormFieldTypeEnumDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f66089c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new tx(18)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f66090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormEnumValueDto f66091b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormFieldTypeEnumDto> serializer() {
            return FormFieldTypeEnumDto$$serializer.f66092a;
        }
    }

    public /* synthetic */ FormFieldTypeEnumDto(int i2, List list, FormEnumValueDto formEnumValueDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, FormFieldTypeEnumDto$$serializer.f66092a.getF19838b());
            throw null;
        }
        this.f66090a = list;
        if ((i2 & 2) == 0) {
            this.f66091b = null;
        } else {
            this.f66091b = formEnumValueDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldTypeEnumDto)) {
            return false;
        }
        FormFieldTypeEnumDto formFieldTypeEnumDto = (FormFieldTypeEnumDto) obj;
        return Intrinsics.c(this.f66090a, formFieldTypeEnumDto.f66090a) && Intrinsics.c(this.f66091b, formFieldTypeEnumDto.f66091b);
    }

    public final int hashCode() {
        int iHashCode = this.f66090a.hashCode() * 31;
        FormEnumValueDto formEnumValueDto = this.f66091b;
        return iHashCode + (formEnumValueDto == null ? 0 : formEnumValueDto.hashCode());
    }

    public final String toString() {
        return "FormFieldTypeEnumDto(enumValueList=" + this.f66090a + ", defaultEnumValue=" + this.f66091b + ")";
    }

    public FormFieldTypeEnumDto(List<FormEnumValueDto> list, FormEnumValueDto formEnumValueDto) {
        list.getClass();
        this.f66090a = list;
        this.f66091b = formEnumValueDto;
    }

    public /* synthetic */ FormFieldTypeEnumDto(List list, FormEnumValueDto formEnumValueDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : formEnumValueDto);
    }
}

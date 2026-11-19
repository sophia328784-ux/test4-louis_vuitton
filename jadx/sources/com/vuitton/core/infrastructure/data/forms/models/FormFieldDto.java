package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\b\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "", "", "isMandatory", "", "order", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;", "type", "<init>", "(ZILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IZILcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormFieldDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f66064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f66065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldTypeDto f66066c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormFieldDto> serializer() {
            return FormFieldDto$$serializer.f66067a;
        }
    }

    public /* synthetic */ FormFieldDto(int i2, boolean z, int i3, FormFieldTypeDto formFieldTypeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, FormFieldDto$$serializer.f66067a.a());
            throw null;
        }
        this.f66064a = z;
        this.f66065b = i3;
        this.f66066c = formFieldTypeDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldDto)) {
            return false;
        }
        FormFieldDto formFieldDto = (FormFieldDto) obj;
        return this.f66064a == formFieldDto.f66064a && this.f66065b == formFieldDto.f66065b && Intrinsics.c(this.f66066c, formFieldDto.f66066c);
    }

    public final int hashCode() {
        return this.f66066c.hashCode() + tr.b(this.f66065b, Boolean.hashCode(this.f66064a) * 31, 31);
    }

    public final String toString() {
        return "FormFieldDto(isMandatory=" + this.f66064a + ", order=" + this.f66065b + ", type=" + this.f66066c + ")";
    }

    public FormFieldDto(boolean z, int i2, FormFieldTypeDto formFieldTypeDto) {
        formFieldTypeDto.getClass();
        this.f66064a = z;
        this.f66065b = i2;
        this.f66066c = formFieldTypeDto;
    }
}

package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;", "", "", "dependencyField", "identifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormFieldTypeDependentRemoteEnumDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66081b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentRemoteEnumDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormFieldTypeDependentRemoteEnumDto> serializer() {
            return FormFieldTypeDependentRemoteEnumDto$$serializer.f66082a;
        }
    }

    public /* synthetic */ FormFieldTypeDependentRemoteEnumDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, FormFieldTypeDependentRemoteEnumDto$$serializer.f66082a.a());
            throw null;
        }
        this.f66080a = str;
        this.f66081b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldTypeDependentRemoteEnumDto)) {
            return false;
        }
        FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto = (FormFieldTypeDependentRemoteEnumDto) obj;
        return Intrinsics.c(this.f66080a, formFieldTypeDependentRemoteEnumDto.f66080a) && Intrinsics.c(this.f66081b, formFieldTypeDependentRemoteEnumDto.f66081b);
    }

    public final int hashCode() {
        return this.f66081b.hashCode() + (this.f66080a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("FormFieldTypeDependentRemoteEnumDto(dependencyField=", this.f66080a, ", identifier=", this.f66081b, ")");
    }

    public FormFieldTypeDependentRemoteEnumDto(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f66080a = str;
        this.f66081b = str2;
    }
}

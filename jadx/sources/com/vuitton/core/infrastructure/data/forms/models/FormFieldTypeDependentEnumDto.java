package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.cj;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;", "", "", "dependencyField", "", "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;", "dependentValueList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormFieldTypeDependentEnumDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f66076c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new tx(17))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66078b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDependentEnumDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormFieldTypeDependentEnumDto> serializer() {
            return FormFieldTypeDependentEnumDto$$serializer.f66079a;
        }
    }

    public /* synthetic */ FormFieldTypeDependentEnumDto(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, FormFieldTypeDependentEnumDto$$serializer.f66079a.getF19838b());
            throw null;
        }
        this.f66077a = str;
        this.f66078b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormFieldTypeDependentEnumDto)) {
            return false;
        }
        FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto = (FormFieldTypeDependentEnumDto) obj;
        return Intrinsics.c(this.f66077a, formFieldTypeDependentEnumDto.f66077a) && Intrinsics.c(this.f66078b, formFieldTypeDependentEnumDto.f66078b);
    }

    public final int hashCode() {
        return this.f66078b.hashCode() + (this.f66077a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("FormFieldTypeDependentEnumDto(dependencyField=", this.f66077a, ", dependentValueList=", this.f66078b, ")");
    }

    public FormFieldTypeDependentEnumDto(String str, List<FormEnumDependentValueDto> list) {
        str.getClass();
        list.getClass();
        this.f66077a = str;
        this.f66078b = list;
    }
}

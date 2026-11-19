package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.d21;
import defpackage.n00;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;", "", "", "dependencyValue", "", "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;", "enumValueList", "defaultEnumValue", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumValueDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FormEnumDependentValueDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new tx(14)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormEnumValueDto f66059c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FormEnumDependentValueDto> serializer() {
            return FormEnumDependentValueDto$$serializer.f66060a;
        }
    }

    public /* synthetic */ FormEnumDependentValueDto(int i2, String str, List list, FormEnumValueDto formEnumValueDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, FormEnumDependentValueDto$$serializer.f66060a.getF19838b());
            throw null;
        }
        this.f66057a = str;
        this.f66058b = list;
        if ((i2 & 4) == 0) {
            this.f66059c = null;
        } else {
            this.f66059c = formEnumValueDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormEnumDependentValueDto)) {
            return false;
        }
        FormEnumDependentValueDto formEnumDependentValueDto = (FormEnumDependentValueDto) obj;
        return Intrinsics.c(this.f66057a, formEnumDependentValueDto.f66057a) && Intrinsics.c(this.f66058b, formEnumDependentValueDto.f66058b) && Intrinsics.c(this.f66059c, formEnumDependentValueDto.f66059c);
    }

    public final int hashCode() {
        int iA = n00.a(this.f66057a.hashCode() * 31, 31, this.f66058b);
        FormEnumValueDto formEnumValueDto = this.f66059c;
        return iA + (formEnumValueDto == null ? 0 : formEnumValueDto.hashCode());
    }

    public final String toString() {
        StringBuilder sbT = d21.t("FormEnumDependentValueDto(dependencyValue=", this.f66057a, ", enumValueList=", this.f66058b, ", defaultEnumValue=");
        sbT.append(this.f66059c);
        sbT.append(")");
        return sbT.toString();
    }

    public FormEnumDependentValueDto(String str, List<FormEnumValueDto> list, FormEnumValueDto formEnumValueDto) {
        str.getClass();
        list.getClass();
        this.f66057a = str;
        this.f66058b = list;
        this.f66059c = formEnumValueDto;
    }

    public /* synthetic */ FormEnumDependentValueDto(String str, List list, FormEnumValueDto formEnumValueDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, (i2 & 4) != 0 ? null : formEnumValueDto);
    }
}

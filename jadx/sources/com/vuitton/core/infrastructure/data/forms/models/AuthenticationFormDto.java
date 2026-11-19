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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "email", "password", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AuthenticationFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66020a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66022c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/AuthenticationFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AuthenticationFormDto> serializer() {
            return AuthenticationFormDto$$serializer.f66023a;
        }
    }

    public /* synthetic */ AuthenticationFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, AuthenticationFormDto$$serializer.f66023a.getF19850b());
            throw null;
        }
        this.f66020a = str;
        this.f66021b = formFieldDto;
        this.f66022c = formFieldDto2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticationFormDto)) {
            return false;
        }
        AuthenticationFormDto authenticationFormDto = (AuthenticationFormDto) obj;
        return Intrinsics.c(this.f66020a, authenticationFormDto.f66020a) && Intrinsics.c(this.f66021b, authenticationFormDto.f66021b) && Intrinsics.c(this.f66022c, authenticationFormDto.f66022c);
    }

    public final int hashCode() {
        return this.f66022c.hashCode() + a.b(this.f66021b, this.f66020a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "AuthenticationFormDto(identifier=" + this.f66020a + ", email=" + this.f66021b + ", password=" + this.f66022c + ")";
    }

    public AuthenticationFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2) {
        str.getClass();
        formFieldDto.getClass();
        formFieldDto2.getClass();
        this.f66020a = str;
        this.f66021b = formFieldDto;
        this.f66022c = formFieldDto2;
    }
}

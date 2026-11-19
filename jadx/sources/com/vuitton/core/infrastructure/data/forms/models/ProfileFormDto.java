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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fBu\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;", "", "", "identifier", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;", "civility", "firstName", "lastName", "firstName2", "lastName2", "vatCode", "branchID", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;", "phoneNumbers", "<init>", "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProfileFormDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormFieldDto f66108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FormFieldDto f66109c;
    public final FormFieldDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormFieldDto f66110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormFieldDto f66111f;
    public final FormFieldDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FormFieldDto f66112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormFieldPhoneDto f66113i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/ProfileFormDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProfileFormDto> serializer() {
            return ProfileFormDto$$serializer.f66114a;
        }
    }

    public /* synthetic */ ProfileFormDto(int i2, String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, ProfileFormDto$$serializer.f66114a.getF19838b());
            throw null;
        }
        this.f66107a = str;
        this.f66108b = formFieldDto;
        this.f66109c = formFieldDto2;
        this.d = formFieldDto3;
        if ((i2 & 16) == 0) {
            this.f66110e = null;
        } else {
            this.f66110e = formFieldDto4;
        }
        if ((i2 & 32) == 0) {
            this.f66111f = null;
        } else {
            this.f66111f = formFieldDto5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = formFieldDto6;
        }
        if ((i2 & 128) == 0) {
            this.f66112h = null;
        } else {
            this.f66112h = formFieldDto7;
        }
        if ((i2 & 256) == 0) {
            this.f66113i = null;
        } else {
            this.f66113i = formFieldPhoneDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileFormDto)) {
            return false;
        }
        ProfileFormDto profileFormDto = (ProfileFormDto) obj;
        return Intrinsics.c(this.f66107a, profileFormDto.f66107a) && Intrinsics.c(this.f66108b, profileFormDto.f66108b) && Intrinsics.c(this.f66109c, profileFormDto.f66109c) && Intrinsics.c(this.d, profileFormDto.d) && Intrinsics.c(this.f66110e, profileFormDto.f66110e) && Intrinsics.c(this.f66111f, profileFormDto.f66111f) && Intrinsics.c(this.g, profileFormDto.g) && Intrinsics.c(this.f66112h, profileFormDto.f66112h) && Intrinsics.c(this.f66113i, profileFormDto.f66113i);
    }

    public final int hashCode() {
        int iB = a.b(this.d, a.b(this.f66109c, a.b(this.f66108b, this.f66107a.hashCode() * 31, 31), 31), 31);
        FormFieldDto formFieldDto = this.f66110e;
        int iHashCode = (iB + (formFieldDto == null ? 0 : formFieldDto.hashCode())) * 31;
        FormFieldDto formFieldDto2 = this.f66111f;
        int iHashCode2 = (iHashCode + (formFieldDto2 == null ? 0 : formFieldDto2.hashCode())) * 31;
        FormFieldDto formFieldDto3 = this.g;
        int iHashCode3 = (iHashCode2 + (formFieldDto3 == null ? 0 : formFieldDto3.hashCode())) * 31;
        FormFieldDto formFieldDto4 = this.f66112h;
        int iHashCode4 = (iHashCode3 + (formFieldDto4 == null ? 0 : formFieldDto4.hashCode())) * 31;
        FormFieldPhoneDto formFieldPhoneDto = this.f66113i;
        return iHashCode4 + (formFieldPhoneDto != null ? formFieldPhoneDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProfileFormDto(identifier=");
        sb.append(this.f66107a);
        sb.append(", civility=");
        sb.append(this.f66108b);
        sb.append(", firstName=");
        a.z(sb, this.f66109c, ", lastName=", this.d, ", firstName2=");
        a.z(sb, this.f66110e, ", lastName2=", this.f66111f, ", vatCode=");
        a.z(sb, this.g, ", branchID=", this.f66112h, ", phoneNumbers=");
        sb.append(this.f66113i);
        sb.append(")");
        return sb.toString();
    }

    public ProfileFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto) {
        str.getClass();
        formFieldDto.getClass();
        formFieldDto2.getClass();
        formFieldDto3.getClass();
        this.f66107a = str;
        this.f66108b = formFieldDto;
        this.f66109c = formFieldDto2;
        this.d = formFieldDto3;
        this.f66110e = formFieldDto4;
        this.f66111f = formFieldDto5;
        this.g = formFieldDto6;
        this.f66112h = formFieldDto7;
        this.f66113i = formFieldPhoneDto;
    }

    public /* synthetic */ ProfileFormDto(String str, FormFieldDto formFieldDto, FormFieldDto formFieldDto2, FormFieldDto formFieldDto3, FormFieldDto formFieldDto4, FormFieldDto formFieldDto5, FormFieldDto formFieldDto6, FormFieldDto formFieldDto7, FormFieldPhoneDto formFieldPhoneDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, formFieldDto, formFieldDto2, formFieldDto3, (i2 & 16) != 0 ? null : formFieldDto4, (i2 & 32) != 0 ? null : formFieldDto5, (i2 & 64) != 0 ? null : formFieldDto6, (i2 & 128) != 0 ? null : formFieldDto7, (i2 & 256) != 0 ? null : formFieldPhoneDto);
    }
}

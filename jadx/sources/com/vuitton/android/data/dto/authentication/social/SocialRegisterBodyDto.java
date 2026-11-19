package com.vuitton.android.data.dto.authentication.social;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.common.RegisterConsentsDto;
import com.vuitton.android.data.dto.authentication.common.RegistrationAddressDto;
import com.vuitton.android.data.dto.authentication.common.UserInformationDto;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rBW\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;", "", "Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;", "userInformation", "", "identityToken", "authorizationCode", "rawNonce", "Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;", "address", "Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;", "consents", "<init>", "(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SocialRegisterBodyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInformationDto f44603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44605c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RegistrationAddressDto f44606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RegisterConsentsDto f44607f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SocialRegisterBodyDto> serializer() {
            return SocialRegisterBodyDto$$serializer.f44608a;
        }
    }

    public /* synthetic */ SocialRegisterBodyDto(int i2, UserInformationDto userInformationDto, String str, String str2, String str3, RegistrationAddressDto registrationAddressDto, RegisterConsentsDto registerConsentsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (43 != (i2 & 43)) {
            PluginExceptionsKt.b(i2, 43, SocialRegisterBodyDto$$serializer.f44608a.getF19838b());
            throw null;
        }
        this.f44603a = userInformationDto;
        this.f44604b = str;
        if ((i2 & 4) == 0) {
            this.f44605c = " ";
        } else {
            this.f44605c = str2;
        }
        this.d = str3;
        if ((i2 & 16) == 0) {
            this.f44606e = null;
        } else {
            this.f44606e = registrationAddressDto;
        }
        this.f44607f = registerConsentsDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialRegisterBodyDto)) {
            return false;
        }
        SocialRegisterBodyDto socialRegisterBodyDto = (SocialRegisterBodyDto) obj;
        return Intrinsics.c(this.f44603a, socialRegisterBodyDto.f44603a) && Intrinsics.c(this.f44604b, socialRegisterBodyDto.f44604b) && Intrinsics.c(this.f44605c, socialRegisterBodyDto.f44605c) && Intrinsics.c(this.d, socialRegisterBodyDto.d) && Intrinsics.c(this.f44606e, socialRegisterBodyDto.f44606e) && Intrinsics.c(this.f44607f, socialRegisterBodyDto.f44607f);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(this.f44603a.hashCode() * 31, 31, this.f44604b), 31, this.f44605c), 31, this.d);
        RegistrationAddressDto registrationAddressDto = this.f44606e;
        return this.f44607f.hashCode() + ((iB + (registrationAddressDto == null ? 0 : registrationAddressDto.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SocialRegisterBodyDto(userInformation=");
        sb.append(this.f44603a);
        sb.append(", identityToken=");
        sb.append(this.f44604b);
        sb.append(", authorizationCode=");
        cj.C(sb, this.f44605c, ", rawNonce=", this.d, ", address=");
        sb.append(this.f44606e);
        sb.append(", consents=");
        sb.append(this.f44607f);
        sb.append(")");
        return sb.toString();
    }

    public SocialRegisterBodyDto(UserInformationDto userInformationDto, String str, String str2, String str3, RegistrationAddressDto registrationAddressDto, RegisterConsentsDto registerConsentsDto) {
        userInformationDto.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        registerConsentsDto.getClass();
        this.f44603a = userInformationDto;
        this.f44604b = str;
        this.f44605c = str2;
        this.d = str3;
        this.f44606e = registrationAddressDto;
        this.f44607f = registerConsentsDto;
    }

    public /* synthetic */ SocialRegisterBodyDto(UserInformationDto userInformationDto, String str, String str2, String str3, RegistrationAddressDto registrationAddressDto, RegisterConsentsDto registerConsentsDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(userInformationDto, str, (i2 & 4) != 0 ? " " : str2, str3, (i2 & 16) != 0 ? null : registrationAddressDto, registerConsentsDto);
    }
}

package com.vuitton.android.data.dto.authentication.oauth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.common.RegisterConsentsDto;
import com.vuitton.android.data.dto.authentication.common.RegistrationAddressDto;
import com.vuitton.android.data.dto.authentication.common.UserInformationDto;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0003\u0012\u0013\u0011B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBC\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;", "", "Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;", "userInformation", "Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;", "address", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;", "credentials", "Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;", "consents", "<init>", "(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "CredentialsDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class RegisterInitiateBodyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInformationDto f44587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RegistrationAddressDto f44588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CredentialsDto f44589c;
    public final RegisterConsentsDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<RegisterInitiateBodyDto> serializer() {
            return RegisterInitiateBodyDto$$serializer.f44590a;
        }
    }

    public /* synthetic */ RegisterInitiateBodyDto(int i2, UserInformationDto userInformationDto, RegistrationAddressDto registrationAddressDto, CredentialsDto credentialsDto, RegisterConsentsDto registerConsentsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (13 != (i2 & 13)) {
            PluginExceptionsKt.b(i2, 13, RegisterInitiateBodyDto$$serializer.f44590a.getF19838b());
            throw null;
        }
        this.f44587a = userInformationDto;
        if ((i2 & 2) == 0) {
            this.f44588b = null;
        } else {
            this.f44588b = registrationAddressDto;
        }
        this.f44589c = credentialsDto;
        this.d = registerConsentsDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterInitiateBodyDto)) {
            return false;
        }
        RegisterInitiateBodyDto registerInitiateBodyDto = (RegisterInitiateBodyDto) obj;
        return Intrinsics.c(this.f44587a, registerInitiateBodyDto.f44587a) && Intrinsics.c(this.f44588b, registerInitiateBodyDto.f44588b) && Intrinsics.c(this.f44589c, registerInitiateBodyDto.f44589c) && Intrinsics.c(this.d, registerInitiateBodyDto.d);
    }

    public final int hashCode() {
        int iHashCode = this.f44587a.hashCode() * 31;
        RegistrationAddressDto registrationAddressDto = this.f44588b;
        return this.d.hashCode() + ((this.f44589c.hashCode() + ((iHashCode + (registrationAddressDto == null ? 0 : registrationAddressDto.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        return "RegisterInitiateBodyDto(userInformation=" + this.f44587a + ", address=" + this.f44588b + ", credentials=" + this.f44589c + ", consents=" + this.d + ")";
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;", "", "", "login", "password", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CredentialsDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44592b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CredentialsDto> serializer() {
                return RegisterInitiateBodyDto$CredentialsDto$$serializer.f44593a;
            }
        }

        public /* synthetic */ CredentialsDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, RegisterInitiateBodyDto$CredentialsDto$$serializer.f44593a.getF19838b());
                throw null;
            }
            this.f44591a = str;
            this.f44592b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CredentialsDto)) {
                return false;
            }
            CredentialsDto credentialsDto = (CredentialsDto) obj;
            return Intrinsics.c(this.f44591a, credentialsDto.f44591a) && Intrinsics.c(this.f44592b, credentialsDto.f44592b);
        }

        public final int hashCode() {
            return this.f44592b.hashCode() + (this.f44591a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CredentialsDto(login=", this.f44591a, ", password=", this.f44592b, ")");
        }

        public CredentialsDto(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44591a = str;
            this.f44592b = str2;
        }
    }

    public RegisterInitiateBodyDto(UserInformationDto userInformationDto, RegistrationAddressDto registrationAddressDto, CredentialsDto credentialsDto, RegisterConsentsDto registerConsentsDto) {
        userInformationDto.getClass();
        credentialsDto.getClass();
        registerConsentsDto.getClass();
        this.f44587a = userInformationDto;
        this.f44588b = registrationAddressDto;
        this.f44589c = credentialsDto;
        this.d = registerConsentsDto;
    }

    public /* synthetic */ RegisterInitiateBodyDto(UserInformationDto userInformationDto, RegistrationAddressDto registrationAddressDto, CredentialsDto credentialsDto, RegisterConsentsDto registerConsentsDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(userInformationDto, (i2 & 2) != 0 ? null : registrationAddressDto, credentialsDto, registerConsentsDto);
    }
}

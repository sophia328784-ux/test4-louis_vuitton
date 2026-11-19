package com.vuitton.android.data.dto.authentication.oauth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.authentication.common.RegisterConsentsDto;
import com.vuitton.android.data.dto.authentication.common.RegisterConsentsDto$$serializer;
import com.vuitton.android.data.dto.authentication.common.RegistrationAddressDto;
import com.vuitton.android.data.dto.authentication.common.RegistrationAddressDto$$serializer;
import com.vuitton.android.data.dto.authentication.common.UserInformationDto;
import com.vuitton.android.data.dto.authentication.common.UserInformationDto$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class RegisterInitiateBodyDto$$serializer implements GeneratedSerializer<RegisterInitiateBodyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RegisterInitiateBodyDto$$serializer f44590a;
    private static final SerialDescriptor descriptor;

    static {
        RegisterInitiateBodyDto$$serializer registerInitiateBodyDto$$serializer = new RegisterInitiateBodyDto$$serializer();
        f44590a = registerInitiateBodyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.authentication.oauth.RegisterInitiateBodyDto", registerInitiateBodyDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("userInformation", false);
        pluginGeneratedSerialDescriptor.k("address", true);
        pluginGeneratedSerialDescriptor.k("credentials", false);
        pluginGeneratedSerialDescriptor.k("consents", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        boolean z = true;
        int i2 = 0;
        UserInformationDto userInformationDto = null;
        RegistrationAddressDto registrationAddressDto = null;
        RegisterInitiateBodyDto.CredentialsDto credentialsDto = null;
        RegisterConsentsDto registerConsentsDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                userInformationDto = (UserInformationDto) compositeDecoderB.w(serialDescriptor, 0, UserInformationDto$$serializer.f44551a, userInformationDto);
                i2 |= 1;
            } else if (iN == 1) {
                registrationAddressDto = (RegistrationAddressDto) compositeDecoderB.m(serialDescriptor, 1, RegistrationAddressDto$$serializer.f44544a, registrationAddressDto);
                i2 |= 2;
            } else if (iN == 2) {
                credentialsDto = (RegisterInitiateBodyDto.CredentialsDto) compositeDecoderB.w(serialDescriptor, 2, RegisterInitiateBodyDto$CredentialsDto$$serializer.f44593a, credentialsDto);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                registerConsentsDto = (RegisterConsentsDto) compositeDecoderB.w(serialDescriptor, 3, RegisterConsentsDto$$serializer.f44538a, registerConsentsDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new RegisterInitiateBodyDto(i2, userInformationDto, registrationAddressDto, credentialsDto, registerConsentsDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        RegisterInitiateBodyDto registerInitiateBodyDto = (RegisterInitiateBodyDto) obj;
        registerInitiateBodyDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        UserInformationDto$$serializer userInformationDto$$serializer = UserInformationDto$$serializer.f44551a;
        UserInformationDto userInformationDto = registerInitiateBodyDto.f44587a;
        RegistrationAddressDto registrationAddressDto = registerInitiateBodyDto.f44588b;
        compositeEncoderB.A(serialDescriptor, 0, userInformationDto$$serializer, userInformationDto);
        if (compositeEncoderB.o(serialDescriptor) || registrationAddressDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, RegistrationAddressDto$$serializer.f44544a, registrationAddressDto);
        }
        compositeEncoderB.A(serialDescriptor, 2, RegisterInitiateBodyDto$CredentialsDto$$serializer.f44593a, registerInitiateBodyDto.f44589c);
        compositeEncoderB.A(serialDescriptor, 3, RegisterConsentsDto$$serializer.f44538a, registerInitiateBodyDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{UserInformationDto$$serializer.f44551a, BuiltinSerializersKt.d(RegistrationAddressDto$$serializer.f44544a), RegisterInitiateBodyDto$CredentialsDto$$serializer.f44593a, RegisterConsentsDto$$serializer.f44538a};
    }
}

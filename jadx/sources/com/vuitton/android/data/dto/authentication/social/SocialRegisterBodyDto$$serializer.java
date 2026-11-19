package com.vuitton.android.data.dto.authentication.social;

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
import kotlin.jvm.internal.Intrinsics;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SocialRegisterBodyDto$$serializer implements GeneratedSerializer<SocialRegisterBodyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SocialRegisterBodyDto$$serializer f44608a;
    private static final SerialDescriptor descriptor;

    static {
        SocialRegisterBodyDto$$serializer socialRegisterBodyDto$$serializer = new SocialRegisterBodyDto$$serializer();
        f44608a = socialRegisterBodyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.authentication.social.SocialRegisterBodyDto", socialRegisterBodyDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("userInformation", false);
        pluginGeneratedSerialDescriptor.k("identityToken", false);
        pluginGeneratedSerialDescriptor.k("authorizationCode", true);
        pluginGeneratedSerialDescriptor.k("rawNonce", false);
        pluginGeneratedSerialDescriptor.k("address", true);
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
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        RegistrationAddressDto registrationAddressDto = null;
        RegisterConsentsDto registerConsentsDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    userInformationDto = (UserInformationDto) compositeDecoderB.w(serialDescriptor, 0, UserInformationDto$$serializer.f44551a, userInformationDto);
                    i2 |= 1;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL2 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    strL3 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    registrationAddressDto = (RegistrationAddressDto) compositeDecoderB.m(serialDescriptor, 4, RegistrationAddressDto$$serializer.f44544a, registrationAddressDto);
                    i2 |= 16;
                    break;
                case 5:
                    registerConsentsDto = (RegisterConsentsDto) compositeDecoderB.w(serialDescriptor, 5, RegisterConsentsDto$$serializer.f44538a, registerConsentsDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SocialRegisterBodyDto(i2, userInformationDto, strL, strL2, strL3, registrationAddressDto, registerConsentsDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SocialRegisterBodyDto socialRegisterBodyDto = (SocialRegisterBodyDto) obj;
        socialRegisterBodyDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        UserInformationDto$$serializer userInformationDto$$serializer = UserInformationDto$$serializer.f44551a;
        UserInformationDto userInformationDto = socialRegisterBodyDto.f44603a;
        RegistrationAddressDto registrationAddressDto = socialRegisterBodyDto.f44606e;
        String str = socialRegisterBodyDto.f44605c;
        compositeEncoderB.A(serialDescriptor, 0, userInformationDto$$serializer, userInformationDto);
        compositeEncoderB.y(serialDescriptor, 1, socialRegisterBodyDto.f44604b);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str, " ")) {
            compositeEncoderB.y(serialDescriptor, 2, str);
        }
        compositeEncoderB.y(serialDescriptor, 3, socialRegisterBodyDto.d);
        if (compositeEncoderB.o(serialDescriptor) || registrationAddressDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, RegistrationAddressDto$$serializer.f44544a, registrationAddressDto);
        }
        compositeEncoderB.A(serialDescriptor, 5, RegisterConsentsDto$$serializer.f44538a, socialRegisterBodyDto.f44607f);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        KSerializer kSerializerD = BuiltinSerializersKt.d(RegistrationAddressDto$$serializer.f44544a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{UserInformationDto$$serializer.f44551a, stringSerializer, stringSerializer, stringSerializer, kSerializerD, RegisterConsentsDto$$serializer.f44538a};
    }
}

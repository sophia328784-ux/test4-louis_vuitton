package com.vuitton.android.data.dto.authentication.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import com.vuitton.android.data.dto.profile.PhoneNumberDto$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/authentication/common/UserInformationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class UserInformationDto$$serializer implements GeneratedSerializer<UserInformationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UserInformationDto$$serializer f44551a;
    private static final SerialDescriptor descriptor;

    static {
        UserInformationDto$$serializer userInformationDto$$serializer = new UserInformationDto$$serializer();
        f44551a = userInformationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.authentication.common.UserInformationDto", userInformationDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("civility", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", false);
        pluginGeneratedSerialDescriptor.k("lastName2", false);
        pluginGeneratedSerialDescriptor.k("countryCode", false);
        pluginGeneratedSerialDescriptor.k("birthDate", false);
        pluginGeneratedSerialDescriptor.k("mobilePhone", false);
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
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String str = null;
        String str2 = null;
        String strL4 = null;
        String str3 = null;
        PhoneNumberDto phoneNumberDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                    i2 |= 8;
                    break;
                case 4:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str2);
                    i2 |= 16;
                    break;
                case 5:
                    strL4 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str3);
                    i2 |= 64;
                    break;
                case 7:
                    phoneNumberDto = (PhoneNumberDto) compositeDecoderB.m(serialDescriptor, 7, PhoneNumberDto$$serializer.f46681a, phoneNumberDto);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new UserInformationDto(i2, strL, strL2, strL3, str, str2, strL4, str3, phoneNumberDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        UserInformationDto userInformationDto = (UserInformationDto) obj;
        userInformationDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, userInformationDto.f44545a);
        compositeEncoderB.y(serialDescriptor, 1, userInformationDto.f44546b);
        compositeEncoderB.y(serialDescriptor, 2, userInformationDto.f44547c);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        compositeEncoderB.h(serialDescriptor, 3, stringSerializer, userInformationDto.d);
        compositeEncoderB.h(serialDescriptor, 4, stringSerializer, userInformationDto.f44548e);
        compositeEncoderB.y(serialDescriptor, 5, userInformationDto.f44549f);
        compositeEncoderB.h(serialDescriptor, 6, stringSerializer, userInformationDto.g);
        compositeEncoderB.h(serialDescriptor, 7, PhoneNumberDto$$serializer.f46681a, userInformationDto.f44550h);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(PhoneNumberDto$$serializer.f46681a)};
    }
}

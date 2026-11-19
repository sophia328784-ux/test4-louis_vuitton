package com.vuitton.core.infrastructure.data.forms.models;

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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class RegistrationFormDto$$serializer implements GeneratedSerializer<RegistrationFormDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RegistrationFormDto$$serializer f66136a;
    private static final SerialDescriptor descriptor;

    static {
        RegistrationFormDto$$serializer registrationFormDto$$serializer = new RegistrationFormDto$$serializer();
        f66136a = registrationFormDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.RegistrationFormDto", registrationFormDto$$serializer, 14);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("password", false);
        pluginGeneratedSerialDescriptor.k("confirmPassword", false);
        pluginGeneratedSerialDescriptor.k("civility", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("birthDate", false);
        pluginGeneratedSerialDescriptor.k("country", false);
        pluginGeneratedSerialDescriptor.k("phone", false);
        pluginGeneratedSerialDescriptor.k("consents", false);
        pluginGeneratedSerialDescriptor.k("address", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        FormFieldDto formFieldDto;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        FormFieldPhoneDto formFieldPhoneDto = null;
        FormFieldDto formFieldDto2 = null;
        FormFieldDto formFieldDto3 = null;
        RegisterConsentsFormFieldDto registerConsentsFormFieldDto = null;
        FormFieldDto formFieldDto4 = null;
        int i2 = 0;
        RegistrationAddressFormFieldDto registrationAddressFormFieldDto = null;
        FormFieldDto formFieldDto5 = null;
        FormFieldDto formFieldDto6 = null;
        FormFieldDto formFieldDto7 = null;
        FormFieldDto formFieldDto8 = null;
        FormFieldDto formFieldDto9 = null;
        FormFieldDto formFieldDto10 = null;
        FormFieldDto formFieldDto11 = null;
        boolean z = true;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    formFieldDto6 = formFieldDto6;
                    z = false;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 0:
                    formFieldDto = formFieldDto6;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto;
                    formFieldPhoneDto = formFieldPhoneDto;
                    break;
                case 1:
                    formFieldDto = formFieldDto6;
                    formFieldDto5 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto5);
                    i2 |= 2;
                    formFieldDto6 = formFieldDto;
                    formFieldPhoneDto = formFieldPhoneDto;
                    break;
                case 2:
                    formFieldPhoneDto = formFieldPhoneDto;
                    formFieldDto6 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto6);
                    i2 |= 4;
                    formFieldDto5 = formFieldDto5;
                    formFieldPhoneDto = formFieldPhoneDto;
                    break;
                case 3:
                    formFieldDto7 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto7);
                    i2 |= 8;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 4:
                    formFieldDto8 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 4, FormFieldDto$$serializer.f66067a, formFieldDto8);
                    i2 |= 16;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 5:
                    formFieldDto9 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 5, FormFieldDto$$serializer.f66067a, formFieldDto9);
                    i2 |= 32;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 6:
                    formFieldDto10 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto10);
                    i2 |= 64;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 7:
                    formFieldDto11 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 7, FormFieldDto$$serializer.f66067a, formFieldDto11);
                    i2 |= 128;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 8:
                    formFieldDto4 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 8, FormFieldDto$$serializer.f66067a, formFieldDto4);
                    i2 |= 256;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 9:
                    formFieldDto3 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 9, FormFieldDto$$serializer.f66067a, formFieldDto3);
                    i2 |= 512;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 10:
                    formFieldDto2 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 10, FormFieldDto$$serializer.f66067a, formFieldDto2);
                    i2 |= 1024;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 11:
                    formFieldPhoneDto = (FormFieldPhoneDto) compositeDecoderB.w(serialDescriptor, 11, FormFieldPhoneDto$$serializer.f66073a, formFieldPhoneDto);
                    i2 |= 2048;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 12:
                    registerConsentsFormFieldDto = (RegisterConsentsFormFieldDto) compositeDecoderB.w(serialDescriptor, 12, RegisterConsentsFormFieldDto$$serializer.f66120a, registerConsentsFormFieldDto);
                    i2 |= 4096;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                case 13:
                    registrationAddressFormFieldDto = (RegistrationAddressFormFieldDto) compositeDecoderB.m(serialDescriptor, 13, RegistrationAddressFormFieldDto$$serializer.f66126a, registrationAddressFormFieldDto);
                    i2 |= 8192;
                    formFieldDto5 = formFieldDto5;
                    formFieldDto6 = formFieldDto6;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        FormFieldDto formFieldDto12 = formFieldDto6;
        compositeDecoderB.c(serialDescriptor);
        return new RegistrationFormDto(i2, strL, formFieldDto5, formFieldDto12, formFieldDto7, formFieldDto8, formFieldDto9, formFieldDto10, formFieldDto11, formFieldDto4, formFieldDto3, formFieldDto2, formFieldPhoneDto, registerConsentsFormFieldDto, registrationAddressFormFieldDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        RegistrationFormDto registrationFormDto = (RegistrationFormDto) obj;
        registrationFormDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = registrationFormDto.f66127a;
        RegistrationAddressFormFieldDto registrationAddressFormFieldDto = registrationFormDto.n;
        FormFieldDto formFieldDto = registrationFormDto.f66133i;
        FormFieldDto formFieldDto2 = registrationFormDto.f66132h;
        compositeEncoderB.y(serialDescriptor, 0, str);
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        compositeEncoderB.A(serialDescriptor, 1, formFieldDto$$serializer, registrationFormDto.f66128b);
        compositeEncoderB.A(serialDescriptor, 2, formFieldDto$$serializer, registrationFormDto.f66129c);
        compositeEncoderB.A(serialDescriptor, 3, formFieldDto$$serializer, registrationFormDto.d);
        compositeEncoderB.A(serialDescriptor, 4, formFieldDto$$serializer, registrationFormDto.f66130e);
        compositeEncoderB.A(serialDescriptor, 5, formFieldDto$$serializer, registrationFormDto.f66131f);
        compositeEncoderB.A(serialDescriptor, 6, formFieldDto$$serializer, registrationFormDto.g);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, formFieldDto$$serializer, formFieldDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 8, formFieldDto$$serializer, formFieldDto);
        }
        compositeEncoderB.A(serialDescriptor, 9, formFieldDto$$serializer, registrationFormDto.f66134j);
        compositeEncoderB.A(serialDescriptor, 10, formFieldDto$$serializer, registrationFormDto.f66135k);
        compositeEncoderB.A(serialDescriptor, 11, FormFieldPhoneDto$$serializer.f66073a, registrationFormDto.l);
        compositeEncoderB.A(serialDescriptor, 12, RegisterConsentsFormFieldDto$$serializer.f66120a, registrationFormDto.m);
        if (compositeEncoderB.o(serialDescriptor) || registrationAddressFormFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 13, RegistrationAddressFormFieldDto$$serializer.f66126a, registrationAddressFormFieldDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{StringSerializer.f75684a, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, formFieldDto$$serializer, FormFieldPhoneDto$$serializer.f66073a, RegisterConsentsFormFieldDto$$serializer.f66120a, BuiltinSerializersKt.d(RegistrationAddressFormFieldDto$$serializer.f66126a)};
    }
}

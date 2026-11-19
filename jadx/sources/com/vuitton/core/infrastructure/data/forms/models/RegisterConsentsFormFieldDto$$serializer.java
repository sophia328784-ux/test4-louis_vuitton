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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class RegisterConsentsFormFieldDto$$serializer implements GeneratedSerializer<RegisterConsentsFormFieldDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RegisterConsentsFormFieldDto$$serializer f66120a;
    private static final SerialDescriptor descriptor;

    static {
        RegisterConsentsFormFieldDto$$serializer registerConsentsFormFieldDto$$serializer = new RegisterConsentsFormFieldDto$$serializer();
        f66120a = registerConsentsFormFieldDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.RegisterConsentsFormFieldDto", registerConsentsFormFieldDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("legacyConsents", true);
        pluginGeneratedSerialDescriptor.k("allMarketingCommunicationsConsents", true);
        pluginGeneratedSerialDescriptor.k("privacyPolicyConsent", true);
        pluginGeneratedSerialDescriptor.k("marketingEmailsConsent", true);
        pluginGeneratedSerialDescriptor.k("pixelTrackingConsent", true);
        pluginGeneratedSerialDescriptor.k("targetedAdvertisingConsent", true);
        pluginGeneratedSerialDescriptor.k("marketingTextsConsent", true);
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
        FormFieldDto formFieldDto = null;
        FormFieldDto formFieldDto2 = null;
        FormFieldDto formFieldDto3 = null;
        FormFieldDto formFieldDto4 = null;
        FormFieldDto formFieldDto5 = null;
        FormFieldDto formFieldDto6 = null;
        FormFieldDto formFieldDto7 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    formFieldDto = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 0, FormFieldDto$$serializer.f66067a, formFieldDto);
                    i2 |= 1;
                    break;
                case 1:
                    formFieldDto2 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto2);
                    i2 |= 2;
                    break;
                case 2:
                    formFieldDto3 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto3);
                    i2 |= 4;
                    break;
                case 3:
                    formFieldDto4 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto4);
                    i2 |= 8;
                    break;
                case 4:
                    formFieldDto5 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 4, FormFieldDto$$serializer.f66067a, formFieldDto5);
                    i2 |= 16;
                    break;
                case 5:
                    formFieldDto6 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 5, FormFieldDto$$serializer.f66067a, formFieldDto6);
                    i2 |= 32;
                    break;
                case 6:
                    formFieldDto7 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto7);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new RegisterConsentsFormFieldDto(i2, formFieldDto, formFieldDto2, formFieldDto3, formFieldDto4, formFieldDto5, formFieldDto6, formFieldDto7, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        RegisterConsentsFormFieldDto registerConsentsFormFieldDto = (RegisterConsentsFormFieldDto) obj;
        registerConsentsFormFieldDto.getClass();
        FormFieldDto formFieldDto = registerConsentsFormFieldDto.g;
        FormFieldDto formFieldDto2 = registerConsentsFormFieldDto.f66119f;
        FormFieldDto formFieldDto3 = registerConsentsFormFieldDto.f66118e;
        FormFieldDto formFieldDto4 = registerConsentsFormFieldDto.d;
        FormFieldDto formFieldDto5 = registerConsentsFormFieldDto.f66117c;
        FormFieldDto formFieldDto6 = registerConsentsFormFieldDto.f66116b;
        FormFieldDto formFieldDto7 = registerConsentsFormFieldDto.f66115a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto7 != null) {
            compositeEncoderB.h(serialDescriptor, 0, FormFieldDto$$serializer.f66067a, formFieldDto7);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto6 != null) {
            compositeEncoderB.h(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto6);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto5 != null) {
            compositeEncoderB.h(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto5);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto4 != null) {
            compositeEncoderB.h(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto4);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, FormFieldDto$$serializer.f66067a, formFieldDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, FormFieldDto$$serializer.f66067a, formFieldDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer)};
    }
}

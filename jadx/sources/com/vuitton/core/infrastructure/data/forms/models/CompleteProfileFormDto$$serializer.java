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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CompleteProfileFormDto$$serializer implements GeneratedSerializer<CompleteProfileFormDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CompleteProfileFormDto$$serializer f66049a;
    private static final SerialDescriptor descriptor;

    static {
        CompleteProfileFormDto$$serializer completeProfileFormDto$$serializer = new CompleteProfileFormDto$$serializer();
        f66049a = completeProfileFormDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.CompleteProfileFormDto", completeProfileFormDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("civility", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
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
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        FormFieldDto formFieldDto = null;
        FormFieldDto formFieldDto2 = null;
        FormFieldDto formFieldDto3 = null;
        FormFieldDto formFieldDto4 = null;
        FormFieldDto formFieldDto5 = null;
        FormFieldDto formFieldDto6 = null;
        CompleteProfileConsentsFormFieldDto completeProfileConsentsFormFieldDto = null;
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
                    formFieldDto = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto);
                    i2 |= 2;
                    break;
                case 2:
                    formFieldDto2 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto2);
                    i2 |= 4;
                    break;
                case 3:
                    formFieldDto3 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto3);
                    i2 |= 8;
                    break;
                case 4:
                    formFieldDto4 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 4, FormFieldDto$$serializer.f66067a, formFieldDto4);
                    i2 |= 16;
                    break;
                case 5:
                    formFieldDto5 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 5, FormFieldDto$$serializer.f66067a, formFieldDto5);
                    i2 |= 32;
                    break;
                case 6:
                    formFieldDto6 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto6);
                    i2 |= 64;
                    break;
                case 7:
                    completeProfileConsentsFormFieldDto = (CompleteProfileConsentsFormFieldDto) compositeDecoderB.w(serialDescriptor, 7, CompleteProfileConsentsFormFieldDto$$serializer.f66042a, completeProfileConsentsFormFieldDto);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CompleteProfileFormDto(i2, strL, formFieldDto, formFieldDto2, formFieldDto3, formFieldDto4, formFieldDto5, formFieldDto6, completeProfileConsentsFormFieldDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CompleteProfileFormDto completeProfileFormDto = (CompleteProfileFormDto) obj;
        completeProfileFormDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = completeProfileFormDto.f66043a;
        FormFieldDto formFieldDto = completeProfileFormDto.g;
        FormFieldDto formFieldDto2 = completeProfileFormDto.f66047f;
        compositeEncoderB.y(serialDescriptor, 0, str);
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        compositeEncoderB.A(serialDescriptor, 1, formFieldDto$$serializer, completeProfileFormDto.f66044b);
        compositeEncoderB.A(serialDescriptor, 2, formFieldDto$$serializer, completeProfileFormDto.f66045c);
        compositeEncoderB.A(serialDescriptor, 3, formFieldDto$$serializer, completeProfileFormDto.d);
        compositeEncoderB.A(serialDescriptor, 4, formFieldDto$$serializer, completeProfileFormDto.f66046e);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, formFieldDto$$serializer, formFieldDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, formFieldDto$$serializer, formFieldDto);
        }
        compositeEncoderB.A(serialDescriptor, 7, CompleteProfileConsentsFormFieldDto$$serializer.f66042a, completeProfileFormDto.f66048h);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{StringSerializer.f75684a, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), CompleteProfileConsentsFormFieldDto$$serializer.f66042a};
    }
}

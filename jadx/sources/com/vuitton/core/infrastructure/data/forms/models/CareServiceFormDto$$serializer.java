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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceFormDto$$serializer implements GeneratedSerializer<CareServiceFormDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceFormDto$$serializer f66037a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceFormDto$$serializer careServiceFormDto$$serializer = new CareServiceFormDto$$serializer();
        f66037a = careServiceFormDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.CareServiceFormDto", careServiceFormDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("postalCode", true);
        pluginGeneratedSerialDescriptor.k("phone", false);
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
        String strL = null;
        FormFieldDto formFieldDto = null;
        FormFieldDto formFieldDto2 = null;
        FormFieldPhoneDto formFieldPhoneDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                formFieldDto = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto);
                i2 |= 2;
            } else if (iN == 2) {
                formFieldDto2 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                formFieldPhoneDto = (FormFieldPhoneDto) compositeDecoderB.w(serialDescriptor, 3, FormFieldPhoneDto$$serializer.f66073a, formFieldPhoneDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceFormDto(i2, strL, formFieldDto, formFieldDto2, formFieldPhoneDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceFormDto careServiceFormDto = (CareServiceFormDto) obj;
        careServiceFormDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = careServiceFormDto.f66034a;
        FormFieldDto formFieldDto = careServiceFormDto.f66036c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        compositeEncoderB.A(serialDescriptor, 1, formFieldDto$$serializer, careServiceFormDto.f66035b);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, formFieldDto$$serializer, formFieldDto);
        }
        compositeEncoderB.A(serialDescriptor, 3, FormFieldPhoneDto$$serializer.f66073a, careServiceFormDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{StringSerializer.f75684a, formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), FormFieldPhoneDto$$serializer.f66073a};
    }
}

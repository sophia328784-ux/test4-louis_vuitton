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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CompleteProfileConsentsFormFieldDto$$serializer implements GeneratedSerializer<CompleteProfileConsentsFormFieldDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CompleteProfileConsentsFormFieldDto$$serializer f66042a;
    private static final SerialDescriptor descriptor;

    static {
        CompleteProfileConsentsFormFieldDto$$serializer completeProfileConsentsFormFieldDto$$serializer = new CompleteProfileConsentsFormFieldDto$$serializer();
        f66042a = completeProfileConsentsFormFieldDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.CompleteProfileConsentsFormFieldDto", completeProfileConsentsFormFieldDto$$serializer, 1);
        pluginGeneratedSerialDescriptor.k("privacyPolicyConsent", true);
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
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else {
                if (iN != 0) {
                    b21.l(iN);
                    return null;
                }
                formFieldDto = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 0, FormFieldDto$$serializer.f66067a, formFieldDto);
                i2 = 1;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CompleteProfileConsentsFormFieldDto(i2, formFieldDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CompleteProfileConsentsFormFieldDto completeProfileConsentsFormFieldDto = (CompleteProfileConsentsFormFieldDto) obj;
        completeProfileConsentsFormFieldDto.getClass();
        FormFieldDto formFieldDto = completeProfileConsentsFormFieldDto.f66041a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, FormFieldDto$$serializer.f66067a, formFieldDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(FormFieldDto$$serializer.f66067a)};
    }
}

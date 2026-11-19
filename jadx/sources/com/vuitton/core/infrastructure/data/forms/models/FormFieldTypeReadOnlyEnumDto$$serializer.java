package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeReadOnlyEnumDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class FormFieldTypeReadOnlyEnumDto$$serializer implements GeneratedSerializer<FormFieldTypeReadOnlyEnumDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FormFieldTypeReadOnlyEnumDto$$serializer f66097a;
    private static final SerialDescriptor descriptor;

    static {
        FormFieldTypeReadOnlyEnumDto$$serializer formFieldTypeReadOnlyEnumDto$$serializer = new FormFieldTypeReadOnlyEnumDto$$serializer();
        f66097a = formFieldTypeReadOnlyEnumDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.FormFieldTypeReadOnlyEnumDto", formFieldTypeReadOnlyEnumDto$$serializer, 1);
        pluginGeneratedSerialDescriptor.k("value", false);
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
        FormEnumValueDto formEnumValueDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else {
                if (iN != 0) {
                    b21.l(iN);
                    return null;
                }
                formEnumValueDto = (FormEnumValueDto) compositeDecoderB.w(serialDescriptor, 0, FormEnumValueDto$$serializer.f66063a, formEnumValueDto);
                i2 = 1;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new FormFieldTypeReadOnlyEnumDto(i2, formEnumValueDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto = (FormFieldTypeReadOnlyEnumDto) obj;
        formFieldTypeReadOnlyEnumDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, FormEnumValueDto$$serializer.f66063a, formFieldTypeReadOnlyEnumDto.f66096a);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{FormEnumValueDto$$serializer.f66063a};
    }
}

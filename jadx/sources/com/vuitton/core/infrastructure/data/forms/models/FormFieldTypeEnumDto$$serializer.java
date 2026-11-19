package com.vuitton.core.infrastructure.data.forms.models;

import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeEnumDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class FormFieldTypeEnumDto$$serializer implements GeneratedSerializer<FormFieldTypeEnumDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FormFieldTypeEnumDto$$serializer f66092a;
    private static final SerialDescriptor descriptor;

    static {
        FormFieldTypeEnumDto$$serializer formFieldTypeEnumDto$$serializer = new FormFieldTypeEnumDto$$serializer();
        f66092a = formFieldTypeEnumDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.FormFieldTypeEnumDto", formFieldTypeEnumDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("values", false);
        pluginGeneratedSerialDescriptor.k("defaultValue", true);
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
        Lazy[] lazyArr = FormFieldTypeEnumDto.f66089c;
        boolean z = true;
        int i2 = 0;
        List list = null;
        FormEnumValueDto formEnumValueDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                formEnumValueDto = (FormEnumValueDto) compositeDecoderB.m(serialDescriptor, 1, FormEnumValueDto$$serializer.f66063a, formEnumValueDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new FormFieldTypeEnumDto(i2, list, formEnumValueDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        FormFieldTypeEnumDto formFieldTypeEnumDto = (FormFieldTypeEnumDto) obj;
        formFieldTypeEnumDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        SerializationStrategy serializationStrategy = (SerializationStrategy) FormFieldTypeEnumDto.f66089c[0].getF71699b();
        List list = formFieldTypeEnumDto.f66090a;
        FormEnumValueDto formEnumValueDto = formFieldTypeEnumDto.f66091b;
        compositeEncoderB.A(serialDescriptor, 0, serializationStrategy, list);
        if (compositeEncoderB.o(serialDescriptor) || formEnumValueDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, FormEnumValueDto$$serializer.f66063a, formEnumValueDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{FormFieldTypeEnumDto.f66089c[0].getF71699b(), BuiltinSerializersKt.d(FormEnumValueDto$$serializer.f66063a)};
    }
}

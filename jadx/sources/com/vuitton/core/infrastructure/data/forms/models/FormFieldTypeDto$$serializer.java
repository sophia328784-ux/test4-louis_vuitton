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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldTypeDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class FormFieldTypeDto$$serializer implements GeneratedSerializer<FormFieldTypeDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FormFieldTypeDto$$serializer f66088a;
    private static final SerialDescriptor descriptor;

    static {
        FormFieldTypeDto$$serializer formFieldTypeDto$$serializer = new FormFieldTypeDto$$serializer();
        f66088a = formFieldTypeDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.FormFieldTypeDto", formFieldTypeDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("freeform", true);
        pluginGeneratedSerialDescriptor.k("readOnlyEnum", true);
        pluginGeneratedSerialDescriptor.k("dependentEnum", true);
        pluginGeneratedSerialDescriptor.k("enum", true);
        pluginGeneratedSerialDescriptor.k("dependentRemoteEnum", true);
        pluginGeneratedSerialDescriptor.k("boolean", true);
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
        FormFieldTypeFreeformDto formFieldTypeFreeformDto = null;
        FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto = null;
        FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto = null;
        FormFieldTypeEnumDto formFieldTypeEnumDto = null;
        FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto = null;
        FormFieldTypeBooleanDto formFieldTypeBooleanDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    formFieldTypeFreeformDto = (FormFieldTypeFreeformDto) compositeDecoderB.m(serialDescriptor, 0, FormFieldTypeFreeformDto$$serializer.f66095a, formFieldTypeFreeformDto);
                    i2 |= 1;
                    break;
                case 1:
                    formFieldTypeReadOnlyEnumDto = (FormFieldTypeReadOnlyEnumDto) compositeDecoderB.m(serialDescriptor, 1, FormFieldTypeReadOnlyEnumDto$$serializer.f66097a, formFieldTypeReadOnlyEnumDto);
                    i2 |= 2;
                    break;
                case 2:
                    formFieldTypeDependentEnumDto = (FormFieldTypeDependentEnumDto) compositeDecoderB.m(serialDescriptor, 2, FormFieldTypeDependentEnumDto$$serializer.f66079a, formFieldTypeDependentEnumDto);
                    i2 |= 4;
                    break;
                case 3:
                    formFieldTypeEnumDto = (FormFieldTypeEnumDto) compositeDecoderB.m(serialDescriptor, 3, FormFieldTypeEnumDto$$serializer.f66092a, formFieldTypeEnumDto);
                    i2 |= 8;
                    break;
                case 4:
                    formFieldTypeDependentRemoteEnumDto = (FormFieldTypeDependentRemoteEnumDto) compositeDecoderB.m(serialDescriptor, 4, FormFieldTypeDependentRemoteEnumDto$$serializer.f66082a, formFieldTypeDependentRemoteEnumDto);
                    i2 |= 16;
                    break;
                case 5:
                    formFieldTypeBooleanDto = (FormFieldTypeBooleanDto) compositeDecoderB.m(serialDescriptor, 5, FormFieldTypeBooleanDto$$serializer.f66075a, formFieldTypeBooleanDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new FormFieldTypeDto(i2, formFieldTypeFreeformDto, formFieldTypeReadOnlyEnumDto, formFieldTypeDependentEnumDto, formFieldTypeEnumDto, formFieldTypeDependentRemoteEnumDto, formFieldTypeBooleanDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        FormFieldTypeDto formFieldTypeDto = (FormFieldTypeDto) obj;
        formFieldTypeDto.getClass();
        FormFieldTypeBooleanDto formFieldTypeBooleanDto = formFieldTypeDto.f66087f;
        FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto = formFieldTypeDto.f66086e;
        FormFieldTypeEnumDto formFieldTypeEnumDto = formFieldTypeDto.d;
        FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto = formFieldTypeDto.f66085c;
        FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto = formFieldTypeDto.f66084b;
        FormFieldTypeFreeformDto formFieldTypeFreeformDto = formFieldTypeDto.f66083a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || formFieldTypeFreeformDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, FormFieldTypeFreeformDto$$serializer.f66095a, formFieldTypeFreeformDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldTypeReadOnlyEnumDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, FormFieldTypeReadOnlyEnumDto$$serializer.f66097a, formFieldTypeReadOnlyEnumDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldTypeDependentEnumDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, FormFieldTypeDependentEnumDto$$serializer.f66079a, formFieldTypeDependentEnumDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldTypeEnumDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, FormFieldTypeEnumDto$$serializer.f66092a, formFieldTypeEnumDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldTypeDependentRemoteEnumDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, FormFieldTypeDependentRemoteEnumDto$$serializer.f66082a, formFieldTypeDependentRemoteEnumDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldTypeBooleanDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, FormFieldTypeBooleanDto$$serializer.f66075a, formFieldTypeBooleanDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(FormFieldTypeFreeformDto$$serializer.f66095a), BuiltinSerializersKt.d(FormFieldTypeReadOnlyEnumDto$$serializer.f66097a), BuiltinSerializersKt.d(FormFieldTypeDependentEnumDto$$serializer.f66079a), BuiltinSerializersKt.d(FormFieldTypeEnumDto$$serializer.f66092a), BuiltinSerializersKt.d(FormFieldTypeDependentRemoteEnumDto$$serializer.f66082a), BuiltinSerializersKt.d(FormFieldTypeBooleanDto$$serializer.f66075a)};
    }
}

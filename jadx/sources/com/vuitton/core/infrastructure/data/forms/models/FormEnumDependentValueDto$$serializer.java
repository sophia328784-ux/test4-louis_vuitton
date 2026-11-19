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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/FormEnumDependentValueDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class FormEnumDependentValueDto$$serializer implements GeneratedSerializer<FormEnumDependentValueDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FormEnumDependentValueDto$$serializer f66060a;
    private static final SerialDescriptor descriptor;

    static {
        FormEnumDependentValueDto$$serializer formEnumDependentValueDto$$serializer = new FormEnumDependentValueDto$$serializer();
        f66060a = formEnumDependentValueDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.FormEnumDependentValueDto", formEnumDependentValueDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("dependencyValue", false);
        pluginGeneratedSerialDescriptor.k("enum", false);
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
        Lazy[] lazyArr = FormEnumDependentValueDto.d;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        List list = null;
        FormEnumValueDto formEnumValueDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                list = (List) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                formEnumValueDto = (FormEnumValueDto) compositeDecoderB.m(serialDescriptor, 2, FormEnumValueDto$$serializer.f66063a, formEnumValueDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new FormEnumDependentValueDto(i2, strL, list, formEnumValueDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        FormEnumDependentValueDto formEnumDependentValueDto = (FormEnumDependentValueDto) obj;
        formEnumDependentValueDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = FormEnumDependentValueDto.d;
        String str = formEnumDependentValueDto.f66057a;
        FormEnumValueDto formEnumValueDto = formEnumDependentValueDto.f66059c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), formEnumDependentValueDto.f66058b);
        if (compositeEncoderB.o(serialDescriptor) || formEnumValueDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, FormEnumValueDto$$serializer.f66063a, formEnumValueDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, FormEnumDependentValueDto.d[1].getF71699b(), BuiltinSerializersKt.d(FormEnumValueDto$$serializer.f66063a)};
    }
}

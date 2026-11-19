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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/AddressFormDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AddressFormDto$$serializer implements GeneratedSerializer<AddressFormDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AddressFormDto$$serializer f66019a;
    private static final SerialDescriptor descriptor;

    static {
        AddressFormDto$$serializer addressFormDto$$serializer = new AddressFormDto$$serializer();
        f66019a = addressFormDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.AddressFormDto", addressFormDto$$serializer, 19);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("address1", true);
        pluginGeneratedSerialDescriptor.k("address2", false);
        pluginGeneratedSerialDescriptor.k("address3", true);
        pluginGeneratedSerialDescriptor.k("city", false);
        pluginGeneratedSerialDescriptor.k("civility", true);
        pluginGeneratedSerialDescriptor.k("companyName", true);
        pluginGeneratedSerialDescriptor.k("country", false);
        pluginGeneratedSerialDescriptor.k("county", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("phones", false);
        pluginGeneratedSerialDescriptor.k("postalCode", true);
        pluginGeneratedSerialDescriptor.k("state", true);
        pluginGeneratedSerialDescriptor.k("street", true);
        pluginGeneratedSerialDescriptor.k("streetNumber", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        FormFieldDto formFieldDto;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        FormFieldDto formFieldDto2 = null;
        FormFieldDto formFieldDto3 = null;
        FormFieldDto formFieldDto4 = null;
        FormFieldDto formFieldDto5 = null;
        FormFieldDto formFieldDto6 = null;
        int i3 = 0;
        FormFieldDto formFieldDto7 = null;
        FormFieldPhoneDto formFieldPhoneDto = null;
        FormFieldDto formFieldDto8 = null;
        FormFieldDto formFieldDto9 = null;
        FormFieldDto formFieldDto10 = null;
        FormFieldDto formFieldDto11 = null;
        FormFieldDto formFieldDto12 = null;
        FormFieldDto formFieldDto13 = null;
        boolean z = true;
        String strL = null;
        FormFieldDto formFieldDto14 = null;
        FormFieldDto formFieldDto15 = null;
        FormFieldDto formFieldDto16 = null;
        FormFieldDto formFieldDto17 = null;
        FormFieldDto formFieldDto18 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    formFieldDto = formFieldDto12;
                    z = false;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 0:
                    formFieldDto = formFieldDto12;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i3 |= 1;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 1:
                    formFieldDto = formFieldDto12;
                    formFieldDto14 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto14);
                    i3 |= 2;
                    formFieldDto15 = formFieldDto15;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 2:
                    formFieldDto = formFieldDto12;
                    formFieldDto15 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto15);
                    i3 |= 4;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 3:
                    formFieldDto = formFieldDto12;
                    formFieldDto16 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto16);
                    i3 |= 8;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 4:
                    formFieldDto = formFieldDto12;
                    formFieldDto17 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 4, FormFieldDto$$serializer.f66067a, formFieldDto17);
                    i3 |= 16;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 5:
                    formFieldDto = formFieldDto12;
                    formFieldDto18 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 5, FormFieldDto$$serializer.f66067a, formFieldDto18);
                    i3 |= 32;
                    formFieldDto12 = formFieldDto;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 6:
                    formFieldDto2 = formFieldDto2;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto12 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto12);
                    i3 |= 64;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 7:
                    formFieldDto2 = formFieldDto2;
                    formFieldDto13 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 7, FormFieldDto$$serializer.f66067a, formFieldDto13);
                    i3 |= 128;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto2 = formFieldDto2;
                    break;
                case 8:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto6 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 8, FormFieldDto$$serializer.f66067a, formFieldDto6);
                    i3 |= 256;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 9:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto4 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 9, FormFieldDto$$serializer.f66067a, formFieldDto4);
                    i3 |= 512;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 10:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto3 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 10, FormFieldDto$$serializer.f66067a, formFieldDto3);
                    i3 |= 1024;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 11:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto2 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 11, FormFieldDto$$serializer.f66067a, formFieldDto2);
                    i3 |= 2048;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 12:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto5 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 12, FormFieldDto$$serializer.f66067a, formFieldDto5);
                    i3 |= 4096;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 13:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldDto7 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 13, FormFieldDto$$serializer.f66067a, formFieldDto7);
                    i3 |= 8192;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 14:
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    formFieldPhoneDto = (FormFieldPhoneDto) compositeDecoderB.w(serialDescriptor, 14, FormFieldPhoneDto$$serializer.f66073a, formFieldPhoneDto);
                    i3 |= 16384;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 15:
                    formFieldDto8 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 15, FormFieldDto$$serializer.f66067a, formFieldDto8);
                    i2 = 32768;
                    i3 |= i2;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 16:
                    formFieldDto9 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 16, FormFieldDto$$serializer.f66067a, formFieldDto9);
                    i2 = 65536;
                    i3 |= i2;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 17:
                    formFieldDto10 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 17, FormFieldDto$$serializer.f66067a, formFieldDto10);
                    i2 = 131072;
                    i3 |= i2;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                case 18:
                    formFieldDto11 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 18, FormFieldDto$$serializer.f66067a, formFieldDto11);
                    i2 = 262144;
                    i3 |= i2;
                    formFieldDto12 = formFieldDto12;
                    formFieldDto13 = formFieldDto13;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        FormFieldDto formFieldDto19 = formFieldDto12;
        FormFieldDto formFieldDto20 = formFieldDto13;
        FormFieldDto formFieldDto21 = formFieldDto14;
        FormFieldDto formFieldDto22 = formFieldDto15;
        compositeDecoderB.c(serialDescriptor);
        FormFieldDto formFieldDto23 = formFieldDto9;
        return new AddressFormDto(i3, strL, formFieldDto21, formFieldDto22, formFieldDto16, formFieldDto17, formFieldDto18, formFieldDto19, formFieldDto20, formFieldDto6, formFieldDto4, formFieldDto3, formFieldDto2, formFieldDto5, formFieldDto7, formFieldPhoneDto, formFieldDto8, formFieldDto23, formFieldDto10, formFieldDto11, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AddressFormDto addressFormDto = (AddressFormDto) obj;
        addressFormDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = addressFormDto.f66010a;
        FormFieldDto formFieldDto = addressFormDto.s;
        FormFieldDto formFieldDto2 = addressFormDto.r;
        FormFieldDto formFieldDto3 = addressFormDto.q;
        FormFieldDto formFieldDto4 = addressFormDto.p;
        FormFieldDto formFieldDto5 = addressFormDto.n;
        FormFieldDto formFieldDto6 = addressFormDto.m;
        FormFieldDto formFieldDto7 = addressFormDto.l;
        FormFieldDto formFieldDto8 = addressFormDto.f66018k;
        FormFieldDto formFieldDto9 = addressFormDto.f66017j;
        FormFieldDto formFieldDto10 = addressFormDto.f66016i;
        FormFieldDto formFieldDto11 = addressFormDto.g;
        FormFieldDto formFieldDto12 = addressFormDto.f66014f;
        FormFieldDto formFieldDto13 = addressFormDto.d;
        FormFieldDto formFieldDto14 = addressFormDto.f66011b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto14 != null) {
            compositeEncoderB.h(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto14);
        }
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        compositeEncoderB.A(serialDescriptor, 2, formFieldDto$$serializer, addressFormDto.f66012c);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto13 != null) {
            compositeEncoderB.h(serialDescriptor, 3, formFieldDto$$serializer, formFieldDto13);
        }
        compositeEncoderB.A(serialDescriptor, 4, formFieldDto$$serializer, addressFormDto.f66013e);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto12 != null) {
            compositeEncoderB.h(serialDescriptor, 5, formFieldDto$$serializer, formFieldDto12);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto11 != null) {
            compositeEncoderB.h(serialDescriptor, 6, formFieldDto$$serializer, formFieldDto11);
        }
        compositeEncoderB.A(serialDescriptor, 7, formFieldDto$$serializer, addressFormDto.f66015h);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto10 != null) {
            compositeEncoderB.h(serialDescriptor, 8, formFieldDto$$serializer, formFieldDto10);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto9 != null) {
            compositeEncoderB.h(serialDescriptor, 9, formFieldDto$$serializer, formFieldDto9);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto8 != null) {
            compositeEncoderB.h(serialDescriptor, 10, formFieldDto$$serializer, formFieldDto8);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto7 != null) {
            compositeEncoderB.h(serialDescriptor, 11, formFieldDto$$serializer, formFieldDto7);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto6 != null) {
            compositeEncoderB.h(serialDescriptor, 12, formFieldDto$$serializer, formFieldDto6);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto5 != null) {
            compositeEncoderB.h(serialDescriptor, 13, formFieldDto$$serializer, formFieldDto5);
        }
        compositeEncoderB.A(serialDescriptor, 14, FormFieldPhoneDto$$serializer.f66073a, addressFormDto.o);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto4 != null) {
            compositeEncoderB.h(serialDescriptor, 15, formFieldDto$$serializer, formFieldDto4);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 16, formFieldDto$$serializer, formFieldDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 17, formFieldDto$$serializer, formFieldDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 18, formFieldDto$$serializer, formFieldDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{StringSerializer.f75684a, BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), FormFieldPhoneDto$$serializer.f66073a, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer)};
    }
}

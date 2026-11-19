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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingPersonalInfoFormDto$$serializer implements GeneratedSerializer<BookingPersonalInfoFormDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingPersonalInfoFormDto$$serializer f66033a;
    private static final SerialDescriptor descriptor;

    static {
        BookingPersonalInfoFormDto$$serializer bookingPersonalInfoFormDto$$serializer = new BookingPersonalInfoFormDto$$serializer();
        f66033a = bookingPersonalInfoFormDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.BookingPersonalInfoFormDto", bookingPersonalInfoFormDto$$serializer, 11);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("civility", true);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("country", true);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("phone", false);
        pluginGeneratedSerialDescriptor.k("marketingEmailsConsent", false);
        pluginGeneratedSerialDescriptor.k("personalDataCollectionConsent", true);
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
        FormFieldDto formFieldDto = null;
        FormFieldDto formFieldDto2 = null;
        boolean z = true;
        FormFieldPhoneDto formFieldPhoneDto = null;
        int i2 = 0;
        String strL = null;
        FormFieldDto formFieldDto3 = null;
        FormFieldDto formFieldDto4 = null;
        FormFieldDto formFieldDto5 = null;
        FormFieldDto formFieldDto6 = null;
        FormFieldDto formFieldDto7 = null;
        FormFieldDto formFieldDto8 = null;
        FormFieldDto formFieldDto9 = null;
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
                    formFieldDto3 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto3);
                    i2 |= 2;
                    break;
                case 2:
                    formFieldDto4 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto4);
                    i2 |= 4;
                    break;
                case 3:
                    formFieldDto5 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto5);
                    i2 |= 8;
                    break;
                case 4:
                    formFieldDto6 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 4, FormFieldDto$$serializer.f66067a, formFieldDto6);
                    i2 |= 16;
                    break;
                case 5:
                    formFieldDto7 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 5, FormFieldDto$$serializer.f66067a, formFieldDto7);
                    i2 |= 32;
                    break;
                case 6:
                    formFieldDto8 = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto8);
                    i2 |= 64;
                    break;
                case 7:
                    formFieldDto9 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 7, FormFieldDto$$serializer.f66067a, formFieldDto9);
                    i2 |= 128;
                    break;
                case 8:
                    formFieldPhoneDto = (FormFieldPhoneDto) compositeDecoderB.w(serialDescriptor, 8, FormFieldPhoneDto$$serializer.f66073a, formFieldPhoneDto);
                    i2 |= 256;
                    break;
                case 9:
                    formFieldDto2 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 9, FormFieldDto$$serializer.f66067a, formFieldDto2);
                    i2 |= 512;
                    break;
                case 10:
                    formFieldDto = (FormFieldDto) compositeDecoderB.m(serialDescriptor, 10, FormFieldDto$$serializer.f66067a, formFieldDto);
                    i2 |= 1024;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            z = z;
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingPersonalInfoFormDto(i2, strL, formFieldDto3, formFieldDto4, formFieldDto5, formFieldDto6, formFieldDto7, formFieldDto8, formFieldDto9, formFieldPhoneDto, formFieldDto2, formFieldDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingPersonalInfoFormDto bookingPersonalInfoFormDto = (BookingPersonalInfoFormDto) obj;
        bookingPersonalInfoFormDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = bookingPersonalInfoFormDto.f66024a;
        FormFieldDto formFieldDto = bookingPersonalInfoFormDto.f66032k;
        FormFieldDto formFieldDto2 = bookingPersonalInfoFormDto.g;
        FormFieldDto formFieldDto3 = bookingPersonalInfoFormDto.f66028f;
        FormFieldDto formFieldDto4 = bookingPersonalInfoFormDto.f66027e;
        FormFieldDto formFieldDto5 = bookingPersonalInfoFormDto.f66025b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto5 != null) {
            compositeEncoderB.h(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto5);
        }
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        compositeEncoderB.A(serialDescriptor, 2, formFieldDto$$serializer, bookingPersonalInfoFormDto.f66026c);
        compositeEncoderB.A(serialDescriptor, 3, formFieldDto$$serializer, bookingPersonalInfoFormDto.d);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto4 != null) {
            compositeEncoderB.h(serialDescriptor, 4, formFieldDto$$serializer, formFieldDto4);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 5, formFieldDto$$serializer, formFieldDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 6, formFieldDto$$serializer, formFieldDto2);
        }
        compositeEncoderB.A(serialDescriptor, 7, formFieldDto$$serializer, bookingPersonalInfoFormDto.f66029h);
        compositeEncoderB.A(serialDescriptor, 8, FormFieldPhoneDto$$serializer.f66073a, bookingPersonalInfoFormDto.f66030i);
        compositeEncoderB.A(serialDescriptor, 9, formFieldDto$$serializer, bookingPersonalInfoFormDto.f66031j);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 10, formFieldDto$$serializer, formFieldDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{StringSerializer.f75684a, BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, FormFieldPhoneDto$$serializer.f66073a, formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer)};
    }
}

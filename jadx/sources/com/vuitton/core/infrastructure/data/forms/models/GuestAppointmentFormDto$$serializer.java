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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/GuestAppointmentFormDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class GuestAppointmentFormDto$$serializer implements GeneratedSerializer<GuestAppointmentFormDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GuestAppointmentFormDto$$serializer f66106a;
    private static final SerialDescriptor descriptor;

    static {
        GuestAppointmentFormDto$$serializer guestAppointmentFormDto$$serializer = new GuestAppointmentFormDto$$serializer();
        f66106a = guestAppointmentFormDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.GuestAppointmentFormDto", guestAppointmentFormDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("civility", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("country", false);
        pluginGeneratedSerialDescriptor.k("suscribedInNewsletter", false);
        pluginGeneratedSerialDescriptor.k("phone", false);
        pluginGeneratedSerialDescriptor.k("email", false);
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
        boolean z = true;
        FormFieldPhoneDto formFieldPhoneDto = null;
        int i2 = 0;
        String strL = null;
        FormFieldDto formFieldDto2 = null;
        FormFieldDto formFieldDto3 = null;
        FormFieldDto formFieldDto4 = null;
        FormFieldDto formFieldDto5 = null;
        FormFieldDto formFieldDto6 = null;
        FormFieldDto formFieldDto7 = null;
        FormFieldDto formFieldDto8 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    formFieldDto2 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 1, FormFieldDto$$serializer.f66067a, formFieldDto2);
                    i2 |= 2;
                    break;
                case 2:
                    formFieldDto3 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 2, FormFieldDto$$serializer.f66067a, formFieldDto3);
                    i2 |= 4;
                    break;
                case 3:
                    formFieldDto4 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 3, FormFieldDto$$serializer.f66067a, formFieldDto4);
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
                    formFieldDto7 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 6, FormFieldDto$$serializer.f66067a, formFieldDto7);
                    i2 |= 64;
                    break;
                case 7:
                    formFieldDto8 = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 7, FormFieldDto$$serializer.f66067a, formFieldDto8);
                    i2 |= 128;
                    break;
                case 8:
                    formFieldPhoneDto = (FormFieldPhoneDto) compositeDecoderB.w(serialDescriptor, 8, FormFieldPhoneDto$$serializer.f66073a, formFieldPhoneDto);
                    i2 |= 256;
                    break;
                case 9:
                    formFieldDto = (FormFieldDto) compositeDecoderB.w(serialDescriptor, 9, FormFieldDto$$serializer.f66067a, formFieldDto);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new GuestAppointmentFormDto(i2, strL, formFieldDto2, formFieldDto3, formFieldDto4, formFieldDto5, formFieldDto6, formFieldDto7, formFieldDto8, formFieldPhoneDto, formFieldDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        GuestAppointmentFormDto guestAppointmentFormDto = (GuestAppointmentFormDto) obj;
        guestAppointmentFormDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = guestAppointmentFormDto.f66098a;
        FormFieldDto formFieldDto = guestAppointmentFormDto.f66102f;
        FormFieldDto formFieldDto2 = guestAppointmentFormDto.f66101e;
        compositeEncoderB.y(serialDescriptor, 0, str);
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        compositeEncoderB.A(serialDescriptor, 1, formFieldDto$$serializer, guestAppointmentFormDto.f66099b);
        compositeEncoderB.A(serialDescriptor, 2, formFieldDto$$serializer, guestAppointmentFormDto.f66100c);
        compositeEncoderB.A(serialDescriptor, 3, formFieldDto$$serializer, guestAppointmentFormDto.d);
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, formFieldDto$$serializer, formFieldDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || formFieldDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, formFieldDto$$serializer, formFieldDto);
        }
        compositeEncoderB.A(serialDescriptor, 6, formFieldDto$$serializer, guestAppointmentFormDto.g);
        compositeEncoderB.A(serialDescriptor, 7, formFieldDto$$serializer, guestAppointmentFormDto.f66103h);
        compositeEncoderB.A(serialDescriptor, 8, FormFieldPhoneDto$$serializer.f66073a, guestAppointmentFormDto.f66104i);
        compositeEncoderB.A(serialDescriptor, 9, formFieldDto$$serializer, guestAppointmentFormDto.f66105j);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FormFieldDto$$serializer formFieldDto$$serializer = FormFieldDto$$serializer.f66067a;
        return new KSerializer[]{StringSerializer.f75684a, formFieldDto$$serializer, formFieldDto$$serializer, formFieldDto$$serializer, BuiltinSerializersKt.d(formFieldDto$$serializer), BuiltinSerializersKt.d(formFieldDto$$serializer), formFieldDto$$serializer, formFieldDto$$serializer, FormFieldPhoneDto$$serializer.f66073a, formFieldDto$$serializer};
    }
}

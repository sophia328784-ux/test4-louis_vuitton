package com.vuitton.android.data.dto.distantrepairs;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId$$serializer;
import defpackage.b21;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ConfirmAppointmentDtoRequest$$serializer implements GeneratedSerializer<ConfirmAppointmentDtoRequest> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConfirmAppointmentDtoRequest$$serializer f45720a;
    private static final SerialDescriptor descriptor;

    static {
        ConfirmAppointmentDtoRequest$$serializer confirmAppointmentDtoRequest$$serializer = new ConfirmAppointmentDtoRequest$$serializer();
        f45720a = confirmAppointmentDtoRequest$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.distantrepairs.ConfirmAppointmentDtoRequest", confirmAppointmentDtoRequest$$serializer, 15);
        pluginGeneratedSerialDescriptor.k("availabilityId", false);
        pluginGeneratedSerialDescriptor.k("appointmentId", false);
        pluginGeneratedSerialDescriptor.k("appointmentType", false);
        pluginGeneratedSerialDescriptor.k("careservice", false);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("country", false);
        pluginGeneratedSerialDescriptor.k("phoneNumber", false);
        pluginGeneratedSerialDescriptor.k("phoneNumberCountry", false);
        pluginGeneratedSerialDescriptor.k("phoneNumberType", false);
        pluginGeneratedSerialDescriptor.k("civilityCode", false);
        pluginGeneratedSerialDescriptor.k("suscribedInNewsletter", false);
        pluginGeneratedSerialDescriptor.k("reasonId", true);
        pluginGeneratedSerialDescriptor.k("selectionId", true);
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
        Lazy[] lazyArr = ConfirmAppointmentDtoRequest.p;
        Object obj = null;
        boolean z = true;
        String str = null;
        String str2 = null;
        String strL = null;
        AppointmentTypeDto appointmentTypeDto = null;
        String str3 = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        String strL8 = null;
        String strL9 = null;
        String strL10 = null;
        int i2 = 0;
        boolean zY = false;
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
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    appointmentTypeDto = (AppointmentTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), appointmentTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    CareServiceId careServiceId = (CareServiceId) compositeDecoderB.w(serialDescriptor, 3, CareServiceId$$serializer.f66880a, str3 != null ? new CareServiceId(str3) : null);
                    str3 = careServiceId != null ? careServiceId.f66879a : null;
                    i2 |= 8;
                    break;
                case 4:
                    strL3 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    strL4 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    strL5 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    strL6 = compositeDecoderB.l(serialDescriptor, 7);
                    i2 |= 128;
                    break;
                case 8:
                    strL7 = compositeDecoderB.l(serialDescriptor, 8);
                    i2 |= 256;
                    break;
                case 9:
                    strL8 = compositeDecoderB.l(serialDescriptor, 9);
                    i2 |= 512;
                    break;
                case 10:
                    strL9 = compositeDecoderB.l(serialDescriptor, 10);
                    i2 |= 1024;
                    break;
                case 11:
                    strL10 = compositeDecoderB.l(serialDescriptor, 11);
                    i2 |= 2048;
                    break;
                case 12:
                    zY = compositeDecoderB.y(serialDescriptor, 12);
                    i2 |= 4096;
                    break;
                case 13:
                    str = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str);
                    i2 |= 8192;
                    break;
                case 14:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str2);
                    i2 |= 16384;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ConfirmAppointmentDtoRequest(i2, strL, strL2, appointmentTypeDto, str3, strL3, strL4, strL5, strL6, strL7, strL8, strL9, strL10, zY, str, str2, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ConfirmAppointmentDtoRequest confirmAppointmentDtoRequest = (ConfirmAppointmentDtoRequest) obj;
        confirmAppointmentDtoRequest.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ConfirmAppointmentDtoRequest.p;
        String str = confirmAppointmentDtoRequest.f45711a;
        String str2 = confirmAppointmentDtoRequest.o;
        String str3 = confirmAppointmentDtoRequest.n;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, confirmAppointmentDtoRequest.f45712b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), confirmAppointmentDtoRequest.f45713c);
        compositeEncoderB.A(serialDescriptor, 3, CareServiceId$$serializer.f66880a, new CareServiceId(confirmAppointmentDtoRequest.d));
        compositeEncoderB.y(serialDescriptor, 4, confirmAppointmentDtoRequest.f45714e);
        compositeEncoderB.y(serialDescriptor, 5, confirmAppointmentDtoRequest.f45715f);
        compositeEncoderB.y(serialDescriptor, 6, confirmAppointmentDtoRequest.g);
        compositeEncoderB.y(serialDescriptor, 7, confirmAppointmentDtoRequest.f45716h);
        compositeEncoderB.y(serialDescriptor, 8, confirmAppointmentDtoRequest.f45717i);
        compositeEncoderB.y(serialDescriptor, 9, confirmAppointmentDtoRequest.f45718j);
        compositeEncoderB.y(serialDescriptor, 10, confirmAppointmentDtoRequest.f45719k);
        compositeEncoderB.y(serialDescriptor, 11, confirmAppointmentDtoRequest.l);
        compositeEncoderB.x(serialDescriptor, 12, confirmAppointmentDtoRequest.m);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 14, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ConfirmAppointmentDtoRequest.p;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, lazyArr[2].getF71699b(), CareServiceId$$serializer.f66880a, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, BooleanSerializer.f75574a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}

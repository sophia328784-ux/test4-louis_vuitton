package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/PreBookConfirmRequestDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/PreBookConfirmRequestDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PreBookConfirmRequestDto$$serializer implements GeneratedSerializer<PreBookConfirmRequestDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreBookConfirmRequestDto$$serializer f44747a;
    private static final SerialDescriptor descriptor;

    static {
        PreBookConfirmRequestDto$$serializer preBookConfirmRequestDto$$serializer = new PreBookConfirmRequestDto$$serializer();
        f44747a = preBookConfirmRequestDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.PreBookConfirmRequestDto", preBookConfirmRequestDto$$serializer, 11);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("country", true);
        pluginGeneratedSerialDescriptor.k("phoneNumber", false);
        pluginGeneratedSerialDescriptor.k("phoneNumberCountry", false);
        pluginGeneratedSerialDescriptor.k("phoneNumberType", false);
        pluginGeneratedSerialDescriptor.k("civilityCode", false);
        pluginGeneratedSerialDescriptor.k("isOptinToReceiveNewsletterEmails", true);
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
        Object obj = null;
        boolean z = true;
        Boolean bool = null;
        String strL = null;
        String strL2 = null;
        String str = null;
        String strL3 = null;
        String str2 = null;
        String str3 = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        int i2 = 0;
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
                    str = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str);
                    i2 |= 4;
                    break;
                case 3:
                    strL3 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str2);
                    i2 |= 16;
                    break;
                case 5:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str3);
                    i2 |= 32;
                    break;
                case 6:
                    strL4 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    strL5 = compositeDecoderB.l(serialDescriptor, 7);
                    i2 |= 128;
                    break;
                case 8:
                    strL6 = compositeDecoderB.l(serialDescriptor, 8);
                    i2 |= 256;
                    break;
                case 9:
                    strL7 = compositeDecoderB.l(serialDescriptor, 9);
                    i2 |= 512;
                    break;
                case 10:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 10, BooleanSerializer.f75574a, bool);
                    i2 |= 1024;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new PreBookConfirmRequestDto(i2, strL, strL2, str, strL3, str2, str3, strL4, strL5, strL6, strL7, bool, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PreBookConfirmRequestDto preBookConfirmRequestDto = (PreBookConfirmRequestDto) obj;
        preBookConfirmRequestDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = preBookConfirmRequestDto.f44738a;
        Boolean bool = preBookConfirmRequestDto.f44746k;
        String str2 = preBookConfirmRequestDto.f44742f;
        String str3 = preBookConfirmRequestDto.f44741e;
        String str4 = preBookConfirmRequestDto.f44740c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, preBookConfirmRequestDto.f44739b);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        compositeEncoderB.y(serialDescriptor, 3, preBookConfirmRequestDto.d);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.y(serialDescriptor, 6, preBookConfirmRequestDto.g);
        compositeEncoderB.y(serialDescriptor, 7, preBookConfirmRequestDto.f44743h);
        compositeEncoderB.y(serialDescriptor, 8, preBookConfirmRequestDto.f44744i);
        compositeEncoderB.y(serialDescriptor, 9, preBookConfirmRequestDto.f44745j);
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 10, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(BooleanSerializer.f75574a)};
    }
}

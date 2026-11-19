package com.vuitton.android.data.dto.careservices.bff;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceAddressDto$$serializer implements GeneratedSerializer<CareServiceAddressDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceAddressDto$$serializer f44868a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceAddressDto$$serializer careServiceAddressDto$$serializer = new CareServiceAddressDto$$serializer();
        f44868a = careServiceAddressDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.bff.CareServiceAddressDto", careServiceAddressDto$$serializer, 13);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("addressLine1", false);
        pluginGeneratedSerialDescriptor.k("addressLine2", true);
        pluginGeneratedSerialDescriptor.k("addressLine3", true);
        pluginGeneratedSerialDescriptor.k("postalCode", false);
        pluginGeneratedSerialDescriptor.k("stateName", true);
        pluginGeneratedSerialDescriptor.k("stateCode", true);
        pluginGeneratedSerialDescriptor.k("cityName", false);
        pluginGeneratedSerialDescriptor.k("countryName", true);
        pluginGeneratedSerialDescriptor.k("countryCode", false);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
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
        String str = null;
        String str2 = null;
        boolean z = true;
        String str3 = null;
        int i2 = 0;
        String str4 = null;
        String str5 = null;
        String strL = null;
        String str6 = null;
        String str7 = null;
        String strL2 = null;
        String str8 = null;
        String str9 = null;
        String strL3 = null;
        String strL4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str4);
                    i2 |= 1;
                    break;
                case 1:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str5);
                    i2 |= 2;
                    break;
                case 2:
                    strL = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    continue;
                case 3:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str6);
                    i2 |= 8;
                    break;
                case 4:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str7);
                    i2 |= 16;
                    break;
                case 5:
                    strL2 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    continue;
                case 6:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str8);
                    i2 |= 64;
                    break;
                case 7:
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str9);
                    i2 |= 128;
                    break;
                case 8:
                    strL3 = compositeDecoderB.l(serialDescriptor, 8);
                    i2 |= 256;
                    continue;
                case 9:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str3);
                    i2 |= 512;
                    break;
                case 10:
                    strL4 = compositeDecoderB.l(serialDescriptor, 10);
                    i2 |= 1024;
                    continue;
                case 11:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str2);
                    i2 |= 2048;
                    break;
                case 12:
                    str = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str);
                    i2 |= 4096;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            z = z;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceAddressDto(i2, str4, str5, strL, str6, str7, strL2, str8, str9, strL3, str3, strL4, str2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceAddressDto careServiceAddressDto = (CareServiceAddressDto) obj;
        careServiceAddressDto.getClass();
        String str = careServiceAddressDto.f44860b;
        String str2 = careServiceAddressDto.f44859a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        String str3 = careServiceAddressDto.f44861c;
        String str4 = careServiceAddressDto.m;
        String str5 = careServiceAddressDto.l;
        String str6 = careServiceAddressDto.f44866j;
        String str7 = careServiceAddressDto.f44864h;
        String str8 = careServiceAddressDto.g;
        String str9 = careServiceAddressDto.f44862e;
        String str10 = careServiceAddressDto.d;
        compositeEncoderB.y(serialDescriptor, 2, str3);
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str9);
        }
        compositeEncoderB.y(serialDescriptor, 5, careServiceAddressDto.f44863f);
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str7);
        }
        compositeEncoderB.y(serialDescriptor, 8, careServiceAddressDto.f44865i);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str6);
        }
        compositeEncoderB.y(serialDescriptor, 10, careServiceAddressDto.f44867k);
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str4);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}

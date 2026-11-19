package com.vuitton.android.data.dto.product.vto;

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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/vto/EyebrowDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/vto/EyebrowDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class EyebrowDto$$serializer implements GeneratedSerializer<EyebrowDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EyebrowDto$$serializer f46515a;
    private static final SerialDescriptor descriptor;

    static {
        EyebrowDto$$serializer eyebrowDto$$serializer = new EyebrowDto$$serializer();
        f46515a = eyebrowDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.vto.EyebrowDto", eyebrowDto$$serializer, 11);
        pluginGeneratedSerialDescriptor.k("gap", true);
        pluginGeneratedSerialDescriptor.k("leftShape", true);
        pluginGeneratedSerialDescriptor.k("rightShape", true);
        pluginGeneratedSerialDescriptor.k("leftBodyThickness", true);
        pluginGeneratedSerialDescriptor.k("leftTailThickness", true);
        pluginGeneratedSerialDescriptor.k("leftThinness", true);
        pluginGeneratedSerialDescriptor.k("rightBodyThickness", true);
        pluginGeneratedSerialDescriptor.k("rightTailThickness", true);
        pluginGeneratedSerialDescriptor.k("rightThinness", true);
        pluginGeneratedSerialDescriptor.k("leftShortness", true);
        pluginGeneratedSerialDescriptor.k("rightShortness", true);
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
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
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
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str6);
                    i2 |= 4;
                    break;
                case 3:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str7);
                    i2 |= 8;
                    break;
                case 4:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str8);
                    i2 |= 16;
                    break;
                case 5:
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str9);
                    i2 |= 32;
                    break;
                case 6:
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str10);
                    i2 |= 64;
                    break;
                case 7:
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str11);
                    i2 |= 128;
                    break;
                case 8:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str3);
                    i2 |= 256;
                    break;
                case 9:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str2);
                    i2 |= 512;
                    break;
                case 10:
                    str = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str);
                    i2 |= 1024;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            z = z;
        }
        compositeDecoderB.c(serialDescriptor);
        return new EyebrowDto(i2, str4, str5, str6, str7, str8, str9, str10, str11, str3, str2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EyebrowDto eyebrowDto = (EyebrowDto) obj;
        eyebrowDto.getClass();
        String str = eyebrowDto.f46514k;
        String str2 = eyebrowDto.f46513j;
        String str3 = eyebrowDto.f46512i;
        String str4 = eyebrowDto.f46511h;
        String str5 = eyebrowDto.g;
        String str6 = eyebrowDto.f46510f;
        String str7 = eyebrowDto.f46509e;
        String str8 = eyebrowDto.d;
        String str9 = eyebrowDto.f46508c;
        String str10 = eyebrowDto.f46507b;
        String str11 = eyebrowDto.f46506a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str11);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}

package com.vuitton.android.data.dto.profile.legacy;

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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ShortUserAccountDto$$serializer implements GeneratedSerializer<ShortUserAccountDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ShortUserAccountDto$$serializer f46703a;
    private static final SerialDescriptor descriptor;

    static {
        ShortUserAccountDto$$serializer shortUserAccountDto$$serializer = new ShortUserAccountDto$$serializer();
        f46703a = shortUserAccountDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.profile.legacy.ShortUserAccountDto", shortUserAccountDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("wishListSize", true);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("cartSize", true);
        pluginGeneratedSerialDescriptor.k("userIsLogged", true);
        pluginGeneratedSerialDescriptor.k("invoiceCountryCode", true);
        pluginGeneratedSerialDescriptor.k("deviceType", true);
        pluginGeneratedSerialDescriptor.k("email", true);
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
        String str = null;
        String str2 = null;
        String str3 = null;
        Integer num = null;
        String str4 = null;
        Integer num2 = null;
        String str5 = null;
        String str6 = null;
        int i2 = 0;
        boolean zY = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str2);
                    i2 |= 1;
                    break;
                case 1:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str3);
                    i2 |= 2;
                    break;
                case 2:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 2, IntSerializer.f75624a, num);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    num2 = (Integer) compositeDecoderB.m(serialDescriptor, 4, IntSerializer.f75624a, num2);
                    i2 |= 16;
                    break;
                case 5:
                    zY = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str5);
                    i2 |= 64;
                    break;
                case 7:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str6);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ShortUserAccountDto(i2, str2, str3, num, str4, num2, zY, str5, str6, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ShortUserAccountDto shortUserAccountDto = (ShortUserAccountDto) obj;
        shortUserAccountDto.getClass();
        String str = shortUserAccountDto.f46702i;
        String str2 = shortUserAccountDto.f46701h;
        String str3 = shortUserAccountDto.g;
        boolean z = shortUserAccountDto.f46700f;
        Integer num = shortUserAccountDto.f46699e;
        String str4 = shortUserAccountDto.d;
        Integer num2 = shortUserAccountDto.f46698c;
        String str5 = shortUserAccountDto.f46697b;
        String str6 = shortUserAccountDto.f46696a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || num2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, IntSerializer.f75624a, num2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 4, IntSerializer.f75624a, num);
        }
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 5, z);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{kSerializerD, kSerializerD2, BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(intSerializer), BooleanSerializer.f75574a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}

package com.vuitton.android.data.dto.config.version;

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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/config/version/ConfigsVersionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ConfigsVersionDto$$serializer implements GeneratedSerializer<ConfigsVersionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConfigsVersionDto$$serializer f45558a;
    private static final SerialDescriptor descriptor;

    static {
        ConfigsVersionDto$$serializer configsVersionDto$$serializer = new ConfigsVersionDto$$serializer();
        f45558a = configsVersionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.config.version.ConfigsVersionDto", configsVersionDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("lvAppConfigurationRevision", false);
        pluginGeneratedSerialDescriptor.k("connectedObjectsConfigurationRevision", false);
        pluginGeneratedSerialDescriptor.k("connectedObjectsConfigurationUrl", false);
        pluginGeneratedSerialDescriptor.k("androidLastAuthorizedVersion", true);
        pluginGeneratedSerialDescriptor.k("androidLastAuthorizedVersionDedicatedSubtitle", true);
        pluginGeneratedSerialDescriptor.k("androidMinOsAuthorizedVersion", true);
        pluginGeneratedSerialDescriptor.k("androidMinOsAuthorizedVersionTitle", true);
        pluginGeneratedSerialDescriptor.k("androidMinOsAuthorizedVersionSubTitle", true);
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
        long jF = 0;
        long jF2 = 0;
        boolean z = true;
        String str = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        String strL = null;
        Integer num = null;
        String str4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    jF = compositeDecoderB.f(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    jF2 = compositeDecoderB.f(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 3, IntSerializer.f75624a, num);
                    i2 |= 8;
                    break;
                case 4:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str4);
                    i2 |= 16;
                    break;
                case 5:
                    str = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str);
                    i2 |= 32;
                    break;
                case 6:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str3);
                    i2 |= 64;
                    break;
                case 7:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ConfigsVersionDto(i2, jF, jF2, strL, num, str4, str, str3, str2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ConfigsVersionDto configsVersionDto = (ConfigsVersionDto) obj;
        configsVersionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        long j2 = configsVersionDto.f45552a;
        String str = configsVersionDto.f45557h;
        String str2 = configsVersionDto.g;
        String str3 = configsVersionDto.f45556f;
        String str4 = configsVersionDto.f45555e;
        Integer num = configsVersionDto.d;
        compositeEncoderB.D(serialDescriptor, 0, j2);
        compositeEncoderB.D(serialDescriptor, 1, configsVersionDto.f45553b);
        compositeEncoderB.y(serialDescriptor, 2, configsVersionDto.f45554c);
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 3, IntSerializer.f75624a, num);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(IntSerializer.f75624a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD5 = BuiltinSerializersKt.d(stringSerializer);
        LongSerializer longSerializer = LongSerializer.f75635a;
        return new KSerializer[]{longSerializer, longSerializer, stringSerializer, kSerializerD, kSerializerD2, kSerializerD3, kSerializerD4, kSerializerD5};
    }
}

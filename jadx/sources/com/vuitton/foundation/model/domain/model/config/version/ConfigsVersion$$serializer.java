package com.vuitton.foundation.model.domain.model.config.version;

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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/foundation/model/domain/model/config/version/ConfigsVersion.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ConfigsVersion$$serializer implements GeneratedSerializer<ConfigsVersion> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConfigsVersion$$serializer f67293a;
    private static final SerialDescriptor descriptor;

    static {
        ConfigsVersion$$serializer configsVersion$$serializer = new ConfigsVersion$$serializer();
        f67293a = configsVersion$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion", configsVersion$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("appConfigRevision", false);
        pluginGeneratedSerialDescriptor.k("connectedObjectsConfigRevision", false);
        pluginGeneratedSerialDescriptor.k("connectedObjectsConfigUrl", false);
        pluginGeneratedSerialDescriptor.k("lastAuthorizedVersionCode", false);
        pluginGeneratedSerialDescriptor.k("lastAuthorizedVersionCodeSubtitle", false);
        pluginGeneratedSerialDescriptor.k("androidMinOsAuthorizedVersion", false);
        pluginGeneratedSerialDescriptor.k("androidMinOsAuthorizedVersionTitle", false);
        pluginGeneratedSerialDescriptor.k("androidMinOsAuthorizedVersionSubTitle", false);
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
        long jF = 0;
        long jF2 = 0;
        String str = null;
        String str2 = null;
        String strL = null;
        String str3 = null;
        int i2 = 0;
        int iJ = 0;
        int iJ2 = 0;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
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
                    iJ = compositeDecoderB.j(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                    i2 |= 16;
                    break;
                case 5:
                    iJ2 = compositeDecoderB.j(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    str = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str);
                    i2 |= 64;
                    break;
                case 7:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ConfigsVersion(i2, jF, jF2, strL, iJ, str3, iJ2, str, str2, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ConfigsVersion configsVersion = (ConfigsVersion) obj;
        configsVersion.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.D(serialDescriptor, 0, configsVersion.f67287a);
        compositeEncoderB.D(serialDescriptor, 1, configsVersion.f67288b);
        compositeEncoderB.y(serialDescriptor, 2, configsVersion.f67289c);
        compositeEncoderB.u(3, configsVersion.d, serialDescriptor);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        compositeEncoderB.h(serialDescriptor, 4, stringSerializer, configsVersion.f67290e);
        compositeEncoderB.u(5, configsVersion.f67291f, serialDescriptor);
        compositeEncoderB.h(serialDescriptor, 6, stringSerializer, configsVersion.g);
        compositeEncoderB.h(serialDescriptor, 7, stringSerializer, configsVersion.f67292h);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        LongSerializer longSerializer = LongSerializer.f75635a;
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{longSerializer, longSerializer, stringSerializer, intSerializer, kSerializerD, intSerializer, kSerializerD2, kSerializerD3};
    }
}

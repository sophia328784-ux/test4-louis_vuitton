package com.vuitton.android.data.dto.common;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
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
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/common/AssetVideoDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AssetVideoDto$$serializer implements GeneratedSerializer<AssetVideoDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssetVideoDto$$serializer f45250a;
    private static final SerialDescriptor descriptor;

    static {
        AssetVideoDto$$serializer assetVideoDto$$serializer = new AssetVideoDto$$serializer();
        f45250a = assetVideoDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.common.AssetVideoDto", assetVideoDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.DOWNLOAD_PLUGIN_URL, true);
        pluginGeneratedSerialDescriptor.k("placeholder", true);
        pluginGeneratedSerialDescriptor.k("subtitle", true);
        pluginGeneratedSerialDescriptor.k("live", true);
        pluginGeneratedSerialDescriptor.k("countdown_timestamp", true);
        pluginGeneratedSerialDescriptor.k("live_done", true);
        pluginGeneratedSerialDescriptor.k("streamUrl", true);
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
        int i2 = 0;
        String strL = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        Boolean bool = null;
        Long l = null;
        Boolean bool2 = null;
        String str4 = null;
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
                    str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                    i2 |= 2;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str3);
                    i2 |= 8;
                    break;
                case 4:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 4, BooleanSerializer.f75574a, bool);
                    i2 |= 16;
                    break;
                case 5:
                    l = (Long) compositeDecoderB.m(serialDescriptor, 5, LongSerializer.f75635a, l);
                    i2 |= 32;
                    break;
                case 6:
                    bool2 = (Boolean) compositeDecoderB.m(serialDescriptor, 6, BooleanSerializer.f75574a, bool2);
                    i2 |= 64;
                    break;
                case 7:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str4);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new AssetVideoDto(i2, strL, str, str2, str3, bool, l, bool2, str4, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AssetVideoDto assetVideoDto = (AssetVideoDto) obj;
        assetVideoDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = assetVideoDto.f45244a;
        String str2 = assetVideoDto.f45249h;
        Boolean bool = assetVideoDto.g;
        Long l = assetVideoDto.f45248f;
        Boolean bool2 = assetVideoDto.f45247e;
        String str3 = assetVideoDto.d;
        String str4 = assetVideoDto.f45246c;
        String str5 = assetVideoDto.f45245b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, BooleanSerializer.f75574a, bool2);
        }
        if (compositeEncoderB.o(serialDescriptor) || l != null) {
            compositeEncoderB.h(serialDescriptor, 5, LongSerializer.f75635a, l);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 6, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{stringSerializer, kSerializerD, kSerializerD2, kSerializerD3, BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(LongSerializer.f75635a), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}

package com.vuitton.android.data.dto.connectivity.watch;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/watch/WatchDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class WatchDto$$serializer implements GeneratedSerializer<WatchDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WatchDto$$serializer f45666a;
    private static final SerialDescriptor descriptor;

    static {
        WatchDto$$serializer watchDto$$serializer = new WatchDto$$serializer();
        f45666a = watchDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.watch.WatchDto", watchDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("iotAccessKey", true);
        pluginGeneratedSerialDescriptor.k("serialNumber", false);
        pluginGeneratedSerialDescriptor.k("skuDesc", true);
        pluginGeneratedSerialDescriptor.k("name", true);
        pluginGeneratedSerialDescriptor.k("sku", true);
        pluginGeneratedSerialDescriptor.k("watchVersion", true);
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
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String strL = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    strL = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str3);
                    i2 |= 8;
                    break;
                case 4:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str4);
                    i2 |= 16;
                    break;
                case 5:
                    SkuId skuId = (SkuId) compositeDecoderB.m(serialDescriptor, 5, SkuId$$serializer.f67934a, str5 != null ? new SkuId(str5) : null);
                    str5 = skuId != null ? skuId.f67933a : null;
                    i2 |= 32;
                    break;
                case 6:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str6);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new WatchDto(i2, str, str2, strL, str3, str4, str5, str6, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        WatchDto watchDto = (WatchDto) obj;
        watchDto.getClass();
        String str = watchDto.f45662b;
        String str2 = watchDto.f45661a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        String str3 = watchDto.f45663c;
        String str4 = watchDto.g;
        String str5 = watchDto.f45665f;
        String str6 = watchDto.f45664e;
        String str7 = watchDto.d;
        compositeEncoderB.y(serialDescriptor, 2, str3);
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 5, SkuId$$serializer.f67934a, str5 != null ? new SkuId(str5) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str4);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(SkuId$$serializer.f67934a), BuiltinSerializersKt.d(stringSerializer)};
    }
}

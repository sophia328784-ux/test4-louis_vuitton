package com.vuitton.android.data.dto.config.cache;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/config/cache/AssetVideoCache.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AssetVideoCache$$serializer implements GeneratedSerializer<AssetVideoCache> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AssetVideoCache$$serializer f45481a;
    private static final SerialDescriptor descriptor;

    static {
        AssetVideoCache$$serializer assetVideoCache$$serializer = new AssetVideoCache$$serializer();
        f45481a = assetVideoCache$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.config.cache.AssetVideoCache", assetVideoCache$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("videoId", false);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.DOWNLOAD_PLUGIN_URL, false);
        pluginGeneratedSerialDescriptor.k("placeholder", false);
        pluginGeneratedSerialDescriptor.k("subtitle", false);
        pluginGeneratedSerialDescriptor.k("eventStartTimeInUTC", false);
        pluginGeneratedSerialDescriptor.k("liveVideoStatus", false);
        pluginGeneratedSerialDescriptor.k("streamUrl", false);
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
        Lazy[] lazyArr = AssetVideoCache.f45475h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        Long l = null;
        LiveVideoStatusCache liveVideoStatusCache = null;
        String strL5 = null;
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
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    strL4 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    l = (Long) compositeDecoderB.m(serialDescriptor, 4, LongSerializer.f75635a, l);
                    i2 |= 16;
                    break;
                case 5:
                    liveVideoStatusCache = (LiveVideoStatusCache) compositeDecoderB.w(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), liveVideoStatusCache);
                    i2 |= 32;
                    break;
                case 6:
                    strL5 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    continue;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new AssetVideoCache(i2, strL, strL2, strL3, strL4, l, liveVideoStatusCache, strL5, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AssetVideoCache assetVideoCache = (AssetVideoCache) obj;
        assetVideoCache.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AssetVideoCache.f45475h;
        compositeEncoderB.y(serialDescriptor, 0, assetVideoCache.f45476a);
        compositeEncoderB.y(serialDescriptor, 1, assetVideoCache.f45477b);
        compositeEncoderB.y(serialDescriptor, 2, assetVideoCache.f45478c);
        compositeEncoderB.y(serialDescriptor, 3, assetVideoCache.d);
        compositeEncoderB.h(serialDescriptor, 4, LongSerializer.f75635a, assetVideoCache.f45479e);
        compositeEncoderB.A(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), assetVideoCache.f45480f);
        compositeEncoderB.y(serialDescriptor, 6, assetVideoCache.g);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = AssetVideoCache.f45475h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(LongSerializer.f75635a), lazyArr[5].getF71699b(), stringSerializer};
    }
}

package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/config/cache/AICompanionConfigCache.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AICompanionConfigCache$$serializer implements GeneratedSerializer<AICompanionConfigCache> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AICompanionConfigCache$$serializer f45454a;
    private static final SerialDescriptor descriptor;

    static {
        AICompanionConfigCache$$serializer aICompanionConfigCache$$serializer = new AICompanionConfigCache$$serializer();
        f45454a = aICompanionConfigCache$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.config.cache.AICompanionConfigCache", aICompanionConfigCache$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("suggestions", false);
        pluginGeneratedSerialDescriptor.k("onboarding", false);
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
        Lazy[] lazyArr = AICompanionConfigCache.f45451c;
        boolean z = true;
        int i2 = 0;
        List list = null;
        AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                aICompanionOnboardingConfigCache = (AICompanionOnboardingConfigCache) compositeDecoderB.m(serialDescriptor, 1, AICompanionOnboardingConfigCache$$serializer.f45458a, aICompanionOnboardingConfigCache);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AICompanionConfigCache(i2, list, aICompanionOnboardingConfigCache, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AICompanionConfigCache aICompanionConfigCache = (AICompanionConfigCache) obj;
        aICompanionConfigCache.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) AICompanionConfigCache.f45451c[0].getF71699b(), aICompanionConfigCache.f45452a);
        compositeEncoderB.h(serialDescriptor, 1, AICompanionOnboardingConfigCache$$serializer.f45458a, aICompanionConfigCache.f45453b);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) AICompanionConfigCache.f45451c[0].getF71699b()), BuiltinSerializersKt.d(AICompanionOnboardingConfigCache$$serializer.f45458a)};
    }
}

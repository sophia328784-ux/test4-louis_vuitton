package com.vuitton.android.data.dto.config.cache;

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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AICompanionOnboardingConfigCache$$serializer implements GeneratedSerializer<AICompanionOnboardingConfigCache> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AICompanionOnboardingConfigCache$$serializer f45458a;
    private static final SerialDescriptor descriptor;

    static {
        AICompanionOnboardingConfigCache$$serializer aICompanionOnboardingConfigCache$$serializer = new AICompanionOnboardingConfigCache$$serializer();
        f45458a = aICompanionOnboardingConfigCache$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.config.cache.AICompanionOnboardingConfigCache", aICompanionOnboardingConfigCache$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("backgroundColor", true);
        pluginGeneratedSerialDescriptor.k("theme", true);
        pluginGeneratedSerialDescriptor.k("video", false);
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
        Lazy[] lazyArr = AICompanionOnboardingConfigCache.d;
        boolean z = true;
        int i2 = 0;
        String str = null;
        FeatureThemeCache featureThemeCache = null;
        AssetVideoCache assetVideoCache = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                i2 |= 1;
            } else if (iN == 1) {
                featureThemeCache = (FeatureThemeCache) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), featureThemeCache);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                assetVideoCache = (AssetVideoCache) compositeDecoderB.w(serialDescriptor, 2, AssetVideoCache$$serializer.f45481a, assetVideoCache);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AICompanionOnboardingConfigCache(i2, str, featureThemeCache, assetVideoCache, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AICompanionOnboardingConfigCache aICompanionOnboardingConfigCache = (AICompanionOnboardingConfigCache) obj;
        aICompanionOnboardingConfigCache.getClass();
        FeatureThemeCache featureThemeCache = aICompanionOnboardingConfigCache.f45456b;
        String str = aICompanionOnboardingConfigCache.f45455a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AICompanionOnboardingConfigCache.d;
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || featureThemeCache != FeatureThemeCache.LIGHT) {
            compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), featureThemeCache);
        }
        compositeEncoderB.A(serialDescriptor, 2, AssetVideoCache$$serializer.f45481a, aICompanionOnboardingConfigCache.f45457c);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(StringSerializer.f75684a), AICompanionOnboardingConfigCache.d[1].getF71699b(), AssetVideoCache$$serializer.f45481a};
    }
}

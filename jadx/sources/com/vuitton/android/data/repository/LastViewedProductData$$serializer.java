package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/repository/LastViewedProductData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/repository/LastViewedProductData;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class LastViewedProductData$$serializer implements GeneratedSerializer<LastViewedProductData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LastViewedProductData$$serializer f47748a;
    private static final SerialDescriptor descriptor;

    static {
        LastViewedProductData$$serializer lastViewedProductData$$serializer = new LastViewedProductData$$serializer();
        f47748a = lastViewedProductData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.repository.LastViewedProductData", lastViewedProductData$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("skuId", false);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("dateTime", false);
        pluginGeneratedSerialDescriptor.k("categoryId", false);
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
        String strL = null;
        String strL2 = null;
        String str2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                str = skuId != null ? skuId.f67933a : null;
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                str2 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str2);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new LastViewedProductData(i2, str, strL, strL2, str2, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        LastViewedProductData lastViewedProductData = (LastViewedProductData) obj;
        lastViewedProductData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        cj.B(lastViewedProductData.f47745a, compositeEncoderB, serialDescriptor, 0, SkuId$$serializer.f67934a);
        compositeEncoderB.y(serialDescriptor, 1, lastViewedProductData.f47746b);
        compositeEncoderB.y(serialDescriptor, 2, lastViewedProductData.f47747c);
        compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, lastViewedProductData.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{SkuId$$serializer.f67934a, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer)};
    }
}

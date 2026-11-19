package com.vuitton.android.data.database.entity.searchhistory;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class HistoryItemEntity$$serializer implements GeneratedSerializer<HistoryItemEntity> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HistoryItemEntity$$serializer f43612a;
    private static final SerialDescriptor descriptor;

    static {
        HistoryItemEntity$$serializer historyItemEntity$$serializer = new HistoryItemEntity$$serializer();
        f43612a = historyItemEntity$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.database.entity.searchhistory.HistoryItemEntity", historyItemEntity$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("sku", true);
        pluginGeneratedSerialDescriptor.k("label", false);
        pluginGeneratedSerialDescriptor.k("image", true);
        pluginGeneratedSerialDescriptor.k("background", true);
        pluginGeneratedSerialDescriptor.k("dateTime", false);
        pluginGeneratedSerialDescriptor.k("price", true);
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
        Lazy[] lazyArr = HistoryItemEntity.g;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String strL = null;
        String str2 = null;
        ProductBackgroundEntity productBackgroundEntity = null;
        String strL2 = null;
        ProductShortPriceEntity productShortPriceEntity = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    SkuId skuId = (SkuId) compositeDecoderB.m(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                    str = skuId != null ? skuId.f67933a : null;
                    i2 |= 1;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    productBackgroundEntity = (ProductBackgroundEntity) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), productBackgroundEntity);
                    i2 |= 8;
                    break;
                case 4:
                    strL2 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    productShortPriceEntity = (ProductShortPriceEntity) compositeDecoderB.m(serialDescriptor, 5, ProductShortPriceEntity$$serializer.f43616a, productShortPriceEntity);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new HistoryItemEntity(i2, str, strL, str2, productBackgroundEntity, strL2, productShortPriceEntity, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        HistoryItemEntity historyItemEntity = (HistoryItemEntity) obj;
        historyItemEntity.getClass();
        String str = historyItemEntity.f43607a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = HistoryItemEntity.g;
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
        }
        String str2 = historyItemEntity.f43608b;
        ProductShortPriceEntity productShortPriceEntity = historyItemEntity.f43611f;
        ProductBackgroundEntity productBackgroundEntity = historyItemEntity.d;
        String str3 = historyItemEntity.f43609c;
        compositeEncoderB.y(serialDescriptor, 1, str2);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || productBackgroundEntity != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), productBackgroundEntity);
        }
        compositeEncoderB.y(serialDescriptor, 4, historyItemEntity.f43610e);
        if (compositeEncoderB.o(serialDescriptor) || productShortPriceEntity != null) {
            compositeEncoderB.h(serialDescriptor, 5, ProductShortPriceEntity$$serializer.f43616a, productShortPriceEntity);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = HistoryItemEntity.g;
        KSerializer kSerializerD = BuiltinSerializersKt.d(SkuId$$serializer.f67934a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{kSerializerD, stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), stringSerializer, BuiltinSerializersKt.d(ProductShortPriceEntity$$serializer.f43616a)};
    }
}

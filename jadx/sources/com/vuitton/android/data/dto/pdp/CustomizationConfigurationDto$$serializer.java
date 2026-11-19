package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/CustomizationConfigurationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CustomizationConfigurationDto$$serializer implements GeneratedSerializer<CustomizationConfigurationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CustomizationConfigurationDto$$serializer f46185a;
    private static final SerialDescriptor descriptor;

    static {
        CustomizationConfigurationDto$$serializer customizationConfigurationDto$$serializer = new CustomizationConfigurationDto$$serializer();
        f46185a = customizationConfigurationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.CustomizationConfigurationDto", customizationConfigurationDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("informations", false);
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
        Lazy[] lazyArr = CustomizationConfigurationDto.f46180f;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String strL = null;
        String strL2 = null;
        CustomizationTypeDto customizationTypeDto = null;
        List list = null;
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
            } else if (iN == 3) {
                customizationTypeDto = (CustomizationTypeDto) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), customizationTypeDto);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CustomizationConfigurationDto(i2, str, strL, strL2, customizationTypeDto, list, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CustomizationConfigurationDto customizationConfigurationDto = (CustomizationConfigurationDto) obj;
        customizationConfigurationDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CustomizationConfigurationDto.f46180f;
        cj.B(customizationConfigurationDto.f46181a, compositeEncoderB, serialDescriptor, 0, SkuId$$serializer.f67934a);
        compositeEncoderB.y(serialDescriptor, 1, customizationConfigurationDto.f46182b);
        compositeEncoderB.y(serialDescriptor, 2, customizationConfigurationDto.f46183c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), customizationConfigurationDto.d);
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), customizationConfigurationDto.f46184e);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CustomizationConfigurationDto.f46180f;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{SkuId$$serializer.f67934a, stringSerializer, stringSerializer, lazyArr[3].getF71699b(), lazyArr[4].getF71699b()};
    }
}

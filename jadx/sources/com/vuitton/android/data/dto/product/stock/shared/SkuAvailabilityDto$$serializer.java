package com.vuitton.android.data.dto.product.stock.shared;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SkuAvailabilityDto$$serializer implements GeneratedSerializer<SkuAvailabilityDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SkuAvailabilityDto$$serializer f46494a;
    private static final SerialDescriptor descriptor;

    static {
        SkuAvailabilityDto$$serializer skuAvailabilityDto$$serializer = new SkuAvailabilityDto$$serializer();
        f46494a = skuAvailabilityDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.stock.shared.SkuAvailabilityDto", skuAvailabilityDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k("skuId", false);
        pluginGeneratedSerialDescriptor.k("backOrder", true);
        pluginGeneratedSerialDescriptor.k("isPreOrder", true);
        pluginGeneratedSerialDescriptor.k("inStock", true);
        pluginGeneratedSerialDescriptor.k("disclaimers", true);
        pluginGeneratedSerialDescriptor.k("minValue", false);
        pluginGeneratedSerialDescriptor.k("maxValue", false);
        pluginGeneratedSerialDescriptor.k("minLeadTime", false);
        pluginGeneratedSerialDescriptor.k("maxLeadTime", false);
        pluginGeneratedSerialDescriptor.k("leadTimeFormat", false);
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
        Lazy[] lazyArr = SkuAvailabilityDto.f46485k;
        AvailabilityTimeFormatDto availabilityTimeFormatDto = null;
        Integer num = null;
        boolean z = true;
        Integer num2 = null;
        int i2 = 0;
        String str = null;
        Boolean bool = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        ProductDisclaimerDto productDisclaimerDto = null;
        Integer num3 = null;
        Integer num4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                    i2 |= 1;
                    str = skuId != null ? skuId.f67933a : null;
                    break;
                case 1:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 1, BooleanSerializer.f75574a, bool);
                    i2 |= 2;
                    break;
                case 2:
                    bool2 = (Boolean) compositeDecoderB.m(serialDescriptor, 2, BooleanSerializer.f75574a, bool2);
                    i2 |= 4;
                    break;
                case 3:
                    bool3 = (Boolean) compositeDecoderB.m(serialDescriptor, 3, BooleanSerializer.f75574a, bool3);
                    i2 |= 8;
                    break;
                case 4:
                    productDisclaimerDto = (ProductDisclaimerDto) compositeDecoderB.m(serialDescriptor, 4, ProductDisclaimerDto$$serializer.f46275a, productDisclaimerDto);
                    i2 |= 16;
                    break;
                case 5:
                    num3 = (Integer) compositeDecoderB.m(serialDescriptor, 5, IntSerializer.f75624a, num3);
                    i2 |= 32;
                    break;
                case 6:
                    num4 = (Integer) compositeDecoderB.m(serialDescriptor, 6, IntSerializer.f75624a, num4);
                    i2 |= 64;
                    break;
                case 7:
                    num2 = (Integer) compositeDecoderB.m(serialDescriptor, 7, IntSerializer.f75624a, num2);
                    i2 |= 128;
                    break;
                case 8:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 8, IntSerializer.f75624a, num);
                    i2 |= 256;
                    break;
                case 9:
                    availabilityTimeFormatDto = (AvailabilityTimeFormatDto) compositeDecoderB.m(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), availabilityTimeFormatDto);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            lazyArr = lazyArr;
        }
        compositeDecoderB.c(serialDescriptor);
        return new SkuAvailabilityDto(i2, str, bool, bool2, bool3, productDisclaimerDto, num3, num4, num2, num, availabilityTimeFormatDto, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SkuAvailabilityDto skuAvailabilityDto = (SkuAvailabilityDto) obj;
        skuAvailabilityDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SkuAvailabilityDto.f46485k;
        SkuId$$serializer skuId$$serializer = SkuId$$serializer.f67934a;
        String str = skuAvailabilityDto.f46486a;
        ProductDisclaimerDto productDisclaimerDto = skuAvailabilityDto.f46489e;
        Boolean bool = skuAvailabilityDto.d;
        Boolean bool2 = skuAvailabilityDto.f46488c;
        Boolean bool3 = skuAvailabilityDto.f46487b;
        cj.B(str, compositeEncoderB, serialDescriptor, 0, skuId$$serializer);
        if (compositeEncoderB.o(serialDescriptor) || bool3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, BooleanSerializer.f75574a, bool3);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, BooleanSerializer.f75574a, bool2);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 3, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || productDisclaimerDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, ProductDisclaimerDto$$serializer.f46275a, productDisclaimerDto);
        }
        IntSerializer intSerializer = IntSerializer.f75624a;
        compositeEncoderB.h(serialDescriptor, 5, intSerializer, skuAvailabilityDto.f46490f);
        compositeEncoderB.h(serialDescriptor, 6, intSerializer, skuAvailabilityDto.g);
        compositeEncoderB.h(serialDescriptor, 7, intSerializer, skuAvailabilityDto.f46491h);
        compositeEncoderB.h(serialDescriptor, 8, intSerializer, skuAvailabilityDto.f46492i);
        compositeEncoderB.h(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), skuAvailabilityDto.f46493j);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SkuAvailabilityDto.f46485k;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(booleanSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(booleanSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(booleanSerializer);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(ProductDisclaimerDto$$serializer.f46275a);
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{SkuId$$serializer.f67934a, kSerializerD, kSerializerD2, kSerializerD3, kSerializerD4, BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[9].getF71699b())};
    }
}

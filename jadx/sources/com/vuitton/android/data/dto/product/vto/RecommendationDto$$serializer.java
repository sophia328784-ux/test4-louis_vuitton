package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto;
import com.vuitton.android.data.dto.producttiny.ProductTinyDto$$serializer;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/vto/RecommendationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/vto/RecommendationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class RecommendationDto$$serializer implements GeneratedSerializer<RecommendationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RecommendationDto$$serializer f46543a;
    private static final SerialDescriptor descriptor;

    static {
        RecommendationDto$$serializer recommendationDto$$serializer = new RecommendationDto$$serializer();
        f46543a = recommendationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.vto.RecommendationDto", recommendationDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("product", false);
        pluginGeneratedSerialDescriptor.k("description", false);
        pluginGeneratedSerialDescriptor.k("tryOn", true);
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
        ProductTinyDto productTinyDto = null;
        String strL = null;
        TryOnProductDto tryOnProductDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                productTinyDto = (ProductTinyDto) compositeDecoderB.w(serialDescriptor, 0, ProductTinyDto$$serializer.f46669a, productTinyDto);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                tryOnProductDto = (TryOnProductDto) compositeDecoderB.m(serialDescriptor, 2, TryOnProductDto$$serializer.f46565a, tryOnProductDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new RecommendationDto(i2, productTinyDto, strL, tryOnProductDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        RecommendationDto recommendationDto = (RecommendationDto) obj;
        recommendationDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        ProductTinyDto$$serializer productTinyDto$$serializer = ProductTinyDto$$serializer.f46669a;
        ProductTinyDto productTinyDto = recommendationDto.f46540a;
        TryOnProductDto tryOnProductDto = recommendationDto.f46542c;
        compositeEncoderB.A(serialDescriptor, 0, productTinyDto$$serializer, productTinyDto);
        compositeEncoderB.y(serialDescriptor, 1, recommendationDto.f46541b);
        if (compositeEncoderB.o(serialDescriptor) || tryOnProductDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, TryOnProductDto$$serializer.f46565a, tryOnProductDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{ProductTinyDto$$serializer.f46669a, StringSerializer.f75684a, BuiltinSerializersKt.d(TryOnProductDto$$serializer.f46565a)};
    }
}

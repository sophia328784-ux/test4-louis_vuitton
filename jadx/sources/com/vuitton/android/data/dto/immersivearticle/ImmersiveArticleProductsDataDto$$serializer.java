package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleProductsDataDto$$serializer implements GeneratedSerializer<ImmersiveArticleProductsDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleProductsDataDto$$serializer f45904a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleProductsDataDto$$serializer immersiveArticleProductsDataDto$$serializer = new ImmersiveArticleProductsDataDto$$serializer();
        f45904a = immersiveArticleProductsDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductsDataDto", immersiveArticleProductsDataDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k(Product.TYPE, false);
        pluginGeneratedSerialDescriptor.k("imageStyle", true);
        pluginGeneratedSerialDescriptor.k("displayStyle", true);
        pluginGeneratedSerialDescriptor.k("ratio", true);
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
        Lazy[] lazyArr = ImmersiveArticleProductsDataDto.f45900e;
        boolean z = true;
        int i2 = 0;
        List list = null;
        ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto = null;
        ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto = null;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                immersiveArticleProductImageStyleDto = (ImmersiveArticleProductImageStyleDto) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), immersiveArticleProductImageStyleDto);
                i2 |= 2;
            } else if (iN == 2) {
                immersiveArticleProductDisplayStyleDto = (ImmersiveArticleProductDisplayStyleDto) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), immersiveArticleProductDisplayStyleDto);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                immersiveArticleSizeCardDto = (ImmersiveArticleSizeCardDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), immersiveArticleSizeCardDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleProductsDataDto(i2, list, immersiveArticleProductImageStyleDto, immersiveArticleProductDisplayStyleDto, immersiveArticleSizeCardDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto = (ImmersiveArticleProductsDataDto) obj;
        immersiveArticleProductsDataDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ImmersiveArticleProductsDataDto.f45900e;
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[0].getF71699b();
        List list = immersiveArticleProductsDataDto.f45901a;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = immersiveArticleProductsDataDto.d;
        ImmersiveArticleProductDisplayStyleDto immersiveArticleProductDisplayStyleDto = immersiveArticleProductsDataDto.f45903c;
        ImmersiveArticleProductImageStyleDto immersiveArticleProductImageStyleDto = immersiveArticleProductsDataDto.f45902b;
        compositeEncoderB.A(serialDescriptor, 0, serializationStrategy, list);
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleProductImageStyleDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), immersiveArticleProductImageStyleDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleProductDisplayStyleDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), immersiveArticleProductDisplayStyleDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleSizeCardDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), immersiveArticleSizeCardDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ImmersiveArticleProductsDataDto.f45900e;
        return new KSerializer[]{lazyArr[0].getF71699b(), BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b())};
    }
}

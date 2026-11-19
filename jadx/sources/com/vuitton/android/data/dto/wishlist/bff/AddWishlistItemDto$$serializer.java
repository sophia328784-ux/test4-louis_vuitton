package com.vuitton.android.data.dto.wishlist.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/wishlist/bff/AddWishlistItemDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/wishlist/bff/AddWishlistItemDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AddWishlistItemDto$$serializer implements GeneratedSerializer<AddWishlistItemDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AddWishlistItemDto$$serializer f46938a;
    private static final SerialDescriptor descriptor;

    static {
        AddWishlistItemDto$$serializer addWishlistItemDto$$serializer = new AddWishlistItemDto$$serializer();
        f46938a = addWishlistItemDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.wishlist.bff.AddWishlistItemDto", addWishlistItemDto$$serializer, 1);
        pluginGeneratedSerialDescriptor.k("skuId", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        SerializationConstructorMarker serializationConstructorMarker = null;
        Object[] objArr = 0;
        Object[] objArr2 = true;
        int i2 = 0;
        String str = null;
        while (objArr2 != false) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                objArr2 = false;
            } else {
                if (iN != 0) {
                    b21.l(iN);
                    return null;
                }
                SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 0, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
                str = skuId != null ? skuId.f67933a : null;
                i2 = 1;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AddWishlistItemDto(i2, str, serializationConstructorMarker, objArr == true ? 1 : 0);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AddWishlistItemDto addWishlistItemDto = (AddWishlistItemDto) obj;
        addWishlistItemDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        cj.B(addWishlistItemDto.f46937a, compositeEncoderB, serialDescriptor, 0, SkuId$$serializer.f67934a);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{SkuId$$serializer.f67934a};
    }
}

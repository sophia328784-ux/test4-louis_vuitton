package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto;
import com.vuitton.android.data.dto.cart.bff.CartPriceDto$$serializer;
import defpackage.b21;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CartPriceInfoDto$$serializer implements GeneratedSerializer<CartPriceInfoDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartPriceInfoDto$$serializer f44291a;
    private static final SerialDescriptor descriptor;

    static {
        CartPriceInfoDto$$serializer cartPriceInfoDto$$serializer = new CartPriceInfoDto$$serializer();
        f44291a = cartPriceInfoDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CartPriceInfoDto", cartPriceInfoDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("shippingAmount", false);
        pluginGeneratedSerialDescriptor.k("totalAmount", false);
        pluginGeneratedSerialDescriptor.k("totalTaxIncludedAmount", false);
        pluginGeneratedSerialDescriptor.k("allTaxes", false);
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
        Lazy[] lazyArr = CartPriceInfoDto.f44287e;
        boolean z = true;
        int i2 = 0;
        CartPriceDto cartPriceDto = null;
        CartPriceDto cartPriceDto2 = null;
        CartPriceDto cartPriceDto3 = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                cartPriceDto = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 0, CartPriceDto$$serializer.f45000a, cartPriceDto);
                i2 |= 1;
            } else if (iN == 1) {
                cartPriceDto2 = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 1, CartPriceDto$$serializer.f45000a, cartPriceDto2);
                i2 |= 2;
            } else if (iN == 2) {
                cartPriceDto3 = (CartPriceDto) compositeDecoderB.w(serialDescriptor, 2, CartPriceDto$$serializer.f45000a, cartPriceDto3);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartPriceInfoDto(i2, cartPriceDto, cartPriceDto2, cartPriceDto3, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartPriceInfoDto cartPriceInfoDto = (CartPriceInfoDto) obj;
        cartPriceInfoDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CartPriceInfoDto.f44287e;
        CartPriceDto$$serializer cartPriceDto$$serializer = CartPriceDto$$serializer.f45000a;
        compositeEncoderB.A(serialDescriptor, 0, cartPriceDto$$serializer, cartPriceInfoDto.f44288a);
        compositeEncoderB.A(serialDescriptor, 1, cartPriceDto$$serializer, cartPriceInfoDto.f44289b);
        compositeEncoderB.A(serialDescriptor, 2, cartPriceDto$$serializer, cartPriceInfoDto.f44290c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), cartPriceInfoDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CartPriceInfoDto.f44287e;
        CartPriceDto$$serializer cartPriceDto$$serializer = CartPriceDto$$serializer.f45000a;
        return new KSerializer[]{cartPriceDto$$serializer, cartPriceDto$$serializer, cartPriceDto$$serializer, lazyArr[3].getF71699b()};
    }
}

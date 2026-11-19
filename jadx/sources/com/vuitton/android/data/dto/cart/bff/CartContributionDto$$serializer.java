package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/bff/CartContributionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CartContributionDto$$serializer implements GeneratedSerializer<CartContributionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartContributionDto$$serializer f44973a;
    private static final SerialDescriptor descriptor;

    static {
        CartContributionDto$$serializer cartContributionDto$$serializer = new CartContributionDto$$serializer();
        f44973a = cartContributionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.bff.CartContributionDto", cartContributionDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("gifting", false);
        pluginGeneratedSerialDescriptor.k("shoppingBag", false);
        pluginGeneratedSerialDescriptor.k("packaging", false);
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
        GiftingContributionDto giftingContributionDto = null;
        ShoppingBagContributionDto shoppingBagContributionDto = null;
        PackagingContributionDto packagingContributionDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                giftingContributionDto = (GiftingContributionDto) compositeDecoderB.w(serialDescriptor, 0, GiftingContributionDto$$serializer.f45049a, giftingContributionDto);
                i2 |= 1;
            } else if (iN == 1) {
                shoppingBagContributionDto = (ShoppingBagContributionDto) compositeDecoderB.w(serialDescriptor, 1, ShoppingBagContributionDto$$serializer.f45064a, shoppingBagContributionDto);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                packagingContributionDto = (PackagingContributionDto) compositeDecoderB.w(serialDescriptor, 2, PackagingContributionDto$$serializer.f45058a, packagingContributionDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartContributionDto(i2, giftingContributionDto, shoppingBagContributionDto, packagingContributionDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartContributionDto cartContributionDto = (CartContributionDto) obj;
        cartContributionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, GiftingContributionDto$$serializer.f45049a, cartContributionDto.f44970a);
        compositeEncoderB.A(serialDescriptor, 1, ShoppingBagContributionDto$$serializer.f45064a, cartContributionDto.f44971b);
        compositeEncoderB.A(serialDescriptor, 2, PackagingContributionDto$$serializer.f45058a, cartContributionDto.f44972c);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{GiftingContributionDto$$serializer.f45049a, ShoppingBagContributionDto$$serializer.f45064a, PackagingContributionDto$$serializer.f45058a};
    }
}

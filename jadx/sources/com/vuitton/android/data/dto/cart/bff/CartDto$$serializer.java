package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/bff/CartDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CartDto$$serializer implements GeneratedSerializer<CartDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartDto$$serializer f44984a;
    private static final SerialDescriptor descriptor;

    static {
        CartDto$$serializer cartDto$$serializer = new CartDto$$serializer();
        f44984a = cartDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.bff.CartDto", cartDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("cartIdentifier", true);
        pluginGeneratedSerialDescriptor.k("itemsCount", false);
        pluginGeneratedSerialDescriptor.k("items", true);
        pluginGeneratedSerialDescriptor.k("priceInfo", true);
        pluginGeneratedSerialDescriptor.k("giftMessage", true);
        pluginGeneratedSerialDescriptor.k("blankCard", true);
        pluginGeneratedSerialDescriptor.k("shoppingBag", false);
        pluginGeneratedSerialDescriptor.k("samples", true);
        pluginGeneratedSerialDescriptor.k("displayTax", true);
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
        Lazy[] lazyArr = CartDto.f44976j;
        Boolean bool = null;
        boolean z = true;
        CartSampleDto cartSampleDto = null;
        int i2 = 0;
        String str = null;
        int iJ = 0;
        List list = null;
        CartPriceInformationDto cartPriceInformationDto = null;
        String str2 = null;
        Boolean bool2 = null;
        ShoppingBagDto shoppingBagDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    iJ = compositeDecoderB.j(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    list = (List) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list);
                    i2 |= 4;
                    break;
                case 3:
                    cartPriceInformationDto = (CartPriceInformationDto) compositeDecoderB.m(serialDescriptor, 3, CartPriceInformationDto$$serializer.f45005a, cartPriceInformationDto);
                    i2 |= 8;
                    break;
                case 4:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str2);
                    i2 |= 16;
                    break;
                case 5:
                    bool2 = (Boolean) compositeDecoderB.m(serialDescriptor, 5, BooleanSerializer.f75574a, bool2);
                    i2 |= 32;
                    break;
                case 6:
                    shoppingBagDto = (ShoppingBagDto) compositeDecoderB.w(serialDescriptor, 6, ShoppingBagDto$$serializer.f45067a, shoppingBagDto);
                    i2 |= 64;
                    break;
                case 7:
                    cartSampleDto = (CartSampleDto) compositeDecoderB.m(serialDescriptor, 7, CartSampleDto$$serializer.f45013a, cartSampleDto);
                    i2 |= 128;
                    break;
                case 8:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 8, BooleanSerializer.f75574a, bool);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartDto(i2, str, iJ, list, cartPriceInformationDto, str2, bool2, shoppingBagDto, cartSampleDto, bool, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartDto cartDto = (CartDto) obj;
        cartDto.getClass();
        String str = cartDto.f44977a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CartDto.f44976j;
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str);
        }
        int i2 = cartDto.f44978b;
        Boolean bool = cartDto.f44983i;
        CartSampleDto cartSampleDto = cartDto.f44982h;
        Boolean bool2 = cartDto.f44981f;
        String str2 = cartDto.f44980e;
        CartPriceInformationDto cartPriceInformationDto = cartDto.d;
        List list = cartDto.f44979c;
        compositeEncoderB.u(1, i2, serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || cartPriceInformationDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, CartPriceInformationDto$$serializer.f45005a, cartPriceInformationDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, BooleanSerializer.f75574a, bool2);
        }
        compositeEncoderB.A(serialDescriptor, 6, ShoppingBagDto$$serializer.f45067a, cartDto.g);
        if (compositeEncoderB.o(serialDescriptor) || cartSampleDto != null) {
            compositeEncoderB.h(serialDescriptor, 7, CartSampleDto$$serializer.f45013a, cartSampleDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 8, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CartDto.f44976j;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b());
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(CartPriceInformationDto$$serializer.f45005a);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{kSerializerD, IntSerializer.f75624a, kSerializerD2, kSerializerD3, kSerializerD4, BuiltinSerializersKt.d(booleanSerializer), ShoppingBagDto$$serializer.f45067a, BuiltinSerializersKt.d(CartSampleDto$$serializer.f45013a), BuiltinSerializersKt.d(booleanSerializer)};
    }
}

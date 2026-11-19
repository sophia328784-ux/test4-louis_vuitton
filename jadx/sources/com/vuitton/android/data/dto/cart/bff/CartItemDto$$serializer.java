package com.vuitton.android.data.dto.cart.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto$$serializer;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.ProductId$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
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
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/cart/bff/CartItemDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CartItemDto$$serializer implements GeneratedSerializer<CartItemDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartItemDto$$serializer f44996a;
    private static final SerialDescriptor descriptor;

    static {
        CartItemDto$$serializer cartItemDto$$serializer = new CartItemDto$$serializer();
        f44996a = cartItemDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.cart.bff.CartItemDto", cartItemDto$$serializer, 22);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("productId", true);
        pluginGeneratedSerialDescriptor.k("skuIdentifier", true);
        pluginGeneratedSerialDescriptor.k("name", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("material", true);
        pluginGeneratedSerialDescriptor.k("isExclusive", true);
        pluginGeneratedSerialDescriptor.k("mainImageURL", true);
        pluginGeneratedSerialDescriptor.k("images", true);
        pluginGeneratedSerialDescriptor.k("isAvailable", true);
        pluginGeneratedSerialDescriptor.k("quantity", false);
        pluginGeneratedSerialDescriptor.k("priceInfo", false);
        pluginGeneratedSerialDescriptor.k("isBackOrder", true);
        pluginGeneratedSerialDescriptor.k("isPreOrder", true);
        pluginGeneratedSerialDescriptor.k("disclaimers", true);
        pluginGeneratedSerialDescriptor.k("commercialTag", true);
        pluginGeneratedSerialDescriptor.k("bundle", true);
        pluginGeneratedSerialDescriptor.k("customizations", true);
        pluginGeneratedSerialDescriptor.k("isQuantityEditable", true);
        pluginGeneratedSerialDescriptor.k("isWishlistEligible", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        int i3;
        String str;
        String str2;
        int i4;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CartItemDto.w;
        Boolean bool = null;
        CartPriceInformationDto cartPriceInformationDto = null;
        List list = null;
        String str3 = null;
        Boolean bool2 = null;
        String str4 = null;
        int i5 = 0;
        ProductDisclaimerDto productDisclaimerDto = null;
        String str5 = null;
        BundleDto bundleDto = null;
        CartItemCustomizationDto cartItemCustomizationDto = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        boolean z = true;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        boolean zY = false;
        boolean zY2 = false;
        int iJ = 0;
        boolean zY3 = false;
        boolean zY4 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    i3 = iJ;
                    str = str9;
                    z = false;
                    str7 = str7;
                    bool = bool;
                    str9 = str;
                    productDisclaimerDto = productDisclaimerDto;
                    iJ = i3;
                    str11 = str11;
                    bundleDto = bundleDto;
                    break;
                case 0:
                    i3 = iJ;
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str9);
                    i5 |= 1;
                    str7 = str7;
                    str6 = str6;
                    bool = bool;
                    str9 = str;
                    productDisclaimerDto = productDisclaimerDto;
                    iJ = i3;
                    str11 = str11;
                    bundleDto = bundleDto;
                    break;
                case 1:
                    str2 = str6;
                    str11 = str11;
                    ProductId productId = (ProductId) compositeDecoderB.m(serialDescriptor, 1, ProductId$$serializer.f67906a, str10 != null ? new ProductId(str10) : null);
                    str10 = productId != null ? productId.f67905a : null;
                    i5 |= 2;
                    str6 = str2;
                    str7 = str7;
                    bool = bool;
                    break;
                case 2:
                    str2 = str6;
                    str12 = str12;
                    SkuId skuId = (SkuId) compositeDecoderB.m(serialDescriptor, 2, SkuId$$serializer.f67934a, str11 != null ? new SkuId(str11) : null);
                    str11 = skuId != null ? skuId.f67933a : null;
                    i5 |= 4;
                    str6 = str2;
                    str7 = str7;
                    bool = bool;
                    break;
                case 3:
                    str2 = str6;
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str12);
                    i5 |= 8;
                    str6 = str2;
                    str7 = str7;
                    bool = bool;
                    break;
                case 4:
                    bool = bool;
                    str7 = str7;
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str6);
                    i5 |= 16;
                    str7 = str7;
                    bool = bool;
                    break;
                case 5:
                    bool = bool;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str7);
                    i5 |= 32;
                    str6 = str6;
                    bool = bool;
                    break;
                case 6:
                    str6 = str6;
                    str7 = str7;
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str8);
                    i5 |= 64;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 7:
                    str6 = str6;
                    str7 = str7;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str4);
                    i5 |= 128;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 8:
                    str6 = str6;
                    zY = compositeDecoderB.y(serialDescriptor, 8);
                    i5 |= 256;
                    str6 = str6;
                    break;
                case 9:
                    str6 = str6;
                    str7 = str7;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str3);
                    i5 |= 512;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 10:
                    str6 = str6;
                    str7 = str7;
                    list = (List) compositeDecoderB.m(serialDescriptor, 10, (DeserializationStrategy) lazyArr[10].getF71699b(), list);
                    i5 |= 1024;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 11:
                    str6 = str6;
                    zY2 = compositeDecoderB.y(serialDescriptor, 11);
                    i5 |= 2048;
                    str6 = str6;
                    break;
                case 12:
                    str6 = str6;
                    iJ = compositeDecoderB.j(serialDescriptor, 12);
                    i5 |= 4096;
                    str6 = str6;
                    break;
                case 13:
                    str6 = str6;
                    str7 = str7;
                    cartPriceInformationDto = (CartPriceInformationDto) compositeDecoderB.w(serialDescriptor, 13, CartPriceInformationDto$$serializer.f45005a, cartPriceInformationDto);
                    i5 |= 8192;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 14:
                    str6 = str6;
                    str7 = str7;
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 14, BooleanSerializer.f75574a, bool);
                    i5 |= 16384;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 15:
                    bool2 = (Boolean) compositeDecoderB.m(serialDescriptor, 15, BooleanSerializer.f75574a, bool2);
                    i4 = 32768;
                    i5 |= i4;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 16:
                    productDisclaimerDto = (ProductDisclaimerDto) compositeDecoderB.m(serialDescriptor, 16, ProductDisclaimerDto$$serializer.f46275a, productDisclaimerDto);
                    i4 = 65536;
                    i5 |= i4;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 17:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str5);
                    i4 = 131072;
                    i5 |= i4;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 18:
                    bundleDto = (BundleDto) compositeDecoderB.m(serialDescriptor, 18, BundleDto$$serializer.f44969a, bundleDto);
                    i4 = 262144;
                    i5 |= i4;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 19:
                    cartItemCustomizationDto = (CartItemCustomizationDto) compositeDecoderB.m(serialDescriptor, 19, CartItemCustomizationDto$$serializer.f44986a, cartItemCustomizationDto);
                    i4 = 524288;
                    i5 |= i4;
                    str6 = str6;
                    str7 = str7;
                    break;
                case 20:
                    zY3 = compositeDecoderB.y(serialDescriptor, 20);
                    i2 = 1048576;
                    i5 |= i2;
                    str6 = str6;
                    break;
                case 21:
                    zY4 = compositeDecoderB.y(serialDescriptor, 21);
                    i2 = PKIFailureInfo.badSenderNonce;
                    i5 |= i2;
                    str6 = str6;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        Boolean bool3 = bool;
        BundleDto bundleDto2 = bundleDto;
        String str13 = str11;
        int i6 = iJ;
        ProductDisclaimerDto productDisclaimerDto2 = productDisclaimerDto;
        String str14 = str9;
        compositeDecoderB.c(serialDescriptor);
        return new CartItemDto(i5, str14, str10, str13, str12, str6, str7, str8, str4, zY, str3, list, zY2, i6, cartPriceInformationDto, bool3, bool2, productDisclaimerDto2, str5, bundleDto2, cartItemCustomizationDto, zY3, zY4, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartItemDto cartItemDto = (CartItemDto) obj;
        cartItemDto.getClass();
        boolean z = cartItemDto.l;
        List list = cartItemDto.f44995k;
        String str = cartItemDto.f44994j;
        boolean z2 = cartItemDto.f44993i;
        String str2 = cartItemDto.f44992h;
        String str3 = cartItemDto.g;
        String str4 = cartItemDto.f44991f;
        String str5 = cartItemDto.f44990e;
        String str6 = cartItemDto.d;
        String str7 = cartItemDto.f44989c;
        String str8 = cartItemDto.f44988b;
        String str9 = cartItemDto.f44987a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CartItemDto.w;
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 1, ProductId$$serializer.f67906a, str8 != null ? new ProductId(str8) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 2, SkuId$$serializer.f67934a, str7 != null ? new SkuId(str7) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || z2) {
            compositeEncoderB.x(serialDescriptor, 8, z2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 10, (SerializationStrategy) lazyArr[10].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 11, z);
        }
        int i2 = cartItemDto.m;
        boolean z3 = cartItemDto.v;
        boolean z4 = cartItemDto.u;
        CartItemCustomizationDto cartItemCustomizationDto = cartItemDto.t;
        BundleDto bundleDto = cartItemDto.s;
        String str10 = cartItemDto.r;
        ProductDisclaimerDto productDisclaimerDto = cartItemDto.q;
        Boolean bool = cartItemDto.p;
        Boolean bool2 = cartItemDto.o;
        compositeEncoderB.u(12, i2, serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 13, CartPriceInformationDto$$serializer.f45005a, cartItemDto.n);
        if (compositeEncoderB.o(serialDescriptor) || bool2 != null) {
            compositeEncoderB.h(serialDescriptor, 14, BooleanSerializer.f75574a, bool2);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 15, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || productDisclaimerDto != null) {
            compositeEncoderB.h(serialDescriptor, 16, ProductDisclaimerDto$$serializer.f46275a, productDisclaimerDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 17, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || bundleDto != null) {
            compositeEncoderB.h(serialDescriptor, 18, BundleDto$$serializer.f44969a, bundleDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || cartItemCustomizationDto != null) {
            compositeEncoderB.h(serialDescriptor, 19, CartItemCustomizationDto$$serializer.f44986a, cartItemCustomizationDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || z4) {
            compositeEncoderB.x(serialDescriptor, 20, z4);
        }
        if (compositeEncoderB.o(serialDescriptor) || !z3) {
            compositeEncoderB.x(serialDescriptor, 21, z3);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CartItemDto.w;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(ProductId$$serializer.f67906a);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(SkuId$$serializer.f67934a);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD5 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD6 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD7 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD8 = BuiltinSerializersKt.d(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{kSerializerD, kSerializerD2, kSerializerD3, kSerializerD4, kSerializerD5, kSerializerD6, kSerializerD7, kSerializerD8, booleanSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[10].getF71699b()), booleanSerializer, IntSerializer.f75624a, CartPriceInformationDto$$serializer.f45005a, BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(booleanSerializer), BuiltinSerializersKt.d(ProductDisclaimerDto$$serializer.f46275a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(BundleDto$$serializer.f44969a), BuiltinSerializersKt.d(CartItemCustomizationDto$$serializer.f44986a), booleanSerializer, booleanSerializer};
    }
}

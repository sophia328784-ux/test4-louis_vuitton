package com.vuitton.android.data.dto.account.checkoutconfirmationdetail;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.account.orders.TimelineDto;
import com.vuitton.android.data.dto.account.orders.TimelineDto$$serializer;
import com.vuitton.android.data.dto.address.AddressDto;
import com.vuitton.android.data.dto.address.AddressDto$$serializer;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CheckoutConfirmationDetailDto$$serializer implements GeneratedSerializer<CheckoutConfirmationDetailDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CheckoutConfirmationDetailDto$$serializer f44301a;
    private static final SerialDescriptor descriptor;

    static {
        CheckoutConfirmationDetailDto$$serializer checkoutConfirmationDetailDto$$serializer = new CheckoutConfirmationDetailDto$$serializer();
        f44301a = checkoutConfirmationDetailDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationDetailDto", checkoutConfirmationDetailDto$$serializer, 18);
        pluginGeneratedSerialDescriptor.k("orderId", false);
        pluginGeneratedSerialDescriptor.k("cartId", false);
        pluginGeneratedSerialDescriptor.k("email", true);
        pluginGeneratedSerialDescriptor.k("shippingMethod", false);
        pluginGeneratedSerialDescriptor.k("deliveryAddress", false);
        pluginGeneratedSerialDescriptor.k("billingAddress", false);
        pluginGeneratedSerialDescriptor.k("items", false);
        pluginGeneratedSerialDescriptor.k("cartPriceInfo", false);
        pluginGeneratedSerialDescriptor.k("shoppingBag", false);
        pluginGeneratedSerialDescriptor.k("giftMessage", true);
        pluginGeneratedSerialDescriptor.k("paymentMethod", false);
        pluginGeneratedSerialDescriptor.k("timeline", false);
        pluginGeneratedSerialDescriptor.k("samples", false);
        pluginGeneratedSerialDescriptor.k("isClickAndCollect", false);
        pluginGeneratedSerialDescriptor.k("displayName", true);
        pluginGeneratedSerialDescriptor.k("displayDeliveryAddress", false);
        pluginGeneratedSerialDescriptor.k("displayBillingAddress", false);
        pluginGeneratedSerialDescriptor.k("user", true);
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
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CheckoutConfirmationDetailDto.s;
        List list = null;
        List list2 = null;
        TimelineDto timelineDto = null;
        String str = null;
        List list3 = null;
        CartPriceInfoDto cartPriceInfoDto = null;
        int i3 = 0;
        CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto = null;
        String strL = null;
        String str2 = null;
        ShippingMethodDto shippingMethodDto = null;
        AddressDto addressDto = null;
        AddressDto addressDto2 = null;
        List list4 = null;
        boolean zY = false;
        String strL2 = null;
        boolean z = true;
        String strL3 = null;
        boolean zY2 = false;
        String strL4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    str2 = str2;
                    list = list;
                    break;
                case 0:
                    strL3 = compositeDecoderB.l(serialDescriptor, 0);
                    i3 |= 1;
                    str2 = str2;
                    strL = strL;
                    list = list;
                    break;
                case 1:
                    i3 |= 2;
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    str2 = str2;
                    list = list;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i3 |= 4;
                    strL = strL;
                    list = list;
                    break;
                case 3:
                    strL = strL;
                    str2 = str2;
                    shippingMethodDto = (ShippingMethodDto) compositeDecoderB.w(serialDescriptor, 3, ShippingMethodDto$$serializer.f44320a, shippingMethodDto);
                    i3 |= 8;
                    strL = strL;
                    str2 = str2;
                    break;
                case 4:
                    strL = strL;
                    str2 = str2;
                    addressDto = (AddressDto) compositeDecoderB.w(serialDescriptor, 4, AddressDto$$serializer.f44469a, addressDto);
                    i3 |= 16;
                    strL = strL;
                    str2 = str2;
                    break;
                case 5:
                    strL = strL;
                    str2 = str2;
                    addressDto2 = (AddressDto) compositeDecoderB.w(serialDescriptor, 5, AddressDto$$serializer.f44469a, addressDto2);
                    i3 |= 32;
                    strL = strL;
                    str2 = str2;
                    break;
                case 6:
                    strL = strL;
                    str2 = str2;
                    list4 = (List) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list4);
                    i3 |= 64;
                    strL = strL;
                    str2 = str2;
                    break;
                case 7:
                    strL = strL;
                    str2 = str2;
                    cartPriceInfoDto = (CartPriceInfoDto) compositeDecoderB.w(serialDescriptor, 7, CartPriceInfoDto$$serializer.f44291a, cartPriceInfoDto);
                    i3 |= 128;
                    strL = strL;
                    str2 = str2;
                    break;
                case 8:
                    zY = compositeDecoderB.y(serialDescriptor, 8);
                    i3 |= 256;
                    strL = strL;
                    break;
                case 9:
                    strL = strL;
                    str2 = str2;
                    str = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str);
                    i3 |= 512;
                    strL = strL;
                    str2 = str2;
                    break;
                case 10:
                    strL2 = compositeDecoderB.l(serialDescriptor, 10);
                    i3 |= 1024;
                    strL = strL;
                    break;
                case 11:
                    strL = strL;
                    str2 = str2;
                    timelineDto = (TimelineDto) compositeDecoderB.w(serialDescriptor, 11, TimelineDto$$serializer.f44437a, timelineDto);
                    i3 |= 2048;
                    strL = strL;
                    str2 = str2;
                    break;
                case 12:
                    strL = strL;
                    str2 = str2;
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 12, (DeserializationStrategy) lazyArr[12].getF71699b(), list2);
                    i3 |= 4096;
                    strL = strL;
                    str2 = str2;
                    break;
                case 13:
                    zY2 = compositeDecoderB.y(serialDescriptor, 13);
                    i3 |= 8192;
                    strL = strL;
                    break;
                case 14:
                    strL4 = compositeDecoderB.l(serialDescriptor, 14);
                    i3 |= 16384;
                    strL = strL;
                    break;
                case 15:
                    list = (List) compositeDecoderB.w(serialDescriptor, 15, (DeserializationStrategy) lazyArr[15].getF71699b(), list);
                    i2 = 32768;
                    i3 |= i2;
                    strL = strL;
                    str2 = str2;
                    break;
                case 16:
                    list3 = (List) compositeDecoderB.w(serialDescriptor, 16, (DeserializationStrategy) lazyArr[16].getF71699b(), list3);
                    i2 = 65536;
                    i3 |= i2;
                    strL = strL;
                    str2 = str2;
                    break;
                case 17:
                    checkoutConfirmationUserDataDto = (CheckoutConfirmationUserDataDto) compositeDecoderB.m(serialDescriptor, 17, CheckoutConfirmationUserDataDto$$serializer.f44304a, checkoutConfirmationUserDataDto);
                    i2 = 131072;
                    i3 |= i2;
                    strL = strL;
                    str2 = str2;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CheckoutConfirmationDetailDto(i3, strL3, strL, str2, shippingMethodDto, addressDto, addressDto2, list4, cartPriceInfoDto, zY, str, strL2, timelineDto, list2, zY2, strL4, list, list3, checkoutConfirmationUserDataDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CheckoutConfirmationDetailDto checkoutConfirmationDetailDto = (CheckoutConfirmationDetailDto) obj;
        checkoutConfirmationDetailDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CheckoutConfirmationDetailDto.s;
        String str = checkoutConfirmationDetailDto.f44292a;
        CheckoutConfirmationUserDataDto checkoutConfirmationUserDataDto = checkoutConfirmationDetailDto.r;
        String str2 = checkoutConfirmationDetailDto.o;
        String str3 = checkoutConfirmationDetailDto.f44299j;
        String str4 = checkoutConfirmationDetailDto.f44294c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, checkoutConfirmationDetailDto.f44293b);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        compositeEncoderB.A(serialDescriptor, 3, ShippingMethodDto$$serializer.f44320a, checkoutConfirmationDetailDto.d);
        AddressDto$$serializer addressDto$$serializer = AddressDto$$serializer.f44469a;
        compositeEncoderB.A(serialDescriptor, 4, addressDto$$serializer, checkoutConfirmationDetailDto.f44295e);
        compositeEncoderB.A(serialDescriptor, 5, addressDto$$serializer, checkoutConfirmationDetailDto.f44296f);
        compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), checkoutConfirmationDetailDto.g);
        compositeEncoderB.A(serialDescriptor, 7, CartPriceInfoDto$$serializer.f44291a, checkoutConfirmationDetailDto.f44297h);
        compositeEncoderB.x(serialDescriptor, 8, checkoutConfirmationDetailDto.f44298i);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.y(serialDescriptor, 10, checkoutConfirmationDetailDto.f44300k);
        compositeEncoderB.A(serialDescriptor, 11, TimelineDto$$serializer.f44437a, checkoutConfirmationDetailDto.l);
        compositeEncoderB.A(serialDescriptor, 12, (SerializationStrategy) lazyArr[12].getF71699b(), checkoutConfirmationDetailDto.m);
        compositeEncoderB.x(serialDescriptor, 13, checkoutConfirmationDetailDto.n);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str2, "")) {
            compositeEncoderB.y(serialDescriptor, 14, str2);
        }
        compositeEncoderB.A(serialDescriptor, 15, (SerializationStrategy) lazyArr[15].getF71699b(), checkoutConfirmationDetailDto.p);
        compositeEncoderB.A(serialDescriptor, 16, (SerializationStrategy) lazyArr[16].getF71699b(), checkoutConfirmationDetailDto.q);
        if (compositeEncoderB.o(serialDescriptor) || checkoutConfirmationUserDataDto != null) {
            compositeEncoderB.h(serialDescriptor, 17, CheckoutConfirmationUserDataDto$$serializer.f44304a, checkoutConfirmationUserDataDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CheckoutConfirmationDetailDto.s;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        AddressDto$$serializer addressDto$$serializer = AddressDto$$serializer.f44469a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), ShippingMethodDto$$serializer.f44320a, addressDto$$serializer, addressDto$$serializer, lazyArr[6].getF71699b(), CartPriceInfoDto$$serializer.f44291a, booleanSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, TimelineDto$$serializer.f44437a, lazyArr[12].getF71699b(), booleanSerializer, stringSerializer, lazyArr[15].getF71699b(), lazyArr[16].getF71699b(), BuiltinSerializersKt.d(CheckoutConfirmationUserDataDto$$serializer.f44304a)};
    }
}

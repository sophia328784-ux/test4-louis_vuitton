package com.vuitton.android.data.dto.account.orders;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/orders/ShippingGroupDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ShippingGroupDto$$serializer implements GeneratedSerializer<ShippingGroupDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ShippingGroupDto$$serializer f44433a;
    private static final SerialDescriptor descriptor;

    static {
        ShippingGroupDto$$serializer shippingGroupDto$$serializer = new ShippingGroupDto$$serializer();
        f44433a = shippingGroupDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.orders.ShippingGroupDto", shippingGroupDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("shippingGroupId", false);
        pluginGeneratedSerialDescriptor.k("shippingType", true);
        pluginGeneratedSerialDescriptor.k("invoiceLink", true);
        pluginGeneratedSerialDescriptor.k("items", false);
        pluginGeneratedSerialDescriptor.k("price", false);
        pluginGeneratedSerialDescriptor.k("delivery", true);
        pluginGeneratedSerialDescriptor.k("returnDisclaimer", true);
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
        Lazy[] lazyArr = ShippingGroupDto.f44426i;
        Object obj = null;
        boolean z = true;
        String str = null;
        String strL = null;
        String strL2 = null;
        ShippingTypeDto shippingTypeDto = null;
        String str2 = null;
        List list = null;
        OrderPriceDto orderPriceDto = null;
        DeliveryDto deliveryDto = null;
        int i2 = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    shippingTypeDto = (ShippingTypeDto) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), shippingTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str2);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    orderPriceDto = (OrderPriceDto) compositeDecoderB.w(serialDescriptor, 5, OrderPriceDto$$serializer.f44399a, orderPriceDto);
                    i2 |= 32;
                    break;
                case 6:
                    deliveryDto = (DeliveryDto) compositeDecoderB.m(serialDescriptor, 6, DeliveryDto$$serializer.f44349a, deliveryDto);
                    i2 |= 64;
                    break;
                case 7:
                    str = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ShippingGroupDto(i2, strL, strL2, shippingTypeDto, str2, list, orderPriceDto, deliveryDto, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ShippingGroupDto shippingGroupDto = (ShippingGroupDto) obj;
        shippingGroupDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ShippingGroupDto.f44426i;
        String str = shippingGroupDto.f44427a;
        String str2 = shippingGroupDto.f44432h;
        DeliveryDto deliveryDto = shippingGroupDto.g;
        String str3 = shippingGroupDto.d;
        ShippingTypeDto shippingTypeDto = shippingGroupDto.f44429c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, shippingGroupDto.f44428b);
        if (compositeEncoderB.o(serialDescriptor) || shippingTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), shippingTypeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), shippingGroupDto.f44430e);
        compositeEncoderB.A(serialDescriptor, 5, OrderPriceDto$$serializer.f44399a, shippingGroupDto.f44431f);
        if (compositeEncoderB.o(serialDescriptor) || deliveryDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, DeliveryDto$$serializer.f44349a, deliveryDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ShippingGroupDto.f44426i;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BuiltinSerializersKt.d(stringSerializer), lazyArr[4].getF71699b(), OrderPriceDto$$serializer.f44399a, BuiltinSerializersKt.d(DeliveryDto$$serializer.f44349a), BuiltinSerializersKt.d(stringSerializer)};
    }
}

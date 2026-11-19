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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/orders/OrderDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/orders/OrderDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class OrderDto$$serializer implements GeneratedSerializer<OrderDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OrderDto$$serializer f44395a;
    private static final SerialDescriptor descriptor;

    static {
        OrderDto$$serializer orderDto$$serializer = new OrderDto$$serializer();
        f44395a = orderDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.orders.OrderDto", orderDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("price", true);
        pluginGeneratedSerialDescriptor.k("purchaseDate", true);
        pluginGeneratedSerialDescriptor.k("channel", true);
        pluginGeneratedSerialDescriptor.k("shippingGroups", true);
        pluginGeneratedSerialDescriptor.k("locationId", true);
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
        Lazy[] lazyArr = OrderDto.g;
        boolean z = true;
        int i2 = 0;
        String str = null;
        OrderPriceDto orderPriceDto = null;
        String str2 = null;
        ChannelDto channelDto = null;
        List list = null;
        String str3 = null;
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
                    orderPriceDto = (OrderPriceDto) compositeDecoderB.m(serialDescriptor, 1, OrderPriceDto$$serializer.f44399a, orderPriceDto);
                    i2 |= 2;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    channelDto = (ChannelDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), channelDto);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str3);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new OrderDto(i2, str, orderPriceDto, str2, channelDto, list, str3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        OrderDto orderDto = (OrderDto) obj;
        orderDto.getClass();
        String str = orderDto.f44394f;
        List list = orderDto.f44393e;
        ChannelDto channelDto = orderDto.d;
        String str2 = orderDto.f44392c;
        OrderPriceDto orderPriceDto = orderDto.f44391b;
        String str3 = orderDto.f44390a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = OrderDto.g;
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || orderPriceDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, OrderPriceDto$$serializer.f44399a, orderPriceDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || channelDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), channelDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = OrderDto.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(OrderPriceDto$$serializer.f44399a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(stringSerializer)};
    }
}

package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import defpackage.cj;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/orders/ItemDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ItemDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ItemDto$$serializer implements GeneratedSerializer<ItemDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ItemDto$$serializer f44382a;
    private static final SerialDescriptor descriptor;

    static {
        ItemDto$$serializer itemDto$$serializer = new ItemDto$$serializer();
        f44382a = itemDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.orders.ItemDto", itemDto$$serializer, 15);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("timeline", true);
        pluginGeneratedSerialDescriptor.k("priceWithoutVAT", false);
        pluginGeneratedSerialDescriptor.k("eligibleForExchange", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("images", false);
        pluginGeneratedSerialDescriptor.k("price", false);
        pluginGeneratedSerialDescriptor.k("quantity", false);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("size", true);
        pluginGeneratedSerialDescriptor.k("isReturned", false);
        pluginGeneratedSerialDescriptor.k("eligibleForReturn", false);
        pluginGeneratedSerialDescriptor.k("disclaimer", true);
        pluginGeneratedSerialDescriptor.k("customizations", true);
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
        Lazy[] lazyArr = ItemDto.p;
        List list = null;
        boolean z = true;
        OrderPriceDto orderPriceDto = null;
        int i2 = 0;
        String str = null;
        TimelineDto timelineDto = null;
        OrderPriceDto orderPriceDto2 = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        List list2 = null;
        String strL = null;
        boolean zY = false;
        String strL2 = null;
        int iJ = 0;
        boolean zY2 = false;
        boolean zY3 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    timelineDto = (TimelineDto) compositeDecoderB.m(serialDescriptor, 1, TimelineDto$$serializer.f44437a, timelineDto);
                    i2 |= 2;
                    break;
                case 2:
                    orderPriceDto2 = (OrderPriceDto) compositeDecoderB.w(serialDescriptor, 2, OrderPriceDto$$serializer.f44399a, orderPriceDto2);
                    i2 |= 4;
                    break;
                case 3:
                    zY = compositeDecoderB.y(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    strL2 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    SkuId skuId = (SkuId) compositeDecoderB.w(serialDescriptor, 5, SkuId$$serializer.f67934a, str4 != null ? new SkuId(str4) : null);
                    str4 = skuId != null ? skuId.f67933a : null;
                    i2 |= 32;
                    break;
                case 6:
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list2);
                    i2 |= 64;
                    break;
                case 7:
                    orderPriceDto = (OrderPriceDto) compositeDecoderB.w(serialDescriptor, 7, OrderPriceDto$$serializer.f44399a, orderPriceDto);
                    i2 |= 128;
                    break;
                case 8:
                    iJ = compositeDecoderB.j(serialDescriptor, 8);
                    i2 |= 256;
                    break;
                case 9:
                    str = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str);
                    i2 |= 512;
                    break;
                case 10:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str2);
                    i2 |= 1024;
                    break;
                case 11:
                    zY2 = compositeDecoderB.y(serialDescriptor, 11);
                    i2 |= 2048;
                    break;
                case 12:
                    zY3 = compositeDecoderB.y(serialDescriptor, 12);
                    i2 |= 4096;
                    break;
                case 13:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str3);
                    i2 |= 8192;
                    break;
                case 14:
                    list = (List) compositeDecoderB.m(serialDescriptor, 14, (DeserializationStrategy) lazyArr[14].getF71699b(), list);
                    i2 |= 16384;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ItemDto(i2, strL, timelineDto, orderPriceDto2, zY, strL2, str4, list2, orderPriceDto, iJ, str, str2, zY2, zY3, str3, list, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ItemDto itemDto = (ItemDto) obj;
        itemDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ItemDto.p;
        String str = itemDto.f44373a;
        List list = itemDto.o;
        String str2 = itemDto.n;
        String str3 = itemDto.f44381k;
        String str4 = itemDto.f44380j;
        TimelineDto timelineDto = itemDto.f44374b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || timelineDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, TimelineDto$$serializer.f44437a, timelineDto);
        }
        OrderPriceDto$$serializer orderPriceDto$$serializer = OrderPriceDto$$serializer.f44399a;
        compositeEncoderB.A(serialDescriptor, 2, orderPriceDto$$serializer, itemDto.f44375c);
        compositeEncoderB.x(serialDescriptor, 3, itemDto.d);
        compositeEncoderB.y(serialDescriptor, 4, itemDto.f44376e);
        cj.B(itemDto.f44377f, compositeEncoderB, serialDescriptor, 5, SkuId$$serializer.f67934a);
        compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), itemDto.g);
        compositeEncoderB.A(serialDescriptor, 7, orderPriceDto$$serializer, itemDto.f44378h);
        compositeEncoderB.u(8, itemDto.f44379i, serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.x(serialDescriptor, 11, itemDto.l);
        compositeEncoderB.x(serialDescriptor, 12, itemDto.m);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 14, (SerializationStrategy) lazyArr[14].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ItemDto.p;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        OrderPriceDto$$serializer orderPriceDto$$serializer = OrderPriceDto$$serializer.f44399a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(TimelineDto$$serializer.f44437a), orderPriceDto$$serializer, booleanSerializer, stringSerializer, SkuId$$serializer.f67934a, lazyArr[6].getF71699b(), orderPriceDto$$serializer, IntSerializer.f75624a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), booleanSerializer, booleanSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[14].getF71699b())};
    }
}

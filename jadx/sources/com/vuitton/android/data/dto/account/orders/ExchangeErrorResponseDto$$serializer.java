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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ExchangeErrorResponseDto$$serializer implements GeneratedSerializer<ExchangeErrorResponseDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExchangeErrorResponseDto$$serializer f44365a;
    private static final SerialDescriptor descriptor;

    static {
        ExchangeErrorResponseDto$$serializer exchangeErrorResponseDto$$serializer = new ExchangeErrorResponseDto$$serializer();
        f44365a = exchangeErrorResponseDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.account.orders.ExchangeErrorResponseDto", exchangeErrorResponseDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("traceId", true);
        pluginGeneratedSerialDescriptor.k("date", true);
        pluginGeneratedSerialDescriptor.k("path", true);
        pluginGeneratedSerialDescriptor.k("statusCode", true);
        pluginGeneratedSerialDescriptor.k("error", true);
        pluginGeneratedSerialDescriptor.k("errors", true);
        pluginGeneratedSerialDescriptor.k("message", true);
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
        Lazy[] lazyArr = ExchangeErrorResponseDto.f44359h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Integer num = null;
        String str4 = null;
        List list = null;
        String str5 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 3, IntSerializer.f75624a, num);
                    i2 |= 8;
                    break;
                case 4:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str4);
                    i2 |= 16;
                    break;
                case 5:
                    list = (List) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list);
                    i2 |= 32;
                    break;
                case 6:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str5);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ExchangeErrorResponseDto(i2, str, str2, str3, num, str4, list, str5, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ExchangeErrorResponseDto exchangeErrorResponseDto = (ExchangeErrorResponseDto) obj;
        exchangeErrorResponseDto.getClass();
        String str = exchangeErrorResponseDto.g;
        List list = exchangeErrorResponseDto.f44364f;
        String str2 = exchangeErrorResponseDto.f44363e;
        Integer num = exchangeErrorResponseDto.d;
        String str3 = exchangeErrorResponseDto.f44362c;
        String str4 = exchangeErrorResponseDto.f44361b;
        String str5 = exchangeErrorResponseDto.f44360a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ExchangeErrorResponseDto.f44359h;
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 3, IntSerializer.f75624a, num);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ExchangeErrorResponseDto.f44359h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(IntSerializer.f75624a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d(stringSerializer)};
    }
}

package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/BookingDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingDto$$serializer implements GeneratedSerializer<BookingDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingDto$$serializer f44651a;
    private static final SerialDescriptor descriptor;

    static {
        BookingDto$$serializer bookingDto$$serializer = new BookingDto$$serializer();
        f44651a = bookingDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.BookingDto", bookingDto$$serializer, 13);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("experienceId", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("disclaimer", true);
        pluginGeneratedSerialDescriptor.k("cancellationDisclaimer", true);
        pluginGeneratedSerialDescriptor.k("address", true);
        pluginGeneratedSerialDescriptor.k("landscapeImage", false);
        pluginGeneratedSerialDescriptor.k("squareImage", false);
        pluginGeneratedSerialDescriptor.k("subtitle", true);
        pluginGeneratedSerialDescriptor.k("information", false);
        pluginGeneratedSerialDescriptor.k("actions", false);
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
        Lazy[] lazyArr = BookingDto.n;
        List list = null;
        String str = null;
        AssetImageDto assetImageDto = null;
        AssetImageDto assetImageDto2 = null;
        List list2 = null;
        String str2 = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        BookingTypeDto bookingTypeDto = null;
        String strL3 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    strL2 = strL2;
                    z = false;
                    strL2 = strL2;
                    break;
                case 0:
                    strL2 = strL2;
                    i2 |= 1;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    strL2 = strL2;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    strL = strL;
                    break;
                case 2:
                    bookingTypeDto = (BookingTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), bookingTypeDto);
                    i2 |= 4;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 3:
                    strL3 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    strL = strL;
                    break;
                case 4:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                    i2 |= 16;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 5:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str4);
                    i2 |= 32;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 6:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str5);
                    i2 |= 64;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 7:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                    i2 |= 128;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 8:
                    assetImageDto2 = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 8, AssetImageDto$$serializer.f45243a, assetImageDto2);
                    i2 |= 256;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 9:
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 9, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 512;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 10:
                    str = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str);
                    i2 |= 1024;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 11:
                    list = (List) compositeDecoderB.w(serialDescriptor, 11, (DeserializationStrategy) lazyArr[11].getF71699b(), list);
                    i2 |= 2048;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 12:
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 12, (DeserializationStrategy) lazyArr[12].getF71699b(), list2);
                    i2 |= 4096;
                    strL = strL;
                    strL2 = strL2;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingDto(i2, strL, strL2, bookingTypeDto, strL3, str3, str4, str5, str2, assetImageDto2, assetImageDto, str, list, list2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingDto bookingDto = (BookingDto) obj;
        bookingDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = BookingDto.n;
        String str = bookingDto.f44642a;
        String str2 = bookingDto.f44650k;
        String str3 = bookingDto.f44647h;
        String str4 = bookingDto.g;
        String str5 = bookingDto.f44646f;
        String str6 = bookingDto.f44645e;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, bookingDto.f44643b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), bookingDto.f44644c);
        compositeEncoderB.y(serialDescriptor, 3, bookingDto.d);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str3);
        }
        AssetImageDto$$serializer assetImageDto$$serializer = AssetImageDto$$serializer.f45243a;
        compositeEncoderB.A(serialDescriptor, 8, assetImageDto$$serializer, bookingDto.f44648i);
        compositeEncoderB.A(serialDescriptor, 9, assetImageDto$$serializer, bookingDto.f44649j);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 11, (SerializationStrategy) lazyArr[11].getF71699b(), bookingDto.l);
        compositeEncoderB.A(serialDescriptor, 12, (SerializationStrategy) lazyArr[12].getF71699b(), bookingDto.m);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = BookingDto.n;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        AssetImageDto$$serializer assetImageDto$$serializer = AssetImageDto$$serializer.f45243a;
        return new KSerializer[]{stringSerializer, stringSerializer, lazyArr[2].getF71699b(), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), assetImageDto$$serializer, assetImageDto$$serializer, BuiltinSerializersKt.d(stringSerializer), lazyArr[11].getF71699b(), lazyArr[12].getF71699b()};
    }
}

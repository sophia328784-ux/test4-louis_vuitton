package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import defpackage.b21;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/BookingFormResponseDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingFormResponseDto$$serializer implements GeneratedSerializer<BookingFormResponseDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingFormResponseDto$$serializer f44685a;
    private static final SerialDescriptor descriptor;

    static {
        BookingFormResponseDto$$serializer bookingFormResponseDto$$serializer = new BookingFormResponseDto$$serializer();
        f44685a = bookingFormResponseDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.BookingFormResponseDto", bookingFormResponseDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("additionalInformation", true);
        pluginGeneratedSerialDescriptor.k("dateTime", true);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("form", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("tag", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        Lazy[] lazyArr;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr2 = BookingFormResponseDto.f44676k;
        String str = null;
        BookingTypeDto bookingTypeDto = null;
        boolean z = true;
        BookingFormDto bookingFormDto = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        AssetImageDto assetImageDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    lazyArr = lazyArr2;
                    z = false;
                    break;
                case 0:
                    lazyArr = lazyArr2;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    lazyArr = lazyArr2;
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    lazyArr = lazyArr2;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    lazyArr = lazyArr2;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str3);
                    i2 |= 8;
                    break;
                case 4:
                    lazyArr = lazyArr2;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str4);
                    i2 |= 16;
                    break;
                case 5:
                    lazyArr = lazyArr2;
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str5);
                    i2 |= 32;
                    break;
                case 6:
                    lazyArr = lazyArr2;
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 6, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 64;
                    break;
                case 7:
                    lazyArr = lazyArr2;
                    bookingFormDto = (BookingFormDto) compositeDecoderB.w(serialDescriptor, 7, BookingFormDto$$serializer.f44672a, bookingFormDto);
                    i2 |= 128;
                    break;
                case 8:
                    lazyArr = lazyArr2;
                    bookingTypeDto = (BookingTypeDto) compositeDecoderB.w(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), bookingTypeDto);
                    i2 |= 256;
                    break;
                case 9:
                    lazyArr = lazyArr2;
                    str = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            lazyArr2 = lazyArr;
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingFormResponseDto(i2, strL, strL2, str2, str3, str4, str5, assetImageDto, bookingFormDto, bookingTypeDto, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingFormResponseDto bookingFormResponseDto = (BookingFormResponseDto) obj;
        bookingFormResponseDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = BookingFormResponseDto.f44676k;
        String str = bookingFormResponseDto.f44677a;
        String str2 = bookingFormResponseDto.f44684j;
        String str3 = bookingFormResponseDto.f44681f;
        String str4 = bookingFormResponseDto.f44680e;
        String str5 = bookingFormResponseDto.d;
        String str6 = bookingFormResponseDto.f44679c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, bookingFormResponseDto.f44678b);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.A(serialDescriptor, 6, AssetImageDto$$serializer.f45243a, bookingFormResponseDto.g);
        compositeEncoderB.A(serialDescriptor, 7, BookingFormDto$$serializer.f44672a, bookingFormResponseDto.f44682h);
        compositeEncoderB.A(serialDescriptor, 8, (SerializationStrategy) lazyArr[8].getF71699b(), bookingFormResponseDto.f44683i);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = BookingFormResponseDto.f44676k;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), AssetImageDto$$serializer.f45243a, BookingFormDto$$serializer.f44672a, lazyArr[8].getF71699b(), BuiltinSerializersKt.d(stringSerializer)};
    }
}

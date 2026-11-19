package com.vuitton.android.data.dto.booking;

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
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/BookingPassDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingPassDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingPassDto$$serializer implements GeneratedSerializer<BookingPassDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingPassDto$$serializer f44737a;
    private static final SerialDescriptor descriptor;

    static {
        BookingPassDto$$serializer bookingPassDto$$serializer = new BookingPassDto$$serializer();
        f44737a = bookingPassDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.BookingPassDto", bookingPassDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("surtitle", false);
        pluginGeneratedSerialDescriptor.k("thumbnail", false);
        pluginGeneratedSerialDescriptor.k("information", false);
        pluginGeneratedSerialDescriptor.k("qrCode", false);
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
        Lazy[] lazyArr = BookingPassDto.f44732f;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        AssetImageDto assetImageDto = null;
        List list = null;
        AssetImageDto assetImageDto2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                strL2 = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 2, AssetImageDto$$serializer.f45243a, assetImageDto);
                i2 |= 4;
            } else if (iN == 3) {
                list = (List) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                assetImageDto2 = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, assetImageDto2);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingPassDto(i2, strL, strL2, assetImageDto, list, assetImageDto2, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingPassDto bookingPassDto = (BookingPassDto) obj;
        bookingPassDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = BookingPassDto.f44732f;
        compositeEncoderB.y(serialDescriptor, 0, bookingPassDto.f44733a);
        compositeEncoderB.y(serialDescriptor, 1, bookingPassDto.f44734b);
        AssetImageDto$$serializer assetImageDto$$serializer = AssetImageDto$$serializer.f45243a;
        compositeEncoderB.A(serialDescriptor, 2, assetImageDto$$serializer, bookingPassDto.f44735c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), bookingPassDto.d);
        compositeEncoderB.A(serialDescriptor, 4, assetImageDto$$serializer, bookingPassDto.f44736e);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = BookingPassDto.f44732f;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        AssetImageDto$$serializer assetImageDto$$serializer = AssetImageDto$$serializer.f45243a;
        return new KSerializer[]{stringSerializer, stringSerializer, assetImageDto$$serializer, lazyArr[3].getF71699b(), assetImageDto$$serializer};
    }
}

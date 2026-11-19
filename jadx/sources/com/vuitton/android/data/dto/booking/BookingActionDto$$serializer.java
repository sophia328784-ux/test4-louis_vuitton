package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/BookingActionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingActionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingActionDto$$serializer implements GeneratedSerializer<BookingActionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingActionDto$$serializer f44623a;
    private static final SerialDescriptor descriptor;

    static {
        BookingActionDto$$serializer bookingActionDto$$serializer = new BookingActionDto$$serializer();
        f44623a = bookingActionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.BookingActionDto", bookingActionDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k(DbParams.KEY_DATA, true);
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
        Lazy[] lazyArr = BookingActionDto.f44620c;
        SerializationConstructorMarker serializationConstructorMarker = null;
        boolean z = true;
        int i2 = 0;
        BookingActionTypeDto bookingActionTypeDto = null;
        BookingCalendarDataDto bookingCalendarDataDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                bookingActionTypeDto = (BookingActionTypeDto) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), bookingActionTypeDto);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                bookingCalendarDataDto = (BookingCalendarDataDto) compositeDecoderB.m(serialDescriptor, 1, BookingCalendarDataDto$$serializer.f44632a, bookingCalendarDataDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingActionDto(i2, bookingActionTypeDto, bookingCalendarDataDto, serializationConstructorMarker);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingActionDto bookingActionDto = (BookingActionDto) obj;
        bookingActionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        SerializationStrategy serializationStrategy = (SerializationStrategy) BookingActionDto.f44620c[0].getF71699b();
        BookingActionTypeDto bookingActionTypeDto = bookingActionDto.f44621a;
        BookingCalendarDataDto bookingCalendarDataDto = bookingActionDto.f44622b;
        compositeEncoderB.A(serialDescriptor, 0, serializationStrategy, bookingActionTypeDto);
        if (compositeEncoderB.o(serialDescriptor) || bookingCalendarDataDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, BookingCalendarDataDto$$serializer.f44632a, bookingCalendarDataDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BookingActionDto.f44620c[0].getF71699b(), BuiltinSerializersKt.d(BookingCalendarDataDto$$serializer.f44632a)};
    }
}

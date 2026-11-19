package com.vuitton.android.data.dto.booking;

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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/BookingFormStepDataDto.MultipleTextDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingFormStepDataDto$MultipleTextDataDto$$serializer implements GeneratedSerializer<BookingFormStepDataDto.MultipleTextDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingFormStepDataDto$MultipleTextDataDto$$serializer f44702a;
    private static final SerialDescriptor descriptor;

    static {
        BookingFormStepDataDto$MultipleTextDataDto$$serializer bookingFormStepDataDto$MultipleTextDataDto$$serializer = new BookingFormStepDataDto$MultipleTextDataDto$$serializer();
        f44702a = bookingFormStepDataDto$MultipleTextDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.BookingFormStepDataDto.MultipleTextDataDto", bookingFormStepDataDto$MultipleTextDataDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("categories", false);
        pluginGeneratedSerialDescriptor.k("freeTyping", true);
        pluginGeneratedSerialDescriptor.k("filledDisplayName", false);
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
        Lazy[] lazyArr = BookingFormStepDataDto.MultipleTextDataDto.f44699e;
        boolean z = true;
        int i2 = 0;
        List list = null;
        BookingFormFreeTypingDto bookingFormFreeTypingDto = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                bookingFormFreeTypingDto = (BookingFormFreeTypingDto) compositeDecoderB.m(serialDescriptor, 1, BookingFormFreeTypingDto$$serializer.f44675a, bookingFormFreeTypingDto);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                strL = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingFormStepDataDto.MultipleTextDataDto(i2, list, bookingFormFreeTypingDto, strL, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingFormStepDataDto.MultipleTextDataDto multipleTextDataDto = (BookingFormStepDataDto.MultipleTextDataDto) obj;
        multipleTextDataDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        SerializationStrategy serializationStrategy = (SerializationStrategy) BookingFormStepDataDto.MultipleTextDataDto.f44699e[0].getF71699b();
        List list = multipleTextDataDto.f44700b;
        BookingFormFreeTypingDto bookingFormFreeTypingDto = multipleTextDataDto.f44701c;
        compositeEncoderB.A(serialDescriptor, 0, serializationStrategy, list);
        if (compositeEncoderB.o(serialDescriptor) || bookingFormFreeTypingDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, BookingFormFreeTypingDto$$serializer.f44675a, bookingFormFreeTypingDto);
        }
        compositeEncoderB.y(serialDescriptor, 2, multipleTextDataDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BookingFormStepDataDto.MultipleTextDataDto.f44699e[0].getF71699b(), BuiltinSerializersKt.d(BookingFormFreeTypingDto$$serializer.f44675a), StringSerializer.f75684a};
    }
}

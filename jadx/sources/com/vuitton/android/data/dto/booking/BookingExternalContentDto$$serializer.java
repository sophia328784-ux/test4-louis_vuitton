package com.vuitton.android.data.dto.booking;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/BookingExternalContentDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingExternalContentDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class BookingExternalContentDto$$serializer implements GeneratedSerializer<BookingExternalContentDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingExternalContentDto$$serializer f44655a;
    private static final SerialDescriptor descriptor;

    static {
        BookingExternalContentDto$$serializer bookingExternalContentDto$$serializer = new BookingExternalContentDto$$serializer();
        f44655a = bookingExternalContentDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.BookingExternalContentDto", bookingExternalContentDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.DOWNLOAD_PLUGIN_URL, false);
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
        Lazy[] lazyArr = BookingExternalContentDto.f44652c;
        boolean z = true;
        int i2 = 0;
        BookingExternalContentTypeDto bookingExternalContentTypeDto = null;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                bookingExternalContentTypeDto = (BookingExternalContentTypeDto) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), bookingExternalContentTypeDto);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new BookingExternalContentDto(i2, bookingExternalContentTypeDto, strL, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BookingExternalContentDto bookingExternalContentDto = (BookingExternalContentDto) obj;
        bookingExternalContentDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) BookingExternalContentDto.f44652c[0].getF71699b(), bookingExternalContentDto.f44653a);
        compositeEncoderB.y(serialDescriptor, 1, bookingExternalContentDto.f44654b);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BookingExternalContentDto.f44652c[0].getF71699b(), StringSerializer.f75684a};
    }
}

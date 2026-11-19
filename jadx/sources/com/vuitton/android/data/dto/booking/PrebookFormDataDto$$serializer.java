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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/PrebookFormDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PrebookFormDataDto$$serializer implements GeneratedSerializer<PrebookFormDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PrebookFormDataDto$$serializer f44773a;
    private static final SerialDescriptor descriptor;

    static {
        PrebookFormDataDto$$serializer prebookFormDataDto$$serializer = new PrebookFormDataDto$$serializer();
        f44773a = prebookFormDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.PrebookFormDataDto", prebookFormDataDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("experienceId", false);
        pluginGeneratedSerialDescriptor.k("prebookId", true);
        pluginGeneratedSerialDescriptor.k("bookingId", true);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("form", false);
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
        Lazy[] lazyArr = PrebookFormDataDto.f44768f;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String str = null;
        String str2 = null;
        BookingTypeDto bookingTypeDto = null;
        PrebookFormDto prebookFormDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                i2 |= 2;
            } else if (iN == 2) {
                str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                i2 |= 4;
            } else if (iN == 3) {
                bookingTypeDto = (BookingTypeDto) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), bookingTypeDto);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                prebookFormDto = (PrebookFormDto) compositeDecoderB.w(serialDescriptor, 4, PrebookFormDto$$serializer.f44778a, prebookFormDto);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new PrebookFormDataDto(i2, strL, str, str2, bookingTypeDto, prebookFormDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PrebookFormDataDto prebookFormDataDto = (PrebookFormDataDto) obj;
        prebookFormDataDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = PrebookFormDataDto.f44768f;
        String str = prebookFormDataDto.f44769a;
        String str2 = prebookFormDataDto.f44771c;
        String str3 = prebookFormDataDto.f44770b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), prebookFormDataDto.d);
        compositeEncoderB.A(serialDescriptor, 4, PrebookFormDto$$serializer.f44778a, prebookFormDataDto.f44772e);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = PrebookFormDataDto.f44768f;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), lazyArr[3].getF71699b(), PrebookFormDto$$serializer.f44778a};
    }
}

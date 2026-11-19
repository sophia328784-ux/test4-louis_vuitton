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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/PreBookDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/PreBookDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PreBookDto$$serializer implements GeneratedSerializer<PreBookDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreBookDto$$serializer f44758a;
    private static final SerialDescriptor descriptor;

    static {
        PreBookDto$$serializer preBookDto$$serializer = new PreBookDto$$serializer();
        f44758a = preBookDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.PreBookDto", preBookDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("experienceId", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("information", false);
        pluginGeneratedSerialDescriptor.k("disclaimer", true);
        pluginGeneratedSerialDescriptor.k("expirationDate", true);
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
        Lazy[] lazyArr = PreBookDto.f44750j;
        String str = null;
        boolean z = true;
        String str2 = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        BookingTypeDto bookingTypeDto = null;
        String strL3 = null;
        String str3 = null;
        AssetImageDto assetImageDto = null;
        List list = null;
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
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    bookingTypeDto = (BookingTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), bookingTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    strL3 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                    i2 |= 16;
                    break;
                case 5:
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 5, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 32;
                    break;
                case 6:
                    list = (List) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list);
                    i2 |= 64;
                    break;
                case 7:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new PreBookDto(i2, strL, strL2, bookingTypeDto, strL3, str3, assetImageDto, list, str2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PreBookDto preBookDto = (PreBookDto) obj;
        preBookDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = PreBookDto.f44750j;
        String str = preBookDto.f44751a;
        String str2 = preBookDto.f44757i;
        String str3 = preBookDto.f44756h;
        String str4 = preBookDto.f44754e;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, preBookDto.f44752b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), preBookDto.f44753c);
        compositeEncoderB.y(serialDescriptor, 3, preBookDto.d);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str4);
        }
        compositeEncoderB.A(serialDescriptor, 5, AssetImageDto$$serializer.f45243a, preBookDto.f44755f);
        compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), preBookDto.g);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = PreBookDto.f44750j;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, lazyArr[2].getF71699b(), stringSerializer, BuiltinSerializersKt.d(stringSerializer), AssetImageDto$$serializer.f45243a, lazyArr[6].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}

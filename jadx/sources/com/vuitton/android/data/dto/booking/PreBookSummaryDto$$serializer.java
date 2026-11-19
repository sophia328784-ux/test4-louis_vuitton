package com.vuitton.android.data.dto.booking;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.PriceDto;
import com.vuitton.android.data.dto.pdp.PriceDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/booking/PreBookSummaryDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PreBookSummaryDto$$serializer implements GeneratedSerializer<PreBookSummaryDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreBookSummaryDto$$serializer f44763a;
    private static final SerialDescriptor descriptor;

    static {
        PreBookSummaryDto$$serializer preBookSummaryDto$$serializer = new PreBookSummaryDto$$serializer();
        f44763a = preBookSummaryDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.booking.PreBookSummaryDto", preBookSummaryDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("prebooks", false);
        pluginGeneratedSerialDescriptor.k("additional", false);
        pluginGeneratedSerialDescriptor.k("priceInfo", false);
        pluginGeneratedSerialDescriptor.k("freeLabel", true);
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
        Lazy[] lazyArr = PreBookSummaryDto.f44759e;
        boolean z = true;
        int i2 = 0;
        List list = null;
        List list2 = null;
        PriceDto priceDto = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                list2 = (List) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list2);
                i2 |= 2;
            } else if (iN == 2) {
                priceDto = (PriceDto) compositeDecoderB.w(serialDescriptor, 2, PriceDto$$serializer.f46236a, priceDto);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new PreBookSummaryDto(i2, list, list2, priceDto, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PreBookSummaryDto preBookSummaryDto = (PreBookSummaryDto) obj;
        preBookSummaryDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = PreBookSummaryDto.f44759e;
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[0].getF71699b();
        List list = preBookSummaryDto.f44760a;
        String str = preBookSummaryDto.d;
        compositeEncoderB.A(serialDescriptor, 0, serializationStrategy, list);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), preBookSummaryDto.f44761b);
        compositeEncoderB.A(serialDescriptor, 2, PriceDto$$serializer.f46236a, preBookSummaryDto.f44762c);
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = PreBookSummaryDto.f44759e;
        return new KSerializer[]{lazyArr[0].getF71699b(), lazyArr[1].getF71699b(), PriceDto$$serializer.f46236a, BuiltinSerializersKt.d(StringSerializer.f75684a)};
    }
}

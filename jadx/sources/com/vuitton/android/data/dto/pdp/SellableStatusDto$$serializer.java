package com.vuitton.android.data.dto.pdp;

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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/SellableStatusDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SellableStatusDto$$serializer implements GeneratedSerializer<SellableStatusDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SellableStatusDto$$serializer f46299a;
    private static final SerialDescriptor descriptor;

    static {
        SellableStatusDto$$serializer sellableStatusDto$$serializer = new SellableStatusDto$$serializer();
        f46299a = sellableStatusDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.SellableStatusDto", sellableStatusDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("sellable", true);
        pluginGeneratedSerialDescriptor.k("price", true);
        pluginGeneratedSerialDescriptor.k("reason", true);
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
        Lazy[] lazyArr = SellableStatusDto.d;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        PriceDto priceDto = null;
        NotSellableReasonDto notSellableReasonDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                zY = compositeDecoderB.y(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                priceDto = (PriceDto) compositeDecoderB.m(serialDescriptor, 1, PriceDto$$serializer.f46236a, priceDto);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                notSellableReasonDto = (NotSellableReasonDto) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), notSellableReasonDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SellableStatusDto(i2, zY, priceDto, notSellableReasonDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SellableStatusDto sellableStatusDto = (SellableStatusDto) obj;
        sellableStatusDto.getClass();
        NotSellableReasonDto notSellableReasonDto = sellableStatusDto.f46298c;
        PriceDto priceDto = sellableStatusDto.f46297b;
        boolean z = sellableStatusDto.f46296a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SellableStatusDto.d;
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 0, z);
        }
        if (compositeEncoderB.o(serialDescriptor) || priceDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, PriceDto$$serializer.f46236a, priceDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || notSellableReasonDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), notSellableReasonDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BooleanSerializer.f75574a, BuiltinSerializersKt.d(PriceDto$$serializer.f46236a), BuiltinSerializersKt.d((KSerializer) SellableStatusDto.d[2].getF71699b())};
    }
}

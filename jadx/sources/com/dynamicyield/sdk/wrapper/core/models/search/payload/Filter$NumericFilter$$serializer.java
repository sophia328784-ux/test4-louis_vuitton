package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/search/payload/Filter.NumericFilter.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$NumericFilter;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class Filter$NumericFilter$$serializer implements GeneratedSerializer<Filter.NumericFilter> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Filter$NumericFilter$$serializer f26389a;
    private static final SerialDescriptor descriptor;

    static {
        Filter$NumericFilter$$serializer filter$NumericFilter$$serializer = new Filter$NumericFilter$$serializer();
        f26389a = filter$NumericFilter$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.search.payload.Filter.NumericFilter", filter$NumericFilter$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("field", false);
        pluginGeneratedSerialDescriptor.k("min", true);
        pluginGeneratedSerialDescriptor.k("max", true);
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
        boolean z = true;
        int i2 = 0;
        String strL = null;
        Float f2 = null;
        Float f3 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                f2 = (Float) compositeDecoderB.m(serialDescriptor, 1, FloatSerializer.f75616a, f2);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                f3 = (Float) compositeDecoderB.m(serialDescriptor, 2, FloatSerializer.f75616a, f3);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new Filter.NumericFilter(i2, strL, f2, f3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Filter.NumericFilter numericFilter = (Filter.NumericFilter) obj;
        numericFilter.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = numericFilter.f26386a;
        Float f2 = numericFilter.f26388c;
        Float f3 = numericFilter.f26387b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || f3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, FloatSerializer.f75616a, f3);
        }
        if (compositeEncoderB.o(serialDescriptor) || f2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, FloatSerializer.f75616a, f2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        FloatSerializer floatSerializer = FloatSerializer.f75616a;
        return new KSerializer[]{StringSerializer.f75684a, BuiltinSerializersKt.d(floatSerializer), BuiltinSerializersKt.d(floatSerializer)};
    }
}

package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import com.dynamicyield.sdk.wrapper.core.models.choose.payload.RecsProductDataOptions;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.RecsProductDataOptions$$serializer;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SearchOptions;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SearchOptions$$serializer implements GeneratedSerializer<SearchOptions> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SearchOptions$$serializer f26409a;
    private static final SerialDescriptor descriptor;

    static {
        SearchOptions$$serializer searchOptions$$serializer = new SearchOptions$$serializer();
        f26409a = searchOptions$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.search.payload.SearchOptions", searchOptions$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("returnAnalyticsMetadata", true);
        pluginGeneratedSerialDescriptor.k("productData", true);
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
        Boolean bool = null;
        RecsProductDataOptions recsProductDataOptions = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                bool = (Boolean) compositeDecoderB.m(serialDescriptor, 0, BooleanSerializer.f75574a, bool);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                recsProductDataOptions = (RecsProductDataOptions) compositeDecoderB.m(serialDescriptor, 1, RecsProductDataOptions$$serializer.f26036a, recsProductDataOptions);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SearchOptions(i2, bool, recsProductDataOptions, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SearchOptions searchOptions = (SearchOptions) obj;
        searchOptions.getClass();
        RecsProductDataOptions recsProductDataOptions = searchOptions.f26408b;
        Boolean bool = searchOptions.f26407a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 0, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || recsProductDataOptions != null) {
            compositeEncoderB.h(serialDescriptor, 1, RecsProductDataOptions$$serializer.f26036a, recsProductDataOptions);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(BooleanSerializer.f75574a), BuiltinSerializersKt.d(RecsProductDataOptions$$serializer.f26036a)};
    }
}

package com.dynamicyield.sdk.wrapper.core.models.search.payload;

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

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/search/payload/Filter.StringFilter.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Filter$StringFilter;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class Filter$StringFilter$$serializer implements GeneratedSerializer<Filter.StringFilter> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Filter$StringFilter$$serializer f26393a;
    private static final SerialDescriptor descriptor;

    static {
        Filter$StringFilter$$serializer filter$StringFilter$$serializer = new Filter$StringFilter$$serializer();
        f26393a = filter$StringFilter$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.search.payload.Filter.StringFilter", filter$StringFilter$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("field", false);
        pluginGeneratedSerialDescriptor.k("values", false);
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
        Lazy[] lazyArr = Filter.StringFilter.f26390c;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new Filter.StringFilter(i2, strL, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Filter.StringFilter stringFilter = (Filter.StringFilter) obj;
        stringFilter.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = Filter.StringFilter.f26390c;
        compositeEncoderB.y(serialDescriptor, 0, stringFilter.f26391a);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), stringFilter.f26392b);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, Filter.StringFilter.f26390c[1].getF71699b()};
    }
}

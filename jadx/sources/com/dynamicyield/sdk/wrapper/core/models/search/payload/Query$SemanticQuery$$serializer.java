package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.SortOptionsSerializer;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/search/payload/Query.SemanticQuery.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class Query$SemanticQuery$$serializer implements GeneratedSerializer<Query.SemanticQuery> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Query$SemanticQuery$$serializer f26402a;
    private static final SerialDescriptor descriptor;

    static {
        Query$SemanticQuery$$serializer query$SemanticQuery$$serializer = new Query$SemanticQuery$$serializer();
        f26402a = query$SemanticQuery$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.search.payload.Query.SemanticQuery", query$SemanticQuery$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("text", false);
        pluginGeneratedSerialDescriptor.k("filters", true);
        pluginGeneratedSerialDescriptor.k("pagination", false);
        pluginGeneratedSerialDescriptor.k("sortBy", true);
        pluginGeneratedSerialDescriptor.k("enableSpellCheck", true);
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
        Lazy[] lazyArr = Query.SemanticQuery.f26397f;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        String strL = null;
        List list = null;
        Pagination pagination = null;
        SortOptions sortOptions = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                list = (List) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list);
                i2 |= 2;
            } else if (iN == 2) {
                pagination = (Pagination) compositeDecoderB.w(serialDescriptor, 2, Pagination$$serializer.f26396a, pagination);
                i2 |= 4;
            } else if (iN == 3) {
                sortOptions = (SortOptions) compositeDecoderB.m(serialDescriptor, 3, SortOptionsSerializer.f25989a, sortOptions);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                zY = compositeDecoderB.y(serialDescriptor, 4);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new Query.SemanticQuery(i2, strL, list, pagination, sortOptions, zY, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Query.SemanticQuery semanticQuery = (Query.SemanticQuery) obj;
        semanticQuery.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = Query.SemanticQuery.f26397f;
        String str = semanticQuery.f26398a;
        boolean z = semanticQuery.f26401e;
        SortOptions sortOptions = semanticQuery.d;
        List list = semanticQuery.f26399b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), list);
        }
        compositeEncoderB.A(serialDescriptor, 2, Pagination$$serializer.f26396a, semanticQuery.f26400c);
        if (compositeEncoderB.o(serialDescriptor) || sortOptions != null) {
            compositeEncoderB.h(serialDescriptor, 3, SortOptionsSerializer.f25989a, sortOptions);
        }
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 4, z);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, BuiltinSerializersKt.d((KSerializer) Query.SemanticQuery.f26397f[1].getF71699b()), Pagination$$serializer.f26396a, BuiltinSerializersKt.d(SortOptionsSerializer.f25989a), BooleanSerializer.f75574a};
    }
}

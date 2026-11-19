package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.search.payload.Query;
import defpackage.v40;
import defpackage.yn0;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/QuerySerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuerySerializer implements KSerializer<Query> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final QuerySerializer f25980a = new QuerySerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25981b = SerialDescriptorsKt.c("Query", new SerialDescriptor[0], new yn0(16));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25981b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Query query = (Query) obj;
        query.getClass();
        if (query instanceof Query.SemanticQuery) {
            encoder.d(Query.SemanticQuery.INSTANCE.serializer(), query);
        } else if (query instanceof Query.VisualQuery) {
            encoder.d(Query.VisualQuery.INSTANCE.serializer(), query);
        } else {
            v40.g();
        }
    }
}

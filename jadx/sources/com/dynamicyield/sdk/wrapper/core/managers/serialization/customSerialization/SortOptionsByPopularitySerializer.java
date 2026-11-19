package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.search.payload.SortOptions;
import defpackage.md;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/SortOptionsByPopularitySerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/SortOptions$ByPopularity;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SortOptionsByPopularitySerializer implements KSerializer<SortOptions.ByPopularity> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SortOptionsByPopularitySerializer f25987a = new SortOptionsByPopularitySerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25988b = SerialDescriptorsKt.d("ByPopularity", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25988b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SortOptions.ByPopularity byPopularity = (SortOptions.ByPopularity) obj;
        byPopularity.getClass();
        if (!(encoder instanceof JsonEncoder)) {
            md.n("This serializer can be used only with Json format");
            return;
        }
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        jsonObjectBuilder.a("field", JsonElementKt.a(byPopularity.f26416b));
        String lowerCase = byPopularity.f26415a.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        jsonObjectBuilder.a("order", JsonElementKt.a(lowerCase));
        ((JsonEncoder) encoder).j(new JsonObject(jsonObjectBuilder.f75757a));
    }
}

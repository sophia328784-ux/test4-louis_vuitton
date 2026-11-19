package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.search.response.Facet;
import com.dynamicyield.sdk.wrapper.core.models.search.response.NumberFacet;
import com.dynamicyield.sdk.wrapper.core.models.search.response.StringFacet;
import com.dynamicyield.sdk.wrapper.core.models.search.response.StringFacetValue;
import defpackage.iv;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.internal.TreeJsonDecoderKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FacetSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/response/Facet;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacetSerializer implements KSerializer<Facet> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FacetSerializer f25967a = new FacetSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25968b = SerialDescriptorsKt.c("Facet", new SerialDescriptor[0], new iv(20));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25968b;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00d0  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        String strF;
        String strF2;
        String strF3;
        List list;
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            throw new SerializationException("This class can be loaded only by JSON");
        }
        JsonElement jsonElementH = jsonDecoder.h();
        jsonElementH.getClass();
        JsonObject jsonObject = (JsonObject) jsonElementH;
        JsonElement jsonElement = (JsonElement) jsonObject.get("column");
        if (jsonElement == null || (strF = JsonElementKt.d(jsonElement).f()) == null) {
            throw new SerializationException("Missing column");
        }
        JsonElement jsonElement2 = (JsonElement) jsonObject.get("displayName");
        if (jsonElement2 == null || (strF2 = JsonElementKt.d(jsonElement2).f()) == null) {
            throw new SerializationException("Missing displayName");
        }
        JsonElement jsonElement3 = (JsonElement) jsonObject.get("valuesType");
        if (jsonElement3 == null || (strF3 = JsonElementKt.d(jsonElement3).f()) == null) {
            throw new SerializationException("Missing valuesType");
        }
        String lowerCase = strF3.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        if (lowerCase.equals("number")) {
            JsonElement jsonElement4 = (JsonElement) jsonObject.get("min");
            if (jsonElement4 == null) {
                throw new SerializationException("Missing min for number facet");
            }
            float f2 = Float.parseFloat(JsonElementKt.d(jsonElement4).f());
            JsonElement jsonElement5 = (JsonElement) jsonObject.get("max");
            if (jsonElement5 != null) {
                return new NumberFacet(strF, strF2, f2, Float.parseFloat(JsonElementKt.d(jsonElement5).f()));
            }
            throw new SerializationException("Missing max for number facet");
        }
        if (!lowerCase.equals("string")) {
            throw new SerializationException("Unknown valuesType: ".concat(strF3));
        }
        JsonElement jsonElement6 = (JsonElement) jsonObject.get("values");
        if (jsonElement6 != null) {
            Json f75815a = jsonDecoder.getF75815a();
            ArrayListSerializer arrayListSerializerB = BuiltinSerializersKt.b(StringFacetValue.INSTANCE.serializer());
            f75815a.getClass();
            list = (List) TreeJsonDecoderKt.a(f75815a, jsonElement6, arrayListSerializerB);
            if (list == null) {
                list = EmptyList.f71768b;
            }
        } else {
            list = EmptyList.f71768b;
        }
        return new StringFacet(strF, strF2, list);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((Facet) obj).getClass();
        throw new SerializationException("Not implement yet the serialize for Facet");
    }
}

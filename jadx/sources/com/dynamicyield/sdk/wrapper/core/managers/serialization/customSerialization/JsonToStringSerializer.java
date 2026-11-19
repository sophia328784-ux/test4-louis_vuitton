package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\bÇ\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/JsonToStringSerializer;", "Lkotlinx/serialization/KSerializer;", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonToStringSerializer implements KSerializer<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonToStringSerializer f25971a = new JsonToStringSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f25972b = SerialDescriptorsKt.a("JsonToString", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19850b() {
        return f25972b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder == null) {
            return null;
        }
        JsonElement jsonElementH = jsonDecoder.h();
        return jsonElementH instanceof JsonPrimitive ? ((JsonPrimitive) jsonElementH).getD() : jsonElementH.toString();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        String str = (String) obj;
        if (str == null) {
            str = "";
        }
        encoder.E(str);
    }
}

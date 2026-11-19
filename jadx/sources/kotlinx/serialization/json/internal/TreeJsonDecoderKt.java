package kotlinx.serialization.json.internal;

import defpackage.v40;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TreeJsonDecoderKt {
    public static final Object a(Json json, JsonElement jsonElement, DeserializationStrategy deserializationStrategy) {
        Decoder jsonPrimitiveDecoder;
        deserializationStrategy.getClass();
        if (jsonElement instanceof JsonObject) {
            jsonPrimitiveDecoder = new JsonTreeDecoder(json, (JsonObject) jsonElement, null, null, 12, null);
        } else if (jsonElement instanceof JsonArray) {
            jsonPrimitiveDecoder = new JsonTreeListDecoder(json, (JsonArray) jsonElement);
        } else {
            if (!(jsonElement instanceof JsonLiteral) && !jsonElement.equals(JsonNull.INSTANCE)) {
                v40.g();
                return null;
            }
            jsonPrimitiveDecoder = new JsonPrimitiveDecoder(json, (JsonPrimitive) jsonElement, null, 4, null);
        }
        return jsonPrimitiveDecoder.D(deserializationStrategy);
    }

    public static final Object b(Json json, String str, JsonObject jsonObject, DeserializationStrategy deserializationStrategy) {
        json.getClass();
        str.getClass();
        return new JsonTreeDecoder(json, jsonObject, str, deserializationStrategy.getF19838b()).D(deserializationStrategy);
    }
}

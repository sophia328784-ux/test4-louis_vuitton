package kotlinx.serialization.json;

import defpackage.v40;
import defpackage.x20;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/json/JsonElementSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonElementSerializer implements KSerializer<JsonElement> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonElementSerializer f75746a = new JsonElementSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f75747b = SerialDescriptorsKt.e("kotlinx.serialization.json.JsonElement", PolymorphicKind.SEALED.f75537a, new SerialDescriptor[0], new x20(15));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19850b() {
        return f75747b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        return JsonElementSerializersKt.b(decoder).h();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        jsonElement.getClass();
        JsonElementSerializersKt.a(encoder);
        if (jsonElement instanceof JsonPrimitive) {
            encoder.d(JsonPrimitiveSerializer.f75763a, jsonElement);
            return;
        }
        if (jsonElement instanceof JsonObject) {
            encoder.d(JsonObjectSerializer.f75758a, jsonElement);
        } else if (jsonElement instanceof JsonArray) {
            encoder.d(JsonArraySerializer.f75720a, jsonElement);
        } else {
            v40.g();
        }
    }
}

package kotlinx.serialization.json;

import defpackage.cj;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.JsonExceptionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/json/JsonPrimitiveSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonPrimitive;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonPrimitiveSerializer implements KSerializer<JsonPrimitive> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonPrimitiveSerializer f75763a = new JsonPrimitiveSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f75764b = SerialDescriptorsKt.f("kotlinx.serialization.json.JsonPrimitive", PrimitiveKind.STRING.f75546a, new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75764b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        JsonElement jsonElementH = JsonElementSerializersKt.b(decoder).h();
        if (jsonElementH instanceof JsonPrimitive) {
            return (JsonPrimitive) jsonElementH;
        }
        StringBuilder sb = new StringBuilder("Unexpected JSON element, expected JsonPrimitive, had ");
        throw JsonExceptionsKt.e(cj.l(Reflection.f71922a, jsonElementH.getClass(), sb), jsonElementH.toString(), -1);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        jsonPrimitive.getClass();
        JsonElementSerializersKt.a(encoder);
        if (jsonPrimitive instanceof JsonNull) {
            encoder.d(JsonNullSerializer.f75754a, JsonNull.INSTANCE);
        } else {
            encoder.d(JsonLiteralSerializer.f75751a, (JsonLiteral) jsonPrimitive);
        }
    }
}

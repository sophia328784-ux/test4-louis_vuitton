package kotlinx.serialization.json;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.InlineClassDescriptorKt;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.internal.AbstractJsonLexer;
import kotlinx.serialization.json.internal.StringJsonLexer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class JsonElementKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InlineClassDescriptor f75745a;

    static {
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        f75745a = InlineClassDescriptorKt.a("kotlinx.serialization.json.JsonUnquotedLiteral", StringSerializer.f75684a);
    }

    public static final JsonPrimitive a(String str) {
        if (str == null) {
            return JsonNull.INSTANCE;
        }
        return new JsonLiteral(str, true, null, 4, null);
    }

    public static final void b(JsonElement jsonElement, String str) {
        throw new IllegalArgumentException("Element " + Reflection.f71922a.b(jsonElement.getClass()) + " is not a " + str);
    }

    public static final JsonObject c(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonObject jsonObject = jsonElement instanceof JsonObject ? (JsonObject) jsonElement : null;
        if (jsonObject != null) {
            return jsonObject;
        }
        b(jsonElement, "JsonObject");
        throw null;
    }

    public static final JsonPrimitive d(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        b(jsonElement, "JsonPrimitive");
        throw null;
    }

    public static final long e(JsonPrimitive jsonPrimitive) {
        StringJsonLexer stringJsonLexer = new StringJsonLexer(jsonPrimitive.getD());
        long jH = stringJsonLexer.h();
        if (stringJsonLexer.e() == 10) {
            return jH;
        }
        int i2 = stringJsonLexer.f75765a;
        int i3 = i2 - 1;
        String str = stringJsonLexer.f75832e;
        AbstractJsonLexer.m(stringJsonLexer, fc.h("Expected input to contain a single valid number, but got '", (i2 == str.length() || i3 < 0) ? "EOF" : String.valueOf(str.charAt(i3)), "' after it"), i3, null, 4);
        throw null;
    }
}

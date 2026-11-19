package kotlinx.serialization.json.internal;

import defpackage.a;
import defpackage.n00;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.text.StringsKt;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.NamedValueDecoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u00012\u00020\u0002\u0082\u0001\u0003\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;", "Lkotlinx/serialization/internal/NamedValueDecoder;", "Lkotlinx/serialization/json/JsonDecoder;", "Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;", "Lkotlinx/serialization/json/internal/JsonTreeDecoder;", "Lkotlinx/serialization/json/internal/JsonTreeListDecoder;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class AbstractJsonTreeDecoder extends NamedValueDecoder implements JsonDecoder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f75768c;
    public final JsonElement d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f75769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final JsonConfiguration f75770f;

    public AbstractJsonTreeDecoder(Json json, JsonElement jsonElement, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f75768c = json;
        this.d = jsonElement;
        this.f75769e = str;
        this.f75770f = json.f75716a;
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    /* JADX INFO: renamed from: A, reason: from getter */
    public final Json getF75768c() {
        return this.f75768c;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Object D(DeserializationStrategy deserializationStrategy) {
        deserializationStrategy.getClass();
        if (deserializationStrategy instanceof AbstractPolymorphicSerializer) {
            Json json = this.f75768c;
            if (!json.f75716a.f75740i) {
                AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) deserializationStrategy;
                String strA = PolymorphicKt.a(abstractPolymorphicSerializer.getF19838b(), json);
                JsonElement jsonElementY = Y();
                String f75659a = abstractPolymorphicSerializer.getF19838b().getF75659a();
                if (!(jsonElementY instanceof JsonObject)) {
                    StringBuilder sb = new StringBuilder("Expected ");
                    ReflectionFactory reflectionFactory = Reflection.f71922a;
                    sb.append(reflectionFactory.b(JsonObject.class).B());
                    sb.append(", but had ");
                    sb.append(reflectionFactory.b(jsonElementY.getClass()).B());
                    sb.append(" as the serialized body of ");
                    sb.append(f75659a);
                    sb.append(" at element: ");
                    sb.append(W());
                    throw JsonExceptionsKt.e(sb.toString(), jsonElementY.toString(), -1);
                }
                JsonObject jsonObject = (JsonObject) jsonElementY;
                JsonElement jsonElement = (JsonElement) jsonObject.get(strA);
                String d = null;
                if (jsonElement != null) {
                    JsonPrimitive jsonPrimitiveD = JsonElementKt.d(jsonElement);
                    if (!(jsonPrimitiveD instanceof JsonNull)) {
                        d = jsonPrimitiveD.getD();
                    }
                }
                try {
                    return TreeJsonDecoderKt.b(json, strA, jsonObject, PolymorphicSerializerKt.a((AbstractPolymorphicSerializer) deserializationStrategy, this, d));
                } catch (SerializationException e2) {
                    String message = e2.getMessage();
                    message.getClass();
                    throw JsonExceptionsKt.e(message, jsonObject.toString(), -1);
                }
            }
        }
        return deserializationStrategy.b(this);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final boolean F(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of boolean at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.f75745a;
            Boolean boolB = StringOpsKt.b(jsonPrimitive.getD());
            if (boolB != null) {
                return boolB.booleanValue();
            }
            b0(jsonPrimitive, "boolean", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "boolean", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final byte G(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of byte at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            long jE = JsonElementKt.e(jsonPrimitive);
            Byte bValueOf = (-128 > jE || jE > 127) ? null : Byte.valueOf((byte) jE);
            if (bValueOf != null) {
                return bValueOf.byteValue();
            }
            b0(jsonPrimitive, "byte", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "byte", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final char H(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of char at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            String d = jsonPrimitive.getD();
            d.getClass();
            int length = d.length();
            if (length == 0) {
                throw new NoSuchElementException("Char sequence is empty.");
            }
            if (length == 1) {
                return d.charAt(0);
            }
            throw new IllegalArgumentException("Char sequence has more than one element.");
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "char", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final double I(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of double at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.f75745a;
            double d = Double.parseDouble(jsonPrimitive.getD());
            if (this.f75768c.f75716a.f75742k || Math.abs(d) <= Double.MAX_VALUE) {
                return d;
            }
            throw JsonExceptionsKt.a(str, Double.valueOf(d), Y().toString());
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "double", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final int J(Object obj, SerialDescriptor serialDescriptor) {
        String str = (String) obj;
        str.getClass();
        serialDescriptor.getClass();
        JsonElement jsonElementX = X(str);
        String f75659a = serialDescriptor.getF75659a();
        if (jsonElementX instanceof JsonPrimitive) {
            return JsonNamesMapKt.d(serialDescriptor, this.f75768c, ((JsonPrimitive) jsonElementX).getD(), "");
        }
        StringBuilder sb = new StringBuilder("Expected ");
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        sb.append(reflectionFactory.b(JsonPrimitive.class).B());
        sb.append(", but had ");
        sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
        a.B(sb, " as the serialized body of ", f75659a, " at element: ");
        sb.append(a0(str));
        throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final float K(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of float at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            InlineClassDescriptor inlineClassDescriptor = JsonElementKt.f75745a;
            float f2 = Float.parseFloat(jsonPrimitive.getD());
            if (this.f75768c.f75716a.f75742k || Math.abs(f2) <= Float.MAX_VALUE) {
                return f2;
            }
            throw JsonExceptionsKt.a(str, Float.valueOf(f2), Y().toString());
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "float", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final Decoder L(Object obj, SerialDescriptor serialDescriptor) {
        String str = (String) obj;
        str.getClass();
        serialDescriptor.getClass();
        if (!StreamingJsonEncoderKt.a(serialDescriptor)) {
            this.f75686a.add(str);
            return this;
        }
        JsonElement jsonElementX = X(str);
        String f75659a = serialDescriptor.getF75659a();
        if (jsonElementX instanceof JsonPrimitive) {
            String d = ((JsonPrimitive) jsonElementX).getD();
            Json json = this.f75768c;
            json.getClass();
            d.getClass();
            return new JsonDecoderForUnsignedTypes(!json.f75716a.p ? new StringJsonLexer(d) : new StringJsonLexerWithComments(d), json);
        }
        StringBuilder sb = new StringBuilder("Expected ");
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        sb.append(reflectionFactory.b(JsonPrimitive.class).B());
        sb.append(", but had ");
        sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
        a.B(sb, " as the serialized body of ", f75659a, " at element: ");
        sb.append(a0(str));
        throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final int M(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of int at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            long jE = JsonElementKt.e(jsonPrimitive);
            Integer numValueOf = (-2147483648L > jE || jE > 2147483647L) ? null : Integer.valueOf((int) jE);
            if (numValueOf != null) {
                return numValueOf.intValue();
            }
            b0(jsonPrimitive, "int", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "int", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final long N(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (jsonElementX instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
            try {
                return JsonElementKt.e(jsonPrimitive);
            } catch (IllegalArgumentException unused) {
                b0(jsonPrimitive, "long", str);
                throw null;
            }
        }
        StringBuilder sb = new StringBuilder("Expected ");
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        sb.append(reflectionFactory.b(JsonPrimitive.class).B());
        sb.append(", but had ");
        sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
        sb.append(" as the serialized body of long at element: ");
        sb.append(a0(str));
        throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final boolean O(Object obj) {
        return X((String) obj) != JsonNull.INSTANCE;
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final short P(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of short at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        try {
            long jE = JsonElementKt.e(jsonPrimitive);
            Short shValueOf = (-32768 > jE || jE > 32767) ? null : Short.valueOf((short) jE);
            if (shValueOf != null) {
                return shValueOf.shortValue();
            }
            b0(jsonPrimitive, "short", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            b0(jsonPrimitive, "short", str);
            throw null;
        }
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder
    public final String Q(Object obj) {
        String str = (String) obj;
        str.getClass();
        JsonElement jsonElementX = X(str);
        if (!(jsonElementX instanceof JsonPrimitive)) {
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonPrimitive.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementX.getClass()).B());
            sb.append(" as the serialized body of string at element: ");
            sb.append(a0(str));
            throw JsonExceptionsKt.e(sb.toString(), jsonElementX.toString(), -1);
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElementX;
        if (!(jsonPrimitive instanceof JsonLiteral)) {
            StringBuilder sbR = pq0.r("Expected string value for a non-null key '", str, "', got null literal instead at element: ");
            sbR.append(a0(str));
            throw JsonExceptionsKt.e(sbR.toString(), Y().toString(), -1);
        }
        JsonLiteral jsonLiteral = (JsonLiteral) jsonPrimitive;
        if (jsonLiteral.f75749b || this.f75768c.f75716a.f75736c) {
            return jsonLiteral.d;
        }
        throw JsonExceptionsKt.e(n00.r(a0(str), ".\nUse 'isLenient = true' in 'Json {}' builder to accept non-compliant JSON.", pq0.r("String literal for key '", str, "' should be quoted at element: ")), Y().toString(), -1);
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    public final String U(String str, String str2) {
        return str2;
    }

    public abstract JsonElement X(String str);

    public final JsonElement Y() {
        JsonElement jsonElementX;
        String str = (String) CollectionsKt.N(this.f75686a);
        return (str == null || (jsonElementX = X(str)) == null) ? getD() : jsonElementX;
    }

    /* JADX INFO: renamed from: Z, reason: from getter */
    public JsonElement getD() {
        return this.d;
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    /* JADX INFO: renamed from: a */
    public final SerializersModule getF75784b() {
        return this.f75768c.f75717b;
    }

    public final String a0(String str) {
        str.getClass();
        return W() + JwtParser.SEPARATOR_CHAR + str;
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public CompositeDecoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        JsonElement jsonElementY = Y();
        SerialKind f75548b = serialDescriptor.getF75548b();
        boolean zC = Intrinsics.c(f75548b, StructureKind.LIST.f75565a);
        Json json = this.f75768c;
        if (zC || (f75548b instanceof PolymorphicKind)) {
            String f75659a = serialDescriptor.getF75659a();
            if (jsonElementY instanceof JsonArray) {
                return new JsonTreeListDecoder(json, (JsonArray) jsonElementY);
            }
            StringBuilder sb = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            sb.append(reflectionFactory.b(JsonArray.class).B());
            sb.append(", but had ");
            sb.append(reflectionFactory.b(jsonElementY.getClass()).B());
            sb.append(" as the serialized body of ");
            sb.append(f75659a);
            sb.append(" at element: ");
            sb.append(W());
            throw JsonExceptionsKt.e(sb.toString(), jsonElementY.toString(), -1);
        }
        boolean zC2 = Intrinsics.c(f75548b, StructureKind.MAP.f75566a);
        Json json2 = this.f75768c;
        if (!zC2) {
            String f75659a2 = serialDescriptor.getF75659a();
            if (jsonElementY instanceof JsonObject) {
                return new JsonTreeDecoder(json2, (JsonObject) jsonElementY, this.f75769e, null, 8, null);
            }
            StringBuilder sb2 = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory2 = Reflection.f71922a;
            sb2.append(reflectionFactory2.b(JsonObject.class).B());
            sb2.append(", but had ");
            sb2.append(reflectionFactory2.b(jsonElementY.getClass()).B());
            sb2.append(" as the serialized body of ");
            sb2.append(f75659a2);
            sb2.append(" at element: ");
            sb2.append(W());
            throw JsonExceptionsKt.e(sb2.toString(), jsonElementY.toString(), -1);
        }
        SerialDescriptor serialDescriptorA = WriteModeKt.a(serialDescriptor.h(0), json2.f75717b);
        SerialKind f75548b2 = serialDescriptorA.getF75548b();
        if ((f75548b2 instanceof PrimitiveKind) || Intrinsics.c(f75548b2, SerialKind.ENUM.f75563a)) {
            String f75659a3 = serialDescriptor.getF75659a();
            if (jsonElementY instanceof JsonObject) {
                return new JsonTreeMapDecoder(json, (JsonObject) jsonElementY);
            }
            StringBuilder sb3 = new StringBuilder("Expected ");
            ReflectionFactory reflectionFactory3 = Reflection.f71922a;
            sb3.append(reflectionFactory3.b(JsonObject.class).B());
            sb3.append(", but had ");
            sb3.append(reflectionFactory3.b(jsonElementY.getClass()).B());
            sb3.append(" as the serialized body of ");
            sb3.append(f75659a3);
            sb3.append(" at element: ");
            sb3.append(W());
            throw JsonExceptionsKt.e(sb3.toString(), jsonElementY.toString(), -1);
        }
        if (!json2.f75716a.d) {
            throw JsonExceptionsKt.c(serialDescriptorA);
        }
        String f75659a4 = serialDescriptor.getF75659a();
        if (jsonElementY instanceof JsonArray) {
            return new JsonTreeListDecoder(json, (JsonArray) jsonElementY);
        }
        StringBuilder sb4 = new StringBuilder("Expected ");
        ReflectionFactory reflectionFactory4 = Reflection.f71922a;
        sb4.append(reflectionFactory4.b(JsonArray.class).B());
        sb4.append(", but had ");
        sb4.append(reflectionFactory4.b(jsonElementY.getClass()).B());
        sb4.append(" as the serialized body of ");
        sb4.append(f75659a4);
        sb4.append(" at element: ");
        sb4.append(W());
        throw JsonExceptionsKt.e(sb4.toString(), jsonElementY.toString(), -1);
    }

    public final void b0(JsonPrimitive jsonPrimitive, String str, String str2) {
        throw JsonExceptionsKt.e("Failed to parse literal '" + jsonPrimitive + "' as " + (StringsKt.P(str, "i", false) ? "an " : "a ").concat(str) + " value at element: " + a0(str2), Y().toString(), -1);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final JsonElement h() {
        return Y();
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public final Decoder o(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (CollectionsKt.N(this.f75686a) != null) {
            return L(T(), serialDescriptor);
        }
        return new JsonPrimitiveDecoder(this.f75768c, getD(), this.f75769e).o(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public boolean z() {
        return !(Y() instanceof JsonNull);
    }

    public /* synthetic */ AbstractJsonTreeDecoder(Json json, JsonElement jsonElement, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, jsonElement, (i2 & 4) != 0 ? null : str, null);
    }
}

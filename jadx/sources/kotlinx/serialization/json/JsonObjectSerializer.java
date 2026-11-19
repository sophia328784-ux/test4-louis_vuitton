package kotlinx.serialization.json;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.LinkedHashMapClassDesc;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/serialization/json/JsonObjectSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonObject;", "JsonObjectDescriptor", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonObjectSerializer implements KSerializer<JsonObject> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonObjectSerializer f75758a = new JsonObjectSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptor f75759b = JsonObjectDescriptor.f75760b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class JsonObjectDescriptor implements SerialDescriptor {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final JsonObjectDescriptor f75760b = new JsonObjectDescriptor();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f75761c = "kotlinx.serialization.json.JsonObject";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ LinkedHashMapClassDesc f75762a;

        public JsonObjectDescriptor() {
            BuiltinSerializersKt.e(StringCompanionObject.f71926a);
            this.f75762a = BuiltinSerializersKt.c(StringSerializer.f75684a, JsonElementSerializer.f75746a).f75629c;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean b() {
            this.f75762a.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int c(String str) {
            str.getClass();
            return this.f75762a.c(str);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: d */
        public final int getF75661c() {
            this.f75762a.getClass();
            return 2;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: e */
        public final SerialKind getF75548b() {
            this.f75762a.getClass();
            return StructureKind.MAP.f75566a;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final String f(int i2) {
            this.f75762a.getClass();
            return String.valueOf(i2);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List g(int i2) {
            return this.f75762a.g(i2);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: getAnnotations */
        public final List getD() {
            this.f75762a.getClass();
            return EmptyList.f71768b;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final SerialDescriptor h(int i2) {
            return this.f75762a.h(i2);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: i */
        public final String getF75659a() {
            return f75761c;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: isInline */
        public final boolean getL() {
            this.f75762a.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean j(int i2) {
            this.f75762a.j(i2);
            return false;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75759b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        JsonElementSerializersKt.b(decoder);
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        return new JsonObject((Map) BuiltinSerializersKt.c(StringSerializer.f75684a, JsonElementSerializer.f75746a).b(decoder));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        JsonObject jsonObject = (JsonObject) obj;
        jsonObject.getClass();
        JsonElementSerializersKt.a(encoder);
        BuiltinSerializersKt.e(StringCompanionObject.f71926a);
        BuiltinSerializersKt.c(StringSerializer.f75684a, JsonElementSerializer.f75746a).c(encoder, jsonObject);
    }
}

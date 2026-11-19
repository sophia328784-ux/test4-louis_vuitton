package kotlinx.serialization.json;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListClassDesc;
import kotlinx.serialization.internal.ArrayListSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/serialization/json/JsonArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonArray;", "JsonArrayDescriptor", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonArraySerializer implements KSerializer<JsonArray> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonArraySerializer f75720a = new JsonArraySerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptor f75721b = JsonArrayDescriptor.f75722b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class JsonArrayDescriptor implements SerialDescriptor {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final JsonArrayDescriptor f75722b = new JsonArrayDescriptor();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f75723c = "kotlinx.serialization.json.JsonArray";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ArrayListClassDesc f75724a = new ArrayListSerializer(JsonElementSerializer.f75746a).f75570b;

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean b() {
            this.f75724a.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int c(String str) {
            str.getClass();
            return this.f75724a.c(str);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: d */
        public final int getF75661c() {
            this.f75724a.getClass();
            return 1;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: e */
        public final SerialKind getF75548b() {
            this.f75724a.getClass();
            return StructureKind.LIST.f75565a;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final String f(int i2) {
            this.f75724a.getClass();
            return String.valueOf(i2);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List g(int i2) {
            return this.f75724a.g(i2);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: getAnnotations */
        public final List getD() {
            this.f75724a.getClass();
            return EmptyList.f71768b;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final SerialDescriptor h(int i2) {
            return this.f75724a.h(i2);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: i */
        public final String getF75659a() {
            return f75723c;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        /* JADX INFO: renamed from: isInline */
        public final boolean getL() {
            this.f75724a.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean j(int i2) {
            this.f75724a.j(i2);
            return false;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75721b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        JsonElementSerializersKt.b(decoder);
        return new JsonArray((List) new ArrayListSerializer(JsonElementSerializer.f75746a).j(decoder));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        JsonArray jsonArray = (JsonArray) obj;
        jsonArray.getClass();
        JsonElementSerializersKt.a(encoder);
        new ArrayListSerializer(JsonElementSerializer.f75746a).c(encoder, jsonArray);
    }
}

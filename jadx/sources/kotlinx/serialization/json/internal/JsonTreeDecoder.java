package kotlinx.serialization.json.internal;

import defpackage.pq0;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0012\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeDecoder;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/JsonObject;", "value", "", "polymorphicDiscriminator", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "polyDescriptor", "<init>", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
class JsonTreeDecoder extends AbstractJsonTreeDecoder {
    public final JsonObject g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SerialDescriptor f75798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f75799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f75800j;

    public /* synthetic */ JsonTreeDecoder(Json json, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, jsonObject, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    public String V(SerialDescriptor serialDescriptor, int i2) {
        Object next;
        serialDescriptor.getClass();
        Json json = this.f75768c;
        JsonNamingStrategy jsonNamingStrategyF = JsonNamesMapKt.f(serialDescriptor, json);
        String strF = serialDescriptor.f(i2);
        if (jsonNamingStrategyF != null || (this.f75770f.l && !getF75803k().f75756b.keySet().contains(strF))) {
            Map mapB = JsonNamesMapKt.b(serialDescriptor, json);
            Iterator it = getF75803k().f75756b.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer num = (Integer) mapB.get((String) next);
                if (num != null && num.intValue() == i2) {
                    break;
                }
            }
            String str = (String) next;
            if (str != null) {
                return str;
            }
            String strA = jsonNamingStrategyF != null ? jsonNamingStrategyF.a() : null;
            if (strA != null) {
                return strA;
            }
        }
        return strF;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonElement X(String str) {
        str.getClass();
        return (JsonElement) MapsKt.d(getF75803k(), str);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder b(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        SerialDescriptor serialDescriptor2 = this.f75798h;
        if (serialDescriptor != serialDescriptor2) {
            return super.b(serialDescriptor);
        }
        JsonElement jsonElementY = Y();
        String f75659a = serialDescriptor2.getF75659a();
        if (jsonElementY instanceof JsonObject) {
            String str = this.f75769e;
            return new JsonTreeDecoder(this.f75768c, (JsonObject) jsonElementY, str, serialDescriptor2);
        }
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

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void c(SerialDescriptor serialDescriptor) {
        Set setF;
        serialDescriptor.getClass();
        Json json = this.f75768c;
        if (JsonNamesMapKt.e(serialDescriptor, json) || (serialDescriptor.getF75548b() instanceof PolymorphicKind)) {
            return;
        }
        JsonNamingStrategy jsonNamingStrategyF = JsonNamesMapKt.f(serialDescriptor, json);
        if (jsonNamingStrategyF == null && !this.f75770f.l) {
            setF = Platform_commonKt.a(serialDescriptor);
        } else if (jsonNamingStrategyF != null) {
            setF = JsonNamesMapKt.b(serialDescriptor, json).keySet();
        } else {
            Set setA = Platform_commonKt.a(serialDescriptor);
            DescriptorSchemaCache descriptorSchemaCache = json.f75718c;
            DescriptorSchemaCache.Key key = JsonNamesMapKt.f75787a;
            descriptorSchemaCache.getClass();
            key.getClass();
            Map map = (Map) descriptorSchemaCache.f75782a.get(serialDescriptor);
            Object obj = map != null ? map.get(key) : null;
            if (obj == null) {
                obj = null;
            }
            Map map2 = (Map) obj;
            Set setKeySet = map2 != null ? map2.keySet() : null;
            if (setKeySet == null) {
                setKeySet = EmptySet.f71770b;
            }
            setF = SetsKt.f(setA, setKeySet);
        }
        for (String str : getF75803k().f75756b.keySet()) {
            if (!setF.contains(str) && !Intrinsics.c(str, this.f75769e)) {
                StringBuilder sbR = pq0.r("Encountered an unknown key '", str, "' at element: ");
                sbR.append(W());
                sbR.append("\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.\nJSON input: ");
                sbR.append((Object) JsonExceptionsKt.g(getF75803k().toString(), -1));
                throw JsonExceptionsKt.d(-1, sbR.toString());
            }
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    /* JADX INFO: renamed from: c0, reason: from getter */
    public JsonObject getD() {
        return this.g;
    }

    public final boolean d0(SerialDescriptor serialDescriptor, int i2) {
        boolean z = (this.f75768c.f75716a.f75738f || serialDescriptor.j(i2) || !serialDescriptor.h(i2).b()) ? false : true;
        this.f75800j = z;
        return z;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int n(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        while (this.f75799i < serialDescriptor.getF75661c()) {
            int i2 = this.f75799i;
            this.f75799i = i2 + 1;
            String strV = V(serialDescriptor, i2);
            strV.getClass();
            int i3 = this.f75799i - 1;
            this.f75800j = false;
            if (getF75803k().containsKey(strV) || d0(serialDescriptor, i3)) {
                if (this.f75770f.f75739h) {
                    boolean zJ = serialDescriptor.j(i3);
                    SerialDescriptor serialDescriptorH = serialDescriptor.h(i3);
                    if (!zJ || serialDescriptorH.b() || !(((JsonElement) getF75803k().get(strV)) instanceof JsonNull)) {
                        if (Intrinsics.c(serialDescriptorH.getF75548b(), SerialKind.ENUM.f75563a) && (!serialDescriptorH.b() || !(((JsonElement) getF75803k().get(strV)) instanceof JsonNull))) {
                            JsonElement jsonElement = (JsonElement) getF75803k().get(strV);
                            String d = null;
                            JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
                            if (jsonPrimitive != null) {
                                InlineClassDescriptor inlineClassDescriptor = JsonElementKt.f75745a;
                                if (!(jsonPrimitive instanceof JsonNull)) {
                                    d = jsonPrimitive.getD();
                                }
                            }
                            if (d != null) {
                                Json json = this.f75768c;
                                int iC = JsonNamesMapKt.c(serialDescriptorH, json, d);
                                boolean z = !json.f75716a.f75738f && serialDescriptorH.b();
                                if (iC != -3 || ((!zJ && !z) || d0(serialDescriptor, i3))) {
                                }
                            }
                        }
                    }
                }
                return i3;
            }
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.internal.TaggedDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean z() {
        return !this.f75800j && super.z();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeDecoder(Json json, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor) {
        super(json, jsonObject, str, null);
        json.getClass();
        jsonObject.getClass();
        this.g = jsonObject;
        this.f75798h = serialDescriptor;
    }
}

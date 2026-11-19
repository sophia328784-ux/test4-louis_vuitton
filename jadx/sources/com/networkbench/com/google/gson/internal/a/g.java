package com.networkbench.com.google.gson.internal.a;

import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonElement;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.JsonSyntaxException;
import com.networkbench.com.google.gson.TypeAdapter;
import com.networkbench.com.google.gson.TypeAdapterFactory;
import com.networkbench.com.google.gson.internal.C$Gson$Types;
import com.networkbench.com.google.gson.internal.ConstructorConstructor;
import com.networkbench.com.google.gson.internal.JsonReaderInternalAccess;
import com.networkbench.com.google.gson.internal.ObjectConstructor;
import com.networkbench.com.google.gson.internal.Streams;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.networkbench.com.google.gson.stream.JsonReader;
import com.networkbench.com.google.gson.stream.JsonToken;
import com.networkbench.com.google.gson.stream.JsonWriter;
import defpackage.a61;
import defpackage.cj;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements TypeAdapterFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConstructorConstructor f38652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f38653b;

    public g(ConstructorConstructor constructorConstructor, boolean z) {
        this.f38652a = constructorConstructor;
        this.f38653b = z;
    }

    private TypeAdapter<?> a(Gson gson, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? m.f38683f : gson.getAdapter(TypeToken.get(type));
    }

    @Override // com.networkbench.com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        if (!Map.class.isAssignableFrom(typeToken.getRawType())) {
            return null;
        }
        Type[] mapKeyAndValueTypes = C$Gson$Types.getMapKeyAndValueTypes(type, C$Gson$Types.getRawType(type));
        return new a(gson, mapKeyAndValueTypes[0], a(gson, mapKeyAndValueTypes[0]), mapKeyAndValueTypes[1], gson.getAdapter(TypeToken.get(mapKeyAndValueTypes[1])), this.f38652a.get(typeToken));
    }

    public final class a<K, V> extends TypeAdapter<Map<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TypeAdapter<K> f38655b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TypeAdapter<V> f38656c;
        private final ObjectConstructor<? extends Map<K, V>> d;

        public a(Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, ObjectConstructor<? extends Map<K, V>> objectConstructor) {
            this.f38655b = new l(gson, typeAdapter, type);
            this.f38656c = new l(gson, typeAdapter2, type2);
            this.d = objectConstructor;
        }

        @Override // com.networkbench.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
            if (map == null) {
                jsonWriter.nullValue();
                return;
            }
            if (!g.this.f38653b) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.f38656c.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i2 = 0;
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                JsonElement jsonTree = this.f38655b.toJsonTree(entry2.getKey());
                arrayList.add(jsonTree);
                arrayList2.add(entry2.getValue());
                z |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
            }
            if (!z) {
                jsonWriter.beginObject();
                while (i2 < arrayList.size()) {
                    jsonWriter.name(a((JsonElement) arrayList.get(i2)));
                    this.f38656c.write(jsonWriter, (V) arrayList2.get(i2));
                    i2++;
                }
                jsonWriter.endObject();
                return;
            }
            jsonWriter.beginArray();
            while (i2 < arrayList.size()) {
                jsonWriter.beginArray();
                Streams.write((JsonElement) arrayList.get(i2), jsonWriter);
                this.f38656c.write(jsonWriter, (V) arrayList2.get(i2));
                jsonWriter.endArray();
                i2++;
            }
            jsonWriter.endArray();
        }

        @Override // com.networkbench.com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<K, V> read(JsonReader jsonReader) throws IOException {
            JsonToken jsonTokenPeek = jsonReader.peek();
            if (jsonTokenPeek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> mapConstruct = this.d.construct();
            if (jsonTokenPeek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K k2 = this.f38655b.read(jsonReader);
                    if (mapConstruct.put(k2, this.f38656c.read(jsonReader)) == null) {
                        jsonReader.endArray();
                    } else {
                        throw new JsonSyntaxException(cj.i(k2, "duplicate key: "));
                    }
                }
                jsonReader.endArray();
                return mapConstruct;
            }
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                JsonReaderInternalAccess.INSTANCE.promoteNameToValue(jsonReader);
                K k3 = this.f38655b.read(jsonReader);
                if (mapConstruct.put(k3, this.f38656c.read(jsonReader)) != null) {
                    throw new JsonSyntaxException(cj.i(k3, "duplicate key: "));
                }
            }
            jsonReader.endObject();
            return mapConstruct;
        }

        private String a(JsonElement jsonElement) {
            if (jsonElement.isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                if (asJsonPrimitive.isNumber()) {
                    return String.valueOf(asJsonPrimitive.getAsNumber());
                }
                if (asJsonPrimitive.isBoolean()) {
                    return Boolean.toString(asJsonPrimitive.getAsBoolean());
                }
                if (asJsonPrimitive.isString()) {
                    return asJsonPrimitive.getAsString();
                }
                a61.h();
                return null;
            }
            if (jsonElement.isJsonNull()) {
                return "null";
            }
            a61.h();
            return null;
        }
    }
}

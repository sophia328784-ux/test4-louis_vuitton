package com.squareup.moshi;

import com.squareup.moshi.internal.Util;
import defpackage.ct0;
import defpackage.md;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class MapJsonAdapter<K, V> extends JsonAdapter<Map<K, V>> {
    public static final JsonAdapter.Factory FACTORY = new AnonymousClass1();
    private final JsonAdapter<K> keyAdapter;
    private final JsonAdapter<V> valueAdapter;

    /* JADX INFO: renamed from: com.squareup.moshi.MapJsonAdapter$1, reason: invalid class name */
    public class AnonymousClass1 implements JsonAdapter.Factory {
        @Override // com.squareup.moshi.JsonAdapter.Factory
        public final JsonAdapter create(Type type, Set set, Moshi moshi) {
            Class clsC;
            Type[] actualTypeArguments;
            if (!set.isEmpty() || (clsC = Types.c(type)) != Map.class) {
                return null;
            }
            if (type == Properties.class) {
                actualTypeArguments = new Type[]{String.class, String.class};
            } else {
                if (!Map.class.isAssignableFrom(clsC)) {
                    ct0.c();
                    return null;
                }
                Type typeH = Util.h(type, clsC, Util.d(type, clsC, Map.class), new LinkedHashSet());
                actualTypeArguments = typeH instanceof ParameterizedType ? ((ParameterizedType) typeH).getActualTypeArguments() : new Type[]{Object.class, Object.class};
            }
            return new MapJsonAdapter(moshi, actualTypeArguments[0], actualTypeArguments[1]).nullSafe();
        }
    }

    public MapJsonAdapter(Moshi moshi, Type type, Type type2) {
        moshi.getClass();
        Set set = Util.f43424a;
        this.keyAdapter = moshi.b(type, set);
        this.valueAdapter = moshi.b(type2, set);
    }

    @Override // com.squareup.moshi.JsonAdapter
    public Map<K, V> fromJson(JsonReader jsonReader) throws IOException {
        LinkedHashTreeMap linkedHashTreeMap = new LinkedHashTreeMap();
        jsonReader.j();
        while (jsonReader.o()) {
            jsonReader.C();
            K kFromJson = this.keyAdapter.fromJson(jsonReader);
            V vFromJson = this.valueAdapter.fromJson(jsonReader);
            Object objPut = linkedHashTreeMap.put(kFromJson, vFromJson);
            if (objPut != null) {
                StringBuilder sb = new StringBuilder("Map key '");
                sb.append(kFromJson);
                String strN = jsonReader.n();
                sb.append("' has multiple values at path ");
                sb.append(strN);
                sb.append(": ");
                sb.append(objPut);
                sb.append(" and ");
                sb.append(vFromJson);
                throw new JsonDataException(sb.toString());
            }
        }
        jsonReader.m();
        return linkedHashTreeMap;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter jsonWriter, Map<K, V> map) throws IOException {
        jsonWriter.k();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (entry.getKey() == null) {
                throw new JsonDataException("Map key is null at ".concat(jsonWriter.p()));
            }
            int iT = jsonWriter.t();
            if (iT != 5 && iT != 3) {
                md.k("Nesting problem.");
                return;
            } else {
                jsonWriter.f43380i = true;
                this.keyAdapter.toJson(jsonWriter, entry.getKey());
                this.valueAdapter.toJson(jsonWriter, entry.getValue());
            }
        }
        jsonWriter.o();
    }

    public String toString() {
        return "JsonAdapter(" + this.keyAdapter + "=" + this.valueAdapter + ")";
    }
}

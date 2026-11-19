package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import defpackage.a61;
import defpackage.cj;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes3.dex */
public final class h implements com.perfectcorp.thirdparty.com.google.gson.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.com.google.gson.internal.b f42478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f42479b;

    public final class a<K, V> extends com.perfectcorp.thirdparty.com.google.gson.k<Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.k f42480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.k f42481b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.com.google.gson.internal.x f42482c;

        public a(Gson gson, Type type, com.perfectcorp.thirdparty.com.google.gson.k<K> kVar, Type type2, com.perfectcorp.thirdparty.com.google.gson.k<V> kVar2, com.perfectcorp.thirdparty.com.google.gson.internal.x<? extends Map<K, V>> xVar) {
            this.f42480a = new o(gson, kVar, type);
            this.f42481b = new o(gson, kVar2, type2);
            this.f42482c = xVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
            com.perfectcorp.thirdparty.com.google.gson.stream.c cVarW = aVar.w();
            if (cVarW == com.perfectcorp.thirdparty.com.google.gson.stream.c.f42572i) {
                aVar.C();
                return null;
            }
            Map map = (Map) this.f42482c.a();
            com.perfectcorp.thirdparty.com.google.gson.stream.c cVar = com.perfectcorp.thirdparty.com.google.gson.stream.c.f42566a;
            com.perfectcorp.thirdparty.com.google.gson.k kVar = this.f42481b;
            com.perfectcorp.thirdparty.com.google.gson.k kVar2 = this.f42480a;
            if (cVarW != cVar) {
                aVar.r();
                while (aVar.u()) {
                    com.perfectcorp.thirdparty.com.google.gson.internal.r.f42535a.a(aVar);
                    Object objA = ((o) kVar2).f42506b.a(aVar);
                    if (map.put(objA, ((o) kVar).f42506b.a(aVar)) != null) {
                        throw new com.perfectcorp.thirdparty.com.google.gson.j(cj.i(objA, "duplicate key: "));
                    }
                }
                aVar.t();
                return map;
            }
            aVar.h();
            while (aVar.u()) {
                aVar.h();
                Object objA2 = ((o) kVar2).f42506b.a(aVar);
                if (map.put(objA2, ((o) kVar).f42506b.a(aVar)) != null) {
                    throw new com.perfectcorp.thirdparty.com.google.gson.j(cj.i(objA2, "duplicate key: "));
                }
                aVar.o();
            }
            aVar.o();
            return map;
        }

        @Override // com.perfectcorp.thirdparty.com.google.gson.k
        public final void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
            String strN;
            Map map = (Map) obj;
            if (map == null) {
                dVar.y();
                return;
            }
            boolean z = h.this.f42479b;
            com.perfectcorp.thirdparty.com.google.gson.k kVar = this.f42481b;
            if (!z) {
                dVar.t();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    dVar.o(String.valueOf(entry.getKey()));
                    kVar.b(dVar, entry.getValue());
                }
                dVar.w();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i2 = 0;
            boolean z2 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                K key = entry2.getKey();
                com.perfectcorp.thirdparty.com.google.gson.k kVar2 = this.f42480a;
                kVar2.getClass();
                try {
                    f fVar = new f();
                    kVar2.b(fVar, key);
                    JsonElement jsonElementE = fVar.E();
                    arrayList.add(jsonElementE);
                    arrayList2.add(entry2.getValue());
                    jsonElementE.getClass();
                    z2 |= (jsonElementE instanceof JsonArray) || (jsonElementE instanceof JsonObject);
                } catch (IOException e2) {
                    throw new com.perfectcorp.thirdparty.com.google.gson.h(e2);
                }
            }
            if (z2) {
                dVar.q();
                while (i2 < arrayList.size()) {
                    dVar.q();
                    com.perfectcorp.thirdparty.com.google.gson.internal.z.b((JsonElement) arrayList.get(i2), dVar);
                    kVar.b(dVar, arrayList2.get(i2));
                    dVar.s();
                    i2++;
                }
                dVar.s();
                return;
            }
            dVar.t();
            while (i2 < arrayList.size()) {
                JsonElement jsonElement = (JsonElement) arrayList.get(i2);
                jsonElement.getClass();
                if (jsonElement instanceof JsonPrimitive) {
                    JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
                    Object obj2 = jsonPrimitive.f42456b;
                    if (obj2 instanceof Number) {
                        strN = String.valueOf(jsonPrimitive.o());
                    } else if (obj2 instanceof Boolean) {
                        strN = Boolean.toString(jsonPrimitive.r());
                    } else {
                        if (!(obj2 instanceof String)) {
                            a61.h();
                            return;
                        }
                        strN = jsonPrimitive.n();
                    }
                } else {
                    if (!(jsonElement instanceof JsonNull)) {
                        a61.h();
                        return;
                    }
                    strN = "null";
                }
                dVar.o(strN);
                kVar.b(dVar, arrayList2.get(i2));
                i2++;
            }
            dVar.w();
        }
    }

    public h(com.perfectcorp.thirdparty.com.google.gson.internal.b bVar, boolean z) {
        this.f42478a = bVar;
        this.f42479b = z;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.l
    public final com.perfectcorp.thirdparty.com.google.gson.k a(Gson gson, TypeToken typeToken) {
        Type[] actualTypeArguments;
        Type type = typeToken.f42556b;
        if (!Map.class.isAssignableFrom(typeToken.f42555a)) {
            return null;
        }
        Class clsE = com.perfectcorp.thirdparty.com.google.gson.internal.a.e(type);
        if (type == Properties.class) {
            actualTypeArguments = new Type[]{String.class, String.class};
        } else {
            CLShare3DRelatedClasses.c(Map.class.isAssignableFrom(clsE));
            Type typeB = com.perfectcorp.thirdparty.com.google.gson.internal.a.b(type, clsE, com.perfectcorp.thirdparty.com.google.gson.internal.a.a(type, clsE, Map.class));
            actualTypeArguments = typeB instanceof ParameterizedType ? ((ParameterizedType) typeB).getActualTypeArguments() : new Type[]{Object.class, Object.class};
        }
        Type type2 = actualTypeArguments[0];
        return new a(gson, actualTypeArguments[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? p.f42508a : gson.a(new TypeToken(type2)), actualTypeArguments[1], gson.a(new TypeToken(actualTypeArguments[1])), this.f42478a.a(typeToken));
    }
}

package com.perfectcorp.thirdparty.com.google.gson.internal.bind;

import com.perfectcorp.thirdparty.com.google.gson.JsonArray;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import defpackage.az;
import defpackage.ct0;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class ab extends com.perfectcorp.thirdparty.com.google.gson.k<JsonElement> {
    public static void c(JsonElement jsonElement, com.perfectcorp.thirdparty.com.google.gson.stream.d dVar) throws IOException {
        if (jsonElement == null || (jsonElement instanceof JsonNull)) {
            dVar.y();
            return;
        }
        if (jsonElement instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
            Object obj = jsonPrimitive.f42456b;
            if (obj instanceof Number) {
                dVar.n(jsonPrimitive.o());
                return;
            } else if (obj instanceof Boolean) {
                dVar.p(jsonPrimitive.r());
                return;
            } else {
                dVar.r(jsonPrimitive.n());
                return;
            }
        }
        if (jsonElement instanceof JsonArray) {
            dVar.q();
            Iterator it = ((JsonArray) jsonElement).f42452b.iterator();
            while (it.hasNext()) {
                c((JsonElement) it.next(), dVar);
            }
            dVar.s();
            return;
        }
        if (!(jsonElement instanceof JsonObject)) {
            az.w(jsonElement.getClass(), "Couldn't write ");
            return;
        }
        dVar.t();
        for (Map.Entry entry : jsonElement.m().f42454b.entrySet()) {
            dVar.o((String) entry.getKey());
            c((JsonElement) entry.getValue(), dVar);
        }
        dVar.w();
    }

    public static JsonElement d(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        switch (v.f42524a[aVar.w().ordinal()]) {
            case 1:
                aVar.C();
                return JsonNull.f42453b;
            case 2:
                return new JsonPrimitive(new com.perfectcorp.thirdparty.com.google.gson.internal.s(aVar.z()));
            case 3:
                return new JsonPrimitive(aVar.z());
            case 4:
                return new JsonPrimitive(Boolean.valueOf(aVar.B()));
            case 5:
                JsonArray jsonArray = new JsonArray();
                aVar.h();
                while (aVar.u()) {
                    jsonArray.o(d(aVar));
                }
                aVar.o();
                return jsonArray;
            case 6:
                JsonObject jsonObject = new JsonObject();
                aVar.r();
                while (aVar.u()) {
                    jsonObject.o(aVar.y(), d(aVar));
                }
                aVar.t();
                return jsonObject;
            default:
                ct0.c();
                return null;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* synthetic */ Object a(com.perfectcorp.thirdparty.com.google.gson.stream.a aVar) {
        return d(aVar);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.k
    public final /* bridge */ /* synthetic */ void b(com.perfectcorp.thirdparty.com.google.gson.stream.d dVar, Object obj) throws IOException {
        c((JsonElement) obj, dVar);
    }
}

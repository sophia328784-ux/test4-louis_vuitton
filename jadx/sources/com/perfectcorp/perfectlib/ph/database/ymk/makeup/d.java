package com.perfectcorp.perfectlib.ph.database.ymk.makeup;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.GsonBuilder;
import com.perfectcorp.thirdparty.com.google.gson.JsonDeserializationContext;
import com.perfectcorp.thirdparty.com.google.gson.JsonDeserializer;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import com.perfectcorp.thirdparty.com.google.gson.internal.t;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Gson f41239a;

    public static final class a implements JsonDeserializer<c.a.b.C0139a.C0142c.C0143a> {
        @Override // com.perfectcorp.thirdparty.com.google.gson.JsonDeserializer
        public final Object a(JsonElement jsonElement, JsonDeserializationContext jsonDeserializationContext) {
            jsonElement.getClass();
            if (jsonElement instanceof JsonPrimitive) {
                return new c.a.b.C0139a.C0142c.C0143a("", jsonElement.n());
            }
            JsonObject jsonObjectM = jsonElement.m();
            t tVar = jsonObjectM.f42454b;
            return new c.a.b.C0139a.C0142c.C0143a(tVar.containsKey("attr_guid") ? jsonObjectM.r("attr_guid").n() : "", tVar.containsKey("inner_text") ? jsonObjectM.r("inner_text").n() : "");
        }
    }

    static {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.b(c.a.b.C0139a.C0142c.C0143a.class, new a());
        gsonBuilder.b(com.perfectcorp.perfectlib.ph.template.idc.b.class, new com.perfectcorp.perfectlib.ph.template.idc.b.a());
        f41239a = gsonBuilder.a();
    }
}

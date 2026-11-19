package com.perfectcorp.common.gson;

import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.GsonBuilder;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import com.perfectcorp.thirdparty.com.google.gson.JsonPrimitive;
import com.perfectcorp.thirdparty.com.google.gson.i;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GsonHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Gson f39260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Gson f39261b;

    public static class a implements i<String> {
        @Override // com.perfectcorp.thirdparty.com.google.gson.i
        public final /* synthetic */ JsonPrimitive a(Object obj) {
            String str = (String) obj;
            if (str == null || str.isEmpty()) {
                return null;
            }
            return new JsonPrimitive(str);
        }
    }

    static {
        a aVar = new a();
        f39260a = new GsonBuilder().a();
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.b(String.class, aVar);
        f39261b = gsonBuilder.a();
    }

    public static int a(JsonObject jsonObject, String str, int i2) {
        try {
            if (jsonObject.f42454b.containsKey(str)) {
                return jsonObject.r(str).i();
            }
        } catch (Throwable unused) {
        }
        return i2;
    }

    public static String b(JsonObject jsonObject, String str) {
        try {
            return jsonObject.f42454b.containsKey(str) ? jsonObject.r(str).n() : "";
        } catch (Throwable unused) {
            return "";
        }
    }
}

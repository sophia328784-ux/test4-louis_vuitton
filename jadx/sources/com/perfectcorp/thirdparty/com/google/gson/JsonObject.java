package com.perfectcorp.thirdparty.com.google.gson;

import com.perfectcorp.thirdparty.com.google.gson.internal.t;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonObject extends JsonElement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f42454b = new t();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonObject) && ((JsonObject) obj).f42454b.equals(this.f42454b);
        }
        return true;
    }

    public final int hashCode() {
        return this.f42454b.hashCode();
    }

    public final void o(String str, JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.f42453b;
        }
        this.f42454b.put(str, jsonElement);
    }

    public final void p(String str, String str2) {
        JsonElement jsonElement;
        if (str2 == null) {
            jsonElement = JsonNull.f42453b;
        } else {
            JsonPrimitive jsonPrimitive = new JsonPrimitive();
            jsonPrimitive.p(str2);
            jsonElement = jsonPrimitive;
        }
        o(str, jsonElement);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final JsonObject h() {
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry entry : this.f42454b.entrySet()) {
            jsonObject.o((String) entry.getKey(), ((JsonElement) entry.getValue()).h());
        }
        return jsonObject;
    }

    public final JsonElement r(String str) {
        return (JsonElement) this.f42454b.get(str);
    }
}

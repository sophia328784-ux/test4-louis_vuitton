package com.networkbench.com.google.gson;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE = new JsonNull();

    @Deprecated
    public JsonNull() {
    }

    @Override // com.networkbench.com.google.gson.JsonElement
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonNull b() {
        return INSTANCE;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }

    public int hashCode() {
        return JsonNull.class.hashCode();
    }
}

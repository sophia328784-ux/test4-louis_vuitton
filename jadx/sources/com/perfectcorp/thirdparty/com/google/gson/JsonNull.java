package com.perfectcorp.thirdparty.com.google.gson;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonNull extends JsonElement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JsonNull f42453b = new JsonNull();

    @Deprecated
    public JsonNull() {
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final /* bridge */ /* synthetic */ JsonElement h() {
        return f42453b;
    }

    public final int hashCode() {
        return JsonNull.class.hashCode();
    }
}

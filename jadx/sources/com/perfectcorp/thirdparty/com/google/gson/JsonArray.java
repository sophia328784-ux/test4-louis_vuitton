package com.perfectcorp.thirdparty.com.google.gson;

import defpackage.r81;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f42452b = new ArrayList();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof JsonArray) && ((JsonArray) obj).f42452b.equals(this.f42452b);
        }
        return true;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final float f() {
        ArrayList arrayList = this.f42452b;
        if (arrayList.size() == 1) {
            return ((JsonElement) arrayList.get(0)).f();
        }
        r81.b();
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final /* synthetic */ JsonElement h() {
        JsonArray jsonArray = new JsonArray();
        Iterator it = this.f42452b.iterator();
        while (it.hasNext()) {
            jsonArray.o(((JsonElement) it.next()).h());
        }
        return jsonArray;
    }

    public final int hashCode() {
        return this.f42452b.hashCode();
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final int i() {
        ArrayList arrayList = this.f42452b;
        if (arrayList.size() == 1) {
            return ((JsonElement) arrayList.get(0)).i();
        }
        r81.b();
        return 0;
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonElement> iterator() {
        return this.f42452b.iterator();
    }

    @Override // com.perfectcorp.thirdparty.com.google.gson.JsonElement
    public final String n() {
        ArrayList arrayList = this.f42452b;
        if (arrayList.size() == 1) {
            return ((JsonElement) arrayList.get(0)).n();
        }
        r81.b();
        return null;
    }

    public final void o(JsonElement jsonElement) {
        if (jsonElement == null) {
            jsonElement = JsonNull.f42453b;
        }
        this.f42452b.add(jsonElement);
    }
}

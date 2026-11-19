package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Location implements JsonApi.Included {
    public static final String TYPE = "locations";

    @Json(name = l.f24145h)
    Attributes attributes;

    @Json(name = b.a.f24015b)
    String id;

    @Json(name = "type")
    String type = TYPE;

    public static class Attributes {

        @Json(name = "name")
        String name;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return this.type;
    }
}

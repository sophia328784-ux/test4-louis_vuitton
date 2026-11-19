package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class IntegrationScope implements JsonApi.Included {
    public static final String TYPE = "integrations";

    @Json(name = l.f24145h)
    private Attributes attributes;

    @Json(name = b.a.f24015b)
    private String id;

    @Json(name = "type")
    private final String type = TYPE;

    public static class Attributes {

        @Json(name = "name")
        String name;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    public String name() {
        return this.attributes.name;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return TYPE;
    }
}

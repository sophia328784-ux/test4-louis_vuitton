package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArOverlayModel implements JsonApi.Included {
    public static final String TYPE = "ar-overlay-models";

    @Json(name = l.f24145h)
    private Attributes attributes;

    @Json(name = b.a.f24015b)
    private String id;

    @Json(name = "type")
    private final String type = TYPE;

    public static class Attributes {

        @Json(name = "configuration")
        String configuration;

        @Json(name = "name")
        String name;

        @Json(name = "objects")
        List<MicroServiceObject> objects;

        @Json(name = "session-timeout")
        String sessionTimeout;
    }

    public ArOverlayModel(String str) {
        this.id = str;
    }

    public String configuration() {
        return this.attributes.configuration;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    public String name() {
        return this.attributes.name;
    }

    public String sessionTimeout() {
        return this.attributes.sessionTimeout;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return TYPE;
    }

    public List<MicroServiceObject> value() {
        return this.attributes.objects;
    }
}

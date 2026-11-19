package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Provider implements JsonApi.Included {
    public static final String TYPE = "providers";

    @Json(name = l.f24145h)
    Attributes attributes;

    @Json(name = b.a.f24015b)
    String id;

    @Json(name = "type")
    String type = TYPE;

    public static class Attributes {

        @Json(name = "annotations-url")
        String annotationsUrl;

        @Json(name = "webapp-id")
        String appId;

        @Json(name = "chat")
        boolean chat;

        @Json(name = "chat-transcript")
        boolean chatTranscript;

        @Json(name = "deadparty-timeout")
        int deadpartyTimeout;

        @Json(name = "hap-path")
        String hapPath;

        @Json(name = "name")
        String name;

        @Json(name = "ocr-transcript")
        boolean ocrTranscript;

        @Json(name = "rtcc-env")
        String rtccEnv;
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

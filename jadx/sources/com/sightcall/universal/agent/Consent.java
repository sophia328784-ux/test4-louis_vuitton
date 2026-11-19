package com.sightcall.universal.agent;

import com.batch.android.s.b;
import com.batch.android.v0.l;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class Consent implements JsonApi.Included {
    public static final String TYPE = "agent-consents";

    @Json(name = l.f24145h)
    final Attributes attributes;

    @Json(name = b.a.f24015b)
    final String id;

    @Json(name = "type")
    final String type = TYPE;

    public static class Attributes {

        @Json(name = "accept-label")
        String acceptLabel;

        @Json(name = "copyright")
        String copyright;

        @Json(name = "created-at")
        Date createdAt;

        @Json(name = "decline-label")
        String declineLabel;

        @Json(name = "description")
        String description;

        @Json(name = "eula-link")
        String eulaLink;

        @Json(name = "eula-version")
        String eulaVersion;

        @Json(name = "language")
        String language;

        @Json(name = "link-label")
        String linkLabel;

        @Json(name = "title")
        String title;

        @Json(name = "updated-at")
        Date updatedAt;
    }

    public Consent(String str, Attributes attributes) {
        this.id = str;
        this.attributes = attributes;
    }

    public String copyright() {
        return this.attributes.copyright;
    }

    public String description() {
        return this.attributes.description;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String id() {
        return this.id;
    }

    public String language() {
        return this.attributes.language;
    }

    public String linkLabel() {
        return this.attributes.linkLabel;
    }

    public String linkUrl() {
        return this.attributes.eulaLink;
    }

    public String negativeButton() {
        return this.attributes.declineLabel;
    }

    public String positiveButton() {
        return this.attributes.acceptLabel;
    }

    public String title() {
        return this.attributes.title;
    }

    @Override // com.sightcall.universal.api.JsonApi.Included
    public String type() {
        return TYPE;
    }

    public String version() {
        return this.attributes.eulaVersion;
    }
}

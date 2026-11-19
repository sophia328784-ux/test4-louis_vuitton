package com.sightcall.universal.media.offline;

import com.batch.android.v0.l;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;
import defpackage.fc;

/* JADX INFO: loaded from: classes3.dex */
public class OfflineMediaSession {
    public static final String TYPE = "offlineMediaSessions";

    public static class Request {

        @Json(name = DbParams.KEY_DATA)
        final Data data;

        public static class Data {

            @Json(name = l.f24145h)
            private final Attributes attributes;

            @Json(name = "relationships")
            private final Relationships relationships;

            @Json(name = "type")
            private final String type = OfflineMediaSession.TYPE;

            public static class Attributes {

                @Json(name = "filesCount")
                final int filesCount;

                @Json(name = "objId")
                final String objectId;

                @Json(name = "reference")
                final String reference;

                public Attributes(int i2, String str, String str2) {
                    this.reference = str;
                    this.objectId = str2;
                    this.filesCount = i2;
                }

                public String toString() {
                    StringBuilder sb = new StringBuilder("{filesCount:");
                    sb.append(this.filesCount);
                    sb.append("objId:");
                    sb.append(this.objectId);
                    sb.append("reference:");
                    return fc.l(sb, this.reference, '}');
                }
            }

            public static class Relationships {

                @Json(name = "usecase")
                final JsonApi.Wrapper<JsonApi.Linkage> usecase;

                public Relationships(String str) {
                    this.usecase = JsonApi.wrap(JsonApi.Linkage.of(str, "offlineMediaUsecases"));
                }

                public String toString() {
                    return "{usecase:" + this.usecase + '}';
                }
            }

            public Data(int i2, String str, String str2, String str3) {
                this.attributes = new Attributes(i2, str2, str3);
                this.relationships = new Relationships(str);
            }

            public String toString() {
                return "{attributes:" + this.attributes + "relationships:" + this.relationships + '}';
            }
        }

        public Request(int i2, String str, String str2, String str3) {
            this.data = new Data(i2, str, str2, str3);
        }

        public String toString() {
            return "Request{data:" + this.data + '}';
        }
    }
}

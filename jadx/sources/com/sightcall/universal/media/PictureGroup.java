package com.sightcall.universal.media;

import com.batch.android.v0.l;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;
import defpackage.fc;

/* JADX INFO: loaded from: classes3.dex */
public class PictureGroup {
    public static final String TYPE = "upload-picture-groups";

    public static class Request {

        @Json(name = DbParams.KEY_DATA)
        final Data data;

        public static class Data {

            @Json(name = l.f24145h)
            private final Attributes attributes;

            @Json(name = "relationships")
            private final Relationships relationships;

            @Json(name = "type")
            private final String type = PictureGroup.TYPE;

            public static class Attributes {

                @Json(name = "case-id")
                final String caseReportId;

                @Json(name = com.batch.android.s.b.a.f24018f)
                final int count;

                @Json(name = "reference")
                final String reference;

                public Attributes(Metadata metadata, int i2) {
                    this.reference = metadata.reference;
                    this.caseReportId = metadata.caseReportId;
                    this.count = i2;
                }

                public String toString() {
                    StringBuilder sb = new StringBuilder("{count:");
                    sb.append(this.count);
                    sb.append("case-id:");
                    sb.append(this.caseReportId);
                    sb.append("reference:");
                    return fc.l(sb, this.reference, '}');
                }
            }

            public static class Relationships {

                @Json(name = "usecase")
                final JsonApi.Wrapper<JsonApi.Linkage> usecase;

                public Relationships(Metadata metadata) {
                    this.usecase = JsonApi.wrap(JsonApi.Linkage.of("" + metadata.usecaseId(), Usecase.TYPE));
                }

                public String toString() {
                    return "{usecase:" + this.usecase + '}';
                }
            }

            public Data(Metadata metadata, int i2) {
                this.attributes = new Attributes(metadata, i2);
                this.relationships = new Relationships(metadata);
            }

            public String toString() {
                return "{attributes:" + this.attributes + "relationships:" + this.relationships + '}';
            }
        }

        public Request(Metadata metadata, int i2) {
            this.data = new Data(metadata, i2);
        }

        public String toString() {
            return "Request{data:" + this.data + '}';
        }
    }
}

package com.sightcall.universal.guest;

import android.content.Context;
import com.batch.android.s.b;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public final class AgentHttpAcd {

    public static class Cancel {

        @Json(name = "agent_request")
        private final Data data;

        public static class Data {

            @Json(name = b.a.f24015b)
            String id;

            @Json(name = "status")
            String status = "attendee_cancel";

            public Data(String str) {
                this.id = str;
            }
        }

        public Cancel(String str) {
            this.data = new Data(str);
        }
    }

    public static class Request {

        @Json(name = "agent_request")
        Data data;

        public static class Data {

            @Json(name = "case")
            String caseId;

            @Json(name = "device")
            String device;

            @Json(name = "partner")
            String partner;

            @Json(name = "product")
            int productId;

            @Json(name = "reference")
            String reference;

            @Json(name = "uid")
            String uid;

            @Json(name = "usecase")
            int usecaseId;

            @Json(name = "status")
            String status = "attendee_request";

            @Json(name = "clientMode")
            String clientMode = "mobileApp";

            @Json(name = "os")
            String os = ReferenceApiV3ConstKt.OS_NAME;

            public Data(Context context, String str, String str2, int i2, int i3, String str3, String str4) {
                this.partner = str;
                this.uid = str2;
                this.usecaseId = i2;
                this.productId = i3;
                this.reference = str3;
                this.caseId = str4;
                this.device = context.getResources().getConfiguration().smallestScreenWidthDp >= 600 ? "tablet" : "mobile";
            }
        }

        public Request(Context context, String str, String str2, int i2, int i3, String str3, String str4) {
            this.data = new Data(context, str, str2, i2, i3, str3, str4);
        }
    }

    public static class Result {

        @Json(name = "agent_request")
        Data data;

        public static class Data {

            @Json(name = "case")
            String caseId;

            @Json(name = "waiting_time")
            public int estimatedTime;

            @Json(name = b.a.f24015b)
            public String id;

            @Json(name = "partner")
            public String partner;

            @Json(name = "product")
            int productId;

            @Json(name = "reference")
            String reference;

            @Json(name = "status")
            public String status;

            @Json(name = "uid")
            String uid;
        }

        public Data data() {
            return this.data;
        }

        public int estimatedTime() {
            Data data = this.data;
            if (data != null) {
                return data.estimatedTime;
            }
            return 0;
        }

        public String id() {
            Data data = this.data;
            if (data != null) {
                return data.id;
            }
            return null;
        }

        public String status() {
            Data data = this.data;
            if (data != null) {
                return data.status;
            }
            return null;
        }
    }
}

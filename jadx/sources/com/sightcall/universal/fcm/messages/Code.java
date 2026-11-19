package com.sightcall.universal.fcm.messages;

import com.batch.android.s.b;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Code {

    public static class Created {
        public static final String KEY = "pincode-created";

        @Json(name = b.a.f24015b)
        private String id;

        public String id() {
            return this.id;
        }
    }

    public static class Destroyed {
        public static final String KEY = "pincode-destroyed";

        @Json(name = b.a.f24015b)
        private String id;

        public String id() {
            return this.id;
        }
    }

    public static class Resent {
        public static final String KEY = "pincode-resent";

        @Json(name = b.a.f24015b)
        private String id;

        public String id() {
            return this.id;
        }
    }
}

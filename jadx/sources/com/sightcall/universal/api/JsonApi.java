package com.sightcall.universal.api;

import android.text.TextUtils;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.squareup.moshi.Json;
import defpackage.n00;

/* JADX INFO: loaded from: classes3.dex */
public final class JsonApi {

    public interface Included {
        public static final String LABEL = "type";
        public static final Included UNKNOWN = new Included() { // from class: com.sightcall.universal.api.JsonApi.Included.1
            @Override // com.sightcall.universal.api.JsonApi.Included
            public String id() {
                return "";
            }

            @Override // com.sightcall.universal.api.JsonApi.Included
            public String type() {
                return "unknown";
            }
        };

        String id();

        String type();
    }

    private JsonApi() {
    }

    public static <T> Wrapper<T> wrap(T t) {
        return new Wrapper<>(t, 0);
    }

    public static class Wrapper<T> {

        @Json(name = DbParams.KEY_DATA)
        private final T data;

        @Json(name = "included")
        private Included[] included;

        private Wrapper(T t) {
            this.data = t;
        }

        public static <T> T unwrap(Wrapper<T> wrapper) {
            if (wrapper != null) {
                return wrapper.unwrap();
            }
            return null;
        }

        public Included[] included() {
            return this.included;
        }

        public /* synthetic */ Wrapper(Object obj, int i2) {
            this(obj);
        }

        public T unwrap() {
            return this.data;
        }
    }

    public static class Linkage {

        @Json(name = b.a.f24015b)
        private final String id;

        @Json(name = "type")
        private final String type;

        public Linkage(String str, String str2) {
            this.id = str;
            this.type = str2;
        }

        public static Linkage of(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return null;
            }
            return new Linkage(str, str2);
        }

        public String id() {
            return this.id;
        }

        public boolean is(String str) {
            return str.equals(this.type);
        }

        public boolean matches(Included included) {
            return TextUtils.equals(included.id(), this.id) && TextUtils.equals(included.type(), this.type);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Linkage{id='");
            sb.append(this.id);
            sb.append("', type='");
            return n00.r(this.type, "'}", sb);
        }

        public String type() {
            return this.type;
        }

        public static Linkage of(Included included) {
            if (included == null) {
                return null;
            }
            return of(included.id(), included.type());
        }
    }
}

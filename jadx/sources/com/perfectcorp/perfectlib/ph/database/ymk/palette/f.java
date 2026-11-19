package com.perfectcorp.perfectlib.ph.database.ymk.palette;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class f {
    public static final a d = new a(new JsonObject(), false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f41248c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final JsonObject f41249a;

        public a(JsonObject jsonObject, boolean z) {
            Objects.requireNonNull(jsonObject);
            this.f41249a = jsonObject;
        }

        public final int a() {
            String strB = GsonHelper.b(this.f41249a, "shimmer_color");
            if (Objects.equals(strB, "")) {
                return -1;
            }
            return TemplateUtils.v(strB);
        }
    }

    public f(String str, String str2, a aVar) {
        this.f41246a = str;
        this.f41247b = str2;
        this.f41248c = aVar;
    }
}

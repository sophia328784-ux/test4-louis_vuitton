package com.perfectcorp.perfectlib.rh.database.ymk.skincare;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f41824c;
    public b d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f41827c;
    }

    public static final class b {
        public final String productId = "";
        public final String productType = "";
        public final String upc = "";
        public final String productName = "";
        public final String brandName = "";
        public final String imageUrl = "";
        public final String detailUrl = "";
        public final JsonElement customInfo = null;
    }

    public c(a aVar) {
        String str = aVar.f41825a;
        Objects.requireNonNull(str);
        this.f41822a = str;
        String str2 = aVar.f41826b;
        Objects.requireNonNull(str2);
        this.f41823b = str2;
        this.f41824c = aVar.f41827c;
    }

    public final synchronized b a() {
        try {
            if (this.d == null) {
                this.d = (b) GsonHelper.f39260a.i(this.f41823b, b.class);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.d;
    }
}

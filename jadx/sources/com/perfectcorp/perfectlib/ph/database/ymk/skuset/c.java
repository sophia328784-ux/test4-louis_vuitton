package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.content.ContentValues;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41342c;
    public final String d;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41343a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41344b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41345c;
        public String d;

        public a(String str) {
            this.f41343a = str;
        }
    }

    public c(a aVar) {
        this.f41340a = aVar.f41343a;
        this.f41341b = aVar.f41344b;
        this.f41342c = aVar.f41345c;
        this.d = aVar.d;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("SkuSetId", this.f41340a);
        contentValues.put("SkuGuid", this.f41341b);
        contentValues.put("ItemGuid", this.f41342c);
        contentValues.put("Metadata", this.d);
        return contentValues;
    }
}

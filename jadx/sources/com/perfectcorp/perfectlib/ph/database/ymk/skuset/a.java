package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.content.ContentValues;
import com.perfectcorp.common.gson.GsonHelper;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41330c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f41331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41332f;
    public final b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f41333h;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.skuset.a$a, reason: collision with other inner class name */
    public static class C0157a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41335b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41336c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f41337e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41338f;
        public b g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f41339h;

        public C0157a(String str) {
            this.f41334a = str;
        }
    }

    public static final class b {
        public String name = "";
        public String thumbnail = "";
        public String shoppingUrl = "";
    }

    static {
        new a();
    }

    public a(C0157a c0157a) {
        this.f41328a = c0157a.f41334a;
        this.f41329b = c0157a.f41335b;
        this.f41330c = c0157a.f41336c;
        this.d = c0157a.d;
        this.f41331e = c0157a.f41337e;
        this.f41332f = c0157a.f41338f;
        this.g = c0157a.g;
        this.f41333h = c0157a.f41339h;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("SkuSetID", this.f41328a);
        contentValues.put("Type", this.f41329b);
        contentValues.put("Vendor", this.f41330c);
        contentValues.put("CustomerId", this.d);
        contentValues.put("LastModified", Long.valueOf(this.f41331e));
        contentValues.put("MakeupVersion", this.f41332f);
        contentValues.put("Metadata", GsonHelper.f39261b.k(this.g));
        contentValues.put("IsDeleted", Integer.valueOf(this.f41333h ? 1 : 0));
        return contentValues;
    }

    public a() {
        this.f41328a = "";
        this.f41329b = "";
        this.f41330c = "";
        this.d = "";
        this.f41331e = -1L;
        this.f41332f = "";
        this.g = new b();
        this.f41333h = false;
    }
}

package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.content.ContentValues;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.thirdparty.com.google.gson.Gson;

/* JADX INFO: loaded from: classes3.dex */
public final class Sku {
    public static final Sku q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f41262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41264c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41266f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f41267h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f41268i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f41269j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f41270k;
    public final String l;
    public final String m;
    public final int n;
    public final int o;
    public final String p;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f41271a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41273c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f41274e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41275f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f41276h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f41277i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f41278j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f41279k;
        public String l;
        public String m;
        public int n;
        public int o;
        public String p;
    }

    static {
        a aVarB = b();
        aVarB.f41275f = "";
        q = new Sku(aVarB);
    }

    public Sku(h hVar) {
        this.f41262a = hVar.skuId;
        this.f41263b = hVar.type;
        this.f41264c = hVar.subType;
        this.d = hVar.skuName;
        this.f41265e = hVar.skuLongName;
        this.f41266f = hVar.skuGUID;
        this.g = hVar.vendor;
        this.f41267h = hVar.startDate;
        this.f41268i = hVar.endDate;
        this.f41269j = hVar.lastModified;
        this.f41270k = hVar.customerId;
        Gson gson = GsonHelper.f39261b;
        this.l = gson.k(hVar.info);
        this.m = gson.k(hVar.extraInfo);
        this.n = 0;
        this.o = 0;
        this.p = hVar.hidden;
    }

    public static a b() {
        a aVar = new a();
        aVar.f41271a = -1L;
        aVar.f41272b = "";
        aVar.f41273c = "";
        aVar.d = "";
        aVar.f41274e = "";
        aVar.f41275f = "";
        aVar.g = "";
        aVar.f41276h = -1L;
        aVar.f41277i = -1L;
        aVar.f41278j = -1L;
        aVar.f41279k = -1L;
        aVar.l = "";
        aVar.m = "";
        aVar.n = 0;
        aVar.o = 0;
        aVar.p = "";
        return aVar;
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("skuId", Long.valueOf(this.f41262a));
        contentValues.put("skuGuid", this.f41266f);
        contentValues.put("name", this.d);
        contentValues.put("longName", this.f41265e);
        contentValues.put("isDefault", Integer.valueOf(this.n));
        contentValues.put("vendor", this.g);
        contentValues.put("startDate", Long.valueOf(this.f41267h));
        contentValues.put("endDate", Long.valueOf(this.f41268i));
        contentValues.put("featureType", this.f41263b);
        contentValues.put("featureSubtype", this.f41264c);
        contentValues.put("lastModified", Long.valueOf(this.f41269j));
        contentValues.put("info", this.l);
        contentValues.put("customerId", Long.valueOf(this.f41270k));
        contentValues.put("isDeleted", Integer.valueOf(this.o));
        contentValues.put("extraInfo", this.m);
        contentValues.put("hidden", this.p);
        return contentValues;
    }

    public Sku(a aVar) {
        this.f41262a = aVar.f41271a;
        this.f41263b = aVar.f41272b;
        this.f41264c = aVar.f41273c;
        this.d = aVar.d;
        this.f41265e = aVar.f41274e;
        this.f41266f = aVar.f41275f;
        this.g = aVar.g;
        this.f41267h = aVar.f41276h;
        this.f41268i = aVar.f41277i;
        this.f41269j = aVar.f41278j;
        this.f41270k = aVar.f41279k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
    }
}

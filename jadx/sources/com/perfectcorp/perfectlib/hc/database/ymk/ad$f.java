package com.perfectcorp.perfectlib.hc.database.ymk;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.thirdparty.com.google.gson.Gson;

/* JADX INFO: loaded from: classes3.dex */
public final class ad$f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f40280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40282c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f40283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f40284f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f40285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f40286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f40287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f40288k;
    public final String l;
    public final String m;
    public final String n;

    public ad$f(ad$i ad_i) {
        this.f40280a = ad_i.skuId;
        this.f40281b = ad_i.type;
        this.f40282c = ad_i.subType;
        this.d = ad_i.skuName;
        this.f40283e = ad_i.skuLongName;
        this.f40284f = ad_i.skuGUID;
        this.g = ad_i.vendor;
        this.f40285h = ad_i.startDate;
        this.f40286i = ad_i.endDate;
        this.f40287j = ad_i.lastModified;
        this.f40288k = ad_i.customerId;
        Gson gson = GsonHelper.f39261b;
        this.l = gson.k(ad_i.info);
        this.m = gson.k(ad_i.extraInfo);
        this.n = ad_i.hidden;
    }
}

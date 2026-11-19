package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.text.TextUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f41282c;
    public final String d;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.sku.a$a, reason: collision with other inner class name */
    public static final class C0150a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41283a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41284b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f41285c = -1;
        public String d = "";
    }

    public a(C0150a c0150a) {
        Preconditions.g(!TextUtils.isEmpty(c0150a.f41283a), "productGuid can't be empty");
        Preconditions.g(!TextUtils.isEmpty(c0150a.f41284b), "skuGuid can't be empty");
        Preconditions.g(!TextUtils.isEmpty(c0150a.d), "featureType can't be empty");
        this.f41280a = c0150a.f41283a;
        this.f41281b = c0150a.f41284b;
        this.f41282c = c0150a.f41285c;
        this.d = c0150a.d;
    }
}

package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.text.TextUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f41287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41288c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41289a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f41290b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41291c = "";
    }

    public c(a aVar) {
        Preconditions.g(!TextUtils.isEmpty(aVar.f41289a), "productGuid can't be empty");
        Preconditions.g(!TextUtils.isEmpty(aVar.f41291c), "featureType can't be empty");
        this.f41286a = aVar.f41289a;
        this.f41287b = aVar.f41290b;
        this.f41288c = aVar.f41291c;
    }
}

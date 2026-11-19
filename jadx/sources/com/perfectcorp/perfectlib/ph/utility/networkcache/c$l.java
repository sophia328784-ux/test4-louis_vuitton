package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c$l extends Factory.Builder<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41775b;

    public c$l(String str) {
        Objects.requireNonNull(str);
        this.f41775b = str;
    }

    public final Single c() {
        return a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 12)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new m())));
    }
}

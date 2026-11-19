package com.perfectcorp.perfectlib.rh.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class d$d extends Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f41838b;

    public d$d(List<String> list) {
        Objects.requireNonNull(list);
        this.f41838b = list;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 20)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new h())));
    }
}

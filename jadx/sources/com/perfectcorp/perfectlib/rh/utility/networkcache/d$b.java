package com.perfectcorp.perfectlib.rh.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class d$b extends Factory.Builder<RequestTask.Response<a>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f41837b;

    public d$b(List<String> list) {
        Objects.requireNonNull(list);
        this.f41837b = list;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 19)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new f())));
    }
}

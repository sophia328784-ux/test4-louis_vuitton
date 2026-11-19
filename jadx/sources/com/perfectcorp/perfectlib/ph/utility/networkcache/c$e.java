package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;

/* JADX INFO: loaded from: classes3.dex */
public final class c$e extends Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41766b;

    public c$e(String str) {
        this.f41766b = str;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 5)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new g())));
    }
}

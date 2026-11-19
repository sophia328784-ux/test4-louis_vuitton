package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.zw;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c$p extends Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41779c;

    public c$p(String str, String str2) {
        Objects.requireNonNull(str);
        this.f41778b = str;
        this.f41779c = str2;
    }

    public final Single c() {
        c cVarB = b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 15)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new p())));
        Scheduler scheduler = Schedulers.f43170c;
        return cVarB.j(scheduler).i(scheduler);
    }
}

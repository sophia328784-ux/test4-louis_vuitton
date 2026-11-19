package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.shadefinder;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import defpackage.g81;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {
    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c a() {
        return new d().b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(3)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new e())));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c b() {
        return new f().b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(8)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new g())));
    }
}

package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import defpackage.g81;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c a() {
        return new b().b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(0)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new c())));
    }
}

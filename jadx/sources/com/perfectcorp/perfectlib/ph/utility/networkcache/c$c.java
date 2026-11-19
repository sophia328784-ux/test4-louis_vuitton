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
public final class c$c extends Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41764c;

    public c$c(String str, String str2) {
        Objects.requireNonNull(str);
        this.f41763b = str;
        this.f41764c = str2;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 3)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new f())));
    }
}

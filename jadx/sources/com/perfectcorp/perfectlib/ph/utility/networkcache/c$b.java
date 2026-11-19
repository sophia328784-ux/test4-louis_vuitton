package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c$b extends Factory.Builder<RequestTask.Response<b>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41762c;
    public final String d;

    public c$b(String str, String str2, String str3) {
        Objects.requireNonNull(str);
        this.f41761b = str;
        Objects.requireNonNull(str2);
        this.f41762c = str2;
        this.d = str3;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 2)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new e())));
    }
}

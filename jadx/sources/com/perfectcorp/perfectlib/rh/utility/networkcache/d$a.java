package com.perfectcorp.perfectlib.rh.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.conditionalinfo.a;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class d$a extends Factory.Builder<RequestTask.Response<a>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f41836b;

    public d$a(Collection<String> collection) {
        Objects.requireNonNull(collection);
        this.f41836b = collection;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 18)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new e())));
    }
}

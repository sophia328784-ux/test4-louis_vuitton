package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c$o extends Factory.Builder<b> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f41777b;

    public c$o(Collection<String> collection) {
        Objects.requireNonNull(collection);
        this.f41777b = collection;
    }

    public final Single c() {
        return a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 14)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new o())));
    }
}

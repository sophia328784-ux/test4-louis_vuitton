package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.c;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.Collection;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c$r extends Factory.Builder<RequestTask.Response<c>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f41782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41783c;

    public c$r(Collection<String> collection, String str) {
        Objects.requireNonNull(collection);
        this.f41782b = collection;
        Objects.requireNonNull(str);
        this.f41783c = str;
    }

    public final Single c() {
        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 17)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new q())));
    }
}

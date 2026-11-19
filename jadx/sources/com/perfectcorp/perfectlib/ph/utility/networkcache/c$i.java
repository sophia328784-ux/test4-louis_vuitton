package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.c;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.zw;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public final class c$i extends Factory.Builder<c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f41772b;

    public c$i(Collection<String> collection) {
        this.f41772b = ImmutableList.u(collection);
    }

    public final Single c() {
        return a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 9)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new j())));
    }
}

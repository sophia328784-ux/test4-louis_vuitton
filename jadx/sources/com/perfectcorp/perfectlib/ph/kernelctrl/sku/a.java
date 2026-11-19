package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$m;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.y71;
import defpackage.zw;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class a extends b {
    @Override // com.perfectcorp.perfectlib.ph.kernelctrl.sku.b
    public final Single b(List list) {
        c$m c_m = new c$m(list);
        c_m.f42049a = this.f41543a.f41544a;
        return c_m.a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(c_m, 13)), new y71(3)));
    }
}

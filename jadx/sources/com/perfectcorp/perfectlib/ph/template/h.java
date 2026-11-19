package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
final class h implements Function<Throwable, YMKPrimitiveData.Effect> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ String f41649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ g f41650c;

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        StringBuilder sb = new StringBuilder("EffectInfo doesn't exist in the Look. Look id=");
        g gVar = this.f41650c;
        sb.append(gVar.f41647b.f40781a);
        sb.append(", effect id=");
        sb.append(this.f41649b);
        Log.j("PanelDataCenter", sb.toString(), (Throwable) obj);
        return gVar.f41648c;
    }
}

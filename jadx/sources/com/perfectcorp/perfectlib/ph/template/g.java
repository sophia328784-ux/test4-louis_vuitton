package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
final class g implements Function<String, ObservableSource<YMKPrimitiveData.Effect>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ YMKPrimitiveData.Look f41647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ YMKPrimitiveData.Effect f41648c;

    public g(YMKPrimitiveData.Look look, YMKPrimitiveData.Effect effect) {
        this.f41647b = look;
        this.f41648c = effect;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        String str = (String) obj;
        Observable observableFromCallable = Observable.fromCallable(new i(this, str));
        h hVar = new h();
        hVar.f41650c = this;
        hVar.f41649b = str;
        return observableFromCallable.onErrorReturn(hVar).subscribeOn(e.f41634b);
    }
}

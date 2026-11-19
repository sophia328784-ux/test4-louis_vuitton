package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class j implements Function<List<YMKPrimitiveData.Effect>, ObservableSource<List<YMKPrimitiveData.Effect>>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LiveSettingCtrl f41666b;

    public j(LiveSettingCtrl liveSettingCtrl) {
        this.f41666b = liveSettingCtrl;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return Observable.fromCallable(new k(this, (List) obj)).subscribeOn(e.f41634b);
    }
}

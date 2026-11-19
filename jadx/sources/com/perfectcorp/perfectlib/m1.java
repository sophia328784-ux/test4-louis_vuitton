package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.SingleTransformer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m1 implements SingleTransformer, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MakeupCamInternal.Logger f40474c;
    public final /* synthetic */ LiveSettingCtrl d;

    public /* synthetic */ m1(MakeupCamInternal.Logger logger, LiveSettingCtrl liveSettingCtrl, int i2) {
        this.f40473b = i2;
        this.f40474c = logger;
        this.d = liveSettingCtrl;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.SingleTransformer
    public SingleSource a(Single single) {
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(single, new m1(this.f40474c, this.d, 1));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f40473b;
        LiveSettingCtrl liveSettingCtrl = this.d;
        MakeupCamInternal.Logger logger = this.f40474c;
        switch (i2) {
            case 1:
                MakeupCamInternal.ConfigureData configureData = (MakeupCamInternal.ConfigureData) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Observable observableFlatMapSingle = Observable.fromIterable(configureData.f39709c).doOnNext(new b(3)).groupBy(new y(9)).flatMapSingle(new m1(logger, liveSettingCtrl, 2));
                Consumer consumer = Functions.d;
                observableFlatMapSingle.subscribe(new com.perfectcorp.thirdparty.io.reactivex.internal.observers.h(consumer, com.perfectcorp.common.rx.a.f39388a, Functions.f42607c, consumer));
                return configureData.f39708b;
            default:
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                return ((GroupedObservable) obj).toList().f(new d0(logger, liveSettingCtrl, 1));
        }
    }
}

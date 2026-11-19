package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.tg0;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl f41845c;

    public /* synthetic */ s1(ApplyEffectCtrl applyEffectCtrl, int i2) {
        this.f41844b = i2;
        this.f41845c = applyEffectCtrl;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f41844b;
        ApplyEffectCtrl applyEffectCtrl = this.f41845c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return MakeupCamInternal.z(applyEffectCtrl, (List) Observable.fromIterable((List) obj).map(new y(7)).to(new tg0(0)));
            case 1:
                return MakeupCamInternal.z(applyEffectCtrl, (List) obj);
            default:
                ReshapeEffectId reshapeEffectId = (ReshapeEffectId) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                BeautyMode beautyMode = reshapeEffectId.f39822a.beautyMode;
                applyEffectCtrl.getClass();
                ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode);
                configurationBuilder.k(Integer.valueOf(reshapeEffectId.f39823b));
                return new MakeupCamInternal.ConfigureData(beautyMode, configurationBuilder.c());
        }
    }
}

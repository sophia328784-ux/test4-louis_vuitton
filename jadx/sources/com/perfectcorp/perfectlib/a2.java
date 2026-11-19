package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a2 implements ApplyEffectCtrl.SkuIdGetter, com.perfectcorp.thirdparty.io.reactivex.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f40031b;

    public /* synthetic */ a2(HashMap map) {
        this.f40031b = map;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.SkuIdGetter
    public ApplyEffectCtrl.SkuIdGetter.Ids a(YMKPrimitiveData.Effect effect) {
        return MakeupCamInternal.n(effect, this.f40031b);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.g
    public void e(SingleEmitter singleEmitter) {
        ArrayList arrayList = new ArrayList(this.f40031b.keySet());
        SkinCare3RecommendationHandler.AnonymousClass2 anonymousClass2 = new SkinCare3RecommendationHandler.AnonymousClass2();
        anonymousClass2.f39888a = singleEmitter;
        SkinCareProduct.getInventory(arrayList, anonymousClass2);
    }
}

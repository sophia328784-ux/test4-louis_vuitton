package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m2 implements Function, MakeupCam.OnPictureTakenListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MakeupCamInternal f40476c;

    public /* synthetic */ m2(MakeupCamInternal makeupCamInternal, int i2) {
        this.f40475b = i2;
        this.f40476c = makeupCamInternal;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f40475b;
        MakeupCamInternal makeupCamInternal = this.f40476c;
        switch (i2) {
            case 0:
                return Singles.a(makeupCamInternal.g.b((ApplyEffectCtrl.ConfigurationWrapper) obj), CallingThread.ANY);
            default:
                return Singles.a(makeupCamInternal.g.b((ApplyEffectCtrl.Configuration) obj), CallingThread.ANY);
        }
    }

    @Override // com.perfectcorp.perfectlib.MakeupCam.OnPictureTakenListener
    public void onTaken() {
        MakeupCamInternal makeupCamInternal = this.f40476c;
        MakeupCamInternal.Logger logger = makeupCamInternal.m;
        LiveSettingCtrl liveSettingCtrl = makeupCamInternal.f39699h;
        int i2 = makeupCamInternal.g.f40751a.t0;
        logger.getClass();
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a aVarJ = com.perfectcorp.perfectlib.ph.widgetpool.panel.livemakeup.a.j(liveSettingCtrl);
        aVarJ.l = i2;
        liveSettingCtrl.getClass();
        ArrayList arrayList = new ArrayList();
        for (BeautyMode beautyMode : liveSettingCtrl.d) {
            if (beautyMode.isReshape()) {
                arrayList.add(beautyMode);
            }
        }
        aVarJ.a(arrayList);
        aVarJ.s = liveSettingCtrl;
        com.perfectcorp.perfectlib.ph.clflurry.a aVar = new com.perfectcorp.perfectlib.ph.clflurry.a(logger.f39713a);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.k kVar = aVarJ.f41362h;
        YMKFeatures$EventFeature yMKFeatures$EventFeature = YMKFeatures$EventFeature.Foundation;
        aVar.d = yMKFeatures$EventFeature;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature, kVar, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.c cVar = aVarJ.g;
        YMKFeatures$EventFeature yMKFeatures$EventFeature2 = YMKFeatures$EventFeature.Blush;
        aVar.d = yMKFeatures$EventFeature2;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature2, cVar, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.l lVar = aVarJ.f41361f;
        YMKFeatures$EventFeature yMKFeatures$EventFeature3 = YMKFeatures$EventFeature.Eyelashes;
        aVar.d = yMKFeatures$EventFeature3;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature3, lVar, aVar);
        YMKFeatures$EventFeature yMKFeatures$EventFeature4 = YMKFeatures$EventFeature.EyeLiner;
        aVar.d = yMKFeatures$EventFeature4;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature4, null, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.f fVar = aVarJ.f41359c;
        YMKFeatures$EventFeature yMKFeatures$EventFeature5 = YMKFeatures$EventFeature.EyeColor;
        aVar.d = yMKFeatures$EventFeature5;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature5, fVar, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.g gVar = aVarJ.f41357a;
        YMKFeatures$EventFeature yMKFeatures$EventFeature6 = YMKFeatures$EventFeature.EyeShadow;
        aVar.d = yMKFeatures$EventFeature6;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature6, gVar, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.o oVar = aVarJ.f41363i;
        YMKFeatures$EventFeature yMKFeatures$EventFeature7 = YMKFeatures$EventFeature.LipColor;
        aVar.d = yMKFeatures$EventFeature7;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature7, oVar, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.h hVar = aVarJ.d;
        YMKFeatures$EventFeature yMKFeatures$EventFeature8 = YMKFeatures$EventFeature.EyeWear;
        aVar.d = yMKFeatures$EventFeature8;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature8, hVar, aVar);
        aVar.d = YMKFeatures$EventFeature.SkinSmoothener;
        aVar.h(null, "_intensity", String.valueOf(aVarJ.l));
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.m mVar = aVarJ.m;
        YMKFeatures$EventFeature yMKFeatures$EventFeature9 = YMKFeatures$EventFeature.HairDye;
        aVar.d = yMKFeatures$EventFeature9;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature9, mVar, aVar);
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.e eVar = aVarJ.f41358b;
        YMKFeatures$EventFeature yMKFeatures$EventFeature10 = YMKFeatures$EventFeature.Eyebrows;
        aVar.d = yMKFeatures$EventFeature10;
        com.perfectcorp.perfectlib.ph.clflurry.c.m(yMKFeatures$EventFeature10, eVar, aVar);
        aVar.d = null;
        com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter.a.i iVar = aVarJ.f41364j;
        com.perfectcorp.perfectlib.ph.clflurry.c.i(YMKFeatures$EventFeature.HighlightContour, Arrays.asList(aVarJ.f41365k, iVar), aVar);
        com.perfectcorp.perfectlib.ph.clflurry.c.m(YMKFeatures$EventFeature.LipLiner, aVarJ.n, aVar);
        com.perfectcorp.perfectlib.ph.clflurry.c.m(YMKFeatures$EventFeature.Earrings, aVarJ.f41360e, aVar);
        com.perfectcorp.perfectlib.ph.clflurry.c.m(YMKFeatures$EventFeature.Concealer, aVarJ.o, aVar);
        com.perfectcorp.perfectlib.ph.clflurry.c.m(YMKFeatures$EventFeature.Bronzer, aVarJ.p, aVar);
        com.perfectcorp.perfectlib.ph.clflurry.c.m(YMKFeatures$EventFeature.Background, aVarJ.q, aVar);
        aVar.k(aVarJ.r);
        aVar.f(aVarJ.s, null);
        aVar.c(aVar.f41949c);
        aVar.b();
    }
}

package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateWorkarounds;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.az;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl f41791c;
    public final /* synthetic */ LiveSettingCtrl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f41792e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f41793f;

    public /* synthetic */ q1(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, int i4) {
        this.f41790b = i4;
        this.f41791c = applyEffectCtrl;
        this.d = liveSettingCtrl;
        this.f41792e = i2;
        this.f41793f = i3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        EffectId effectIdC;
        int i2 = this.f41790b;
        int i3 = this.f41793f;
        int i4 = this.f41792e;
        LiveSettingCtrl liveSettingCtrl = this.d;
        ApplyEffectCtrl applyEffectCtrl = this.f41791c;
        switch (i2) {
            case 0:
                Pair pair = (Pair) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(((VtoSetting) pair.first).f40014a)) {
                    EffectId.Builder builder = new EffectId.Builder(PerfectEffect.BLUSH);
                    builder.f39567b = EffectId.c(((VtoSetting) pair.first).f40014a);
                    builder.b(Collections.EMPTY_LIST);
                    effectIdC = builder.a();
                } else {
                    effectIdC = MakeupCamInternal.c((VtoSetting) pair.first, (Sku) pair.second);
                }
                return MakeupCamInternal.y(applyEffectCtrl, liveSettingCtrl, i4, i3, effectIdC);
            case 1:
                Pair pair2 = (Pair) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                boolean zF = com.perfectcorp.perfectlib.ph.unit.sku.a.f(((VtoSetting) pair2.first).f40014a);
                ApplyEffectCtrl applyEffectCtrl2 = this.f41791c;
                LiveSettingCtrl liveSettingCtrl2 = this.d;
                if (zF) {
                    Log.g(3, "MakeupCamInternal", "LipStickSkuSet");
                    return Single.h(MakeupCamInternal.C(applyEffectCtrl2, liveSettingCtrl2, PerfectEffect.LIPSTICK, ((VtoSetting) pair2.first).f40014a, Collections.EMPTY_LIST));
                }
                VtoSetting vtoSetting = (VtoSetting) pair2.first;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(Single.h((Sku) pair2.second), new p1(vtoSetting, applyEffectCtrl2, liveSettingCtrl2, this.f41792e, this.f41793f, 1));
            case 2:
                Pair pair3 = (Pair) obj;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                VtoSetting vtoSetting2 = (VtoSetting) pair3.first;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(Single.h((Sku) pair3.second), new p1(vtoSetting2, this.f41791c, this.d, this.f41792e, this.f41793f, 1));
            case 3:
                return MakeupCamInternal.f(applyEffectCtrl, liveSettingCtrl, (EffectId) obj, i4, i3);
            case 4:
                return MakeupCamInternal.y(applyEffectCtrl, liveSettingCtrl, i4, i3, (EffectId) obj);
            case 5:
                EffectId effectId = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                BeautyMode beautyMode = effectId.f39555a.beautyMode;
                if (SkuTemplateUtils.b(beautyMode)) {
                    az.m(beautyMode, "Pattern major feature unsupported. Maybe use the wrong condition? beautyMode=");
                    return null;
                }
                String str = effectId.d;
                String str2 = effectId.f39559f;
                List listF = com.perfectcorp.perfectlib.ph.template.e.f(TemplateUtils.x(str));
                TemplateWorkarounds.b(LiveSettingCtrl.c(beautyMode), listF, effectId.f39561i);
                return MakeupCamInternal.e(this.f41791c, this.d, this.f41792e, this.f41793f, effectId.f39555a, effectId.f39556b, effectId.f39557c, str, str2, effectId.d, effectId.f39558e, listF, 0);
            case 6:
                EffectId effectId2 = (EffectId) obj;
                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                String str3 = effectId2.f39556b;
                boolean zF2 = com.perfectcorp.perfectlib.ph.unit.sku.a.f(str3);
                ApplyEffectCtrl applyEffectCtrl3 = this.f41791c;
                LiveSettingCtrl liveSettingCtrl3 = this.d;
                int i5 = this.f41792e;
                int i6 = this.f41793f;
                if (!zF2) {
                    Log.g(3, "MakeupCamInternal", "DefaultSingleLipStick");
                    return MakeupCamInternal.d(applyEffectCtrl3, liveSettingCtrl3, i5, i6, effectId2);
                }
                if (str3.contains("_lk_")) {
                    Log.g(3, "MakeupCamInternal", "SingleLookLipStickSkuSet");
                    return MakeupCamInternal.g(applyEffectCtrl3, liveSettingCtrl3, effectId2.f39555a, effectId2.f39556b, i5, i6);
                }
                Log.g(3, "MakeupCamInternal", "SingleLipLipStickSkuSet");
                return MakeupCamInternal.C(applyEffectCtrl3, liveSettingCtrl3, effectId2.f39555a, str3, effectId2.f39561i);
            default:
                return MakeupCamInternal.d(applyEffectCtrl, liveSettingCtrl, i4, i3, (EffectId) obj);
        }
    }
}

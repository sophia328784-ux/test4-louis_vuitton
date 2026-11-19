package com.perfectcorp.perfectlib;

import android.util.Pair;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import java.util.Collections;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl f41108c;
    public final /* synthetic */ LiveSettingCtrl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f41109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f41110f;
    public final /* synthetic */ Object g;

    public /* synthetic */ p1(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, EffectConfig effectConfig) {
        this.f41107b = 2;
        this.f41108c = applyEffectCtrl;
        this.d = liveSettingCtrl;
        this.f41109e = i2;
        this.f41110f = i3;
        this.g = effectConfig;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        EffectId effectIdC;
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t tVar;
        int i2 = this.f41107b;
        Object obj2 = this.g;
        switch (i2) {
            case 0:
                Pair pair = (Pair) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                PerfectEffect perfectEffect = ((GroupedObservable) obj2).f43162b == BeautyMode.EYE_SHADOW ? PerfectEffect.EYESHADOW : PerfectEffect.EYELINER;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(((VtoSetting) pair.first).f40014a)) {
                    EffectId.Builder builder = new EffectId.Builder(perfectEffect);
                    builder.f39567b = EffectId.c(((VtoSetting) pair.first).f40014a);
                    builder.b(Collections.EMPTY_LIST);
                    effectIdC = builder.a();
                } else {
                    effectIdC = MakeupCamInternal.c((VtoSetting) pair.first, (Sku) pair.second);
                }
                return MakeupCamInternal.f(this.f41108c, this.d, effectIdC, this.f41109e, this.f41110f);
            case 1:
                Sku sku = (Sku) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                ApplyEffectUtility.ApplySkuInfo applySkuInfoA = ApplyEffectUtility.a((VtoSetting) obj2, sku);
                BeautyMode beautyMode = applySkuInfoA.f39474a;
                return MakeupCamInternal.e(this.f41108c, this.d, this.f41109e, this.f41110f, PerfectEffect.of(beautyMode, ItemSubType.d(beautyMode, sku.f41264c)), applySkuInfoA.f39475b, applySkuInfoA.f39476c, applySkuInfoA.d, applySkuInfoA.f39477e, applySkuInfoA.f39478f, applySkuInfoA.g, applySkuInfoA.f39479h, applySkuInfoA.f39480i);
            default:
                EffectConfig effectConfig = (EffectConfig) obj2;
                GroupedObservable groupedObservable = (GroupedObservable) obj;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                Object obj3 = groupedObservable.f43162b;
                BeautyMode beautyMode2 = BeautyMode.FACE_CONTOUR;
                int i3 = 1;
                ApplyEffectCtrl applyEffectCtrl = this.f41108c;
                LiveSettingCtrl liveSettingCtrl = this.d;
                if (obj3 == beautyMode2) {
                    Single list = groupedObservable.map(new y(5)).toList();
                    c0 c0Var = new c0(applyEffectCtrl, liveSettingCtrl, groupedObservable, i3);
                    list.getClass();
                    tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list, c0Var);
                } else {
                    int i4 = 0;
                    int i5 = (obj3 == BeautyMode.EYE_SHADOW ? 1 : 0) | (obj3 != BeautyMode.EYE_LINES ? 0 : 1);
                    int i6 = this.f41109e;
                    int i7 = this.f41110f;
                    if (i5 != 0) {
                        return groupedObservable.take(1L).map(new p1(groupedObservable, applyEffectCtrl, liveSettingCtrl, i6, i7, 0));
                    }
                    if (obj3 == BeautyMode.BLUSH) {
                        return groupedObservable.take(1L).map(new q1(applyEffectCtrl, liveSettingCtrl, i6, i7, 0));
                    }
                    if (obj3 == BeautyMode.HAIR_DYE) {
                        SingleSource list2 = groupedObservable.toList();
                        c0 c0Var2 = new c0(applyEffectCtrl, liveSettingCtrl, effectConfig, 2);
                        list2.getClass();
                        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d(list2, c0Var2);
                    }
                    if (obj3 == BeautyMode.EARRINGS) {
                        SingleSource list3 = groupedObservable.toList();
                        r1 r1Var = new r1(applyEffectCtrl, liveSettingCtrl, i4);
                        list3.getClass();
                        tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list3, r1Var);
                    } else {
                        if (obj3 != BeautyMode.BACKGROUND) {
                            return obj3 == BeautyMode.LIP_STICK ? groupedObservable.take(1L).flatMapSingle(new q1(applyEffectCtrl, liveSettingCtrl, i6, i7, 1)) : groupedObservable.flatMapSingle(new q1(applyEffectCtrl, liveSettingCtrl, i6, i7, 2));
                        }
                        SingleSource list4 = groupedObservable.toList();
                        s1 s1Var = new s1(applyEffectCtrl, i4);
                        list4.getClass();
                        tVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(list4, s1Var);
                    }
                }
                return tVar.l();
        }
    }

    public /* synthetic */ p1(Object obj, ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2, int i3, int i4) {
        this.f41107b = i4;
        this.g = obj;
        this.f41108c = applyEffectCtrl;
        this.d = liveSettingCtrl;
        this.f41109e = i2;
        this.f41110f = i3;
    }
}

package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourPayload;
import com.perfectcorp.perfectlib.makeupcam.camera.FaceContourSettingHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.tg0;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl f41809c;
    public final /* synthetic */ LiveSettingCtrl d;

    public /* synthetic */ r1(ApplyEffectCtrl applyEffectCtrl, LiveSettingCtrl liveSettingCtrl, int i2) {
        this.f41808b = i2;
        this.f41809c = applyEffectCtrl;
        this.d = liveSettingCtrl;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Optional optionalA;
        MakeupCamInternal.ConfigureData configureDataJ;
        Object objC;
        int i2 = this.f41808b;
        LiveSettingCtrl liveSettingCtrl = this.d;
        ApplyEffectCtrl applyEffectCtrl = this.f41809c;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return MakeupCamInternal.i(applyEffectCtrl, liveSettingCtrl, (List) Observable.fromIterable((List) obj).map(new y(6)).to(new tg0(0)));
            case 1:
                List list = (List) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Iterator it = list.iterator();
                it.getClass();
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        EffectId effectId = (EffectId) next;
                        Objects.requireNonNull(effectId);
                        if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(effectId.f39556b)) {
                            optionalA = Optional.e(next);
                        }
                    } else {
                        optionalA = Optional.a();
                    }
                }
                boolean zD = optionalA.d();
                ApplyEffectCtrl applyEffectCtrl2 = this.f41809c;
                LiveSettingCtrl liveSettingCtrl2 = this.d;
                if (!zD) {
                    int size = list.size();
                    if (size <= 0) {
                        return Observable.empty();
                    }
                    if (size == 1) {
                        objC = list.get(0);
                    } else {
                        configureDataJ = MakeupCamInternal.j(applyEffectCtrl2, list);
                    }
                    return Observable.just(configureDataJ);
                }
                objC = optionalA.c();
                EffectId effectId2 = (EffectId) objC;
                PerfectEffect perfectEffect = effectId2.f39555a;
                String str = effectId2.f39556b;
                String str2 = effectId2.f39557c;
                String str3 = effectId2.d;
                String str4 = effectId2.f39558e;
                configureDataJ = MakeupCamInternal.e(applyEffectCtrl2, liveSettingCtrl2, 0, 0, perfectEffect, str, str2, str3, str4, str3, str4, effectId2.l, 0);
                return Observable.just(configureDataJ);
            case 2:
                return MakeupCamInternal.i(applyEffectCtrl, liveSettingCtrl, (List) obj);
            default:
                PerfectEffect perfectEffect2 = (PerfectEffect) obj;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                Threads.b();
                BeautyMode beautyMode = perfectEffect2.beautyMode;
                BeautyMode beautyMode2 = BeautyMode.FACE_CONTOUR;
                if (beautyMode == beautyMode2 && liveSettingCtrl.o(beautyMode)) {
                    FaceContourPayload faceContourPayloadA = FaceContourSettingHelper.a(liveSettingCtrl);
                    FaceContourPayload.Setting setting = faceContourPayloadA == null ? null : faceContourPayloadA.f40632a;
                    if (setting != null && setting.f40644h == perfectEffect2.itemSubType) {
                        setting = null;
                    }
                    FaceContourPayload faceContourPayloadA2 = FaceContourSettingHelper.a(liveSettingCtrl);
                    FaceContourPayload.Setting setting2 = faceContourPayloadA2 == null ? null : faceContourPayloadA2.f40633b;
                    FaceContourPayload.Setting setting3 = (setting2 == null || setting2.f40644h != perfectEffect2.itemSubType) ? setting2 : null;
                    if (setting != null || setting3 != null) {
                        FaceContourPayload.Builder builder = new FaceContourPayload.Builder();
                        builder.f40635a = setting;
                        builder.f40636b = setting3;
                        FaceContourPayload faceContourPayloadA3 = FaceContourSettingHelper.a(liveSettingCtrl);
                        builder.f40637c = faceContourPayloadA3 == null ? 50 : faceContourPayloadA3.f40634c;
                        FaceContourPayload faceContourPayloadA4 = builder.a();
                        applyEffectCtrl.getClass();
                        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, beautyMode2);
                        configurationBuilder.k(faceContourPayloadA4);
                        return configurationBuilder.c();
                    }
                }
                return applyEffectCtrl.h(perfectEffect2.beautyMode);
        }
    }
}

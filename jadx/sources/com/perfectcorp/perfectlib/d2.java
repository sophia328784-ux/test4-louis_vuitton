package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d2 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ YMKPrimitiveData.Look f40107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LiveSettingCtrl f40108c;
    public final /* synthetic */ ApplyEffectCtrl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f40109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f40110f;

    public /* synthetic */ d2(YMKPrimitiveData.Look look, LiveSettingCtrl liveSettingCtrl, ApplyEffectCtrl applyEffectCtrl, int i2, int i3) {
        this.f40107b = look;
        this.f40108c = liveSettingCtrl;
        this.d = applyEffectCtrl;
        this.f40109e = i2;
        this.f40110f = i3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
        YMKPrimitiveData.Look look = this.f40107b;
        com.perfectcorp.perfectlib.ph.template.e.k(look, this.f40108c);
        HashMap mapU = MakeupCamInternal.u(look);
        final int i2 = this.f40109e;
        final int i3 = this.f40110f;
        ApplyEffectCtrl.PayloadCreator payloadCreator = new ApplyEffectCtrl.PayloadCreator() { // from class: com.perfectcorp.perfectlib.e2
            @Override // com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl.PayloadCreator
            public final Object a(ApplyEffectCtrl.PayloadCreatorParameters payloadCreatorParameters) {
                return MakeupCamInternal.a(i2, i3, payloadCreatorParameters);
            }
        };
        MakeupCamInternal.AnonymousClass1 anonymousClass1 = new MakeupCamInternal.AnonymousClass1();
        anonymousClass1.f39703b = mapU;
        ApplyEffectCtrl applyEffectCtrl = this.d;
        applyEffectCtrl.getClass();
        return new ApplyEffectCtrl.ConfigurationBuilder(applyEffectCtrl, Collections.singletonList(look), 1, payloadCreator, anonymousClass1).c();
    }
}

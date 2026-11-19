package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w1 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41901b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MakeupCamInternal f41902c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.FunStickerActionHintCallback f41903e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f41904f;

    public /* synthetic */ w1(MakeupCamInternal makeupCamInternal, int i2, VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback, String str) {
        this.f41902c = makeupCamInternal;
        this.d = i2;
        this.f41903e = funStickerActionHintCallback;
        this.f41904f = str;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00c1  */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        FunStickerTemplate funStickerTemplateA;
        int i2 = this.f41901b;
        String str = this.f41904f;
        VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback = this.f41903e;
        int i3 = this.d;
        MakeupCamInternal makeupCamInternal = this.f41902c;
        switch (i2) {
            case 0:
                YMKPrimitiveData.Look look = (YMKPrimitiveData.Look) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.A(i3);
                defpackage.a.v(3, "[applyLookTransform] Start apply. lookGuid=", str, "MakeupCamInternal");
                final com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam = makeupCamInternal.g;
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new d2(look, makeupCam.f40751a.v, makeupCam.f40752b, makeupCamInternal.f39702k, makeupCamInternal.l));
                MakeupCamInternal.n.execute(listenableFutureTaskCreate);
                com.perfectcorp.thirdparty.com.google.common.util.concurrent.i iVar = new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: hc0
                    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                    public final ListenableFuture apply(Object obj2) {
                        return makeupCam.b((ApplyEffectCtrl.Configuration) obj2);
                    }
                };
                CallingThread callingThread = CallingThread.ANY;
                ListenableFuture listenableFutureI = Futures.i(listenableFutureTaskCreate, iVar, callingThread);
                if (makeupCamInternal.f39701j) {
                    ExecutorService executorService = com.perfectcorp.perfectlib.ph.template.e.f41633a;
                    Log.g(3, "PanelDataCenter", "[queryFunStickerTemplateByLookGuid] lookId=" + str);
                    com.perfectcorp.perfectlib.ph.database.ymk.look.d dVarA = com.perfectcorp.perfectlib.ph.database.ymk.look.e.a(YMKDatabase.b(), str);
                    if (dVarA != null) {
                        String str2 = dVarA.l;
                        if (TextUtils.isEmpty(str2)) {
                            funStickerTemplateA = FunStickerTemplate.f40650e;
                        } else {
                            funStickerTemplateA = com.perfectcorp.perfectlib.ph.template.e.a(str2, true);
                        }
                    } else {
                        funStickerTemplateA = FunStickerTemplate.f40650e;
                    }
                } else {
                    funStickerTemplateA = FunStickerTemplate.f40650e;
                }
                return Single.m(Singles.a(listenableFutureI, callingThread), makeupCamInternal.s(funStickerTemplateA, funStickerActionHintCallback), new y(12));
            default:
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                makeupCamInternal.getClass();
                Optional optionalF = ApplyEffectUtility.F(bVar.d);
                if (!optionalF.d()) {
                    return Single.g(new LookNotFoundException("Can't find look=".concat(str)));
                }
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.s sVarH = Single.h((YMKPrimitiveData.Look) optionalF.c());
                String str3 = bVar.d;
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(sVarH, new w1(makeupCamInternal, i3, str3, funStickerActionHintCallback)).i(Schedulers.f43170c), new a0(makeupCamInternal, str3, 4));
        }
    }

    public /* synthetic */ w1(MakeupCamInternal makeupCamInternal, int i2, String str, VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback) {
        this.f41902c = makeupCamInternal;
        this.d = i2;
        this.f41904f = str;
        this.f41903e = funStickerActionHintCallback;
    }
}

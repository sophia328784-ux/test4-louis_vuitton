package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o1 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MakeupCamInternal f41089c;
    public final /* synthetic */ VtoApplier.FunStickerActionHintCallback d;

    public /* synthetic */ o1(MakeupCamInternal makeupCamInternal, VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback, int i2) {
        this.f41088b = i2;
        this.f41089c = makeupCamInternal;
        this.d = funStickerActionHintCallback;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = 12;
        switch (this.f41088b) {
            case 0:
                MakeupCamInternal makeupCamInternal = this.f41089c;
                VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback = this.d;
                makeupCamInternal.m.f39713a = null;
                ArrayList arrayList = new ArrayList();
                Iterator<E> it = ApplyEffectCtrl.H.iterator();
                while (it.hasNext()) {
                    arrayList.add(makeupCamInternal.g.f40752b.h((BeautyMode) it.next()));
                }
                return Single.m(Singles.a(makeupCamInternal.g.b(new ApplyEffectCtrl.ConfigurationWrapper(arrayList)), CallingThread.ANY), makeupCamInternal.s(FunStickerTemplate.f40650e, funStickerActionHintCallback), new y(i2));
            case 1:
                MakeupCamInternal makeupCamInternal2 = this.f41089c;
                VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback2 = this.d;
                makeupCamInternal2.m.f39713a = null;
                ArrayList arrayList2 = new ArrayList();
                for (BeautyMode beautyMode : ApplyEffectCtrl.H) {
                    if (beautyMode != BeautyMode.SKIN_SMOOTHER && !beautyMode.isReshape()) {
                        arrayList2.add(makeupCamInternal2.g.f40752b.h(beautyMode));
                    }
                }
                return Single.m(Singles.a(makeupCamInternal2.g.b(new ApplyEffectCtrl.ConfigurationWrapper(arrayList2)), CallingThread.ANY), makeupCamInternal2.s(FunStickerTemplate.f40650e, funStickerActionHintCallback2), new y(i2));
            default:
                MakeupCamInternal makeupCamInternal3 = this.f41089c;
                VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback3 = this.d;
                makeupCamInternal3.m.f39713a = null;
                ArrayList arrayList3 = new ArrayList();
                for (BeautyMode beautyMode2 : ApplyEffectCtrl.H) {
                    if (beautyMode2 != BeautyMode.SKIN_SMOOTHER) {
                        arrayList3.add(makeupCamInternal3.g.f40752b.h(beautyMode2));
                    }
                }
                return Single.m(Singles.a(makeupCamInternal3.g.b(new ApplyEffectCtrl.ConfigurationWrapper(arrayList3)), CallingThread.ANY), makeupCamInternal3.s(FunStickerTemplate.f40650e, funStickerActionHintCallback3), new y(i2));
        }
    }
}

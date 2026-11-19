package com.perfectcorp.perfectlib;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t3 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PhotoMakeupInternal f41864c;

    public /* synthetic */ t3(PhotoMakeupInternal photoMakeupInternal, int i2) {
        this.f41863b = i2;
        this.f41864c = photoMakeupInternal;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f41863b;
        PhotoMakeupInternal photoMakeupInternal = this.f41864c;
        switch (i2) {
            case 0:
                photoMakeupInternal.l.f39713a = null;
                ArrayList arrayList = new ArrayList();
                for (BeautyMode beautyMode : ApplyEffectCtrl.I) {
                    if (beautyMode != BeautyMode.SKIN_SMOOTHER && !beautyMode.isReshape()) {
                        arrayList.add(photoMakeupInternal.f39787h.h(beautyMode));
                    }
                }
                return Singles.a(photoMakeupInternal.f39788i.applyConfiguration(new ApplyEffectCtrl.ConfigurationWrapper(arrayList)), CallingThread.ANY);
            case 1:
                LiveSettingCtrl liveSettingCtrl = photoMakeupInternal.f39789j;
                ImmutableMap.Builder builder = new ImmutableMap.Builder();
                for (ReshapeEffect reshapeEffect : ReshapeEffect.values()) {
                    BeautyMode beautyMode2 = reshapeEffect.beautyMode;
                    if (liveSettingCtrl.o(beautyMode2)) {
                        int iK = liveSettingCtrl.k(beautyMode2);
                        try {
                            reshapeEffect.a(iK, "intensity");
                        } catch (Throwable unused) {
                            iK = 0;
                        }
                        builder.b(reshapeEffect, Integer.valueOf(iK));
                        break;
                    }
                }
                return builder.a();
            default:
                photoMakeupInternal.l.f39713a = null;
                ArrayList arrayList2 = new ArrayList();
                Iterator<E> it = ApplyEffectCtrl.I.iterator();
                while (it.hasNext()) {
                    arrayList2.add(photoMakeupInternal.f39787h.h((BeautyMode) it.next()));
                }
                return Singles.a(photoMakeupInternal.f39788i.applyConfiguration(new ApplyEffectCtrl.ConfigurationWrapper(arrayList2)), CallingThread.ANY);
        }
    }
}

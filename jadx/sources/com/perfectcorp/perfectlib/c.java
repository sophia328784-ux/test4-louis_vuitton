package com.perfectcorp.perfectlib;

import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.developermode.WatermarkBlender;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f40050b;

    public /* synthetic */ c(Object obj, int i2) {
        this.f40049a = i2;
        this.f40050b = obj;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40049a;
        Object obj2 = this.f40050b;
        switch (i2) {
            case 0:
                ((AccessoryVtoApplier.CreateCallback) obj2).onSuccess((AccessoryVtoApplierImpl) obj);
                break;
            case 1:
                ((BraceletVtoApplier.CreateCallback) obj2).onSuccess((BraceletVtoApplierImpl) obj);
                break;
            case 2:
                ((JewelryVtoApplier.CreateCallback) obj2).onSuccess((JewelryVtoApplierImpl) obj);
                break;
            case 3:
                ((NailVtoApplier.CreateCallback) obj2).onSuccess((NailVtoApplierImpl) obj);
                break;
            case 4:
                Throwable th = (Throwable) obj;
                PerfectLib.f39745j = PerfectLib.State.RELEASED;
                PerfectLib.f39738a = new ApplyEffectParams();
                PerfectLib.f39739b = new ApplyEffectParams();
                PerfectLib.f39740c = new HandFunctionalities();
                Set set = Collections.EMPTY_SET;
                PerfectLib.f39742f = set;
                PerfectLib.g = Configuration.m;
                com.perfectcorp.perfectlib.ymk.clflurry.a.f41968e = null;
                GPUImageRenderer.O = false;
                WatermarkBlender.f40116a = false;
                PerfectLib.d = set;
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                Log.e("PerfectLib", "SDK release failed.", th);
                com.perfectcorp.common.logger.j.d();
                ((SettableFuture) obj2).setException(th);
                break;
            case 5:
                ((PhotoMakeup.PhotoMakeupFrameProcessingThread) obj2).runOnGLThread((Runnable) obj);
                break;
            case 6:
                ((RingVtoApplier.CreateCallback) obj2).onSuccess((RingVtoApplierImpl) obj);
                break;
            case 7:
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj2;
                Log.e("SkuCacheStrategyHelper", "[downloadSku] failed, try to remove failed data, guid=" + hVar.skuGUID, (Throwable) obj);
                SkuCacheStrategyHelper.c(hVar.skuGUID);
                Log.d("SkuCacheStrategyHelper", "[downloadSku] done for remove failed data, guid=" + hVar.skuGUID);
                break;
            case 8:
                Sku sku = (Sku) obj2;
                Log.c("SkuCacheStrategyHelper", " remove CacheStrategyForCacheFirstThenUpdate table guid=" + sku.f41266f, (Throwable) obj);
                SkuCacheStrategyHelper.c(sku.f41266f);
                break;
            case 9:
                Log.c("TagHandler", "[syncServerByType] failed. type=" + ((TagHandler.Type) obj2), (Throwable) obj);
                break;
            default:
                ((WatchVtoApplier.CreateCallback) obj2).onSuccess((WatchVtoApplierImpl) obj);
                break;
        }
    }
}

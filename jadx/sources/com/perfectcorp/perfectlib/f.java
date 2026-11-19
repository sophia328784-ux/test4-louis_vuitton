package com.perfectcorp.perfectlib;

import com.perfectcorp.common.utility.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40137c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f40138e;

    public /* synthetic */ f(Object obj, Object obj2, Object obj3, int i2) {
        this.f40136b = i2;
        this.f40137c = obj;
        this.d = obj2;
        this.f40138e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40136b;
        Object obj = this.f40138e;
        Object obj2 = this.d;
        Object obj3 = this.f40137c;
        switch (i2) {
            case 0:
                Throwable th = (Throwable) obj2;
                Log.e(((AccessoryVtoApplierImpl) obj3).f39462a, "[getEffectIds] failed", th);
                ((AccessoryVtoApplierImpl.EffectIdCallback) obj).onFailure(th);
                break;
            case 1:
                Throwable th2 = (Throwable) obj2;
                Log.e(((AccessoryVtoApplierImpl) obj3).f39462a, "[getProductIds] failed", th2);
                ((AccessoryVtoApplierImpl.ProductIdCallback) obj).onFailure(th2);
                break;
            case 2:
                Throwable th3 = (Throwable) obj2;
                Log.e(((HandVtoApplierImpl) obj3).f39633a, "[getProductIds] failed", th3);
                ((HandVtoApplierImpl.ProductIdCallback) obj).onFailure(th3);
                break;
            case 3:
                Throwable th4 = (Throwable) obj2;
                Log.e(((HandVtoApplierImpl) obj3).f39633a, "[getEffectIds] failed", th4);
                ((HandVtoApplierImpl.EffectIdCallback) obj).onFailure(th4);
                break;
            case 4:
                Throwable th5 = (Throwable) obj2;
                Log.e(((JewelryVtoApplierImpl) obj3).f39647a, "[apply] failed", th5);
                ((JewelryVtoApplier.DownloadAndApplyCallback) obj).onFailure(th5);
                break;
            case 5:
                Throwable th6 = (Throwable) obj2;
                Log.e(((NailVtoApplierImpl) obj3).f39724a, "[apply] failed", th6);
                ((NailVtoApplier.DownloadAndApplyCallback) obj).onFailure(th6);
                break;
            case 6:
                Throwable th7 = (Throwable) obj2;
                Log.e(((NailVtoApplierImpl) obj3).f39724a, "[getIntensities] failed", th7);
                ((NailVtoApplier.IntensitiesCallback) obj).onFailure(th7);
                break;
            case 7:
                Throwable th8 = (Throwable) obj2;
                Log.e(((NailVtoApplierImpl) obj3).f39724a, "[getProductIds] failed", th8);
                ((NailVtoApplier.ProductIdCallback) obj).onFailure(th8);
                break;
            case 8:
                Throwable th9 = (Throwable) obj2;
                Log.e(((NailVtoApplierImpl) obj3).f39724a, "[getEffectIds] failed", th9);
                ((NailVtoApplier.EffectIdCallback) obj).onFailure(th9);
                break;
            case 9:
                ((ShadeFinder.ShadeFinderCallback) obj3).onAnalyze((ShadeFinderData) obj2, (ShadeFinderQualityCheck) obj);
                break;
            default:
                ((ShadeFinderRecommendationHandler.AnonymousClass1) ((RecommendationHandler.SyncServerCallback) obj3)).progress(((((double) ((com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.conditionalinfo.a) obj2).results.size()) * 0.23999999463558197d) / ((double) ((ArrayList) obj).size())) + 0.75d);
                break;
        }
    }
}

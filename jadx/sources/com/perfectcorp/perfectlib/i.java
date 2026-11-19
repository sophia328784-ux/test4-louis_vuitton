package com.perfectcorp.perfectlib;

import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.util.Pair;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.common.utility.CacheStrategies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.core.FrameProcessingThread;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableMap;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.g7;
import defpackage.g81;
import defpackage.md;
import defpackage.pv0;
import defpackage.vv0;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class i implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40332c;

    public /* synthetic */ i(ShadeFinderRecommendationHandler shadeFinderRecommendationHandler, Pair pair) {
        this.f40331b = 8;
        this.f40332c = pair;
    }

    /* JADX WARN: Type inference failed for: r9v42, types: [com.perfectcorp.perfectlib.rh.utility.networkcache.d$c] */
    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        int i2 = this.f40331b;
        Object obj = this.f40332c;
        switch (i2) {
            case 0:
                AccessoryVtoApplierImpl accessoryVtoApplierImpl = (AccessoryVtoApplierImpl) obj;
                accessoryVtoApplierImpl.f39470k = null;
                return Optional.b((Bitmap) MoreFutures.b(accessoryVtoApplierImpl.h()));
            case 1:
                ((JewelryLookHandler) obj).getClass();
                List list = (List) GsonHelper.f39261b.j(JewelryLookHandlerPreferences.f40324a.getString("LOOK_LIST_ITEMS", null), new JewelryLookHandler.AnonymousClass1().f42556b);
                return list != null ? FluentIterable.n(list).r(new g7(20)).p() : com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY.d);
            case 2:
                LiveSettingCtrl liveSettingCtrl = ((MakeupCamInternal) obj).f39699h;
                ImmutableMap.Builder builder = new ImmutableMap.Builder();
                for (ReshapeEffect reshapeEffect : ReshapeEffect.values()) {
                    BeautyMode beautyMode = reshapeEffect.beautyMode;
                    if (liveSettingCtrl.o(beautyMode)) {
                        int iK = liveSettingCtrl.k(beautyMode);
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
            case 3:
                LiveSettingCtrl liveSettingCtrl2 = (LiveSettingCtrl) obj;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder2 = new ImmutableList.Builder();
                for (ReshapeEffect reshapeEffect2 : ReshapeEffect.values()) {
                    BeautyMode beautyMode2 = reshapeEffect2.beautyMode;
                    if (liveSettingCtrl2.o(beautyMode2)) {
                        int iK2 = liveSettingCtrl2.k(beautyMode2);
                        try {
                            reshapeEffect2.a(iK2, "intensity");
                        } catch (Throwable unused2) {
                            iK2 = 0;
                        }
                        if (iK2 != 0) {
                            builder2.f(new ReshapeEffectId(reshapeEffect2, iK2));
                        }
                        break;
                    }
                }
                return builder2.i();
            case 4:
                ((NailLookHandler) obj).getClass();
                List list2 = (List) GsonHelper.f39261b.j(NailLookHandlerPreferences.f40328a.getString("LOOK_LIST_ITEMS", null), new NailLookHandler.AnonymousClass1().f42556b);
                return list2 != null ? FluentIterable.n(list2).r(new g7(26)).p() : com.perfectcorp.perfectlib.ph.database.ymk.look.e.b(YMKDatabase.b(), com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL.d);
            case 5:
                return ((NailVtoApplierImpl) obj).A();
            case 6:
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                return (Completable) CacheCleaner.class.getDeclaredMethod("cleanUp", Integer.TYPE, Future.class).invoke(null, Integer.valueOf(com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getInt("MAX_CACHE_SIZE_IN_MB", Integer.MAX_VALUE)), (SettableFuture) obj);
            case 7:
                PhotoMakeup photoMakeup = (PhotoMakeup) obj;
                PhotoMakeup.PhotoMakeupFrameProcessingThread photoMakeupFrameProcessingThread = photoMakeup.f39762f;
                photoMakeupFrameProcessingThread.a();
                Uninterruptibles.b(photoMakeupFrameProcessingThread);
                photoMakeup.g.recycle();
                FrameProcessingThread.Frame frame = photoMakeup.f39763h;
                if (frame != null) {
                    frame.d = null;
                }
                photoMakeup.l.clear();
                photoMakeup.n.dispose();
                photoMakeup.d.f39767b.m();
                return "PhotoMakeup";
            case 8:
                Pair pair = (Pair) obj;
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) pair.first;
                ShadeFinderRecommendationHandler.AnonymousClass1 anonymousClass1 = new ShadeFinderRecommendationHandler.AnonymousClass1();
                anonymousClass1.f39871a = pair;
                Log.g(3, "ShadeFinderRecommendationHandler", "[syncServerInternal] start");
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(new Factory.Builder<com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a>() { // from class: com.perfectcorp.perfectlib.rh.utility.networkcache.d$c
                    public final Single c() {
                        return CacheStrategies.a(new a$a(), a(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(4)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new g()))));
                    }
                }.c(), new defpackage.p3(anonymousClass1, downloadTaskCancelable, 24)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new defpackage.n2(anonymousClass1, 11))).e(new vv0(anonymousClass1, 0)).g(new pv0(2));
            case 9:
                com.perfectcorp.perfectlib.ph.database.ymk.generictag.b bVar = com.perfectcorp.perfectlib.ph.database.ymk.generictag.b.d;
                SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
                String str = ((TagType) obj).f39993a;
                bVar.getClass();
                Objects.requireNonNull(str);
                return bVar.e(sQLiteDatabaseB, "Type", str);
            case 10:
                ApplierTarget applierTarget = (ApplierTarget) obj;
                if (ModuleConfig.q) {
                    if (applierTarget instanceof MakeupCam) {
                        return new VtoApplier.MakeupCamApplier((MakeupCam) applierTarget);
                    }
                    if (applierTarget instanceof PhotoMakeup) {
                        return new VtoApplier.PhotoMakeupApplier((PhotoMakeup) applierTarget);
                    }
                }
                md.n("Unknown instance of applier target.");
                return null;
            case 11:
                VtoPalette.PaletteMajor paletteMajor = (VtoPalette.PaletteMajor) obj;
                ProductInfo productInfo = paletteMajor.d;
                BeautyMode beautyMode3 = productInfo.f39797b;
                BeautyMode beautyMode4 = BeautyMode.HAIR_DYE;
                SkuInfo skuInfo = paletteMajor.f40010f;
                return beautyMode3 == beautyMode4 ? VtoDetail.PaletteMajor.a(productInfo, skuInfo) : SubItemInfo.d(skuInfo);
            case 12:
                VtoPalette.SubPalette subPalette = (VtoPalette.SubPalette) obj;
                String str2 = subPalette.f40012f.f39943c;
                List listS = ApplyEffectUtility.s(str2, subPalette.g.f39958a);
                if (MoreCollections.a(listS)) {
                    return Collections.EMPTY_LIST;
                }
                List<String> listD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.d(YMKDatabase.b(), str2, (listS.size() == 1 && ((Integer) listS.get(0)).intValue() == -1) ? "" : new Joiner(", ").b(listS), false);
                bz bzVar2 = ImmutableList.f42200c;
                ImmutableList.Builder builder3 = new ImmutableList.Builder();
                for (String str3 : listD) {
                    YMKPrimitiveData.Pattern patternW = TemplateUtils.w(str3);
                    if (patternW == null) {
                        Log.d("VtoPalette$SubPalette", "[createPatternInfos] can not get pattern, ID=" + str3);
                    } else {
                        builder3.f(SubItemInfo.a(patternW));
                    }
                }
                return builder3.i();
            default:
                return com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.b(YMKDatabase.b(), ((VtoPattern.PatternMajor) obj).f40006a);
        }
    }

    public /* synthetic */ i(Object obj, int i2) {
        this.f40331b = i2;
        this.f40332c = obj;
    }
}

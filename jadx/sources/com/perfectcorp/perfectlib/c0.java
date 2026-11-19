package com.perfectcorp.perfectlib;

import android.content.SharedPreferences;
import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.exceptions.FunStickerNotSupportedException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import defpackage.bx0;
import defpackage.g8;
import defpackage.pv0;
import defpackage.y81;
import defpackage.yw0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f40052c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f40053e;

    public /* synthetic */ c0(Object obj, Object obj2, Object obj3, int i2) {
        this.f40051b = i2;
        this.f40052c = obj;
        this.d = obj2;
        this.f40053e = obj3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Optional optionalA;
        int i2 = this.f40051b;
        int i3 = 7;
        Object obj2 = this.f40053e;
        Object obj3 = this.d;
        Object obj4 = this.f40052c;
        switch (i2) {
            case 0:
                String str = (String) obj2;
                Throwable th = (Throwable) obj;
                FileUtils.c((File) obj3);
                Log.e("ContentPreloader", "preload fun sticker content failed, id=" + str, th);
                boolean z = th instanceof FunStickerNotSupportedException;
                PerfectLib.InitialCallbackWrapper initialCallbackWrapper = ((ContentPreloader) obj4).f39539h;
                if (z) {
                    initialCallbackWrapper.a(str, th);
                } else {
                    initialCallbackWrapper.a(str, new ContentIssueException(th));
                }
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new g8(str, 2));
            case 1:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                return MakeupCamInternal.h((ApplyEffectCtrl) obj4, (LiveSettingCtrl) obj3, (BeautyMode) ((GroupedObservable) obj2).f43162b, (List) obj, false);
            case 2:
                ApplyEffectCtrl applyEffectCtrl = (ApplyEffectCtrl) obj4;
                LiveSettingCtrl liveSettingCtrl = (LiveSettingCtrl) obj3;
                EffectConfig effectConfig = (EffectConfig) obj2;
                List list = (List) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                Iterator it = list.iterator();
                it.getClass();
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        Pair pair = (Pair) next;
                        Objects.requireNonNull(pair);
                        if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(((VtoSetting) pair.first).f40014a)) {
                            optionalA = Optional.e(next);
                        }
                    } else {
                        optionalA = Optional.a();
                    }
                }
                if (optionalA.d()) {
                    Pair pair2 = (Pair) optionalA.c();
                    VtoSetting vtoSetting = (VtoSetting) pair2.first;
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.s sVarH = Single.h((Sku) pair2.second);
                    ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                    return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(sVarH, new p1(vtoSetting, applyEffectCtrl, liveSettingCtrl, 0, 0, 1)).l();
                }
                int size = list.size();
                if (size <= 0) {
                    return Observable.empty();
                }
                if (size != 1) {
                    return Observable.just(MakeupCamInternal.j(applyEffectCtrl, FluentIterable.n(list).r(new x1(effectConfig, 0)).p()));
                }
                Pair pair3 = (Pair) list.get(0);
                VtoSetting vtoSetting2 = (VtoSetting) pair3.first;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.s sVarH2 = Single.h((Sku) pair3.second);
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(sVarH2, new p1(vtoSetting2, applyEffectCtrl, liveSettingCtrl, 0, 0, 1)).l();
            case 3:
                SharedPreferences.Editor editor = (SharedPreferences.Editor) obj4;
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) obj3;
                String str2 = (String) ((RequestTask.Response) obj).f39358b;
                editor.putString("RECOMMENDATION_SETTING", str2);
                PfCommons.c(new y3(syncServerCallback, 5));
                ((DownloadTaskCancelable) obj2).c();
                SkinCare3RecommendationHandler.RecommendationSetting recommendationSetting = (SkinCare3RecommendationHandler.RecommendationSetting) GsonHelper.f39260a.i(str2, SkinCare3RecommendationHandler.RecommendationSetting.class);
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new Factory.StringResponseBuilder(recommendationSetting.scriptPath, RequestTask.RequestMethod.GET).c(), new c0(editor, syncServerCallback, recommendationSetting, 4));
            case 4:
                ((SharedPreferences.Editor) obj4).putString("RECOMMENDATION_JS", (String) ((RequestTask.Response) obj).f39358b);
                PfCommons.c(new y3((RecommendationHandler.SyncServerCallback) obj3, 7));
                int i4 = ImmutableSet.d;
                ImmutableSet.Builder builder = new ImmutableSet.Builder();
                List list2 = (List) GsonHelper.f39260a.j(((SkinCare3RecommendationHandler.RecommendationSetting) obj2).productIds, new SkinCare3RecommendationHandler.RecommendationSetting.AnonymousClass1().f42556b);
                if (list2 != null) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        builder.h(Long.toString(((Long) it2.next()).longValue()));
                    }
                }
                return new ArrayList(builder.j());
            default:
                Sku sku = (Sku) obj4;
                Configuration.ImageSource imageSource = (Configuration.ImageSource) obj3;
                DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) obj2;
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) obj;
                long j2 = sku.f41269j;
                String str3 = sku.f41266f;
                int i5 = 3;
                if (j2 >= hVar.lastModified) {
                    Log.g(3, "SkuCacheStrategyHelper", "skip update, last modified date is the same between old and new metadata");
                    SkuCacheStrategyHelper.c(str3);
                    return Single.h(sku);
                }
                defpackage.a.v(3, "start download, guid=", str3, "SkuCacheStrategyHelper");
                NetworkTaskManager.TaskPriority taskPriority = NetworkTaskManager.TaskPriority.LOW;
                Log.g(3, "SkuCacheStrategyHelper", "[downloadSku] start id=" + hVar.skuGUID);
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new defpackage.n2(hVar, 13)), new y81(imageSource, downloadTaskCancelable, taskPriority, 13)), new yw0(i5)).f(new pv0(11)), new c(hVar, i3)), new bx0(hVar, 0));
        }
    }
}

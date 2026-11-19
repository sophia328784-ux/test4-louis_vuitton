package defpackage;

import android.content.res.AssetFileDescriptor;
import android.util.Pair;
import com.appsflyer.sdk_base.util.ContentProviderFetcher;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.AccessoryApplierTarget;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.AccessoryVtoApplier;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PhotoMakeup;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.FramebufferRendererImpl;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDao;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.perfectlib.y;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.d;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.b;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import com.sightcall.advancedannotations.data.AdvancedAnnotationsRepositoryImpl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n2 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76422c;

    public /* synthetic */ n2(Object obj, int i2) {
        this.f76421b = i2;
        this.f76422c = obj;
    }

    private final Object a() {
        return AccessoryVtoApplier.a((AccessoryApplierTarget) this.f76422c);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        int i2 = 4;
        int i3 = 3;
        final int i4 = 1;
        final int i5 = 0;
        switch (this.f76421b) {
            case 0:
                return a();
            case 1:
                return ((AdvancedAnnotationsRepositoryImpl) this.f76422c).parseLocalFile();
            case 2:
                ConsumerSingleObserver consumerSingleObserver = (ConsumerSingleObserver) this.f76422c;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return consumerSingleObserver;
            case 3:
                Collection collection = (Collection) this.f76422c;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                ArrayList arrayList = new ArrayList(collection);
                ImmutableList immutableListP = FluentIterable.n(arrayList).r(new g7(28)).p();
                Log.g(3, "SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] start::skuSetIds=" + immutableListP);
                Single list = a.a(immutableListP).concatMapIterable(new yw0(i4)).toList();
                zw0 zw0Var = new zw0(immutableListP, i4);
                list.getClass();
                Completable completableIgnoreElements = new o(new t(list, zw0Var), Functions.f42605a).filter(new q2(8, arrayList)).flatMapSingle(new yw0(2)).ignoreElements();
                n7 n7Var = new n7(26);
                completableIgnoreElements.getClass();
                n nVarF = new f(completableIgnoreElements, n7Var).i(Schedulers.f43170c).f(new n7(i3));
                CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new d8(i5), new n7(i2));
                nVarF.a(callbackCompletableObserver);
                return callbackCompletableObserver;
            case 4:
                return ((ContentProviderFetcher) this.f76422c).lambda$new$0();
            case 5:
                final FaceAttributeAnalyzer faceAttributeAnalyzer = (FaceAttributeAnalyzer) this.f76422c;
                Log.g(3, "FaceAttributeAnalyzer", "[queryCustomFeatures] start");
                return new h(new t(com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.faceattribute.a.a(), new y(faceAttributeAnalyzer)).f(new Consumer() { // from class: vw
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i6 = i5;
                        FaceAttributeAnalyzer faceAttributeAnalyzer2 = faceAttributeAnalyzer;
                        switch (i6) {
                            case 0:
                                faceAttributeAnalyzer2.a();
                                a.A(new StringBuilder("[queryCustomFeatures] succeeded. customFeature="), ((d.a) obj).brand, 3, "FaceAttributeAnalyzer");
                                break;
                            default:
                                Log.e("FaceAttributeAnalyzer", "[queryCustomFeatures] failed, using stored preferences", (Throwable) obj);
                                faceAttributeAnalyzer2.a();
                                break;
                        }
                    }
                }), new Consumer() { // from class: vw
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i6 = i4;
                        FaceAttributeAnalyzer faceAttributeAnalyzer2 = faceAttributeAnalyzer;
                        switch (i6) {
                            case 0:
                                faceAttributeAnalyzer2.a();
                                a.A(new StringBuilder("[queryCustomFeatures] succeeded. customFeature="), ((d.a) obj).brand, 3, "FaceAttributeAnalyzer");
                                break;
                            default:
                                Log.e("FaceAttributeAnalyzer", "[queryCustomFeatures] failed, using stored preferences", (Throwable) obj);
                                faceAttributeAnalyzer2.a();
                                break;
                        }
                    }
                });
            case 6:
                ApplyEffectCtrl.Configuration configuration = (ApplyEffectCtrl.Configuration) this.f76422c;
                configuration.b();
                return configuration;
            case 7:
                AccessoryCamWrapper accessoryCamWrapper = (AccessoryCamWrapper) this.f76422c;
                FramebufferRendererImpl framebufferRendererImpl = new FramebufferRendererImpl();
                MakeupCam makeupCam = new MakeupCam(framebufferRendererImpl.f40355a, new o2(framebufferRendererImpl, 9), false, accessoryCamWrapper);
                framebufferRendererImpl.f40355a.f25465f = new fw(framebufferRendererImpl, 19);
                return Pair.create(makeupCam, framebufferRendererImpl);
            case 8:
                final BaseVenus baseVenus = (BaseVenus) this.f76422c;
                Log.g(3, "MakeupCam", "[queryCustomFeatures] start");
                return new h(new t(b.a(), new y(i3)).f(new Consumer() { // from class: fc0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i6 = i5;
                        BaseVenus baseVenus2 = baseVenus;
                        switch (i6) {
                            case 0:
                                MakeupCam.d(baseVenus2);
                                a.A(new StringBuilder("[queryCustomFeatures] succeeded. customFeature="), ((com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a.C0199a) obj).brand, 3, "MakeupCam");
                                break;
                            default:
                                Log.e("MakeupCam", "[queryCustomFeatures] failed, using stored preferences", (Throwable) obj);
                                MakeupCam.d(baseVenus2);
                                break;
                        }
                    }
                }), new Consumer() { // from class: fc0
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i6 = i4;
                        BaseVenus baseVenus2 = baseVenus;
                        switch (i6) {
                            case 0:
                                MakeupCam.d(baseVenus2);
                                a.A(new StringBuilder("[queryCustomFeatures] succeeded. customFeature="), ((com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup.a.C0199a) obj).brand, 3, "MakeupCam");
                                break;
                            default:
                                Log.e("MakeupCam", "[queryCustomFeatures] failed, using stored preferences", (Throwable) obj);
                                MakeupCam.d(baseVenus2);
                                break;
                        }
                    }
                });
            case 9:
                MakeupCam makeupCam2 = (MakeupCam) this.f76422c;
                Threads.a();
                makeupCam2.removeApplier();
                LiveMakeupCtrl liveMakeupCtrl = makeupCam2.f39678e.f40751a;
                liveMakeupCtrl.getClass();
                try {
                    liveMakeupCtrl.l.unregisterListener(liveMakeupCtrl);
                    break;
                } catch (Exception e2) {
                    Log.e("LiveMakeupCtrl", "onPause", e2);
                }
                new i(new xw(makeupCam2, i2)).i(Schedulers.f43170c).a(new CallbackCompletableObserver(com.perfectcorp.common.rx.a.f39388a, Functions.f42607c));
                makeupCam2.onDestroyed();
                return "MakeupCam";
            case 10:
                PhotoMakeup photoMakeup = (PhotoMakeup) this.f76422c;
                if (photoMakeup.f39766k) {
                    str = "Face already detected.";
                } else {
                    if (!photoMakeup.f39765j) {
                        photoMakeup.f39765j = true;
                        return photoMakeup.f39763h;
                    }
                    str = "Face is detecting.";
                }
                md.k(str);
                return null;
            case 11:
                RecommendationHandler.SyncServerCallback syncServerCallback = (RecommendationHandler.SyncServerCallback) this.f76422c;
                ArrayList arrayListH = SkuDao.h(YMKDatabase.b(), SkuBeautyMode$FeatureType.SKIN_TONE.toString());
                return Observable.fromIterable(Lists.b(30, arrayListH)).flatMapCompletable(new p3(syncServerCallback, arrayListH, 25));
            case 12:
                Sku sku = (Sku) this.f76422c;
                List listB = com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b("Guid=?", new String[]{sku.f41266f});
                if ((!listB.isEmpty() ? Optional.e((com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a) listB.get(0)) : Optional.a()).d()) {
                    return Boolean.TRUE;
                }
                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c(new com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a(sku.f41266f, com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.SKU, "", com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b.f41168a));
                return Boolean.FALSE;
            case 13:
                com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) this.f76422c;
                com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c(new com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.C0136a(hVar.skuGUID, com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.c.SKU, GsonHelper.f39261b.k(hVar), com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a.b.f41168a));
                return hVar;
            case 14:
                return (AssetFileDescriptor) this.f76422c;
            case 15:
                TemplateUtils.c cVar = (TemplateUtils.c) this.f76422c;
                float f2 = TemplateUtils.f41580a;
                TemplateUtils.h(YMKDatabase.c(), cVar);
                return cVar;
            default:
                YMKPrimitiveData.Palette palette = (YMKPrimitiveData.Palette) this.f76422c;
                ExecutorService executorService = e.f41633a;
                ArrayList arrayListA = TemplateUtils.A(palette.f40814b);
                palette.g = arrayListA;
                return Collections.unmodifiableList(arrayListA);
        }
    }
}

package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.et;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public abstract class JewelryVtoApplierImpl extends JewelryVtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositeDisposable f39648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.ph.clflurry.b.a f39649c;
    public final AnonymousClass1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39650e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d f39652h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f39651f = new AtomicInteger();
    public DownloadTaskCancelable g = DownloadTaskCancelable.f40351e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f39653i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Configuration.ImageSource f39654j = PerfectLib.g.d;

    /* JADX WARN: Type inference failed for: r1v0, types: [com.perfectcorp.perfectlib.JewelryVtoApplierImpl$1] */
    public JewelryVtoApplierImpl(String str, CompositeDisposable compositeDisposable, com.perfectcorp.perfectlib.ph.clflurry.b.a aVar) {
        this.f39647a = str;
        this.f39648b = compositeDisposable;
        this.f39649c = aVar;
        this.f39650e = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#downloadTaskExecutor"))));
        this.f39652h = Schedulers.a(Executors.newSingleThreadExecutor(NamedThreadFactory.b(str.concat("#applyTaskExecutor"))));
        this.d = new HandVtoApplierImpl(str, compositeDisposable, PerfectEffect.JEWELRY, aVar) { // from class: com.perfectcorp.perfectlib.JewelryVtoApplierImpl.1
            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final EffectId b(com.perfectcorp.perfectlib.ph.utility.b bVar) {
                EffectId.Builder builder;
                String str2 = bVar.f41736b;
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.f(str2)) {
                    builder = new EffectId.Builder(PerfectEffect.JEWELRY);
                    builder.f39567b = EffectId.c(str2);
                } else {
                    builder = new EffectId.Builder(PerfectEffect.JEWELRY);
                    builder.f39568c = EffectId.c(bVar.f41737c);
                    builder.d = EffectId.c(bVar.d);
                    builder.m = bVar;
                }
                return builder.a();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture f(ArrayList arrayList) {
                return JewelryVtoApplierImpl.this.c(arrayList);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final List h(List list, List list2) {
                return RingVtoApplierImpl.d(list, list2);
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void i() {
                JewelryVtoApplierImpl.this.e();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ListenableFuture q() {
                return JewelryVtoApplierImpl.this.g();
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final ArrayList r(List list) {
                ArrayList arrayListG;
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    VtoSetting vtoSetting = (VtoSetting) it.next();
                    String str2 = ApplyEffectUtility.d(vtoSetting).f41263b;
                    if (SkuTemplateUtils.a(str2) == SkuBeautyMode$FeatureType.RING) {
                        arrayListG = RingVtoApplierImpl.g(Collections.singletonList(vtoSetting));
                    } else if (SkuTemplateUtils.a(str2) == SkuBeautyMode$FeatureType.BRACELET) {
                        arrayListG = BraceletVtoApplierImpl.f(Collections.singletonList(vtoSetting));
                    } else if (SkuTemplateUtils.a(str2) == SkuBeautyMode$FeatureType.WATCH) {
                        arrayListG = WatchVtoApplierImpl.e(Collections.singletonList(vtoSetting));
                    }
                    arrayList.addAll(arrayListG);
                }
                return arrayList;
            }

            @Override // com.perfectcorp.perfectlib.HandVtoApplierImpl
            public final void w() {
                JewelryVtoApplierImpl.this.h();
            }
        };
    }

    public static ArrayList d(YMKPrimitiveData.Look look) {
        com.perfectcorp.perfectlib.ph.utility.b bVar;
        ArrayList arrayList = new ArrayList();
        com.perfectcorp.perfectlib.ph.template.e.n(look);
        List<YMKPrimitiveData.Effect> listA = look.a();
        String str = look.f40781a;
        for (YMKPrimitiveData.Effect effect : listA) {
            BeautyMode beautyMode = BeautyMode.RING;
            BeautyMode beautyMode2 = effect.f40758b;
            String str2 = effect.f40757a;
            EffectInfo.Extras extras = effect.g;
            String str3 = effect.f40759c;
            if (beautyMode == beautyMode2) {
                Objects.requireNonNull(str3, "pattern guid should not be null.");
                com.perfectcorp.perfectlib.ph.template.m mVarD = com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(YMKDatabase.b(), str3);
                Objects.requireNonNull(mVarD, "pattern info should not be null.");
                com.perfectcorp.perfectlib.ph.template.c cVar = (com.perfectcorp.perfectlib.ph.template.c) com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(YMKDatabase.b(), str3).get(0);
                Objects.requireNonNull(cVar, "maskInfo should not be null.");
                com.perfectcorp.perfectlib.ph.template.idc.e.f fVarO = com.perfectcorp.perfectlib.ph.template.e.o(str3);
                Objects.requireNonNull(extras, "effectExtras should not be null.");
                String strA = extras.O;
                String strA2 = extras.N;
                String strA3 = extras.M;
                String str4 = extras.f40958j;
                if (TextUtils.isEmpty(str4)) {
                    str4 = mVarD.f41678j.position;
                }
                if (TextUtils.isEmpty(strA3)) {
                    strA3 = fVarO.a("object_distance_ratio_back");
                }
                if (TextUtils.isEmpty(strA2)) {
                    strA2 = fVarO.a("object_distance_ratio_palm");
                }
                if (TextUtils.isEmpty(strA)) {
                    strA = fVarO.a("adaptive_rotate");
                }
                String strA4 = cVar.a();
                com.perfectcorp.perfectlib.ph.utility.b.a aVar = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.of(beautyMode2, ItemSubType.NONE), str2, str3);
                aVar.l = RingPosition.of(str4);
                aVar.a(strA4);
                aVar.f41750i = TemplateUtils.a(strA3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                aVar.f41751j = TemplateUtils.a(strA2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                aVar.f41752k = TemplateUtils.m(strA, true);
                if (!TextUtils.isEmpty(str)) {
                    Objects.requireNonNull(str, "lookGuid can't be null");
                    aVar.f41746c = str;
                }
                bVar = new com.perfectcorp.perfectlib.ph.utility.b(aVar);
            } else if (BeautyMode.BRACELET == beautyMode2 || BeautyMode.WATCH == beautyMode2) {
                Objects.requireNonNull(str3, "pattern guid should not be null.");
                Objects.requireNonNull(com.perfectcorp.perfectlib.ph.database.ymk.pattern.a.d(YMKDatabase.b(), str3), "pattern info should not be null.");
                com.perfectcorp.perfectlib.ph.template.c cVar2 = (com.perfectcorp.perfectlib.ph.template.c) com.perfectcorp.perfectlib.ph.database.ymk.mask.a.a(YMKDatabase.b(), str3).get(0);
                Objects.requireNonNull(cVar2, "maskInfo should not be null.");
                com.perfectcorp.perfectlib.ph.template.idc.e.f fVarO2 = com.perfectcorp.perfectlib.ph.template.e.o(str3);
                Objects.requireNonNull(extras, "effectExtras should not be null.");
                String strA5 = extras.L;
                String strA6 = extras.K;
                if (TextUtils.isEmpty(strA6)) {
                    strA6 = fVarO2.a("object_distance_ratio");
                }
                if (TextUtils.isEmpty(strA5)) {
                    strA5 = fVarO2.a("is_rigid_body");
                }
                String strA7 = cVar2.a();
                com.perfectcorp.perfectlib.ph.utility.b.a aVar2 = new com.perfectcorp.perfectlib.ph.utility.b.a(PerfectEffect.of(beautyMode2, ItemSubType.NONE), str2, str3);
                aVar2.a(strA7);
                aVar2.g = TemplateUtils.a(strA6, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                aVar2.f41749h = TemplateUtils.m(strA5, false);
                if (!TextUtils.isEmpty(str)) {
                    Objects.requireNonNull(str, "lookGuid can't be null");
                    aVar2.f41746c = str;
                }
                bVar = new com.perfectcorp.perfectlib.ph.utility.b(aVar2);
            }
            arrayList.add(bVar);
        }
        return arrayList;
    }

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final Cancelable apply(LookSetting lookSetting, JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback) throws Throwable {
        Threads.a();
        e();
        Objects.requireNonNull(lookSetting, "lookSetting can't be null");
        if (downloadAndApplyCallback == null) {
            downloadAndApplyCallback = JewelryVtoApplier.DownloadAndApplyCallback.NOP;
        }
        final JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback2 = (JewelryVtoApplier.DownloadAndApplyCallback) Proxies.a(JewelryVtoApplier.DownloadAndApplyCallback.class, downloadAndApplyCallback);
        try {
            h();
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            final int i2 = 3;
            Log.g(3, this.f39647a, "[apply] lookSetting=" + lookSetting + ", cacheStrategy=" + downloadCacheStrategy);
            final int i3 = 1;
            if (downloadCacheStrategy == DownloadCacheStrategy.CACHE_ONLY) {
                final String lookGuid = lookSetting.getLookGuid();
                final int i4 = 0;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new c1(this, this.f39653i.incrementAndGet(), lookGuid, i4)).j(this.f39652h).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.d1

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ JewelryVtoApplierImpl f40105b;

                    {
                        this.f40105b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i5 = i4;
                        JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                        String str = lookGuid;
                        JewelryVtoApplierImpl jewelryVtoApplierImpl = this.f40105b;
                        switch (i5) {
                            case 0:
                                Log.g(3, jewelryVtoApplierImpl.f39647a, "[applyLookGuid] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            case 1:
                                Throwable th = (Throwable) obj;
                                boolean z = th instanceof SkipCallbackException;
                                String str2 = jewelryVtoApplierImpl.f39647a;
                                if (!z) {
                                    Log.e(str2, "[applyLookGuid] failed. lookGuid=" + str, th);
                                    downloadAndApplyCallback3.onFailure(th);
                                } else {
                                    Log.c(str2, "[applyLookGuid] task canceled. lookGuid=" + str, th);
                                }
                                break;
                            case 2:
                                Log.g(3, jewelryVtoApplierImpl.f39647a, "[downloadAndApplyLook] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            default:
                                Throwable th2 = (Throwable) obj;
                                boolean z2 = th2 instanceof SkipCallbackException;
                                String str3 = jewelryVtoApplierImpl.f39647a;
                                if (!z2) {
                                    Log.e(str3, "[downloadAndApplyLook] failed. lookGuid=" + str, th2);
                                    downloadAndApplyCallback3.onFailure(th2);
                                } else {
                                    Log.c(str3, "[downloadAndApplyLook] task canceled. lookGuid=" + str, th2);
                                }
                                break;
                        }
                    }
                }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.d1

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ JewelryVtoApplierImpl f40105b;

                    {
                        this.f40105b = this;
                    }

                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        int i5 = i3;
                        JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                        String str = lookGuid;
                        JewelryVtoApplierImpl jewelryVtoApplierImpl = this.f40105b;
                        switch (i5) {
                            case 0:
                                Log.g(3, jewelryVtoApplierImpl.f39647a, "[applyLookGuid] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            case 1:
                                Throwable th = (Throwable) obj;
                                boolean z = th instanceof SkipCallbackException;
                                String str2 = jewelryVtoApplierImpl.f39647a;
                                if (!z) {
                                    Log.e(str2, "[applyLookGuid] failed. lookGuid=" + str, th);
                                    downloadAndApplyCallback3.onFailure(th);
                                } else {
                                    Log.c(str2, "[applyLookGuid] task canceled. lookGuid=" + str, th);
                                }
                                break;
                            case 2:
                                Log.g(3, jewelryVtoApplierImpl.f39647a, "[downloadAndApplyLook] complete. lookGuid=" + str);
                                downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                                break;
                            default:
                                Throwable th2 = (Throwable) obj;
                                boolean z2 = th2 instanceof SkipCallbackException;
                                String str3 = jewelryVtoApplierImpl.f39647a;
                                if (!z2) {
                                    Log.e(str3, "[downloadAndApplyLook] failed. lookGuid=" + str, th2);
                                    downloadAndApplyCallback3.onFailure(th2);
                                } else {
                                    Log.c(str3, "[downloadAndApplyLook] task canceled. lookGuid=" + str, th2);
                                }
                                break;
                        }
                    }
                });
                uVarI.a(consumerSingleObserver);
                this.f39648b.b(consumerSingleObserver);
                return DownloadTaskCancelable.f40351e;
            }
            final String lookGuid2 = lookSetting.getLookGuid();
            int iIncrementAndGet = this.f39651f.incrementAndGet();
            int iIncrementAndGet2 = this.f39653i.incrementAndGet();
            this.g.cancel();
            DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadAndApplyLook");
            this.g = downloadTaskCancelable;
            LookHandler lookHandler = LookHandler.getInstance();
            String str = this.f39647a;
            if (lookHandler != null) {
                Log.g(3, str, "[cancelOnReleased] add cancelable \"" + downloadTaskCancelable + "\" to taskDisposables");
                lookHandler.f39668f.f39642a.b(Disposables.b(new et(downloadTaskCancelable, 17)));
            } else {
                Log.g(3, str, "[cancelOnReleased] cancelable \"" + downloadTaskCancelable + "\" cancel directly");
                downloadTaskCancelable.cancel();
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new e1(this, iIncrementAndGet, lookGuid2, downloadCacheStrategy, downloadAndApplyCallback2, downloadTaskCancelable, 0)).j(this.f39650e).i(this.f39652h), new s0(this, iIncrementAndGet2, lookGuid2, i3)).i(AndroidSchedulers.a());
            final int i5 = 2;
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new Consumer(this) { // from class: com.perfectcorp.perfectlib.d1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ JewelryVtoApplierImpl f40105b;

                {
                    this.f40105b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i5;
                    JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                    String str2 = lookGuid2;
                    JewelryVtoApplierImpl jewelryVtoApplierImpl = this.f40105b;
                    switch (i6) {
                        case 0:
                            Log.g(3, jewelryVtoApplierImpl.f39647a, "[applyLookGuid] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str3 = jewelryVtoApplierImpl.f39647a;
                            if (!z) {
                                Log.e(str3, "[applyLookGuid] failed. lookGuid=" + str2, th);
                                downloadAndApplyCallback3.onFailure(th);
                            } else {
                                Log.c(str3, "[applyLookGuid] task canceled. lookGuid=" + str2, th);
                            }
                            break;
                        case 2:
                            Log.g(3, jewelryVtoApplierImpl.f39647a, "[downloadAndApplyLook] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        default:
                            Throwable th2 = (Throwable) obj;
                            boolean z2 = th2 instanceof SkipCallbackException;
                            String str4 = jewelryVtoApplierImpl.f39647a;
                            if (!z2) {
                                Log.e(str4, "[downloadAndApplyLook] failed. lookGuid=" + str2, th2);
                                downloadAndApplyCallback3.onFailure(th2);
                            } else {
                                Log.c(str4, "[downloadAndApplyLook] task canceled. lookGuid=" + str2, th2);
                            }
                            break;
                    }
                }
            }, new Consumer(this) { // from class: com.perfectcorp.perfectlib.d1

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ JewelryVtoApplierImpl f40105b;

                {
                    this.f40105b = this;
                }

                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i6 = i2;
                    JewelryVtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                    String str2 = lookGuid2;
                    JewelryVtoApplierImpl jewelryVtoApplierImpl = this.f40105b;
                    switch (i6) {
                        case 0:
                            Log.g(3, jewelryVtoApplierImpl.f39647a, "[applyLookGuid] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        case 1:
                            Throwable th = (Throwable) obj;
                            boolean z = th instanceof SkipCallbackException;
                            String str3 = jewelryVtoApplierImpl.f39647a;
                            if (!z) {
                                Log.e(str3, "[applyLookGuid] failed. lookGuid=" + str2, th);
                                downloadAndApplyCallback3.onFailure(th);
                            } else {
                                Log.c(str3, "[applyLookGuid] task canceled. lookGuid=" + str2, th);
                            }
                            break;
                        case 2:
                            Log.g(3, jewelryVtoApplierImpl.f39647a, "[downloadAndApplyLook] complete. lookGuid=" + str2);
                            downloadAndApplyCallback3.onSuccess((Bitmap) ((Optional) obj).g());
                            break;
                        default:
                            Throwable th2 = (Throwable) obj;
                            boolean z2 = th2 instanceof SkipCallbackException;
                            String str4 = jewelryVtoApplierImpl.f39647a;
                            if (!z2) {
                                Log.e(str4, "[downloadAndApplyLook] failed. lookGuid=" + str2, th2);
                                downloadAndApplyCallback3.onFailure(th2);
                            } else {
                                Log.c(str4, "[downloadAndApplyLook] task canceled. lookGuid=" + str2, th2);
                            }
                            break;
                    }
                }
            });
            uVarI2.a(consumerSingleObserver2);
            this.f39648b.b(consumerSingleObserver2);
            return downloadTaskCancelable;
        } catch (Throwable th) {
            PfCommons.c(new f(this, th, downloadAndApplyCallback2, 4));
        }
    }

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final void applyEffectIds(List list, JewelryVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = JewelryVtoApplier.ApplyCallback.NOP;
        }
        u(list, applyCallback);
    }

    public abstract ListenableFuture c(ArrayList arrayList);

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final void clearAllEffects(JewelryVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = JewelryVtoApplier.ApplyCallback.NOP;
        }
        m(applyCallback);
    }

    public abstract void e();

    public final void f(int i2) {
        int i3 = this.f39653i.get();
        if (i3 != i2) {
            throw new SkipCallbackException(fc.f(i3, i2, "currentApplyTaskSN(", ") != expectedApplyTaskSN(", ")"));
        }
    }

    public abstract ListenableFuture g();

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final void getEffectIds(JewelryVtoApplier.EffectIdCallback effectIdCallback) {
        n(effectIdCallback);
    }

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final void getProductIds(JewelryVtoApplier.ProductIdCallback productIdCallback) {
        o(productIdCallback);
    }

    public void h() {
    }

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final Cancelable setRingPositionAndApply(List list, List list2, JewelryVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = JewelryVtoApplier.ApplyCallback.NOP;
        }
        return d(list, list2, applyCallback);
    }

    @Override // com.perfectcorp.perfectlib.JewelryVtoApplier
    public final Cancelable apply(List list, JewelryVtoApplier.ApplyCallback applyCallback) {
        if (applyCallback == null) {
            applyCallback = JewelryVtoApplier.ApplyCallback.NOP;
        }
        return c(list, applyCallback);
    }
}

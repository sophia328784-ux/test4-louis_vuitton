package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import android.util.Pair;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.VtoApplier;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.makeupcam.camera.FunStickerTemplate;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.b21;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VtoApplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile FunStickerActionHintCallback f39997a = FunStickerActionHintCallback.NOP;

    public interface ApplyCallback {
        public static final ApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.VtoApplier$ApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements ApplyCallback {
            @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
    }

    public interface CreateCallback {
        void onFailure(Throwable th);

        void onSuccess(VtoApplier vtoApplier);
    }

    public interface DownloadAndApplyCallback {
        public static final DownloadAndApplyCallback NOP = new AnonymousClass1();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.VtoApplier$DownloadAndApplyCallback$1, reason: invalid class name */
        class AnonymousClass1 implements DownloadAndApplyCallback {
            @Override // com.perfectcorp.perfectlib.VtoApplier.DownloadAndApplyCallback
            public final void downloadProgress(double d) {
            }

            @Override // com.perfectcorp.perfectlib.VtoApplier.DownloadAndApplyCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.perfectlib.VtoApplier.DownloadAndApplyCallback
            public final void onSuccess(Bitmap bitmap) {
            }
        }

        void downloadProgress(double d);

        void onFailure(Throwable th);

        void onSuccess(Bitmap bitmap);
    }

    public interface EffectIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List<EffectId> list);
    }

    public enum FunStickerActionHint {
        MOUTH_OPEN(FunStickerTemplate.ActionHint.MOUTH_OPEN),
        BLINK(FunStickerTemplate.ActionHint.BLINK);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private FunStickerTemplate.ActionHint f39999a;

        FunStickerActionHint(FunStickerTemplate.ActionHint actionHint) {
            this.f39999a = actionHint;
        }

        public static Optional a(FunStickerTemplate.ActionHint actionHint) {
            for (FunStickerActionHint funStickerActionHint : values()) {
                if (funStickerActionHint.f39999a == actionHint) {
                    return Optional.e(funStickerActionHint);
                }
            }
            return Optional.a();
        }
    }

    @FunctionalInterface
    public interface FunStickerActionHintCallback {
        public static final FunStickerActionHintCallback NOP = new b21(27);

        void onTrigger(List<FunStickerActionHint> list);
    }

    public interface IntensitiesCallback {
        void onFailure(Throwable th);

        void onSuccess(Map<PerfectEffect, int[]> map);
    }

    public interface ProductIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List<ProductId> list);
    }

    public interface ReshapeEffectIdCallback {
        void onFailure(Throwable th);

        void onSuccess(List<ReshapeEffectId> list);
    }

    public interface ReshapeIntensitiesCallback {
        void onFailure(Throwable th);

        void onSuccess(Map<ReshapeEffect, Integer> map);
    }

    public static void create(ApplierTarget applierTarget, final CreateCallback createCallback) {
        Objects.requireNonNull(applierTarget, "applierTarget can't be null");
        Objects.requireNonNull(createCallback, "createCallback can't be null");
        final int i2 = 0;
        final int i3 = 1;
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new i(applierTarget, 10)).j(Schedulers.f43170c).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new Consumer() { // from class: w51
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                VtoApplier.CreateCallback createCallback2 = createCallback;
                switch (i4) {
                    case 0:
                        createCallback2.onSuccess((VtoApplier) obj);
                        break;
                    default:
                        createCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        }, new Consumer() { // from class: w51
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                VtoApplier.CreateCallback createCallback2 = createCallback;
                switch (i4) {
                    case 0:
                        createCallback2.onSuccess((VtoApplier) obj);
                        break;
                    default:
                        createCallback2.onFailure((Throwable) obj);
                        break;
                }
            }
        }));
    }

    public abstract Cancelable apply(LookSetting lookSetting, DownloadAndApplyCallback downloadAndApplyCallback);

    public abstract Cancelable apply(List<VtoSetting> list, EffectConfig effectConfig, ApplyCallback applyCallback);

    public abstract void applyEffectIds(List<EffectId> list, List<ReshapeEffectId> list2, boolean z, ApplyCallback applyCallback);

    public abstract void clearAllEffects(ApplyCallback applyCallback);

    public abstract void clearAllEffectsExceptSkinSmooth(ApplyCallback applyCallback);

    public abstract void clearAllMakeupEffects(ApplyCallback applyCallback);

    public abstract void clearEffect(PerfectEffect perfectEffect, ApplyCallback applyCallback);

    public abstract void getEffectIds(EffectIdCallback effectIdCallback);

    public abstract void getIntensities(IntensitiesCallback intensitiesCallback);

    public abstract Object getMakeupVideoSource();

    public abstract void getProductIds(ProductIdCallback productIdCallback);

    public abstract void getReshapeEffectIds(ReshapeEffectIdCallback reshapeEffectIdCallback);

    public abstract void getReshapeIntensities(ReshapeIntensitiesCallback reshapeIntensitiesCallback);

    public void setFunStickerActionHintCallback(FunStickerActionHintCallback funStickerActionHintCallback) {
        if (funStickerActionHintCallback == null) {
            funStickerActionHintCallback = FunStickerActionHintCallback.NOP;
        }
        this.f39997a = funStickerActionHintCallback;
    }

    public abstract void setIntensities(Map<PerfectEffect, int[]> map, ApplyCallback applyCallback);

    public abstract void setLipstickTransition(int i2, int i3);

    public abstract void setReshapeIntensities(Map<ReshapeEffect, Integer> map, ApplyCallback applyCallback);

    public static final class MakeupCamApplier extends VtoApplier {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MakeupCamInternal f40000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MakeupVideoSourceImpl f40001c;

        public MakeupCamApplier(MakeupCam makeupCam) {
            makeupCam.setApplier(this);
            this.f40000b = new MakeupCamInternal(makeupCam);
            this.f40001c = makeupCam.getVideoCaptureSource() != null ? new MakeupVideoSourceImpl() : null;
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final Cancelable apply(LookSetting lookSetting, DownloadAndApplyCallback downloadAndApplyCallback) throws Throwable {
            ConsumerSingleObserver consumerSingleObserver;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI;
            ConsumerSingleObserver consumerSingleObserver2;
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            int i2 = 3;
            Log.g(3, "VtoApplier", "[apply] lookSetting=" + lookSetting + ", cacheStrategy=" + downloadCacheStrategy);
            DownloadCacheStrategy downloadCacheStrategy2 = DownloadCacheStrategy.CACHE_ONLY;
            MakeupCamInternal makeupCamInternal = this.f40000b;
            int i3 = 2;
            int i4 = 4;
            String lookGuid = lookSetting.getLookGuid();
            if (downloadCacheStrategy == downloadCacheStrategy2) {
                if (downloadAndApplyCallback == null) {
                    downloadAndApplyCallback = DownloadAndApplyCallback.NOP;
                }
                DownloadAndApplyCallback downloadAndApplyCallback2 = (DownloadAndApplyCallback) Proxies.a(DownloadAndApplyCallback.class, downloadAndApplyCallback);
                FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
                makeupCamInternal.getClass();
                Threads.a();
                makeupCamInternal.f39698f.e();
                Objects.requireNonNull(lookGuid, "lookGuid can't be null");
                Objects.requireNonNull(downloadAndApplyCallback2, "callback can't be null");
                Log.g(3, "MakeupCamInternal", "applyLookGuid::lookGuid=".concat(lookGuid));
                Log.g(3, "MakeupCamInternal", "[applyLookByGuid] Start apply. lookGuid=".concat(lookGuid));
                int iIncrementAndGet = makeupCamInternal.d.incrementAndGet();
                int i5 = 1;
                if (PerfectLib.g.f39519h) {
                    int i6 = 0;
                    uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(lookGuid, i6)).j(Schedulers.f43170c), new w1(makeupCamInternal, iIncrementAndGet, funStickerActionHintCallback, lookGuid)).i(AndroidSchedulers.a());
                    consumerSingleObserver2 = new ConsumerSingleObserver(new k2(lookGuid, downloadAndApplyCallback2, i6), new k2(lookGuid, downloadAndApplyCallback2, i5));
                } else {
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(lookGuid, i5)).j(Schedulers.f43170c).i(makeupCamInternal.f39696c);
                    ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                    uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(uVarI2, new w1(makeupCamInternal, iIncrementAndGet, lookGuid, funStickerActionHintCallback)).i(Schedulers.f43170c), new a0(makeupCamInternal, lookGuid, i4)).i(AndroidSchedulers.a());
                    consumerSingleObserver2 = new ConsumerSingleObserver(new k2(lookGuid, downloadAndApplyCallback2, i3), new k2(lookGuid, downloadAndApplyCallback2, i2));
                }
                uVarI.a(consumerSingleObserver2);
                makeupCamInternal.f39698f.g.b(consumerSingleObserver2);
                return DownloadTaskCancelable.f40351e;
            }
            if (downloadAndApplyCallback == null) {
                downloadAndApplyCallback = DownloadAndApplyCallback.NOP;
            }
            DownloadAndApplyCallback downloadAndApplyCallback3 = (DownloadAndApplyCallback) Proxies.a(DownloadAndApplyCallback.class, downloadAndApplyCallback);
            FunStickerActionHintCallback funStickerActionHintCallback2 = this.f39997a;
            makeupCamInternal.getClass();
            Threads.a();
            makeupCamInternal.f39698f.e();
            Objects.requireNonNull(lookGuid, "lookGuid can't be null");
            Objects.requireNonNull(downloadCacheStrategy, "cacheStrategy can't be null");
            Objects.requireNonNull(downloadAndApplyCallback3, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "downloadAndApplyLook::lookGuid=".concat(lookGuid));
            Log.g(3, "MakeupCamInternal", "[downloadAndApplyLookInternal] Start checking. lookGuid=".concat(lookGuid));
            int iIncrementAndGet2 = makeupCamInternal.f39695b.incrementAndGet();
            int iIncrementAndGet3 = makeupCamInternal.d.incrementAndGet();
            makeupCamInternal.f39697e.cancel();
            DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadAndApplyLook");
            makeupCamInternal.f39697e = downloadTaskCancelable;
            LookHandler.c(downloadTaskCancelable);
            if (PerfectLib.g.f39519h) {
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI3 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(lookGuid, i3)).j(Schedulers.f43170c), new o2(makeupCamInternal, iIncrementAndGet2, downloadCacheStrategy, downloadAndApplyCallback3, downloadTaskCancelable, iIncrementAndGet3, funStickerActionHintCallback2, 0)).i(AndroidSchedulers.a());
                consumerSingleObserver = new ConsumerSingleObserver(new k2(lookGuid, downloadAndApplyCallback3, i4), new k2(lookGuid, downloadAndApplyCallback3, 5));
                uVarI3.a(consumerSingleObserver);
            } else {
                e1 e1Var = new e1(makeupCamInternal, iIncrementAndGet2, lookGuid, downloadCacheStrategy, downloadAndApplyCallback3, downloadTaskCancelable, 2);
                downloadTaskCancelable = downloadTaskCancelable;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI4 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(e1Var).j(makeupCamInternal.f39694a).i(makeupCamInternal.f39696c);
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI5 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(uVarI4, new w1(makeupCamInternal, iIncrementAndGet3, lookGuid, funStickerActionHintCallback2)).i(Schedulers.f43170c), new a0(makeupCamInternal, lookGuid, i4)).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver3 = new ConsumerSingleObserver(new k2(lookGuid, downloadAndApplyCallback3, 6), new k2(lookGuid, downloadAndApplyCallback3, 7));
                uVarI5.a(consumerSingleObserver3);
                consumerSingleObserver = consumerSingleObserver3;
            }
            makeupCamInternal.f39698f.g.b(consumerSingleObserver);
            return downloadTaskCancelable;
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void applyEffectIds(final List list, final List list2, final boolean z, ApplyCallback applyCallback) {
            com.perfectcorp.thirdparty.io.reactivex.b bVarI;
            final MakeupCamInternal makeupCamInternal = this.f40000b;
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            final FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
            makeupCamInternal.getClass();
            Threads.a();
            makeupCamInternal.f39698f.e();
            Objects.requireNonNull(list, "effectIds can't be null");
            Objects.requireNonNull(list2, "reshapeEffectIds can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "[applyEffectIds] start");
            Log.g(3, "MakeupCamInternal", "effectIds = " + list);
            final int iIncrementAndGet = makeupCamInternal.d.incrementAndGet();
            final int i2 = makeupCamInternal.f39702k;
            final int i3 = makeupCamInternal.l;
            if (PerfectLib.g.f39519h) {
                Single list3 = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).flatMapSingle(new y(10)).toList();
                Function function = new Function() { // from class: com.perfectcorp.perfectlib.h2
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        Iterable iterable = (Iterable) obj;
                        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                        return makeupCamInternal.r(iIncrementAndGet, z, iterable, list2, i2, i3, funStickerActionHintCallback);
                    }
                };
                list3.getClass();
                bVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(list3, function);
            } else {
                bVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: com.perfectcorp.perfectlib.i2
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                        return makeupCamInternal.r(iIncrementAndGet, z, list, list2, i2, i3, funStickerActionHintCallback);
                    }
                }).i(Schedulers.f43170c);
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(bVarI, AndroidSchedulers.a());
            CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new t1(applyCallback2, 4), new v(applyCallback2, 1));
            mVar.a(callbackCompletableObserver);
            makeupCamInternal.f39698f.g.b(callbackCompletableObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearAllEffects(ApplyCallback applyCallback) {
            MakeupCamInternal makeupCamInternal = this.f40000b;
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "clearAllEffects");
            int i2 = 0;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new o1(makeupCamInternal, funStickerActionHintCallback, i2)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, i2), new t1(applyCallback2, 1));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearAllEffectsExceptSkinSmooth(ApplyCallback applyCallback) {
            MakeupCamInternal makeupCamInternal = this.f40000b;
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "clearAllEffectsExceptSkinSmooth");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new o1(makeupCamInternal, funStickerActionHintCallback, 2)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 13), new t1(applyCallback2, 14));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearAllMakeupEffects(ApplyCallback applyCallback) {
            MakeupCamInternal makeupCamInternal = this.f40000b;
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "clearAllMakeupEffects");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new o1(makeupCamInternal, funStickerActionHintCallback, 1)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 10), new t1(applyCallback2, 11));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearEffect(PerfectEffect perfectEffect, ApplyCallback applyCallback) {
            final MakeupCamInternal makeupCamInternal = this.f40000b;
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            final FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
            makeupCamInternal.getClass();
            List listSingletonList = Collections.singletonList(perfectEffect);
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(listSingletonList, "perfectEffects can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "[clearEffects] perfectEffects=" + listSingletonList);
            int i2 = 1;
            if (listSingletonList.isEmpty()) {
                Log.g(3, "MakeupCamInternal", "[clearEffects] nothing can be cleared");
                PfCommons.c(new b2(applyCallback2, i2));
                return;
            }
            final ImmutableList immutableListP = FluentIterable.n(listSingletonList).i(new y1(4)).p();
            final boolean z = !immutableListP.isEmpty();
            final boolean zContains = listSingletonList.contains(PerfectEffect.FUN_STICKER);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new Callable() { // from class: com.perfectcorp.perfectlib.n2
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    MakeupCamInternal makeupCamInternal2 = makeupCamInternal;
                    LiveSettingCtrl liveSettingCtrl = makeupCamInternal2.f39699h;
                    com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam2 = makeupCamInternal2.g;
                    boolean z2 = z;
                    boolean z3 = zContains;
                    ImmutableList immutableList = immutableListP;
                    VtoApplier.FunStickerActionHintCallback funStickerActionHintCallback2 = funStickerActionHintCallback;
                    if (z2 && z3) {
                        return Single.m(Singles.a(makeupCam2.b(MakeupCamInternal.l(makeupCam2.f40752b, liveSettingCtrl, immutableList)), CallingThread.ANY), makeupCamInternal2.s(FunStickerTemplate.f40650e, funStickerActionHintCallback2), new y(12));
                    }
                    if (z2) {
                        return Singles.a(makeupCam2.b(MakeupCamInternal.l(makeupCam2.f40752b, liveSettingCtrl, immutableList)), CallingThread.ANY);
                    }
                    if (z3) {
                        return makeupCamInternal2.s(FunStickerTemplate.f40650e, funStickerActionHintCallback2);
                    }
                    md.h("Should not be here.");
                    return null;
                }
            }).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 7), new t1(applyCallback2, 8));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getEffectIds(EffectIdCallback effectIdCallback) {
            MakeupCamInternal makeupCamInternal = this.f40000b;
            EffectIdCallback effectIdCallback2 = (EffectIdCallback) Proxies.a(EffectIdCallback.class, effectIdCallback);
            makeupCamInternal.getClass();
            Threads.a();
            makeupCamInternal.f39698f.e();
            Objects.requireNonNull(effectIdCallback2, "effectIdCallback can't be null");
            ImmutableSet immutableSet = ApplyEffectCtrl.H;
            LiveSettingCtrl liveSettingCtrl = makeupCamInternal.f39699h;
            com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam = makeupCamInternal.g;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z2(immutableSet, liveSettingCtrl, makeupCam.f40751a, PerfectLib.g.f39519h, new defpackage.o2(makeupCam, 11))).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new p2(effectIdCallback2, 0), new p2(effectIdCallback2, 1));
            uVarI.a(consumerSingleObserver);
            makeupCamInternal.f39698f.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getIntensities(IntensitiesCallback intensitiesCallback) {
            IntensitiesCallback intensitiesCallback2 = (IntensitiesCallback) Proxies.a(IntensitiesCallback.class, intensitiesCallback);
            MakeupCamInternal makeupCamInternal = this.f40000b;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(intensitiesCallback2, "intensitiesCallback can't be null");
            Log.g(3, "MakeupCamInternal", "[getIntensities] start");
            com.perfectcorp.perfectlib.makeupcam.camera.MakeupCam makeupCam2 = makeupCamInternal.g;
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new z(makeupCamInternal.f39699h, makeupCam2.f40751a, 6));
            makeupCam2.d(listenableFutureTaskCreate);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Singles.a(listenableFutureTaskCreate, CallingThread.ANY).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new q2(intensitiesCallback2, 0), new q2(intensitiesCallback2, 1));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final Object getMakeupVideoSource() {
            return this.f40001c;
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getProductIds(ProductIdCallback productIdCallback) {
            MakeupCamInternal makeupCamInternal = this.f40000b;
            ProductIdCallback productIdCallback2 = (ProductIdCallback) Proxies.a(ProductIdCallback.class, productIdCallback);
            makeupCamInternal.getClass();
            Threads.a();
            makeupCamInternal.f39698f.e();
            Objects.requireNonNull(productIdCallback2, "productIdCallback can't be null");
            Pair pairB = MakeupCamInternal.b(ApplyEffectCtrl.H, makeupCamInternal.f39699h, PerfectLib.g.f39519h);
            int i2 = 1;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new v1(makeupCamInternal, (Runnable) pairB.first, (ListenableFuture) pairB.second, i2));
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new r2(productIdCallback2, 0), new r2(productIdCallback2, i2));
            cVar.a(consumerSingleObserver);
            makeupCamInternal.f39698f.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getReshapeEffectIds(ReshapeEffectIdCallback reshapeEffectIdCallback) {
            ReshapeEffectIdCallback reshapeEffectIdCallback2 = (ReshapeEffectIdCallback) Proxies.a(ReshapeEffectIdCallback.class, reshapeEffectIdCallback);
            MakeupCamInternal makeupCamInternal = this.f40000b;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(reshapeEffectIdCallback2, "reshapeEffectIdCallback can't be null");
            Log.g(3, "MakeupCamInternal", "[getReshapeEffectIds] start");
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new i(makeupCamInternal.f39699h, 3));
            makeupCamInternal.g.d(listenableFutureTaskCreate);
            int i2 = 0;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, i2)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new g2(reshapeEffectIdCallback2, i2), new g2(reshapeEffectIdCallback2, 1));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getReshapeIntensities(ReshapeIntensitiesCallback reshapeIntensitiesCallback) {
            ReshapeIntensitiesCallback reshapeIntensitiesCallback2 = (ReshapeIntensitiesCallback) Proxies.a(ReshapeIntensitiesCallback.class, reshapeIntensitiesCallback);
            MakeupCamInternal makeupCamInternal = this.f40000b;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(reshapeIntensitiesCallback2, "reshapeIntensitiesCallback can't be null");
            Log.g(3, "MakeupCamInternal", "[getReshapeIntensities] start");
            int i2 = 2;
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new i(makeupCamInternal, i2));
            makeupCamInternal.g.d(listenableFutureTaskCreate);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, i2)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new s2(reshapeIntensitiesCallback2, 0), new s2(reshapeIntensitiesCallback2, 1));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void setIntensities(Map map, ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            MakeupCamInternal makeupCamInternal = this.f40000b;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(map, "intensities can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "setIntensities::intensities=" + map);
            int i2 = 0;
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new l2(makeupCamInternal, map, i2));
            makeupCamInternal.g.d(listenableFutureTaskCreate);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, 1)).i(Schedulers.f43170c), new y(11)), new m2(makeupCamInternal, i2)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 5), new t1(applyCallback2, 6));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void setLipstickTransition(int i2, int i3) {
            MakeupCamInternal makeupCamInternal = this.f40000b;
            makeupCamInternal.getClass();
            Threads.a();
            makeupCamInternal.f39698f.e();
            Preconditions.g(i2 >= 0, "durationInMS can't less than 0");
            Log.g(3, "MakeupCamInternal", "setLipstickTransition");
            makeupCamInternal.f39702k = i2;
            makeupCamInternal.l = i3;
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void setReshapeIntensities(Map map, ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            MakeupCamInternal makeupCamInternal = this.f40000b;
            makeupCamInternal.getClass();
            Threads.a();
            MakeupCam makeupCam = makeupCamInternal.f39698f;
            makeupCam.e();
            Objects.requireNonNull(map, "intensities can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "MakeupCamInternal", "[setReshapeIntensities] start");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new l2(makeupCamInternal, map, 1)).j(makeupCamInternal.f39696c), new m2(makeupCamInternal, 2)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new u2(makeupCamInternal, map, applyCallback2, 0), new t1(applyCallback2, 9));
            uVarI.a(consumerSingleObserver);
            makeupCam.g.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final Cancelable apply(List list, final EffectConfig effectConfig, ApplyCallback applyCallback) throws Throwable {
            DownloadTaskCancelable downloadTaskCancelable;
            ConsumerSingleObserver consumerSingleObserver;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m mVar;
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            int i2 = 3;
            Log.g(3, "VtoApplier", "[apply] vtoSettings=" + Iterables.c(list) + ", cacheStrategy" + downloadCacheStrategy + ", effectConfig=" + effectConfig);
            DownloadCacheStrategy downloadCacheStrategy2 = DownloadCacheStrategy.CACHE_ONLY;
            final MakeupCamInternal makeupCamInternal = this.f40000b;
            int i3 = 2;
            final int i4 = 1;
            final int i5 = 0;
            if (downloadCacheStrategy == downloadCacheStrategy2) {
                if (applyCallback == null) {
                    applyCallback = ApplyCallback.NOP;
                }
                ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
                makeupCamInternal.getClass();
                Threads.a();
                makeupCamInternal.f39698f.e();
                Objects.requireNonNull(effectConfig, "effectConfig can't be null");
                Objects.requireNonNull(applyCallback2, "callback can't be null");
                if (list.isEmpty()) {
                    PfCommons.c(new b2(applyCallback2, i5));
                } else {
                    ImmutableList immutableListU = ImmutableList.u(list);
                    Log.g(3, "MakeupCamInternal", "[applySkus] copiedVtoSettings=".concat(Iterables.c(immutableListU)));
                    final int iIncrementAndGet = makeupCamInternal.d.incrementAndGet();
                    if (PerfectLib.g.f39519h) {
                        Single list2 = Observable.fromIterable(immutableListU).subscribeOn(Schedulers.f43170c).flatMapSingle(new y(8)).toList();
                        Function function = new Function() { // from class: com.perfectcorp.perfectlib.f2
                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                            public final Object apply(Object obj) {
                                int i6 = i5;
                                EffectConfig effectConfig2 = effectConfig;
                                int i7 = iIncrementAndGet;
                                MakeupCamInternal makeupCamInternal2 = makeupCamInternal;
                                List list3 = (List) obj;
                                switch (i6) {
                                    case 0:
                                        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                                        break;
                                    default:
                                        ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                                        break;
                                }
                                return makeupCamInternal2.o(i7, list3, effectConfig2);
                            }
                        };
                        list2.getClass();
                        mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list2, function);
                    } else {
                        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                        mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(ApplyEffectUtility.j(immutableListU, false, Schedulers.f43170c), new Function() { // from class: com.perfectcorp.perfectlib.f2
                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                            public final Object apply(Object obj) {
                                int i6 = i4;
                                EffectConfig effectConfig2 = effectConfig;
                                int i7 = iIncrementAndGet;
                                MakeupCamInternal makeupCamInternal2 = makeupCamInternal;
                                List list3 = (List) obj;
                                switch (i6) {
                                    case 0:
                                        ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                                        break;
                                    default:
                                        ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                                        break;
                                }
                                return makeupCamInternal2.o(i7, list3, effectConfig2);
                            }
                        });
                    }
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = mVar.i(AndroidSchedulers.a());
                    ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new t1(applyCallback2, i3), new t1(applyCallback2, i2));
                    uVarI.a(consumerSingleObserver2);
                    makeupCamInternal.f39698f.g.b(consumerSingleObserver2);
                }
                return DownloadTaskCancelable.f40351e;
            }
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback3 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            makeupCamInternal.getClass();
            Threads.a();
            makeupCamInternal.f39698f.e();
            Objects.requireNonNull(effectConfig, "effectConfig can't be null");
            Objects.requireNonNull(downloadCacheStrategy, "cacheStrategy can't be null");
            Objects.requireNonNull(applyCallback3, "callback can't be null");
            if (list.isEmpty()) {
                PfCommons.c(new b2(applyCallback3, i3));
                return DownloadTaskCancelable.f40351e;
            }
            ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
            ImmutableList immutableListU2 = ImmutableList.u(list);
            Log.g(3, "MakeupCamInternal", "[downloadAndApplySkus] copiedVtoSettings=".concat(Iterables.c(immutableListU2)));
            int iIncrementAndGet2 = makeupCamInternal.f39695b.incrementAndGet();
            int iIncrementAndGet3 = makeupCamInternal.d.incrementAndGet();
            makeupCamInternal.f39697e.cancel();
            DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("downloadAndApplySkus");
            makeupCamInternal.f39697e = downloadTaskCancelable2;
            SkuHandler.h(downloadTaskCancelable2);
            if (PerfectLib.g.f39519h) {
                ArrayList arrayList = new ArrayList();
                Single list3 = Observable.fromIterable(immutableListU2).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(5, arrayList)).toList();
                l0 l0Var = new l0(makeupCamInternal, arrayList, iIncrementAndGet2, iIncrementAndGet3, effectConfig, downloadCacheStrategy, applyCallback3, downloadTaskCancelable2, 1);
                downloadTaskCancelable = downloadTaskCancelable2;
                t2 t2Var = new t2(immutableListU2, applyCallback3, i5);
                list3.getClass();
                consumerSingleObserver = new ConsumerSingleObserver(l0Var, t2Var);
                list3.a(consumerSingleObserver);
            } else {
                downloadTaskCancelable = downloadTaskCancelable2;
                Single singleJ = ApplyEffectUtility.j(immutableListU2, true, Schedulers.f43170c);
                consumerSingleObserver = new ConsumerSingleObserver(new n0(makeupCamInternal, iIncrementAndGet2, iIncrementAndGet3, effectConfig, downloadCacheStrategy, applyCallback3, downloadTaskCancelable, 2), new t2(immutableListU2, applyCallback3, i4));
                singleJ.a(consumerSingleObserver);
            }
            downloadTaskCancelable.a(Collections.singletonList(consumerSingleObserver));
            return downloadTaskCancelable;
        }
    }

    public static final class PhotoMakeupApplier extends VtoApplier {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PhotoMakeupInternal f40002b;

        public PhotoMakeupApplier(PhotoMakeup photoMakeup) {
            this.f40002b = new PhotoMakeupInternal(photoMakeup);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final Cancelable apply(LookSetting lookSetting, DownloadAndApplyCallback downloadAndApplyCallback) throws Throwable {
            PhotoMakeupInternal photoMakeupInternal;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI;
            ConsumerSingleObserver consumerSingleObserver;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI2;
            ConsumerSingleObserver consumerSingleObserver2;
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            int i2 = 3;
            Log.g(3, "VtoApplier", "[apply] lookSetting=" + lookSetting + ", cacheStrategy=" + downloadCacheStrategy);
            DownloadCacheStrategy downloadCacheStrategy2 = DownloadCacheStrategy.CACHE_ONLY;
            PhotoMakeupInternal photoMakeupInternal2 = this.f40002b;
            int i3 = 7;
            final int i4 = 1;
            int i5 = 4;
            if (downloadCacheStrategy == downloadCacheStrategy2) {
                String lookGuid = lookSetting.getLookGuid();
                final DownloadAndApplyCallback downloadAndApplyCallback2 = (DownloadAndApplyCallback) Proxies.a(DownloadAndApplyCallback.class, downloadAndApplyCallback != null ? downloadAndApplyCallback : DownloadAndApplyCallback.NOP);
                FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
                photoMakeupInternal2.getClass();
                Threads.a();
                photoMakeupInternal2.f39786f.a();
                Objects.requireNonNull(lookGuid, "lookGuid can't be null");
                Objects.requireNonNull(downloadAndApplyCallback2, "callback can't be null");
                try {
                    photoMakeupInternal2.d();
                    Log.g(3, "PhotoMakeupInternal", "applyLookGuid::lookGuid=".concat(lookGuid));
                    Log.g(3, "PhotoMakeupInternal", "[applyLookByGuid] Start apply. lookGuid=".concat(lookGuid));
                    int iIncrementAndGet = photoMakeupInternal2.d.incrementAndGet();
                    if (PerfectLib.g.f39519h) {
                        uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(lookGuid, i2)).j(Schedulers.f43170c), new t0(iIncrementAndGet, 4, photoMakeupInternal2, funStickerActionHintCallback, lookGuid)).i(AndroidSchedulers.a());
                        consumerSingleObserver2 = new ConsumerSingleObserver(new k2(lookGuid, downloadAndApplyCallback2, 8), new k2(lookGuid, downloadAndApplyCallback2, 9));
                    } else {
                        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI3 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(lookGuid, i5)).j(Schedulers.f43170c).i(photoMakeupInternal2.f39784c);
                        AtomicReference atomicReference = new AtomicReference();
                        int i6 = PhotoMakeupInternal.n;
                        uVarI2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(uVarI3, new s0(photoMakeupInternal2, iIncrementAndGet, lookGuid, i5)).i(Schedulers.f43170c), new z0(atomicReference, i2)).f(new u2(photoMakeupInternal2, lookGuid, atomicReference, i4)), new q3(photoMakeupInternal2, i3)).i(AndroidSchedulers.a());
                        consumerSingleObserver2 = new ConsumerSingleObserver(new k2(lookGuid, downloadAndApplyCallback2, 10), new k2(lookGuid, downloadAndApplyCallback2, 11));
                    }
                    uVarI2.a(consumerSingleObserver2);
                    photoMakeupInternal2.f39786f.n.b(consumerSingleObserver2);
                } catch (Throwable th) {
                    final int i7 = 0;
                    PfCommons.c(new Runnable() { // from class: com.perfectcorp.perfectlib.v3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i8 = i7;
                            VtoApplier.DownloadAndApplyCallback downloadAndApplyCallback3 = downloadAndApplyCallback2;
                            Throwable th2 = th;
                            switch (i8) {
                                case 0:
                                    int i9 = PhotoMakeupInternal.n;
                                    Log.e("PhotoMakeupInternal", "[applyLookGuid] failed", th2);
                                    downloadAndApplyCallback3.onFailure(th2);
                                    break;
                                default:
                                    int i10 = PhotoMakeupInternal.n;
                                    Log.e("PhotoMakeupInternal", "[downloadAndApplyLook] failed", th2);
                                    downloadAndApplyCallback3.onFailure(th2);
                                    break;
                            }
                        }
                    });
                }
                return DownloadTaskCancelable.f40351e;
            }
            String lookGuid2 = lookSetting.getLookGuid();
            final DownloadAndApplyCallback downloadAndApplyCallback3 = (DownloadAndApplyCallback) Proxies.a(DownloadAndApplyCallback.class, downloadAndApplyCallback != null ? downloadAndApplyCallback : DownloadAndApplyCallback.NOP);
            FunStickerActionHintCallback funStickerActionHintCallback2 = this.f39997a;
            photoMakeupInternal2.getClass();
            Threads.a();
            photoMakeupInternal2.f39786f.a();
            Objects.requireNonNull(lookGuid2, "lookGuid can't be null");
            Objects.requireNonNull(downloadCacheStrategy, "cacheStrategy can't be null");
            Objects.requireNonNull(downloadAndApplyCallback3, "callback can't be null");
            try {
                photoMakeupInternal2.d();
                Log.g(3, "PhotoMakeupInternal", "downloadAndApplyLook::lookGuid=".concat(lookGuid2));
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplyLookInternal] Start checking. lookGuid=".concat(lookGuid2));
                int iIncrementAndGet2 = photoMakeupInternal2.f39783b.incrementAndGet();
                int iIncrementAndGet3 = photoMakeupInternal2.d.incrementAndGet();
                photoMakeupInternal2.f39785e.cancel();
                DownloadTaskCancelable downloadTaskCancelable = new DownloadTaskCancelable("downloadAndApplyLook");
                photoMakeupInternal2.f39785e = downloadTaskCancelable;
                LookHandler.c(downloadTaskCancelable);
                if (PerfectLib.g.f39519h) {
                    photoMakeupInternal = photoMakeupInternal2;
                    uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(lookGuid2, 5)).j(Schedulers.f43170c), new o2(photoMakeupInternal, iIncrementAndGet2, downloadCacheStrategy, downloadAndApplyCallback3, downloadTaskCancelable, iIncrementAndGet3, funStickerActionHintCallback2, 1)).i(AndroidSchedulers.a());
                    consumerSingleObserver = new ConsumerSingleObserver(new k2(lookGuid2, downloadAndApplyCallback3, 12), new k2(lookGuid2, downloadAndApplyCallback3, 13));
                } else {
                    photoMakeupInternal = photoMakeupInternal2;
                    e1 e1Var = new e1(photoMakeupInternal, iIncrementAndGet2, lookGuid2, downloadCacheStrategy, downloadAndApplyCallback3, downloadTaskCancelable, 5);
                    downloadTaskCancelable = downloadTaskCancelable;
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI4 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(e1Var).j(photoMakeupInternal.f39782a).i(photoMakeupInternal.f39784c);
                    AtomicReference atomicReference2 = new AtomicReference();
                    int i8 = PhotoMakeupInternal.n;
                    uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(uVarI4, new s0(photoMakeupInternal, iIncrementAndGet3, lookGuid2, i5)).i(Schedulers.f43170c), new z0(atomicReference2, i2)).f(new u2(photoMakeupInternal, lookGuid2, atomicReference2, i4)), new q3(photoMakeupInternal, i3)).i(AndroidSchedulers.a());
                    consumerSingleObserver = new ConsumerSingleObserver(new k2(lookGuid2, downloadAndApplyCallback3, 14), new k2(lookGuid2, downloadAndApplyCallback3, 15));
                }
                uVarI.a(consumerSingleObserver);
                photoMakeupInternal.f39786f.n.b(consumerSingleObserver);
                return downloadTaskCancelable;
            } catch (Throwable th2) {
                PfCommons.c(new Runnable() { // from class: com.perfectcorp.perfectlib.v3
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i9 = i4;
                        VtoApplier.DownloadAndApplyCallback downloadAndApplyCallback4 = downloadAndApplyCallback3;
                        Throwable th3 = th2;
                        switch (i9) {
                            case 0:
                                int i10 = PhotoMakeupInternal.n;
                                Log.e("PhotoMakeupInternal", "[applyLookGuid] failed", th3);
                                downloadAndApplyCallback4.onFailure(th3);
                                break;
                            default:
                                int i11 = PhotoMakeupInternal.n;
                                Log.e("PhotoMakeupInternal", "[downloadAndApplyLook] failed", th3);
                                downloadAndApplyCallback4.onFailure(th3);
                                break;
                        }
                    }
                });
                return DownloadTaskCancelable.f40351e;
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void applyEffectIds(final List list, final List list2, final boolean z, ApplyCallback applyCallback) {
            SingleSource singleSourceJ;
            Objects.requireNonNull(list2, "reshapeEffectIds can't be null");
            final PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            final FunStickerActionHintCallback funStickerActionHintCallback = this.f39997a;
            photoMakeupInternal.getClass();
            Threads.a();
            photoMakeupInternal.f39786f.a();
            Objects.requireNonNull(list, "effectIds can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[applyEffectIds] start");
                Log.g(3, "PhotoMakeupInternal", "EffectIDs = " + list);
                final int iIncrementAndGet = photoMakeupInternal.d.incrementAndGet();
                if (PerfectLib.g.f39519h) {
                    Single list3 = Observable.fromIterable(list).subscribeOn(Schedulers.f43170c).flatMapSingle(new y(19)).toList();
                    Function function = new Function() { // from class: com.perfectcorp.perfectlib.s3
                        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                        public final Object apply(Object obj) {
                            int i2 = PhotoMakeupInternal.n;
                            return photoMakeupInternal.b(iIncrementAndGet, z, (Iterable) obj, list2);
                        }
                    };
                    list3.getClass();
                    singleSourceJ = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list3, function);
                } else {
                    singleSourceJ = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new Callable() { // from class: com.perfectcorp.perfectlib.u3
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            int i2 = PhotoMakeupInternal.n;
                            return photoMakeupInternal.b(iIncrementAndGet, z, list, list2);
                        }
                    }).j(Schedulers.f43170c);
                }
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(singleSourceJ, new q3(photoMakeupInternal, 7)).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 24), new t1(applyCallback2, 25));
                uVarI.a(consumerSingleObserver);
                photoMakeupInternal.f39786f.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new v2(th, applyCallback2, 2));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearAllEffects(ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[clearAllEffects] start");
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new t3(photoMakeupInternal, 2)), new q3(photoMakeupInternal, 9)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 15), new t1(applyCallback2, 16));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new v2(th, applyCallback2, 8));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearAllEffectsExceptSkinSmooth(ApplyCallback applyCallback) {
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearAllMakeupEffects(ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            Log.g(3, "PhotoMakeupInternal", "clearAllMakeupEffects");
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new t3(photoMakeupInternal, 0)), new q3(photoMakeupInternal, 3)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 20), new t1(applyCallback2, 21));
            uVarI.a(consumerSingleObserver);
            photoMakeup.n.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void clearEffect(PerfectEffect perfectEffect, ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            List listSingletonList = Collections.singletonList(perfectEffect);
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(listSingletonList, "perfectEffects can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            int i2 = 3;
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[clearEffects] perfectEffects=" + listSingletonList);
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z(photoMakeupInternal, FluentIterable.n(listSingletonList).i(new y1(5)).p(), 10)), new q3(photoMakeupInternal, 0)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 17), new t1(applyCallback2, 18));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new v2(th, applyCallback2, i2));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getEffectIds(EffectIdCallback effectIdCallback) {
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            EffectIdCallback effectIdCallback2 = (EffectIdCallback) Proxies.a(EffectIdCallback.class, effectIdCallback);
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(effectIdCallback2, "effectIdCallback can't be null");
            int i2 = 3;
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[getEffectIds] start");
                ImmutableSet immutableSet = ApplyEffectCtrl.I;
                LiveSettingCtrl liveSettingCtrl = photoMakeupInternal.f39789j;
                PhotoMakeup.LiveMakeupCtrl liveMakeupCtrl = photoMakeupInternal.g;
                PhotoMakeup.PhotoMakeupFrameProcessingThread photoMakeupFrameProcessingThread = photoMakeupInternal.f39788i;
                Objects.requireNonNull(photoMakeupFrameProcessingThread);
                c cVar = new c(photoMakeupFrameProcessingThread, 5);
                boolean z = PerfectLib.g.f39519h;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new z2(immutableSet, liveSettingCtrl, liveMakeupCtrl, z, cVar)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new p2(effectIdCallback2, 2), new p2(effectIdCallback2, i2));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new g1(th, effectIdCallback2, i2));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getIntensities(IntensitiesCallback intensitiesCallback) {
            IntensitiesCallback intensitiesCallback2 = (IntensitiesCallback) Proxies.a(IntensitiesCallback.class, intensitiesCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(intensitiesCallback2, "intensitiesCallback can't be null");
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[getIntensities] start");
                PhotoMakeup.LiveMakeupCtrl liveMakeupCtrl = photoMakeupInternal.g;
                LiveSettingCtrl liveSettingCtrl = photoMakeupInternal.f39789j;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new z(liveSettingCtrl, liveMakeupCtrl, 6));
                photoMakeupInternal.f39788i.runOnGLThread(listenableFutureTaskCreate);
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = Singles.a(listenableFutureTaskCreate, CallingThread.ANY).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new q2(intensitiesCallback2, 2), new q2(intensitiesCallback2, 3));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new g1(th, intensitiesCallback2, 1));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final Object getMakeupVideoSource() {
            return null;
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getProductIds(ProductIdCallback productIdCallback) {
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            ProductIdCallback productIdCallback2 = (ProductIdCallback) Proxies.a(ProductIdCallback.class, productIdCallback);
            photoMakeupInternal.getClass();
            Threads.a();
            photoMakeupInternal.f39786f.a();
            Objects.requireNonNull(productIdCallback2, "productIdCallback can't be null");
            int i2 = 2;
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[getProductIds] start");
                Pair pairB = MakeupCamInternal.b(ApplyEffectCtrl.I, photoMakeupInternal.f39789j, PerfectLib.g.f39519h);
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new v1(photoMakeupInternal, (Runnable) pairB.first, (ListenableFuture) pairB.second, i2));
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new r2(productIdCallback2, i2), new r2(productIdCallback2, 3));
                cVar.a(consumerSingleObserver);
                photoMakeupInternal.f39786f.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new g1(th, productIdCallback2, i2));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getReshapeEffectIds(ReshapeEffectIdCallback reshapeEffectIdCallback) {
            ReshapeEffectIdCallback reshapeEffectIdCallback2 = (ReshapeEffectIdCallback) Proxies.a(ReshapeEffectIdCallback.class, reshapeEffectIdCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(reshapeEffectIdCallback2, "reshapeEffectIdCallback can't be null");
            int i2 = 3;
            Log.g(3, "PhotoMakeupInternal", "[getReshapeEffectIds] start");
            LiveSettingCtrl liveSettingCtrl = photoMakeupInternal.f39789j;
            ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
            ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new i(liveSettingCtrl, i2));
            photoMakeupInternal.f39788i.runOnGLThread(listenableFutureTaskCreate);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, i2)).i(AndroidSchedulers.a());
            ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new g2(reshapeEffectIdCallback2, 2), new g2(reshapeEffectIdCallback2, i2));
            uVarI.a(consumerSingleObserver);
            photoMakeup.n.b(consumerSingleObserver);
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void getReshapeIntensities(ReshapeIntensitiesCallback reshapeIntensitiesCallback) {
            ReshapeIntensitiesCallback reshapeIntensitiesCallback2 = (ReshapeIntensitiesCallback) Proxies.a(ReshapeIntensitiesCallback.class, reshapeIntensitiesCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(reshapeIntensitiesCallback2, "reshapeIntensitiesCallback can't be null");
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[getReshapeIntensities] start");
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new t3(photoMakeupInternal, 1));
                photoMakeupInternal.f39788i.runOnGLThread(listenableFutureTaskCreate);
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, 5)).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new s2(reshapeIntensitiesCallback2, 2), new s2(reshapeIntensitiesCallback2, 3));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new g1(th, reshapeIntensitiesCallback2, 4));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void setIntensities(Map map, ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(map, "intensities can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            int i2 = 5;
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[setIntensities] start. intensities=" + map);
                ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(new r3(photoMakeupInternal, map, 1));
                photoMakeupInternal.f39788i.runOnGLThread(listenableFutureTaskCreate);
                int i3 = 4;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new j1(listenableFutureTaskCreate, i3)).i(Schedulers.f43170c), new y(20)), new q3(photoMakeupInternal, i3)), new q3(photoMakeupInternal, i2)).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new t1(applyCallback2, 22), new t1(applyCallback2, 23));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new v2(th, applyCallback2, i2));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void setLipstickTransition(int i2, int i3) {
            Log.g(5, "VtoApplier", "[setLipstickTransition] Unsupported usage.");
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final void setReshapeIntensities(Map map, ApplyCallback applyCallback) {
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            photoMakeupInternal.getClass();
            Threads.a();
            PhotoMakeup photoMakeup = photoMakeupInternal.f39786f;
            photoMakeup.a();
            Objects.requireNonNull(map, "intensities can't be null");
            Objects.requireNonNull(applyCallback2, "callback can't be null");
            try {
                photoMakeupInternal.d();
                Log.g(3, "PhotoMakeupInternal", "[setReshapeIntensities] start");
                int i2 = 2;
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new r3(photoMakeupInternal, map, 0)).j(photoMakeupInternal.f39784c), new q3(photoMakeupInternal, 1)), new q3(photoMakeupInternal, i2)).i(AndroidSchedulers.a());
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new u2(photoMakeupInternal, map, applyCallback2, i2), new t1(applyCallback2, 19));
                uVarI.a(consumerSingleObserver);
                photoMakeup.n.b(consumerSingleObserver);
            } catch (Throwable th) {
                PfCommons.c(new v2(th, applyCallback2, 4));
            }
        }

        @Override // com.perfectcorp.perfectlib.VtoApplier
        public final Cancelable apply(List list, final EffectConfig effectConfig, ApplyCallback applyCallback) throws Throwable {
            DownloadTaskCancelable downloadTaskCancelable;
            ConsumerSingleObserver consumerSingleObserver;
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m mVar;
            DownloadCacheStrategy downloadCacheStrategy = PerfectLib.f39743h;
            int i2 = 3;
            Log.g(3, "VtoApplier", "[apply] vtoSettings=" + Iterables.c(list) + ", cacheStrategy" + downloadCacheStrategy + ", effectConfig=" + effectConfig);
            DownloadCacheStrategy downloadCacheStrategy2 = DownloadCacheStrategy.CACHE_ONLY;
            final PhotoMakeupInternal photoMakeupInternal = this.f40002b;
            int i3 = 7;
            final int i4 = 1;
            if (downloadCacheStrategy == downloadCacheStrategy2) {
                if (applyCallback == null) {
                    applyCallback = ApplyCallback.NOP;
                }
                ApplyCallback applyCallback2 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
                photoMakeupInternal.getClass();
                Threads.a();
                photoMakeupInternal.f39786f.a();
                Objects.requireNonNull(effectConfig, "effectConfig can't be null");
                Objects.requireNonNull(applyCallback2, "callback can't be null");
                try {
                    photoMakeupInternal.d();
                    ImmutableList immutableListU = ImmutableList.u(list);
                    Log.g(3, "PhotoMakeupInternal", "[applySkus] copiedVtoSettings=".concat(Iterables.c(immutableListU)));
                    final int iIncrementAndGet = photoMakeupInternal.d.incrementAndGet();
                    final int i5 = 0;
                    if (PerfectLib.g.f39519h) {
                        Single list2 = Observable.fromIterable(immutableListU).subscribeOn(Schedulers.f43170c).flatMapSingle(new y(21)).toList();
                        Function function = new Function() { // from class: com.perfectcorp.perfectlib.w3
                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                            public final Object apply(Object obj) {
                                int i6 = i5;
                                EffectConfig effectConfig2 = effectConfig;
                                int i7 = iIncrementAndGet;
                                PhotoMakeupInternal photoMakeupInternal2 = photoMakeupInternal;
                                List list3 = (List) obj;
                                switch (i6) {
                                    case 0:
                                        int i8 = PhotoMakeupInternal.n;
                                        break;
                                    default:
                                        int i9 = PhotoMakeupInternal.n;
                                        break;
                                }
                                return photoMakeupInternal2.a(i7, list3, effectConfig2);
                            }
                        };
                        list2.getClass();
                        mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list2, function);
                    } else {
                        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                        mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(ApplyEffectUtility.j(immutableListU, false, Schedulers.f43170c), new Function() { // from class: com.perfectcorp.perfectlib.w3
                            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                            public final Object apply(Object obj) {
                                int i6 = i4;
                                EffectConfig effectConfig2 = effectConfig;
                                int i7 = iIncrementAndGet;
                                PhotoMakeupInternal photoMakeupInternal2 = photoMakeupInternal;
                                List list3 = (List) obj;
                                switch (i6) {
                                    case 0:
                                        int i8 = PhotoMakeupInternal.n;
                                        break;
                                    default:
                                        int i9 = PhotoMakeupInternal.n;
                                        break;
                                }
                                return photoMakeupInternal2.a(i7, list3, effectConfig2);
                            }
                        });
                    }
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(mVar, new q3(photoMakeupInternal, i3)).i(AndroidSchedulers.a());
                    ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new t1(applyCallback2, 26), new t1(applyCallback2, 27));
                    uVarI.a(consumerSingleObserver2);
                    photoMakeupInternal.f39786f.n.b(consumerSingleObserver2);
                } catch (Throwable th) {
                    PfCommons.c(new v2(th, applyCallback2, 6));
                }
                return DownloadTaskCancelable.f40351e;
            }
            if (applyCallback == null) {
                applyCallback = ApplyCallback.NOP;
            }
            ApplyCallback applyCallback3 = (ApplyCallback) Proxies.a(ApplyCallback.class, applyCallback);
            photoMakeupInternal.getClass();
            Threads.a();
            photoMakeupInternal.f39786f.a();
            Objects.requireNonNull(effectConfig, "effectConfig can't be null");
            Objects.requireNonNull(downloadCacheStrategy, "cacheStrategy can't be null");
            Objects.requireNonNull(applyCallback3, "callback can't be null");
            try {
                photoMakeupInternal.d();
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                ImmutableList immutableListU2 = ImmutableList.u(list);
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplySkus] copiedVtoSettings=".concat(Iterables.c(immutableListU2)));
                int iIncrementAndGet2 = photoMakeupInternal.f39783b.incrementAndGet();
                int iIncrementAndGet3 = photoMakeupInternal.d.incrementAndGet();
                photoMakeupInternal.f39785e.cancel();
                DownloadTaskCancelable downloadTaskCancelable2 = new DownloadTaskCancelable("downloadAndApplySkus");
                photoMakeupInternal.f39785e = downloadTaskCancelable2;
                SkuHandler.h(downloadTaskCancelable2);
                if (PerfectLib.g.f39519h) {
                    ArrayList arrayList = new ArrayList();
                    Single list3 = Observable.fromIterable(immutableListU2).subscribeOn(Schedulers.f43170c).flatMapSingle(new l(8, arrayList)).toList();
                    l0 l0Var = new l0(photoMakeupInternal, arrayList, iIncrementAndGet2, iIncrementAndGet3, effectConfig, downloadCacheStrategy, applyCallback3, downloadTaskCancelable2, 2);
                    downloadTaskCancelable = downloadTaskCancelable2;
                    t2 t2Var = new t2(immutableListU2, applyCallback3, 2);
                    list3.getClass();
                    consumerSingleObserver = new ConsumerSingleObserver(l0Var, t2Var);
                    list3.a(consumerSingleObserver);
                } else {
                    downloadTaskCancelable = downloadTaskCancelable2;
                    Single singleJ = ApplyEffectUtility.j(immutableListU2, true, Schedulers.f43170c);
                    consumerSingleObserver = new ConsumerSingleObserver(new n0(photoMakeupInternal, iIncrementAndGet2, iIncrementAndGet3, effectConfig, downloadCacheStrategy, applyCallback3, downloadTaskCancelable, 3), new t2(immutableListU2, applyCallback3, i2));
                    singleJ.a(consumerSingleObserver);
                }
                downloadTaskCancelable.a(Collections.singletonList(consumerSingleObserver));
                return downloadTaskCancelable;
            } catch (Throwable th2) {
                PfCommons.c(new v2(th2, applyCallback3, i3));
                return DownloadTaskCancelable.f40351e;
            }
        }
    }
}

package com.perfectcorp.perfectlib;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.utility.EventPublisher;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SurveyForm;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.aa0;
import defpackage.cr0;
import defpackage.dr0;
import defpackage.er0;
import defpackage.hn0;
import defpackage.n7;
import defpackage.pv0;
import defpackage.vv0;
import defpackage.xv0;
import defpackage.xw;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class RecommendationHandler {

    public interface ClearAllCallback {
        void onFailure(Throwable th);

        void onSuccess();
    }

    public interface GetRecommendedResultCallback {
        void onFailure(Throwable th);

        void onSuccess(RecommendationResult recommendationResult);
    }

    public interface GetSurveyFormCallback {
        void onFailure(Throwable th);

        void onSuccess(SurveyForm surveyForm);
    }

    public static final class Singleton {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RecommendationHandler f39816a = new RecommendationHandler();
    }

    public interface SyncServerCallback extends EventPublisher.Subscriber {
        void onFailure(Throwable th);

        void onSuccess();

        void progress(double d);
    }

    public static class SyncingTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DownloadTaskCancelable f39817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b f39818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final EventPublisher f39819c;
        public final Disposable d;

        public SyncingTask(DownloadTaskCancelable downloadTaskCancelable, EventPublisher eventPublisher, com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b bVar) {
            this.f39817a = downloadTaskCancelable;
            this.f39818b = bVar;
            this.f39819c = eventPublisher;
            Objects.requireNonNull(downloadTaskCancelable);
            this.d = Disposables.a(new er0(downloadTaskCancelable, 0));
        }
    }

    public static RecommendationHandler getInstance() {
        return Singleton.f39816a;
    }

    public final void clearAll(ClearAllCallback clearAllCallback) {
        Objects.requireNonNull(clearAllCallback, "callback can't be null");
        ClearAllCallback clearAllCallback2 = (ClearAllCallback) Proxies.a(ClearAllCallback.class, clearAllCallback);
        int i2 = 3;
        Log.g(3, "RecommendationHandler", "[clearAll] start");
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (ModuleConfig.s) {
            SkinCare3RecommendationHandler skinCare3RecommendationHandler = SkinCare3RecommendationHandler.Singleton.f39890a;
            skinCare3RecommendationHandler.getClass();
            Log.g(3, "SkinCare3RecommendationHandler", "[clearAll] start");
            builder.f(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new s(skinCare3RecommendationHandler, 4)).i(Schedulers.f43170c).h(new e4(skinCare3RecommendationHandler, 2)).e(new n7(25)).g(new pv0(10)));
        }
        if (ModuleConfig.r) {
            ShadeFinderRecommendationHandler shadeFinderRecommendationHandler = ShadeFinderRecommendationHandler.Singleton.f39873a;
            shadeFinderRecommendationHandler.getClass();
            Log.g(3, "ShadeFinderRecommendationHandler", "[clearAll] start");
            builder.f(com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b.i(Schedulers.f43170c).h(new x3(shadeFinderRecommendationHandler, 1)).e(new n7(24)).g(new pv0(i2)));
        }
        ImmutableList immutableListI = builder.i();
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(immutableListI, "sources is null");
        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.d(immutableListI), AndroidSchedulers.a()).a(new CallbackCompletableObserver(new defpackage.o2(clearAllCallback2, 15), new xw(clearAllCallback2, 6)));
    }

    public final void getRecommendedResult(RecommendationType recommendationType, RecommendationData recommendationData, JsExecutor jsExecutor, GetRecommendedResultCallback getRecommendedResultCallback) {
        Objects.requireNonNull(recommendationType, "type can't be null");
        Objects.requireNonNull(getRecommendedResultCallback, "callback can't be null");
        GetRecommendedResultCallback getRecommendedResultCallback2 = (GetRecommendedResultCallback) Proxies.a(GetRecommendedResultCallback.class, getRecommendedResultCallback);
        if (recommendationType.a()) {
            PfCommons.c(new cr0(getRecommendedResultCallback2, 1));
            return;
        }
        if (recommendationType == RecommendationType.SKIN_CARE && ModuleConfig.s) {
            SkinCare3RecommendationHandler skinCare3RecommendationHandler = SkinCare3RecommendationHandler.Singleton.f39890a;
            Objects.requireNonNull(jsExecutor, "jsExecutor can't be null");
            skinCare3RecommendationHandler.d(recommendationData, jsExecutor, null, getRecommendedResultCallback2);
        } else if (recommendationType != RecommendationType.SHADE_FINDER || !ModuleConfig.r) {
            PfCommons.c(new dr0(getRecommendedResultCallback2, recommendationType, 1));
        } else {
            ShadeFinderRecommendationHandler shadeFinderRecommendationHandler = ShadeFinderRecommendationHandler.Singleton.f39873a;
            ShadeFinderRecommendationHandler.d(recommendationData, getRecommendedResultCallback2);
        }
    }

    public final void getSurveyForm(RecommendationType recommendationType, GetSurveyFormCallback getSurveyFormCallback) {
        Objects.requireNonNull(recommendationType, "type can't be null");
        Objects.requireNonNull(getSurveyFormCallback, "callback can't be null");
        final GetSurveyFormCallback getSurveyFormCallback2 = (GetSurveyFormCallback) Proxies.a(GetSurveyFormCallback.class, getSurveyFormCallback);
        if (recommendationType.a()) {
            PfCommons.c(new hn0(getSurveyFormCallback2, 11));
            return;
        }
        if (recommendationType != RecommendationType.SKIN_CARE || !ModuleConfig.s) {
            PfCommons.c(new aa0(getSurveyFormCallback2, recommendationType, 18));
            return;
        }
        SkinCare3RecommendationHandler skinCare3RecommendationHandler = SkinCare3RecommendationHandler.Singleton.f39890a;
        Objects.requireNonNull(getSurveyFormCallback2, "callback can't be null");
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u uVarI = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new j2(QuickLaunchPreferenceHelper.b(), 6)).j(Schedulers.f43170c).i(AndroidSchedulers.a());
        final int i2 = 0;
        final int i3 = 1;
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new Consumer() { // from class: ow0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i2;
                RecommendationHandler.GetSurveyFormCallback getSurveyFormCallback3 = getSurveyFormCallback2;
                switch (i4) {
                    case 0:
                        Log.g(3, "SkinCare3RecommendationHandler", "[getSurveyForm] succeed");
                        getSurveyFormCallback3.onSuccess((SurveyForm) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("SkinCare3RecommendationHandler", "[getSurveyForm] failed.", th);
                        getSurveyFormCallback3.onFailure(th);
                        break;
                }
            }
        }, new Consumer() { // from class: ow0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                RecommendationHandler.GetSurveyFormCallback getSurveyFormCallback3 = getSurveyFormCallback2;
                switch (i4) {
                    case 0:
                        Log.g(3, "SkinCare3RecommendationHandler", "[getSurveyForm] succeed");
                        getSurveyFormCallback3.onSuccess((SurveyForm) obj);
                        break;
                    default:
                        Throwable th = (Throwable) obj;
                        Log.e("SkinCare3RecommendationHandler", "[getSurveyForm] failed.", th);
                        getSurveyFormCallback3.onFailure(th);
                        break;
                }
            }
        });
        uVarI.a(consumerSingleObserver);
        PerfectLib.f39744i.b(consumerSingleObserver);
    }

    public final Cancelable syncServer(RecommendationType recommendationType, SyncServerCallback syncServerCallback) {
        Objects.requireNonNull(recommendationType, "type can't be null");
        Objects.requireNonNull(syncServerCallback, "callback can't be null");
        final SyncServerCallback syncServerCallback2 = (SyncServerCallback) Proxies.a(SyncServerCallback.class, syncServerCallback);
        if (recommendationType.a()) {
            PfCommons.c(new hn0(syncServerCallback2, 12));
            return DownloadTaskCancelable.f40351e;
        }
        final int i2 = 0;
        final int i3 = 1;
        if (recommendationType == RecommendationType.SKIN_CARE && ModuleConfig.s) {
            SkinCare3RecommendationHandler skinCare3RecommendationHandler = SkinCare3RecommendationHandler.Singleton.f39890a;
            skinCare3RecommendationHandler.getClass();
            Objects.requireNonNull(syncServerCallback2, "callback can't be null");
            Log.g(3, "SkinCare3RecommendationHandler", "[syncServer] start");
            try {
                if (skinCare3RecommendationHandler.f39886b.get()) {
                    throw new IllegalStateException("clearAll() is running");
                }
                final SyncingTask syncingTaskE = skinCare3RecommendationHandler.e();
                syncingTaskE.f39819c.b(SyncServerCallback.class, syncServerCallback2);
                syncingTaskE.f39817a.b(Disposables.a(new Action() { // from class: com.perfectcorp.perfectlib.b4
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                    public final void run() {
                        int i4 = i3;
                        RecommendationHandler.SyncingTask syncingTask = syncingTaskE;
                        switch (i4) {
                            case 0:
                                syncingTask.f39819c.c(RecommendationHandler.SyncServerCallback.class);
                                break;
                            default:
                                syncingTask.f39819c.c(RecommendationHandler.SyncServerCallback.class);
                                break;
                        }
                    }
                }));
                PerfectLib.f39744i.b(syncingTaskE.d);
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(syncingTaskE.f39818b, AndroidSchedulers.a());
                CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(new xv0(syncServerCallback2, i3), new vv0(syncServerCallback2, 2));
                mVar.a(callbackCompletableObserver);
                syncingTaskE.f39817a.b(callbackCompletableObserver);
                return syncingTaskE.f39817a;
            } catch (Throwable th) {
                PfCommons.c(new Runnable() { // from class: wv0
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        Throwable th2 = th;
                        RecommendationHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                        switch (i4) {
                            case 0:
                                syncServerCallback3.onFailure(th2);
                                break;
                            default:
                                syncServerCallback3.onFailure(th2);
                                break;
                        }
                    }
                });
                return DownloadTaskCancelable.f40351e;
            }
        }
        if (recommendationType != RecommendationType.SHADE_FINDER || !ModuleConfig.r) {
            PfCommons.c(new aa0(syncServerCallback2, recommendationType, 19));
            return DownloadTaskCancelable.f40351e;
        }
        ShadeFinderRecommendationHandler shadeFinderRecommendationHandler = ShadeFinderRecommendationHandler.Singleton.f39873a;
        shadeFinderRecommendationHandler.getClass();
        Objects.requireNonNull(syncServerCallback2, "callback can't be null");
        Log.g(3, "ShadeFinderRecommendationHandler", "[syncServer] start");
        try {
            if (shadeFinderRecommendationHandler.f39870b.get()) {
                throw new IllegalStateException("clearAll() is running");
            }
            final SyncingTask syncingTaskE2 = shadeFinderRecommendationHandler.e();
            syncingTaskE2.f39819c.b(SyncServerCallback.class, syncServerCallback2);
            syncingTaskE2.f39817a.b(Disposables.a(new Action() { // from class: com.perfectcorp.perfectlib.b4
                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                public final void run() {
                    int i4 = i2;
                    RecommendationHandler.SyncingTask syncingTask = syncingTaskE2;
                    switch (i4) {
                        case 0:
                            syncingTask.f39819c.c(RecommendationHandler.SyncServerCallback.class);
                            break;
                        default:
                            syncingTask.f39819c.c(RecommendationHandler.SyncServerCallback.class);
                            break;
                    }
                }
            }));
            PerfectLib.f39744i.b(syncingTaskE2.d);
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(syncingTaskE2.f39818b, AndroidSchedulers.a());
            CallbackCompletableObserver callbackCompletableObserver2 = new CallbackCompletableObserver(new xv0(syncServerCallback2, i2), new vv0(syncServerCallback2, i3));
            mVar2.a(callbackCompletableObserver2);
            syncingTaskE2.f39817a.b(callbackCompletableObserver2);
            return syncingTaskE2.f39817a;
        } catch (Throwable th2) {
            PfCommons.c(new Runnable() { // from class: wv0
                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = i2;
                    Throwable th3 = th2;
                    RecommendationHandler.SyncServerCallback syncServerCallback3 = syncServerCallback2;
                    switch (i4) {
                        case 0:
                            syncServerCallback3.onFailure(th3);
                            break;
                        default:
                            syncServerCallback3.onFailure(th3);
                            break;
                    }
                }
            });
            return DownloadTaskCancelable.f40351e;
        }
    }

    public final void getRecommendedResult(RecommendationType recommendationType, RecommendationData recommendationData, String str, JsExecutor jsExecutor, GetRecommendedResultCallback getRecommendedResultCallback) {
        Objects.requireNonNull(recommendationType, "type can't be null");
        Objects.requireNonNull(getRecommendedResultCallback, "callback can't be null");
        GetRecommendedResultCallback getRecommendedResultCallback2 = (GetRecommendedResultCallback) Proxies.a(GetRecommendedResultCallback.class, getRecommendedResultCallback);
        if (recommendationType.a()) {
            PfCommons.c(new cr0(getRecommendedResultCallback2, 0));
            return;
        }
        if (recommendationType == RecommendationType.SKIN_CARE && ModuleConfig.s) {
            SkinCare3RecommendationHandler skinCare3RecommendationHandler = SkinCare3RecommendationHandler.Singleton.f39890a;
            Objects.requireNonNull(jsExecutor, "jsExecutor can't be null");
            skinCare3RecommendationHandler.d(recommendationData, jsExecutor, str, getRecommendedResultCallback2);
        } else if (recommendationType != RecommendationType.SHADE_FINDER || !ModuleConfig.r) {
            PfCommons.c(new dr0(getRecommendedResultCallback2, recommendationType, 0));
        } else {
            ShadeFinderRecommendationHandler shadeFinderRecommendationHandler = ShadeFinderRecommendationHandler.Singleton.f39873a;
            ShadeFinderRecommendationHandler.d(recommendationData, getRecommendedResultCallback2);
        }
    }
}

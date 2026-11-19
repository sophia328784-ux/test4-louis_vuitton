.class public final Lcom/perfectcorp/perfectlib/RecommendationHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;,
        Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;,
        Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;,
        Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;,
        Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;,
        Lcom/perfectcorp/perfectlib/RecommendationHandler$Singleton;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/perfectcorp/perfectlib/RecommendationHandler;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/RecommendationHandler;

    return-object v0
.end method


# virtual methods
.method public final clearAll(Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;)V
    .locals 6

    const-string p0, "callback can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;

    invoke-static {p0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$ClearAllCallback;

    const/4 p1, 0x3

    const-string v0, "RecommendationHandler"

    const-string v1, "[clearAll] start"

    invoke-static {p1, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    sget-boolean v2, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SkinCare3RecommendationHandler"

    invoke-static {p1, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/perfectcorp/perfectlib/s;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/perfectcorp/perfectlib/s;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v4, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/e4;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lcom/perfectcorp/perfectlib/e4;-><init>(Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    new-instance v3, Ln7;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ln7;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    new-instance v3, Lpv0;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lpv0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_0
    sget-boolean v2, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->r:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "ShadeFinderRecommendationHandler"

    invoke-static {p1, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/perfectlib/x3;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/perfectcorp/perfectlib/x3;-><init>(Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Ln7;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ln7;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Lpv0;

    invoke-direct {v2, p1}, Lpv0;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    const-string v0, "sources is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/d;-><init>(Ljava/lang/Iterable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    new-instance v0, Lo2;

    const/16 v2, 0xf

    invoke-direct {v0, p0, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lxw;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method

.method public final getRecommendedResult(Lcom/perfectcorp/perfectlib/RecommendationType;Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/JsExecutor;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V
    .locals 1

    const-string p0, "type can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    invoke-static {p0, p4}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/RecommendationType;->a()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Lcr0;

    invoke-direct {p1, p0, v0}, Lcr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object p4, Lcom/perfectcorp/perfectlib/RecommendationType;->SKIN_CARE:Lcom/perfectcorp/perfectlib/RecommendationType;

    if-ne p1, p4, :cond_1

    sget-boolean p4, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz p4, :cond_1

    sget-object p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    const-string p4, "jsExecutor can\'t be null"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->d(Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/JsExecutor;Ljava/lang/String;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V

    return-void

    :cond_1
    sget-object p3, Lcom/perfectcorp/perfectlib/RecommendationType;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/RecommendationType;

    if-ne p1, p3, :cond_2

    sget-boolean p3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->r:Z

    if-eqz p3, :cond_2

    sget-object p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;

    invoke-static {p2, p0}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->d(Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V

    return-void

    :cond_2
    new-instance p2, Ldr0;

    invoke-direct {p2, p0, p1, v0}, Ldr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;Lcom/perfectcorp/perfectlib/RecommendationType;I)V

    invoke-static {p2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getRecommendedResult(Lcom/perfectcorp/perfectlib/RecommendationType;Lcom/perfectcorp/perfectlib/RecommendationData;Ljava/lang/String;Lcom/perfectcorp/perfectlib/JsExecutor;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V
    .locals 1

    .line 77
    const-string p0, "type can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p5, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    invoke-static {p0, p5}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/RecommendationType;->a()Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    new-instance p1, Lcr0;

    invoke-direct {p1, p0, v0}, Lcr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object p5, Lcom/perfectcorp/perfectlib/RecommendationType;->SKIN_CARE:Lcom/perfectcorp/perfectlib/RecommendationType;

    if-ne p1, p5, :cond_1

    sget-boolean p5, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz p5, :cond_1

    sget-object p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    const-string p5, "jsExecutor can\'t be null"

    invoke-static {p4, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2, p4, p3, p0}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->d(Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/JsExecutor;Ljava/lang/String;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V

    return-void

    :cond_1
    sget-object p3, Lcom/perfectcorp/perfectlib/RecommendationType;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/RecommendationType;

    if-ne p1, p3, :cond_2

    sget-boolean p3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->r:Z

    if-eqz p3, :cond_2

    sget-object p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;

    invoke-static {p2, p0}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->d(Lcom/perfectcorp/perfectlib/RecommendationData;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V

    return-void

    :cond_2
    new-instance p2, Ldr0;

    invoke-direct {p2, p0, p1, v0}, Ldr0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;Lcom/perfectcorp/perfectlib/RecommendationType;I)V

    invoke-static {p2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getSurveyForm(Lcom/perfectcorp/perfectlib/RecommendationType;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;)V
    .locals 2

    const-string p0, "type can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/RecommendationType;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lhn0;

    const/16 p1, 0xb

    invoke-direct {p0, p2, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/RecommendationType;->SKIN_CARE:Lcom/perfectcorp/perfectlib/RecommendationType;

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz v0, :cond_1

    sget-object p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/j2;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/perfectlib/j2;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Low0;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Low0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;I)V

    new-instance v0, Low0;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Low0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetSurveyFormCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_1
    new-instance p0, Laa0;

    const/16 v0, 0x12

    invoke-direct {p0, p2, p1, v0}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final syncServer(Lcom/perfectcorp/perfectlib/RecommendationType;Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 7

    const-string p0, "type can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/RecommendationType;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lhn0;

    const/16 p1, 0xc

    invoke-direct {p0, p2, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    sget-object v1, Lcom/perfectcorp/perfectlib/RecommendationType;->SKIN_CARE:Lcom/perfectcorp/perfectlib/RecommendationType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "clearAll() is running"

    const/4 v5, 0x3

    const-string v6, "[syncServer] start"

    if-ne p1, v1, :cond_2

    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->s:Z

    if-eqz v1, :cond_2

    sget-object p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "SkinCare3RecommendationHandler"

    invoke-static {v5, p0, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;->e()Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    move-result-object p0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-virtual {p1, v0, p2}, Lcom/perfectcorp/common/utility/EventPublisher;->b(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v0, Lcom/perfectcorp/perfectlib/b4;

    invoke-direct {v0, p0, v3}, Lcom/perfectcorp/perfectlib/b4;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->a(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    new-array v1, v3, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Lvv0;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lvv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    new-instance v0, Lxv0;

    invoke-direct {v0, p2, v3}, Lxv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {p2, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-array v0, v3, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p2, v0, v2

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance p1, Lwv0;

    invoke-direct {p1, p2, p0, v3}, Lwv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;Ljava/lang/Throwable;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_2
    sget-object v1, Lcom/perfectcorp/perfectlib/RecommendationType;->SHADE_FINDER:Lcom/perfectcorp/perfectlib/RecommendationType;

    if-ne p1, v1, :cond_4

    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->r:Z

    if-eqz v1, :cond_4

    sget-object p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "ShadeFinderRecommendationHandler"

    invoke-static {v5, p0, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;->e()Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;

    move-result-object p0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-virtual {p1, v0, p2}, Lcom/perfectcorp/common/utility/EventPublisher;->b(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v0, Lcom/perfectcorp/perfectlib/b4;

    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/perfectlib/b4;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->a(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    new-array v1, v3, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Lvv0;

    invoke-direct {p1, p2, v3}, Lvv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    new-instance v0, Lxv0;

    invoke-direct {v0, p2, v2}, Lxv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {p2, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-array v0, v3, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p2, v0, v2

    invoke-virtual {p1, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    new-instance p1, Lwv0;

    invoke-direct {p1, p2, p0, v2}, Lwv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;Ljava/lang/Throwable;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_4
    new-instance p0, Laa0;

    const/16 v0, 0x13

    invoke-direct {p0, p2, p1, v0}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0
.end method

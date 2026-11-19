.class public final Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Preferences;,
        Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;,
        Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;,
        Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;,
        Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;,
        Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public d:Z

.field public final e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

.field public f:Landroid/graphics/Bitmap;

.field public g:Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupLiveFaceAlignData;

.field public h:Lcom/perfectcorp/perfectlib/jniproxy/CUITracking;

.field public i:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$PredictionCache;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "FaceAttributeAnalyzerSerialExecutor"

    invoke-static {v1}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    const-wide/16 v3, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->b:Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    sget-object p2, Lcom/perfectcorp/perfectlib/PerfectLib;->e:Ljava/util/Set;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p2

    sget-object v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Luw;

    invoke-direct {v1, p1, v0}, Luw;-><init>(ILjava/util/Set;)V

    invoke-virtual {p2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;)V
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "createCallback can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;

    invoke-static {v0, p0}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    new-instance v1, Ln7;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ln7;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ShadeFinder;->b()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Lwm;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lwm;-><init>(ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Ld8;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ltw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ltw;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;I)V

    new-instance v3, Ltw;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ltw;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;I)V

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    const-string p0, "PerfectLib.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "CUSTOM_FEATURE_BRAND"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM_FEATURE_FACE_ATTRIBUTE_LV"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "LV"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    const-string p0, "Brand "

    const-string v2, ", LV FaceAttribute: "

    invoke-static {p0, v1, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v0, "ON"

    goto :goto_0

    :cond_0
    const-string v0, "OFF"

    :goto_0
    const/4 v1, 0x4

    const-string v2, "FaceAttributeAnalyzer"

    invoke-static {p0, v0, v1, v2}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->d:Z

    return-void
.end method

.method public final analyze(Ljava/util/Set;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;

    const/4 v0, 0x3

    const-string v1, "FaceAttributeAnalyzer"

    const-string v2, "[analyze] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->b:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/perfectcorp/common/utility/ToastUtils;->a()V

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/z;

    invoke-direct {v1, p0, p1, v0}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v1, Lo2;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lww;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lww;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;I)V

    new-instance v0, Lww;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lww;-><init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$AnalyzeCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getAvailableFeatures()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method public final setImage(Landroid/graphics/Bitmap;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;)V
    .locals 4

    const-string v0, "src can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$SetImageCallback;

    const-string v0, "[setImage] start"

    const/4 v1, 0x3

    const-string v2, "FaceAttributeAnalyzer"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ln2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    new-instance v2, Lp3;

    const/16 v3, 0xc

    invoke-direct {v2, p0, p1, v3}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p0, Lxw;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lo2;

    invoke-direct {p1, p2, v1}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

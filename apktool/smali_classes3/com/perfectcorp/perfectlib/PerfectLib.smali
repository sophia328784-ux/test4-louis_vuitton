.class public final Lcom/perfectcorp/perfectlib/PerfectLib;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/PerfectLib$State;,
        Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;,
        Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;,
        Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;,
        Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

.field public static volatile accessoryFunctionalities:Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

.field public static volatile b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

.field public static volatile c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

.field public static volatile d:Ljava/util/Set;

.field public static volatile e:Ljava/util/Set;

.field public static volatile f:Ljava/util/Set;

.field public static volatile g:Lcom/perfectcorp/perfectlib/Configuration;

.field public static volatile h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public static volatile i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public static volatile j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

.field public static k:Z

.field public static l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public static m:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public static n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public static final o:Lcom/perfectcorp/perfectlib/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/perfectlib/HandFunctionalities;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/HandFunctionalities;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->c:Lcom/perfectcorp/perfectlib/HandFunctionalities;

    new-instance v0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->accessoryFunctionalities:Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->e:Ljava/util/Set;

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->f:Ljava/util/Set;

    sget-object v1, Lcom/perfectcorp/perfectlib/Configuration;->m:Lcom/perfectcorp/perfectlib/Configuration;

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    sget-object v1, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    const-string v0, "PerfectLib"

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->m:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {}, Lcom/perfectcorp/perfectlib/internal/c;->a()Lcom/perfectcorp/perfectlib/internal/c;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->o:Lcom/perfectcorp/perfectlib/internal/c;

    return-void
.end method

.method public static a()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->b()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhn0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lhn0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    sget-boolean v2, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->t:Z

    if-eqz v2, :cond_1

    new-instance v2, Ln7;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ln7;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v2, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Ltg0;

    const/16 v3, 0x18

    invoke-direct {v1, v3}, Ltg0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v3, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Ln7;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ln7;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v2, Ltg0;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ltg0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->w:Z

    if-eqz v1, :cond_0

    new-instance v1, Ln7;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ln7;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;

    invoke-direct {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v2, Ltg0;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ltg0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :cond_0
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/perfectcorp/perfectlib/i;

    const/4 v4, 0x6

    invoke-direct {v2, v1, v4}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Ltg0;

    const/16 v4, 0x1b

    invoke-direct {v2, v4}, Ltg0;-><init>(I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v4, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    :cond_1
    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lhn0;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lhn0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v3, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v1, Ltg0;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ltg0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->o:Lcom/perfectcorp/perfectlib/internal/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lhn0;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lhn0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v0, Le5;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Le5;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;Ljava/util/EnumSet;Lcom/perfectcorp/perfectlib/Functionality;Z)V
    .locals 6

    const/4 v0, 0x5

    const-string v1, "PerfectLib"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has no license."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;->endDate:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " license has expired."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-wide v4, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b$a;->startDate:J

    cmp-long p0, v4, v2

    const/4 v2, 0x3

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " license hasn\'t started yet but developer mode enabled."

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " license hasn\'t started yet."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " license is valid."

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use SDK without initialized."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static d()Z
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;->INITIALIZED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadCacheStrategy()Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    return-object v0
.end method

.method public static getLocaleCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxCacheSize()I
    .locals 3

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v1, "MAX_CACHE_SIZE_IN_MB"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSkinCareFeatureList()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v1, "1ca08893-9d9a-49f8-b149-fb85b947ba00"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getState()Lcom/perfectcorp/perfectlib/PerfectLib$State;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.27.2.111031404"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;)V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    invoke-direct {v0, p2}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;-><init>(Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallback;)V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string p2, "applicationContext can\'t be null"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "configuration can\'t be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "SDK start init. configuration="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    const-string v2, "PerfectLib"

    invoke-static {v1, v2, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib$State;->INITIALIZED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    if-ne p2, v3, :cond_0

    const-string p0, "SDK already initialized."

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance p1, Lcom/perfectcorp/perfectlib/PerfectLib$2;

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/PerfectLib$2;-><init>(Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;)V

    :goto_0
    sget-object p2, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, p1, p2}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib$State;->INITIALIZING:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    if-ne p2, v3, :cond_1

    const-string p0, "SDK is initializing."

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance p1, Lcom/perfectcorp/perfectlib/PerfectLib$2;

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/PerfectLib$2;-><init>(Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;)V

    goto :goto_0

    :cond_1
    const-string p2, "SDK start initializing."

    invoke-static {v1, v2, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sput-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-boolean p2, Lcom/perfectcorp/perfectlib/PerfectLib;->k:Z

    const/4 v3, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/perfectlib/ymk/Globals;

    invoke-direct {p2, p0}, Lcom/perfectcorp/perfectlib/ymk/Globals;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/Globals;->b:Ljava/util/List;

    sget-object v4, Lcom/perfectcorp/common/PfCommons;->a:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/perfectcorp/common/PfCommons;->c:Landroid/content/Context;

    sget-object v4, Lcom/perfectcorp/common/PfCommons;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    sput-boolean v4, Lcom/perfectcorp/common/PfCommons;->d:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/perfectcorp/common/PfCommonsJni;->a:Ljava/util/List;

    sput-object p2, Lcom/perfectcorp/perfectlib/ymk/Globals;->a:Lcom/perfectcorp/perfectlib/ymk/Globals;

    const-string p0, "Application onCreate"

    const-string v4, "PerfectSdkGlobals"

    invoke-static {v1, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string p0, "activity"

    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, "maxMemory="

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", MemoryClass="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", LargeMemoryClass="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "MANUFACTURER="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", MODEL="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "isDebug="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/perfectcorp/common/PfCommons;->d:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/common/rx/c;

    invoke-direct {p0}, Lcom/perfectcorp/common/rx/c;-><init>()V

    sput-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a:Lcom/perfectcorp/common/rx/c;

    sput-boolean v5, Lcom/perfectcorp/perfectlib/PerfectLib;->k:Z

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object p2, Lcom/perfectcorp/perfectlib/PerfectLib;->m:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/perfectcorp/perfectlib/PerfectLib$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/perfectcorp/perfectlib/PerfectLib$1;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/Configuration;Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p2, v1, p0}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance p1, Lcom/perfectcorp/perfectlib/PerfectLib$2;

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/PerfectLib$2;-><init>(Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;)V

    goto/16 :goto_0
.end method

.method public static release(Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "releaseCallback can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;

    invoke-static {v0, p0}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASED:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    const/4 v2, 0x3

    const-string v3, "PerfectLib"

    if-ne v0, v1, :cond_0

    const-string v0, "SDK already released."

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhn0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib$State;->RELEASING:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    if-ne v0, v1, :cond_1

    const-string v0, "SDK is releasing."

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->m:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/perfectcorp/perfectlib/PerfectLib$4;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/PerfectLib$4;-><init>(Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    const-string v0, "SDK start releasing."

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sput-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->j:Lcom/perfectcorp/perfectlib/PerfectLib$State;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->m:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->l:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/perfectcorp/perfectlib/PerfectLib$3;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/PerfectLib$3;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->m:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/perfectcorp/perfectlib/PerfectLib$4;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/PerfectLib$4;-><init>(Lcom/perfectcorp/perfectlib/PerfectLib$ReleaseCallback;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PerfectLib"

    if-eqz v0, :cond_0

    const-string p0, "countryCode is empty string or null."

    :goto_0
    invoke-static {v2, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "^[a-zA-Z]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "countryCode doesn\'t match the pattern /^[a-zA-Z]{2}$/."

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set countryCode=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" to SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "SETTING_COUNTRY_CODE"

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v1, v0, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setDebugMode(Lcom/perfectcorp/perfectlib/DebugMode;)V
    .locals 7

    const-string v0, "debugMode can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setDebugMode] debugMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "PerfectLib"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/internal/a;->logcat:Z

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    const-string v0, "[setDebugMode] logcat debug flag on, skip config"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/perfectcorp/common/logger/j;->c(Z)V

    iget v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->b:I

    if-eq v0, v6, :cond_1

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    sput v0, Lcom/perfectcorp/common/utility/Log;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/perfectcorp/common/logger/j;->c(Z)V

    :goto_0
    sget-object v0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/internal/a;->file:Z

    if-eqz v0, :cond_3

    const-string p0, "[setDebugMode] file logger debug flag on, skip config"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/perfectcorp/common/logger/j;->b(Ljava/io/File;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->e:I

    sget-object v0, Lcom/perfectcorp/common/logger/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/common/logger/a;

    if-eqz v0, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v1, :cond_4

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    goto :goto_1

    :cond_4
    iput p0, v0, Lcom/perfectcorp/common/logger/a;->b:I

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-static {}, Lcom/perfectcorp/common/logger/j;->a()V

    return-void
.end method

.method public static setDownloadCacheStrategy(Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;)V
    .locals 1

    const-string v0, "downloadCacheStrategy can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sput-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    return-void
.end method

.method public static setLocaleCode(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PerfectLib"

    if-eqz v0, :cond_0

    const-string p0, "localeCode is empty string or null."

    :goto_0
    invoke-static {v2, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "^[a-zA-Z]{2}_[a-zA-Z]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "localeCode doesn\'t match the pattern /^[a-zA-Z]{2}_[a-zA-Z]{2}$."

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set localeCode=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" to SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "SETTING_LANGUAGE_LOCALE_CODE"

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/QuickLaunchPreferenceHelper;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-virtual {v1, v0, p0}, Lcom/perfectcorp/common/utility/j;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setMaxCacheSize(I)V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;->r()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    move-result-object v0

    const-string v1, "MAX_CACHE_SIZE_IN_MB"

    invoke-virtual {v0, p0, v1}, Lcom/perfectcorp/common/utility/j;->n(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMaxCacheSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    const-string v1, "PerfectLib"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "maxCacheSizeInMb can\'t less than zero."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

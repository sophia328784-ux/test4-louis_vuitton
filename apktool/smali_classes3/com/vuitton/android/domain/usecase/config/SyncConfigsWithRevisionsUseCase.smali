.class public final Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$Companion;,
        Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u0014\u0015BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;",
        "initializeAppUseCase",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "appConfigRepository",
        "Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;",
        "connectedObjectsConfigRepository",
        "Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;",
        "areConfigsInCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;",
        "clearAllConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;",
        "areCachedConfigsUpToDateUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;)V",
        "Companion",
        "SyncResult",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;

.field public final d:Lcom/vuitton/android/domain/repository/AppConfigRepository;

.field public final e:Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;

.field public final f:Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->b:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->c:Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->d:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->e:Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;

    iput-object p6, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->f:Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

    iput-object p7, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->g:Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;

    iput-object p8, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->h:Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;

    iget v4, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;

    invoke-direct {v3, v1, v0}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;-><init>(Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->g:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    iget-object v6, v1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v2, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v5, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v16

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto/16 :goto_3

    :cond_4
    iget v2, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->f:I

    iget v5, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->e:I

    iget v10, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->d:I

    iget-object v12, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v14, v2

    move-object v2, v12

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v12

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->d:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iget-object v5, v1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->b:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v5, v5, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v5}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iget-wide v12, v2, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    iput-object v2, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    const/4 v14, 0x0

    iput v14, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->d:I

    iput v14, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->e:I

    iput v14, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->f:I

    iput v10, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    invoke-interface {v0, v12, v13, v5, v3}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->e(JLjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_6

    goto/16 :goto_7

    :cond_6
    move v5, v14

    move v10, v5

    :goto_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v12, v1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->e:Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;

    iget-wide v7, v2, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    iget-object v15, v2, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->c:Ljava/lang/String;

    iput-object v2, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iput-object v0, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput v10, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->d:I

    iput v5, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->e:I

    iput v14, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->f:I

    iput v9, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    invoke-interface {v12, v7, v8, v15, v3}, Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;->b(JLjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v0, v16

    :goto_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->toString()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->toString()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->toString()Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v5, Lkotlin/Result;

    invoke-direct {v5, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_e

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v5}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_5
    check-cast v5, Lkotlin/Result;

    iget-object v0, v5, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    iput-object v11, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iput-object v11, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v13, 0x3

    iput v13, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    iget-object v0, v1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->h:Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;

    invoke-virtual {v0, v2, v3}, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->a(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;->a:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;

    goto :goto_9

    :cond_b
    iput-object v11, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    const/4 v2, 0x4

    iput v2, v3, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$determineSyncResult$1;->i:I

    iget-object v0, v1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->f:Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

    invoke-virtual {v0, v3}, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_c

    :goto_7
    return-object v4

    :cond_c
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$DeprecatedConfigs;->a:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$DeprecatedConfigs;

    goto :goto_9

    :cond_d
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$NoConfigs;

    new-instance v1, Lcom/vuitton/foundation/model/domain/error/config/SyncFailedException;

    const-string v2, "Sync: No configs in cache, unable to sync."

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/error/config/SyncFailedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$NoConfigs;-><init>(Ljava/lang/Exception;)V

    :goto_9
    return-object v0

    :cond_e
    throw v0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->a(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    move-object p1, p2

    check-cast p1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;

    sget-object p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;->a:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    if-eqz p2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->c:Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_4

    :cond_6
    move-object p0, p1

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object p0

    :cond_7
    instance-of p2, p1, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;

    if-eqz p2, :cond_b

    move-object p2, p1

    check-cast p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;

    instance-of v5, p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$DeprecatedConfigs;

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_8
    instance-of p2, p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$NoConfigs;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$NoConfigs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->g:Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    return-object p1

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

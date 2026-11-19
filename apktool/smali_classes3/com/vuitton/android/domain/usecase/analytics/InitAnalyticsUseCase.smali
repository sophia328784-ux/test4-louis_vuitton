.class public final Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Ldagger/Lazy;",
        "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
        "analyticsWrapperRepositoryProvider",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ldagger/Lazy;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final c:Ldagger/Lazy;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ldagger/Lazy;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
            "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
            "Ldagger/Lazy<",
            "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
            ">;",
            "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->c:Ldagger/Lazy;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->h:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-boolean p0, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->e:Z

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v6, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->c:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SENSORS_DATA_ENABLED_STATUS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v7}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p0, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput v6, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->h:I

    invoke-virtual {v4, v7, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v6

    move-object v6, p1

    move-object p1, v8

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->GOOGLE_ANALYTICS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v7}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p0, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->e:Z

    iput v5, v0, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase$run$1;->h:I

    invoke-virtual {v4, v7, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v1, p0

    move p0, p1

    move-object p1, v0

    move-object v0, v6

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v2, v1, p0, p1}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

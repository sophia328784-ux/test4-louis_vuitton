.class public final Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;",
        "sendEventUseCase",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "appConfigRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V",
        "Companion",
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

.field public final c:Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

.field public final d:Lcom/vuitton/android/domain/repository/AppConfigRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->c:Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->d:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;

    iget v3, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->h:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget v4, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->e:I

    iget-object v8, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object v9, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->c:Ljava/util/Iterator;

    iget-object v10, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    iget-object v4, v0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v4}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v1

    move-object v9, v4

    move v4, v5

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object v1, v10, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iput-object v10, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object v9, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->c:Ljava/util/Iterator;

    iput-object v8, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iput v4, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->e:I

    iput v6, v2, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$run$1;->h:I

    iget-object v11, v0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->d:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {v11, v1, v8, v2}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->d(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    :goto_2
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v11, v1, Lkotlin/Result$Failure;

    if-nez v11, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v6, :cond_6

    if-eqz v1, :cond_5

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v1, "controlvariant"

    goto :goto_3

    :cond_6
    move-object v1, v7

    :goto_3
    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->a:Ljava/lang/String;

    const/16 v16, 0x9

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->c:Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

    iget-object v8, v1, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;->b:Ldagger/Lazy;

    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    invoke-interface {v8, v1, v11}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

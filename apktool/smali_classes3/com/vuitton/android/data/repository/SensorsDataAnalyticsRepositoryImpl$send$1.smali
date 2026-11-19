.class final Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.SensorsDataAnalyticsRepositoryImpl$send$1"
    f = "SensorsDataAnalyticsRepositoryImpl.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

.field public c:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

.field public d:Ljava/util/Map;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

.field public final synthetic g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic h:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->f:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->h:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->h:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->f:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;-><init>(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->c:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->b:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->f:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

    iget-object v1, p1, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->e:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

    iget-object v3, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v4, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->h:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    invoke-interface {v1, v3, v4}, Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->b:Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;

    iput-object v4, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->c:Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->d:Ljava/util/Map;

    iput v2, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;->e:I

    invoke-static {p1, p0}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->e(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v1

    move-object v1, v4

    :goto_0
    check-cast p1, Ljava/lang/String;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "atg_id"

    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->l(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileSet(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit;->getType()Lcom/vuitton/foundation/model/domain/model/analytics/HitType;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/android/data/analytics/HitTypeAnalyticMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

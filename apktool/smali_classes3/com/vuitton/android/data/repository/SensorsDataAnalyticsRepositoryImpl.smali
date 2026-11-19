.class public final Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AnalyticsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001Bc\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008\u0012\u001c\u0008\u0001\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\n\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AnalyticsRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;",
        "userPropertyBuilder",
        "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;",
        "",
        "",
        "",
        "hitBuilder",
        "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
        "profileLocalDataSource",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
        "data"
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/vuitton/android/domain/repository/ConsentRepository;

.field public final d:Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;

.field public final e:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

.field public final f:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

.field public final g:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final h:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public final i:Lkotlinx/coroutines/internal/ContextScope;

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/content/Context;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Landroid/content/Context;",
            "Lcom/vuitton/android/domain/repository/ConsentRepository;",
            "Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;",
            "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;",
            "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
            "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
            ")V"
        }
    .end annotation

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

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->d:Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->e:Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->g:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->h:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->i:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static final e(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;-><init>(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->f:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$updateAtgId$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_5

    :try_start_0
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Atg Id not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_5
    :goto_2
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_6

    const-string p0, "anonymous"

    :cond_6
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    const-string v0, "atg_id"

    invoke-virtual {p1, v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileAppend(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->c:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->g:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableJavaScriptBridge(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    iget v2, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_START:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    or-int/2addr v2, v3

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_END:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    or-int/2addr v2, v3

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->eventValue:I

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v2, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->h:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->startWithConfigOptions(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "allow_personalized_ads"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileSet(Lorg/json/JSONObject;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "platform_name"

    const-string v1, "LV_APP"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->registerSuperProperties(Lorg/json/JSONObject;)V

    new-instance p1, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$init$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$init$1;-><init>(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->i:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v2, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableSDK()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->disableSDK()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->j:Z

    return-void
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->j:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl$send$1;-><init>(Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/analytics/Hit;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->i:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c()V
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->j:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->disableSDK()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->j:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/repository/SensorsDataAnalyticsRepositoryImpl;->d:Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;

    invoke-interface {p0, p1}, Lcom/vuitton/android/data/analytics/builder/AnalyticsUserPropertyBuilder;->a(Lcom/vuitton/foundation/model/domain/model/analytics/UserProperty$WebViewUserProperty;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    iget-object v0, p0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->profileSet(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

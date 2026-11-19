.class final Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;
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
        "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;",
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
    c = "com.vuitton.android.data.datasource.config.AppConfigLocalDataSource$getAppConfig$2$1"
    f = "AppConfigLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;-><init>(Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 118

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$getAppConfig$2$1;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iget-object v1, v0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->b:Landroid/content/SharedPreferences;

    const-string v2, "app_config"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    sget-object v2, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a:Ljava/util/List;

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;->b:Ljava/util/List;

    iget v5, v5, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;->c:I

    invoke-direct {v6, v7, v8, v5}, Lcom/vuitton/foundation/model/domain/model/config/AbTest;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v10, v4

    goto :goto_1

    :cond_1
    move-object v10, v3

    :goto_1
    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_c

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    if-eqz v0, :cond_b

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;->a:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/vuitton/android/data/dto/config/cache/mapper/FeatureThemeCacheMapperKt$WhenMappings;->b:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    if-eq v11, v4, :cond_3

    if-ne v11, v5, :cond_2

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;->DARK:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    goto :goto_2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_3
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;->LIGHT:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    :goto_2
    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;

    :try_start_0
    sget-object v12, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->e:Ljava/lang/Long;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v12

    move-object/from16 v17, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 p0, v3

    goto :goto_6

    :cond_4
    move-object/from16 v17, v3

    :goto_3
    iget-object v13, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->a:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->b:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->d:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 p0, v3

    :try_start_1
    iget-object v3, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->f:Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;

    sget-object v16, Lcom/vuitton/android/data/dto/config/cache/mapper/AICompanionConfigCacheMapperKt$WhenMappings;->b:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v16, v3

    if-eq v3, v4, :cond_8

    if-eq v3, v5, :cond_7

    const/4 v2, 0x3

    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-ne v3, v2, :cond_5

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_REPLAY:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    :goto_4
    move-object/from16 v18, v2

    goto :goto_5

    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_DONE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_UPCOMING:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    goto :goto_4

    :goto_5
    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;->g:Ljava/lang/String;

    move-object/from16 v16, v12

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    const/16 v20, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v12 .. v20}, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v12}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_8

    :cond_9
    instance-of v0, v2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_8
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-direct {v8, v9, v11, v0}, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V

    goto :goto_9

    :cond_a
    throw v2

    :cond_b
    move-object/from16 p0, v3

    move-object/from16 v8, p0

    :goto_9
    invoke-direct {v6, v7, v8}, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;)V

    move-object/from16 v19, v6

    goto :goto_a

    :cond_c
    move-object/from16 p0, v3

    move-object/from16 v19, p0

    :goto_a
    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c:Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v20, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a:Z

    iget-boolean v3, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b:Z

    iget-boolean v6, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c:Z

    iget-boolean v7, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d:Z

    iget-boolean v8, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e:Z

    iget-boolean v9, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f:Z

    iget-boolean v11, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g:Z

    iget-boolean v12, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h:Z

    iget-boolean v13, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i:Z

    iget-boolean v14, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j:Z

    iget-boolean v15, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k:Z

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l:Z

    iget-boolean v4, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m:Z

    move/from16 v21, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n:Z

    move/from16 v34, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o:Z

    move/from16 v35, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p:Z

    move/from16 v36, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q:Z

    move/from16 v37, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r:Z

    move/from16 v38, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s:Z

    move/from16 v39, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t:Z

    move/from16 v40, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u:Z

    move/from16 v41, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v:Z

    move/from16 v42, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w:Z

    move/from16 v43, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x:Z

    move/from16 v44, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y:Z

    move/from16 v45, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z:Z

    move/from16 v46, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A:Z

    move/from16 v47, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B:Z

    move/from16 v48, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C:Z

    move/from16 v49, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D:Z

    move/from16 v50, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E:Z

    move/from16 v51, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F:Z

    move/from16 v52, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G:Z

    move/from16 v53, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H:Z

    move/from16 v54, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I:Z

    move/from16 v55, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J:Z

    move/from16 v56, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K:Z

    move/from16 v57, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L:Z

    move/from16 v58, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M:Z

    move/from16 v59, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N:Z

    move/from16 v60, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O:Z

    move/from16 v61, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P:Z

    move/from16 v62, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q:Z

    move/from16 v63, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R:Z

    move/from16 v64, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S:Z

    move/from16 v65, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->T:Z

    move/from16 v66, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->U:Z

    move/from16 v67, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->V:Z

    move/from16 v68, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->W:Z

    move/from16 v69, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->X:Z

    move/from16 v70, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Y:Z

    move/from16 v71, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Z:Z

    move/from16 v72, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->a0:Z

    move/from16 v73, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->b0:Z

    move/from16 v74, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->c0:Z

    move/from16 v75, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->d0:Z

    move/from16 v76, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->e0:Z

    move/from16 v77, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->f0:Z

    move/from16 v78, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->g0:Z

    move/from16 v79, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->h0:Z

    move/from16 v80, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->i0:Z

    move/from16 v81, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->j0:Z

    move/from16 v82, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->k0:Z

    move/from16 v83, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->l0:Z

    move/from16 v84, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->m0:Z

    move/from16 v85, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->n0:Z

    move/from16 v86, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->o0:Z

    move/from16 v87, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->p0:Z

    move/from16 v88, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->q0:Z

    move/from16 v89, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->r0:Z

    move/from16 v90, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->s0:Z

    move/from16 v91, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->t0:Z

    move/from16 v92, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->u0:Z

    move/from16 v93, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->v0:Z

    move/from16 v94, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->w0:Z

    move/from16 v95, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->x0:Z

    move/from16 v96, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->y0:Z

    move/from16 v97, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->z0:Z

    move/from16 v98, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->A0:Z

    move/from16 v99, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->B0:Z

    move/from16 v100, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->C0:Z

    move/from16 v101, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->D0:Z

    move/from16 v102, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->E0:Z

    move/from16 v103, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->F0:Z

    move/from16 v104, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->G0:Z

    move/from16 v105, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->H0:Z

    move/from16 v106, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->I0:Z

    move/from16 v107, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->J0:Z

    move/from16 v108, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->K0:Z

    move/from16 v109, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->L0:Z

    move/from16 v110, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->M0:Z

    move/from16 v111, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->N0:Z

    move/from16 v112, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->O0:Z

    move/from16 v113, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->P0:Z

    move/from16 v114, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->Q0:Z

    move/from16 v115, v2

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->R0:Z

    iget-boolean v0, v0, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;->S0:Z

    move/from16 v117, v0

    move/from16 v116, v2

    move/from16 v22, v3

    move/from16 v33, v4

    move/from16 v32, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    invoke-direct/range {v20 .. v117}, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V

    iget-object v12, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->f:Ljava/lang/String;

    iget-object v15, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->g:Ljava/lang/String;

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->h:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->i:Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->j:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->k:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->l:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->m:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->n:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->o:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->p:Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->q:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->r:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->s:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->t:Ljava/lang/String;

    move-object/from16 v30, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->u:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->v:Ljava/lang/String;

    move-object/from16 v32, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->w:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->x:Ljava/lang/String;

    move-object/from16 v34, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->y:Ljava/lang/String;

    move-object/from16 v35, v0

    iget-boolean v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->z:Z

    move/from16 v36, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->A:Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->B:Ljava/lang/String;

    move-object/from16 v38, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->C:Ljava/util/List;

    move-object/from16 v39, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->D:Ljava/util/List;

    move-object/from16 v40, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->E:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    move-object/from16 v21, v2

    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;->a:Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;

    move-object/from16 v22, v3

    if-eqz v2, :cond_d

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;

    move-object/from16 v23, v4

    iget-object v4, v2, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;->a:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v2, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_d
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v3, p0

    :goto_b
    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;-><init>(Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;Ljava/lang/String;)V

    move-object/from16 v41, v2

    goto :goto_c

    :cond_e
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v41, p0

    :goto_c
    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->F:Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->G:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;->a:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/data/dto/config/cache/mapper/FeatureThemeCacheMapperKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_10

    const/4 v4, 0x2

    if-ne v0, v4, :cond_f

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;->DARK:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    goto :goto_d

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-object p0

    :cond_10
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;->LIGHT:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    :goto_d
    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;-><init>(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)V

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->H:Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    if-eqz v0, :cond_11

    new-instance v42, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;->b:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;->c:Ljava/lang/String;

    move-object/from16 v45, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;->e:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v46, v2

    move-object/from16 v43, v4

    move-object/from16 v44, v5

    invoke-direct/range {v42 .. v47}, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v44, v42

    goto :goto_e

    :cond_11
    move-object/from16 v25, v2

    move-object/from16 v44, p0

    :goto_e
    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->I:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->J:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->K:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->L:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->M:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->N:Ljava/lang/String;

    move-object/from16 v50, v0

    iget-boolean v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->O:Z

    move/from16 v51, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->P:Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v52, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    move-object/from16 v46, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->a:Ljava/lang/String;

    move-object/from16 v53, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->b:Ljava/lang/String;

    move-object/from16 v54, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->c:Ljava/lang/String;

    move-object/from16 v55, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->d:Ljava/lang/String;

    move-object/from16 v56, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->e:Ljava/lang/String;

    move-object/from16 v57, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->f:Ljava/lang/String;

    move-object/from16 v58, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->g:Ljava/lang/String;

    move-object/from16 v59, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->h:Ljava/lang/String;

    move-object/from16 v60, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->i:Ljava/lang/String;

    move-object/from16 v61, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->j:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;->k:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v62, v2

    invoke-direct/range {v52 .. v63}, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Q:Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    if-eqz v0, :cond_12

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    move-object/from16 v43, v3

    iget-object v3, v0, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;->a:Ljava/lang/String;

    move-object/from16 v47, v4

    iget-object v4, v0, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;->b:Ljava/lang/String;

    move-object/from16 v48, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v53, v2

    goto :goto_f

    :cond_12
    move-object/from16 v43, v3

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-object/from16 v53, p0

    :goto_f
    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->R:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->S:Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    if-eqz v2, :cond_13

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;->c:Ljava/util/List;

    invoke-direct {v3, v4, v5, v2}, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v55, v3

    goto :goto_10

    :cond_13
    move-object/from16 v55, p0

    :goto_10
    iget-object v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->T:Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    if-eqz v2, :cond_14

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;-><init>(Ljava/lang/String;)V

    move-object/from16 v56, v3

    goto :goto_11

    :cond_14
    move-object/from16 v56, p0

    :goto_11
    iget-object v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->U:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    if-eqz v2, :cond_17

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;->b:Lcom/vuitton/android/data/dto/config/cache/RegionCache;

    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/mapper/PersonalisationConfigCacheMapperKt$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_16

    const/4 v5, 0x2

    if-ne v2, v5, :cond_15

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/config/Region;->US:Lcom/vuitton/foundation/model/domain/model/config/Region;

    goto :goto_12

    :cond_15
    invoke-static {}, Lv40;->g()V

    return-object p0

    :cond_16
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/config/Region;->EU:Lcom/vuitton/foundation/model/domain/model/config/Region;

    :goto_12
    invoke-direct {v3, v4, v2}, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/Region;)V

    move-object/from16 v57, v3

    goto :goto_13

    :cond_17
    move-object/from16 v57, p0

    :goto_13
    iget-boolean v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->V:Z

    iget-object v3, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->W:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v54, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    move/from16 v58, v2

    iget-object v2, v5, Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v5}, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v54

    move/from16 v2, v58

    goto :goto_14

    :cond_18
    move-object/from16 v54, v0

    move/from16 v58, v2

    iget-boolean v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->X:Z

    iget-boolean v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Y:Z

    iget-object v3, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Z:Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    move/from16 v60, v0

    iget-boolean v0, v3, Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;->a:Z

    iget-boolean v3, v3, Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;->b:Z

    invoke-direct {v5, v0, v3}, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;-><init>(ZZ)V

    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->a0:Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    if-eqz v0, :cond_19

    new-instance v61, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;->a:Ljava/lang/String;

    move/from16 v16, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;->b:Ljava/lang/String;

    move-object/from16 v63, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;->c:Ljava/lang/String;

    move-object/from16 v64, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;->e:Ljava/lang/String;

    move-object/from16 v66, v0

    move-object/from16 v65, v2

    move-object/from16 v62, v3

    invoke-direct/range {v61 .. v66}, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v63, v61

    goto :goto_15

    :cond_19
    move/from16 v16, v2

    move-object/from16 v63, p0

    :goto_15
    iget-object v0, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->b0:Ljava/lang/String;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->c0:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    iget-boolean v2, v2, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;-><init>(Z)V

    move-object/from16 v65, v3

    iget-wide v2, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->d0:J

    iget-object v1, v1, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->e0:Ljava/lang/String;

    move-object/from16 v42, v25

    move-object/from16 v25, v9

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-object/from16 v64, v0

    move-object/from16 v28, v1

    move-wide/from16 v66, v2

    move-object/from16 v59, v4

    move-object/from16 v62, v5

    move-object/from16 v26, v11

    move/from16 v61, v16

    move-object/from16 v16, v18

    move-object/from16 v11, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    invoke-direct/range {v9 .. v67}, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;J)V

    return-object v9

    :cond_1a
    move-object/from16 p0, v3

    const-string v0, "JSON string is null or empty"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object p0
.end method

.class final Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;
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
    c = "com.vuitton.android.data.datasource.config.AppConfigLocalDataSource$upsertAppConfig$2$1"
    f = "AppConfigLocalDataSource.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;-><init>(Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 123

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iget-object v2, v1, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    sget-object v3, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource$upsertAppConfig$2$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->a:Ljava/lang/String;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->b:Ljava/util/List;

    iget v8, v8, Lcom/vuitton/foundation/model/domain/model/config/AbTest;->c:I

    invoke-direct {v9, v10, v11, v8}, Lcom/vuitton/android/data/dto/config/cache/AbTestCache;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v13, v7

    goto :goto_1

    :cond_1
    move-object v13, v6

    :goto_1
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_a

    new-instance v9, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;->a:Ljava/util/List;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

    if-eqz v4, :cond_9

    new-instance v11, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;

    iget-object v12, v4, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->a:Ljava/lang/String;

    iget-object v14, v4, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->b:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/vuitton/android/data/dto/config/cache/mapper/FeatureThemeCacheMapperKt$WhenMappings;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v15, v14

    if-eq v14, v8, :cond_3

    if-ne v14, v7, :cond_2

    sget-object v14, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->DARK:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    goto :goto_2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v6

    :cond_3
    sget-object v14, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->LIGHT:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    :goto_2
    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v15, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->a:Ljava/lang/String;

    move-object/from16 p0, v6

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->d:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->c:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v16, Lcom/vuitton/android/data/dto/config/cache/mapper/AICompanionConfigCacheMapperKt$WhenMappings;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v16, v8

    move-object/from16 v19, v5

    const/4 v5, 0x1

    if-eq v8, v5, :cond_7

    const/4 v5, 0x2

    if-eq v8, v5, :cond_6

    const/4 v5, 0x3

    if-eq v8, v5, :cond_5

    const/4 v5, 0x4

    if-ne v8, v5, :cond_4

    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;->LIVE_REPLAY:Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;

    :goto_3
    move-object/from16 v21, v5

    goto :goto_4

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object p0

    :cond_5
    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;->LIVE_DONE:Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;

    goto :goto_3

    :cond_6
    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;->LIVE_UPCOMING:Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;

    goto :goto_3

    :cond_7
    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;->LIVE:Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;

    goto :goto_3

    :goto_4
    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_5

    :cond_8
    move-object/from16 v20, p0

    :goto_5
    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->g:Ljava/lang/String;

    move-object/from16 v16, v15

    new-instance v15, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;

    move-object/from16 v22, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/vuitton/android/data/dto/config/cache/LiveVideoStatusCache;Ljava/lang/String;)V

    invoke-direct {v11, v12, v14, v15}, Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;Lcom/vuitton/android/data/dto/config/cache/AssetVideoCache;)V

    goto :goto_6

    :cond_9
    move-object/from16 p0, v6

    move-object/from16 v11, p0

    :goto_6
    invoke-direct {v9, v10, v11}, Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;-><init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionOnboardingConfigCache;)V

    move-object v14, v9

    goto :goto_7

    :cond_a
    move-object/from16 p0, v6

    move-object/from16 v14, p0

    :goto_7
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->a:Z

    iget-boolean v6, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->b:Z

    iget-boolean v7, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->c:Z

    iget-boolean v8, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->d:Z

    iget-boolean v9, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->e:Z

    iget-boolean v10, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->f:Z

    iget-boolean v11, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->g:Z

    iget-boolean v12, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->h:Z

    move/from16 v26, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->i:Z

    move/from16 v34, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->j:Z

    move/from16 v35, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->k:Z

    move/from16 v36, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->l:Z

    move/from16 v37, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->m:Z

    move/from16 v38, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->n:Z

    move/from16 v39, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->o:Z

    move/from16 v40, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->p:Z

    move/from16 v41, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->q:Z

    move/from16 v42, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->r:Z

    move/from16 v43, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->s:Z

    move/from16 v44, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->t:Z

    move/from16 v45, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->u:Z

    move/from16 v46, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->v:Z

    move/from16 v47, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->w:Z

    move/from16 v48, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->x:Z

    move/from16 v49, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->y:Z

    move/from16 v50, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->z:Z

    move/from16 v51, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->A:Z

    move/from16 v52, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->B:Z

    move/from16 v53, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->C:Z

    move/from16 v54, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->D:Z

    move/from16 v55, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->E:Z

    move/from16 v56, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->F:Z

    move/from16 v57, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->G:Z

    move/from16 v58, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->H:Z

    move/from16 v59, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->I:Z

    move/from16 v60, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->J:Z

    move/from16 v61, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->K:Z

    move/from16 v62, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->L:Z

    move/from16 v63, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->M:Z

    move/from16 v64, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->N:Z

    move/from16 v65, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->O:Z

    move/from16 v66, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->P:Z

    move/from16 v67, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Q:Z

    move/from16 v68, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->R:Z

    move/from16 v69, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->S:Z

    move/from16 v70, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->T:Z

    move/from16 v71, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->U:Z

    move/from16 v72, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->V:Z

    move/from16 v73, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->W:Z

    move/from16 v74, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->X:Z

    move/from16 v75, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Y:Z

    move/from16 v76, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Z:Z

    move/from16 v77, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->a0:Z

    move/from16 v78, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->b0:Z

    move/from16 v79, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->c0:Z

    move/from16 v80, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->d0:Z

    move/from16 v81, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->e0:Z

    move/from16 v82, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->f0:Z

    move/from16 v83, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->g0:Z

    move/from16 v84, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->h0:Z

    move/from16 v85, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->i0:Z

    move/from16 v86, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->j0:Z

    move/from16 v87, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->k0:Z

    move/from16 v88, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->l0:Z

    move/from16 v89, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->m0:Z

    move/from16 v90, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->n0:Z

    move/from16 v91, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->o0:Z

    move/from16 v92, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->p0:Z

    move/from16 v93, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->q0:Z

    move/from16 v94, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->r0:Z

    move/from16 v95, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->s0:Z

    move/from16 v96, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->t0:Z

    move/from16 v97, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->u0:Z

    move/from16 v98, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->v0:Z

    move/from16 v99, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->w0:Z

    move/from16 v100, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->x0:Z

    move/from16 v101, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->y0:Z

    move/from16 v102, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->z0:Z

    move/from16 v103, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->A0:Z

    move/from16 v104, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->B0:Z

    move/from16 v105, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->C0:Z

    move/from16 v106, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->D0:Z

    move/from16 v107, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->E0:Z

    move/from16 v108, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->F0:Z

    move/from16 v109, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->G0:Z

    move/from16 v110, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->H0:Z

    move/from16 v111, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->I0:Z

    move/from16 v112, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->J0:Z

    move/from16 v113, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->K0:Z

    move/from16 v114, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->L0:Z

    move/from16 v115, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->M0:Z

    move/from16 v116, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->N0:Z

    move/from16 v117, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->O0:Z

    move/from16 v118, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->P0:Z

    move/from16 v119, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Q0:Z

    move/from16 v120, v5

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->R0:Z

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->S0:Z

    move/from16 v122, v4

    move/from16 v121, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v25, v15

    invoke-direct/range {v25 .. v122}, Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ)V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    move-object/from16 v16, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->m:Ljava/lang/String;

    move-object/from16 v25, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->n:Ljava/lang/String;

    move-object/from16 v26, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    move-object/from16 v27, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    move-object/from16 v28, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->q:Ljava/lang/String;

    move-object/from16 v29, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->r:Ljava/lang/String;

    move-object/from16 v30, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->t:Ljava/lang/String;

    move-object/from16 v31, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->u:Ljava/lang/String;

    move-object/from16 v32, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->v:Ljava/lang/String;

    move-object/from16 v33, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    move-object/from16 v34, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->x:Ljava/lang/String;

    move-object/from16 v35, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->y:Ljava/lang/String;

    move-object/from16 v36, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->z:Ljava/lang/String;

    move-object/from16 v37, v4

    iget-boolean v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->A:Z

    move/from16 v38, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->B:Ljava/lang/String;

    move-object/from16 v39, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->C:Ljava/lang/String;

    move-object/from16 v40, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->D:Ljava/util/List;

    move-object/from16 v41, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->E:Ljava/util/List;

    move-object/from16 v42, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    move-object/from16 v17, v5

    if-eqz v4, :cond_c

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;->a:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;

    move-object/from16 v18, v6

    if-eqz v5, :cond_b

    new-instance v6, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;

    move-object/from16 v19, v7

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;->a:Ljava/lang/String;

    move-object/from16 v20, v8

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;->c:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v6, p0

    :goto_8
    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;->b:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;

    invoke-direct {v5, v6, v4}, Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;-><init>(Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache$CommercialNotificationCache;Ljava/lang/String;)V

    move-object/from16 v43, v5

    goto :goto_9

    :cond_c
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v43, p0

    :goto_9
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->G:Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;->a:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/android/data/dto/config/cache/mapper/FeatureThemeCacheMapperKt$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_e

    const/4 v7, 0x2

    if-ne v4, v7, :cond_d

    sget-object v4, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->DARK:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    goto :goto_a

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object p0

    :cond_e
    sget-object v4, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->LIGHT:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    :goto_a
    invoke-direct {v6, v4}, Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;-><init>(Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;)V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->I:Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    if-eqz v4, :cond_f

    new-instance v44, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;->a:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;->b:Ljava/lang/String;

    move-object/from16 v21, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;->c:Ljava/lang/String;

    move-object/from16 v47, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;->d:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;->e:Ljava/lang/String;

    move-object/from16 v49, v4

    move-object/from16 v48, v5

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    invoke-direct/range {v44 .. v49}, Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v46, v44

    goto :goto_b

    :cond_f
    move-object/from16 v21, v5

    move-object/from16 v46, p0

    :goto_b
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->K:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->L:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->M:Ljava/lang/String;

    move-object/from16 v47, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->N:Ljava/lang/String;

    move-object/from16 v51, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->O:Ljava/lang/String;

    move-object/from16 v52, v4

    iget-boolean v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->P:Z

    move/from16 v53, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Q:Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v54, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;

    move-object/from16 v48, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->a:Ljava/lang/String;

    move-object/from16 v55, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->b:Ljava/lang/String;

    move-object/from16 v56, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->c:Ljava/lang/String;

    move-object/from16 v57, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->d:Ljava/lang/String;

    move-object/from16 v58, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->e:Ljava/lang/String;

    move-object/from16 v59, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->f:Ljava/lang/String;

    move-object/from16 v60, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->g:Ljava/lang/String;

    move-object/from16 v61, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->h:Ljava/lang/String;

    move-object/from16 v62, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->i:Ljava/lang/String;

    move-object/from16 v63, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->j:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;->k:Ljava/lang/String;

    move-object/from16 v65, v4

    move-object/from16 v64, v5

    invoke-direct/range {v54 .. v65}, Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->R:Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    if-eqz v4, :cond_10

    new-instance v5, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;

    move-object/from16 v45, v6

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;->a:Ljava/lang/String;

    move-object/from16 v49, v7

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;->b:Ljava/lang/String;

    move-object/from16 v50, v8

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v55, v5

    goto :goto_c

    :cond_10
    move-object/from16 v45, v6

    move-object/from16 v49, v7

    move-object/from16 v50, v8

    move-object/from16 v55, p0

    :goto_c
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    if-eqz v5, :cond_11

    new-instance v6, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->c:Ljava/util/List;

    invoke-direct {v6, v7, v8, v5}, Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v57, v6

    goto :goto_d

    :cond_11
    move-object/from16 v57, p0

    :goto_d
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    if-eqz v5, :cond_12

    new-instance v6, Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;->a:Ljava/lang/String;

    invoke-direct {v6, v5}, Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;-><init>(Ljava/lang/String;)V

    move-object/from16 v58, v6

    goto :goto_e

    :cond_12
    move-object/from16 v58, p0

    :goto_e
    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    if-eqz v5, :cond_15

    new-instance v6, Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/Region;

    sget-object v8, Lcom/vuitton/android/data/dto/config/cache/mapper/PersonalisationConfigCacheMapperKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_14

    const/4 v8, 0x2

    if-ne v5, v8, :cond_13

    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/RegionCache;->US:Lcom/vuitton/android/data/dto/config/cache/RegionCache;

    goto :goto_f

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-object p0

    :cond_14
    sget-object v5, Lcom/vuitton/android/data/dto/config/cache/RegionCache;->EU:Lcom/vuitton/android/data/dto/config/cache/RegionCache;

    :goto_f
    invoke-direct {v6, v7, v5}, Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/RegionCache;)V

    move-object/from16 v59, v6

    goto :goto_10

    :cond_15
    move-object/from16 v59, p0

    :goto_10
    iget-boolean v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->X:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v56, v4

    new-instance v4, Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;

    move/from16 v60, v5

    iget-object v5, v8, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v8}, Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v56

    move/from16 v5, v60

    goto :goto_11

    :cond_16
    move-object/from16 v56, v4

    move/from16 v60, v5

    iget-boolean v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    iget-boolean v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Z:Z

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;

    move/from16 v62, v4

    iget-boolean v4, v6, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    iget-boolean v6, v6, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->b:Z

    invoke-direct {v8, v4, v6}, Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;-><init>(ZZ)V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    if-eqz v4, :cond_17

    new-instance v63, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->a:Ljava/lang/String;

    move/from16 v22, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->b:Ljava/lang/String;

    move-object/from16 v65, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->c:Ljava/lang/String;

    move-object/from16 v66, v5

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->d:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;->e:Ljava/lang/String;

    move-object/from16 v68, v4

    move-object/from16 v67, v5

    move-object/from16 v64, v6

    invoke-direct/range {v63 .. v68}, Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v65, v63

    goto :goto_12

    :cond_17
    move/from16 v22, v5

    move-object/from16 v65, p0

    :goto_12
    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->c0:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->d0:Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    iget-boolean v5, v5, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;->a:Z

    invoke-direct {v6, v5}, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;-><init>(Z)V

    move-object/from16 v66, v4

    iget-wide v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->s:Ljava/lang/String;

    move-object/from16 v24, v12

    new-instance v12, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;

    move-object/from16 v70, v0

    move-wide/from16 v68, v4

    move-object/from16 v67, v6

    move-object/from16 v61, v7

    move-object/from16 v64, v8

    move-object/from16 v23, v11

    move-object/from16 v44, v21

    move/from16 v63, v22

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v12 .. v70}, Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;-><init>(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;)V

    invoke-virtual {v2, v3, v12}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

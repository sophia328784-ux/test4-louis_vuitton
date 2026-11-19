.class public final Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AppConfigRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;",
        "appConfigRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;",
        "appConfigLocalDataSource",
        "Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;",
        "abTestLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;-><init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p0, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$isFeatureFlagActiveInAbTest$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->c(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;-><init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$clearAppConfig$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    invoke-virtual {p0}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;-><init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAbTestAssignment$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->b(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(JLjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 75

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;-><init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->e:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->g:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v1, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_27

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-wide v9, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->d:J

    iget-object v4, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    :goto_1
    move-wide/from16 v66, v9

    goto :goto_4

    :cond_3
    iget-wide v9, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->d:J

    iget-object v4, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v74, v4

    move-object v4, v0

    move-object/from16 v0, v74

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->b:Ljava/lang/String;

    move-wide/from16 v9, p1

    iput-wide v9, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->d:J

    iput v7, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->g:I

    invoke-virtual {v1, v2}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto/16 :goto_26

    :cond_5
    :goto_2
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v11, v4, Lkotlin/Result$Failure;

    if-eqz v11, :cond_6

    move-object v11, v8

    goto :goto_3

    :cond_6
    move-object v11, v4

    :goto_3
    check-cast v11, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    if-eqz v11, :cond_7

    iget-wide v11, v11, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_7

    return-object v4

    :cond_7
    iput-object v0, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->b:Ljava/lang/String;

    iput-wide v9, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->d:J

    iput v6, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->g:I

    iget-object v4, v1, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;

    invoke-virtual {v4, v9, v10, v2}, Lcom/vuitton/android/data/datasource/config/AppConfigRemoteDataSource;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_8

    goto/16 :goto_26

    :cond_8
    move-object/from16 v66, v4

    move-object v4, v0

    move-object/from16 v0, v66

    goto :goto_1

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_31

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a:Ljava/util/List;

    if-eqz v6, :cond_c

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/config/AbTestDto;

    invoke-static {v10}, Lcom/vuitton/android/data/dto/config/mapper/AppConfigMapperKt;->d(Lcom/vuitton/android/data/dto/config/AbTestDto;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lkotlin/Result$Failure;

    if-eqz v11, :cond_a

    move-object v10, v8

    :cond_a
    check-cast v10, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    move-wide/from16 v7, v66

    goto/16 :goto_22

    :cond_b
    move-object v10, v9

    goto :goto_6

    :cond_c
    move-object v10, v8

    :goto_6
    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->g:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->h:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;

    if-eqz v6, :cond_e

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    iget-object v11, v6, Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;->a:Ljava/util/List;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/config/AICompanionConfigDto;->b:Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;

    if-eqz v6, :cond_d

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

    iget-object v13, v6, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->a:Ljava/lang/String;

    iget-object v14, v6, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->b:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-static {v14}, Lcom/vuitton/android/data/dto/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/data/dto/common/FeatureThemeDto;)Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    move-result-object v14

    iget-object v6, v6, Lcom/vuitton/android/data/dto/config/AICompanionOnboardingDto;->c:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->c(Lcom/vuitton/android/data/dto/common/AssetVideoDto;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-direct {v12, v13, v14, v6}, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)V

    goto :goto_7

    :cond_d
    move-object v12, v8

    :goto_7
    invoke-direct {v9, v11, v12}, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;)V

    move-object/from16 v19, v9

    goto :goto_8

    :cond_e
    move-object/from16 v19, v8

    :goto_8
    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->i:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2e

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->f:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_2d

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->j:Ljava/util/List;

    if-nez v6, :cond_f

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_f
    move-object/from16 v39, v6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->k:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->l:Ljava/lang/String;

    invoke-static {v9}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->m:Ljava/lang/String;

    invoke-static {v9}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->n:Ljava/lang/String;

    invoke-static {v9}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "Unable to map the app config: InvalidLegalPrivacyUrl"

    if-eqz v12, :cond_2c

    :try_start_1
    iget-object v11, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->o:Ljava/lang/String;

    invoke-static {v11}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    iget-object v11, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->p:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->q:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->r:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->s:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->t:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->u:Ljava/lang/Boolean;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move/from16 v51, v7

    goto :goto_9

    :cond_10
    const/16 v51, 0x0

    :goto_9
    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->v:Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/config/mapper/AppConfigMapperKt;->b(Lcom/vuitton/android/data/dto/config/DistantRepairsConfigDto;)Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;

    move-result-object v52

    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->w:Ljava/lang/String;

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->x:Ljava/lang/String;

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->y:Ljava/lang/String;

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->z:Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/config/mapper/AppConfigMapperKt;->c(Lcom/vuitton/android/data/dto/config/FeaturesConfigDto;)Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    move-result-object v7

    iget-object v8, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->A:Lcom/vuitton/android/data/dto/config/FeedConfigDto;

    move-object/from16 v49, v5

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    iget-object v8, v8, Lcom/vuitton/android/data/dto/config/FeedConfigDto;->a:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/data/dto/common/FeatureThemeDto;)Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;-><init>(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)V

    iget-object v8, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2b

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->B:Ljava/lang/String;

    if-nez v9, :cond_11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_11
    move-object/from16 v37, v9

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->C:Ljava/lang/String;

    invoke-static {v9}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2a

    move-object/from16 v43, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->D:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->E:Ljava/lang/String;

    move-object/from16 v38, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_29

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->F:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    move-object/from16 p2, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->G:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_27

    move-object/from16 p3, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->H:Ljava/lang/Boolean;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v58, v5

    goto :goto_a

    :cond_12
    const/16 v58, 0x0

    :goto_a
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->I:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->J:Ljava/util/List;

    if-eqz v5, :cond_14

    check-cast v5, Ljava/lang/Iterable;

    move-object/from16 v50, v6

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v25, v7

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto;

    move-object/from16 v26, v5

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;

    move-object/from16 v27, v8

    iget-object v8, v7, Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/config/UrlCatchingConfigDto;->b:Ljava/lang/String;

    invoke-direct {v5, v8, v7}, Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v26

    move-object/from16 v8, v27

    goto :goto_b

    :cond_13
    move-object/from16 v27, v8

    :goto_c
    move-object/from16 v59, v6

    goto :goto_d

    :cond_14
    move-object/from16 v50, v6

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_c

    :goto_d
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->K:Ljava/lang/Boolean;

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v36, v5

    goto :goto_e

    :cond_15
    const/16 v36, 0x0

    :goto_e
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->L:Ljava/util/List;

    if-nez v5, :cond_16

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_16
    move-object/from16 v40, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->M:Lcom/vuitton/android/data/dto/config/CertificateConfigDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/config/mapper/AppConfigMapperKt;->a(Lcom/vuitton/android/data/dto/config/CertificateConfigDto;)Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;

    move-result-object v42

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->N:Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;

    if-eqz v5, :cond_17

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;->b:Ljava/lang/String;

    move-object/from16 v26, v9

    iget-object v9, v5, Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;->c:Ljava/lang/String;

    move-object/from16 v28, v10

    iget-object v10, v5, Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;->d:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lcom/vuitton/android/data/dto/config/NativeCartConfigDto;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;-><init>(Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;Ljava/lang/String;)V

    move-object/from16 v41, v6

    goto :goto_f

    :cond_17
    move-object/from16 v26, v9

    move-object/from16 v28, v10

    const/16 v41, 0x0

    :goto_f
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->P:Lcom/vuitton/android/data/dto/config/HelpConfigDto;

    if-eqz v5, :cond_18

    new-instance v60, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;

    iget-object v6, v5, Lcom/vuitton/android/data/dto/config/HelpConfigDto;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    iget-object v6, v5, Lcom/vuitton/android/data/dto/config/HelpConfigDto;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    iget-object v6, v5, Lcom/vuitton/android/data/dto/config/HelpConfigDto;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    iget-object v6, v5, Lcom/vuitton/android/data/dto/config/HelpConfigDto;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    iget-object v5, v5, Lcom/vuitton/android/data/dto/config/HelpConfigDto;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    invoke-direct/range {v60 .. v65}, Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v44, v60

    goto :goto_10

    :cond_18
    const/16 v44, 0x0

    :goto_10
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Q:Lcom/vuitton/android/data/dto/config/ServicesConfigDto;

    if-eqz v5, :cond_19

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/config/ServicesConfigDto;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/vuitton/android/data/dto/config/ServicesConfigDto;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/vuitton/android/data/dto/config/ServicesConfigDto;->c:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/config/ServicesConfigDto;->d:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v53, v6

    goto :goto_11

    :cond_19
    const/16 v53, 0x0

    :goto_11
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->R:Ljava/lang/Boolean;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v60, v5

    goto :goto_12

    :cond_1a
    const/16 v60, 0x0

    :goto_12
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->S:Ljava/lang/Boolean;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v61, v5

    goto :goto_13

    :cond_1b
    const/16 v61, 0x0

    :goto_13
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->T:Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;->a:Ljava/lang/Boolean;

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_14

    :cond_1c
    const/4 v7, 0x0

    :goto_14
    iget-object v5, v5, Lcom/vuitton/android/data/dto/config/VatIncludedConfigDto;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_15

    :cond_1d
    const/4 v5, 0x0

    :goto_15
    invoke-direct {v6, v7, v5}, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;-><init>(ZZ)V

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->U:Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, ""

    if-eqz v5, :cond_1f

    :try_start_2
    new-instance v68, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;->a:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;->b:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;->c:Ljava/lang/String;

    move-object/from16 v62, v6

    iget-object v6, v5, Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/config/PowerFrontConfigDto;->e:Ljava/lang/String;

    if-nez v5, :cond_1e

    move-object/from16 v73, v7

    :goto_16
    move-object/from16 v72, v6

    move-object/from16 v69, v8

    move-object/from16 v70, v9

    move-object/from16 v71, v10

    goto :goto_17

    :cond_1e
    move-object/from16 v73, v5

    goto :goto_16

    :goto_17
    invoke-direct/range {v68 .. v73}, Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v63, v68

    goto :goto_18

    :cond_1f
    move-object/from16 v62, v6

    const/16 v63, 0x0

    :goto_18
    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->W:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->V:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    iget-object v6, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->X:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Y:Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;

    if-eqz v8, :cond_21

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    iget-object v10, v8, Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object v10, v10, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    if-nez v10, :cond_20

    goto :goto_19

    :cond_20
    move-object v7, v10

    :goto_19
    iget-object v10, v8, Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;->b:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/android/data/dto/config/VirtualStudioConfigDto;->c:Ljava/util/List;

    invoke-direct {v9, v7, v10, v8}, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v55, v9

    goto :goto_1a

    :cond_21
    const/16 v55, 0x0

    :goto_1a
    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->Z:Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;

    if-eqz v7, :cond_22

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/config/PersonalSelectionsConfigDto;->a:Ljava/lang/String;

    invoke-direct {v8, v7}, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;-><init>(Ljava/lang/String;)V

    move-object/from16 v56, v8

    goto :goto_1b

    :cond_22
    const/16 v56, 0x0

    :goto_1b
    iget-object v7, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->a0:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->b0:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->c0:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->d0:Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;

    move-object/from16 v45, v5

    if-eqz v10, :cond_24

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    iget-object v10, v10, Lcom/vuitton/android/data/dto/config/AddressAutocompleteConfigDto;->a:Ljava/lang/Boolean;

    if-eqz v10, :cond_23

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_1c

    :cond_23
    const/4 v10, 0x1

    :goto_1c
    invoke-direct {v5, v10}, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;-><init>(Z)V

    move-object/from16 v64, v6

    move-object/from16 v16, v7

    :goto_1d
    move-object/from16 v65, v5

    goto :goto_1e

    :cond_24
    new-instance v5, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;

    move-object/from16 v64, v6

    move-object/from16 v16, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, v10, v6, v7}, Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1d

    :goto_1e
    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/AppConfigDto;->e0:Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;->b:Ljava/lang/String;

    const-string v6, "eu"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/config/Region;->EU:Lcom/vuitton/foundation/model/domain/model/config/Region;

    goto :goto_1f

    :cond_25
    const-string v6, "us"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/config/Region;->US:Lcom/vuitton/foundation/model/domain/model/config/Region;

    :goto_1f
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/config/PersonalisationConfigDto;->a:Ljava/lang/String;

    invoke-direct {v7, v0, v5}, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/Region;)V

    move-object/from16 v57, v7

    :goto_20
    move-object/from16 v10, v28

    move-object/from16 v28, v9

    goto :goto_21

    :cond_26
    const/16 v57, 0x0

    goto :goto_20

    :goto_21
    new-instance v9, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-object/from16 v46, v45

    move-object/from16 v45, v11

    move-object/from16 v11, v25

    move-object/from16 v25, v46

    move-object/from16 v46, v13

    move-object/from16 v47, v14

    move-object/from16 v48, v15

    move-object/from16 v14, v26

    move-object/from16 v13, v27

    move-object/from16 v15, p2

    move-object/from16 v27, v8

    move-object/from16 v26, v16

    move-object/from16 v16, p3

    invoke-direct/range {v9 .. v67}, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v7, v66

    :try_start_3
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v9}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_23

    :cond_27
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v5, "Unable to map the app config: InvalidStoreLocatorUrl"

    invoke-direct {v0, v5}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_22

    :cond_28
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v5, "Unable to map the app config: InvalidShareAppUrl"

    invoke-direct {v0, v5}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v5, "Unable to map the app config: InvalidSalesforceRootUrl"

    invoke-direct {v0, v5}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v5, "Unable to map the app config: InvalidLvWebSiteUrl"

    invoke-direct {v0, v5}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    invoke-direct {v0, v9}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    invoke-direct {v0, v9}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v5, "Unable to map the app config: InvalidAtgRootUrl"

    invoke-direct {v0, v5}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move-wide/from16 v7, v66

    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v5, "Unable to map the app config: InvalidBffBaseUrl"

    invoke-direct {v0, v5}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_22
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_23
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_2f

    goto :goto_24

    :cond_2f
    instance-of v0, v5, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_30

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v5}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v5, Lkotlin/Result;

    invoke-direct {v5, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v5

    :goto_24
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_25

    :cond_30
    throw v5

    :cond_31
    move-wide/from16 v7, v66

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v6}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_25
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_33

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-wide v7, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->d:J

    const/4 v5, 0x3

    iput v5, v2, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfig$1;->g:I

    invoke-virtual {v1, v0, v4, v2}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_32

    :goto_26
    return-object v3

    :cond_32
    move-object/from16 v74, v1

    move-object v1, v0

    move-object/from16 v0, v74

    :goto_27
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_34

    check-cast v0, Lkotlin/Unit;

    move-object v0, v1

    goto :goto_28

    :cond_33
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v5}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_34
    :goto_28
    return-object v0
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;-><init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$getAppConfigFromCache$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;-><init>(Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->h:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    iget-object v3, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->d:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p0, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->g:I

    iget p1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->f:I

    iget-object p2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->e:Ljava/util/Iterator;

    iget-object v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->d:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v8, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object p2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput v6, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/config/AppConfigLocalDataSource;->d(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p3, p0, Lkotlin/Result$Failure;

    if-nez p3, :cond_9

    move-object p3, p0

    check-cast p3, Lkotlin/Unit;

    iget-object p3, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p3, :cond_8

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v6, p1

    move-object v8, p2

    move-object p2, p3

    move p1, v2

    move-object v2, p0

    move p0, p1

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/foundation/model/domain/model/config/AbTest;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->e:Ljava/util/Iterator;

    iput p1, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->f:I

    iput p0, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->g:I

    iput v5, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    invoke-virtual {v3, v8, p3, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->d(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AbTest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto :goto_3

    :cond_7
    move-object p0, v2

    move-object p2, v8

    move v2, p1

    move-object p1, v6

    :cond_8
    iput-object v7, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->b:Ljava/lang/String;

    iput-object v7, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object p0, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->d:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->e:Ljava/util/Iterator;

    iput v2, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/AppConfigRepositoryImpl$persistAppConfig$1;->j:I

    invoke-virtual {v3, p1, p2, v0}, Lcom/vuitton/android/data/datasource/config/AbTestLocalDataSource;->a(Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    return-object p0
.end method

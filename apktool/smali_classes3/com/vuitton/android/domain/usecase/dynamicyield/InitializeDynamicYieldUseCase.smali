.class public final Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;",
        "dynamicYieldRepository",
        "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
        "inAppDispatchRepository",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;",
        "getDynamicYieldCampaignUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;",
        "getConsentForCustomizationUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;",
        "getDynamicYieldPreferredServerUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;)V",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

.field public final c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

.field public final d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->b:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->e:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

    iput-object p6, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    iput-object p7, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->g:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;

    iget v3, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->i:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    iget-object v5, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v6, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->b:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v0, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->g:Ljava/lang/Object;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget v0, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->f:I

    iget v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iget-boolean v8, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iget v9, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iget v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iget v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    iget-object v13, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->g:Ljava/lang/Object;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v12, v0

    move-object v0, v13

    goto/16 :goto_4

    :cond_3
    iget v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->f:I

    iget v0, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iget-boolean v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iget v9, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iget v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iget v13, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    iget-object v14, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->g:Ljava/lang/Object;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v4

    move v4, v0

    move v0, v10

    move v10, v12

    move v12, v11

    move v11, v13

    goto/16 :goto_3

    :cond_4
    iget v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iget-boolean v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iget v13, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iget v14, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iget v15, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v17, v14

    move-object v14, v1

    move/from16 v1, v17

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->c:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->f:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    invoke-virtual {v4}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;->a()Z

    move-result v4

    iget-object v13, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->e:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

    invoke-virtual {v13}, Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;->a()Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->g:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;

    iget-object v13, v13, Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v13}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->V:Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;

    if-eqz v13, :cond_6

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/Region;

    goto :goto_1

    :cond_6
    move-object v13, v12

    :goto_1
    if-eqz v13, :cond_f

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iput-boolean v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iput v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    invoke-interface {v6, v1, v4, v13, v2}, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;->c(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/Region;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object v14, v1

    move v10, v4

    move v1, v11

    move v4, v1

    move v13, v4

    move v15, v13

    :goto_2
    sget-object v16, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v12, v14, Lkotlin/Result$Failure;

    if-nez v12, :cond_e

    move-object v12, v14

    check-cast v12, Lkotlin/Unit;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v14, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->g:Ljava/lang/Object;

    iput v15, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    iput v1, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iput v13, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iput-boolean v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iput v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->f:I

    iput v9, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    goto :goto_6

    :cond_8
    move v9, v1

    move-object v1, v0

    move v0, v9

    move v12, v11

    move v9, v13

    move v11, v15

    :goto_3
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v14, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->g:Ljava/lang/Object;

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    iput v0, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iput v9, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iput-boolean v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iput v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iput v12, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->f:I

    iput v8, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    invoke-interface {v1, v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    goto :goto_6

    :cond_9
    move v8, v10

    move v10, v0

    move-object v0, v14

    :goto_4
    sget-object v13, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v13, v1, Lkotlin/Result$Failure;

    if-eqz v13, :cond_a

    const/4 v1, 0x0

    :cond_a
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_d

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;->IDENTIFY:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    iput-object v0, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->g:Ljava/lang/Object;

    iput v11, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->b:I

    iput v10, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->c:I

    iput v9, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->d:I

    iput-boolean v8, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->h:Z

    iput v4, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->e:I

    iput v12, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->f:I

    iput v7, v2, Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase$run$1;->k:I

    invoke-interface {v6, v13, v1, v2}, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;->b(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    :goto_6
    return-object v3

    :cond_c
    :goto_7
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    move-object v14, v0

    :cond_e
    invoke-static {v14}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_9

    :cond_10
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_11

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_9
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_11
    throw v0
.end method

.class public final Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "repository",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;",
        "getAddressCivilitiesMappingUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->b:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->d:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;

    iget v3, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->h:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-boolean v4, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->e:Z

    iget-object v6, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v9, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v10, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    iget-object v4, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v9, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v10, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v23, v10

    move-object v10, v9

    move-object/from16 v9, v23

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->b:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v1

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    move-object/from16 v9, p1

    iput-object v9, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;

    move-object/from16 v10, p2

    iput-object v10, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iput-object v1, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v7, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->h:I

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v12, v4, v11, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object/from16 v23, v4

    move-object v4, v1

    move-object/from16 v1, v23

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v11, v4, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iput-object v9, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;

    iput-object v10, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iput-object v4, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean v1, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->e:Z

    iput v6, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->h:I

    iget-object v6, v0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->d:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    invoke-virtual {v6, v11, v1, v2}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;->a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object/from16 v23, v4

    move v4, v1

    move-object v1, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v10

    move-object v10, v9

    move-object/from16 v9, v23

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-nez v11, :cond_e

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->a()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_7
    move-object v11, v8

    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_9
    move-object v12, v8

    :goto_4
    check-cast v12, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v12, :cond_a

    iget-object v1, v12, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v11, v1

    :cond_a
    if-nez v11, :cond_b

    const-string v11, ""

    :cond_b
    move-object v13, v11

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->c()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->e()Ljava/lang/String;

    move-result-object v17

    iget-object v1, v6, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc0

    const/16 v22, 0x0

    move-object/from16 v18, v1

    invoke-direct/range {v12 .. v22}, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v9, :cond_c

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    invoke-direct {v1, v9, v8}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;-><init>(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;)V

    goto :goto_5

    :cond_c
    move-object v1, v8

    :goto_5
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    invoke-direct {v6, v7, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;-><init>(ZLcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->g()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v12, v7, v9, v6}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;-><init>(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)V

    iget-object v6, v10, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->g:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {v6}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;->f()Ljava/lang/String;

    move-result-object v7

    iput-object v8, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;

    iput-object v8, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iput-object v8, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-boolean v4, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->e:Z

    iput v5, v2, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase$run$1;->h:I

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;->a:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-interface {v0, v6, v7, v1, v2}, Lcom/vuitton/android/domain/repository/TwistAuthRepository;->m(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialRegisterBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    :goto_6
    return-object v3

    :cond_d
    return-object v0

    :cond_e
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v11}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

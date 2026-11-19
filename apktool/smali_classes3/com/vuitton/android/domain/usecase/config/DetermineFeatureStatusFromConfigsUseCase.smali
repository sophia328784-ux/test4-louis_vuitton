.class public final Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;",
        "getUserInAppDispatchOrNullUseCase",
        "Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;",
        "cachedAppConfigOrNullUseCase",
        "Lcom/vuitton/android/domain/repository/AppConfigRepository;",
        "appConfigRepository",
        "Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;",
        "sharedPreferencesRepository",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

.field public final c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

.field public final d:Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;

.field public final e:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->d:Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->e:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->e:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->e:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    invoke-virtual {p2}, Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;->a()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p2

    iget-object v2, v3, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;->a:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    if-eqz p2, :cond_5

    if-eqz v2, :cond_5

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->b()Ljava/lang/String;

    move-result-object v6

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;->c:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {p0, p2, v2, v6, v0}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AppConfig;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_4

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    iget-object p0, v3, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;->a:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;

    if-eqz p0, :cond_5

    iget-boolean p2, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->A:Z

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->k0:Z

    sget-object v1, Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v5

    :pswitch_0
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->S0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_2
    move-object v5, p0

    goto/16 :goto_3

    :pswitch_1
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->R0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_2
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Q0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->P0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_4
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->O0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_5
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->N0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->M0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->L0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->K0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_9
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->J0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->I0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_b
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->H0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_c
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->G0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_d
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->E0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_e
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->D0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_f
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->B0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_10
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->C0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_11
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->A0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :pswitch_12
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->z0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_13
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->y0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_14
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->x0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_15
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->v0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_16
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->u0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_17
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->t0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_18
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->s0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_19
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->r0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->n0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1b
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->m0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1c
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->p0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1d
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->o0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1e
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->q0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :pswitch_20
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->l0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_23
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->i0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_24
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->h0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_25
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->g0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_26
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->f0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_27
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->e0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_28
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->d0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_29
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->c0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->b0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2b
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->a0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2c
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->s:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2d
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Z:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2e
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Y:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2f
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->X:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_30
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->W:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_31
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->V:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_32
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->U:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_33
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->T:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_34
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->S:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_35
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->R:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_36
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->Q:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_37
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->P:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_38
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :pswitch_39
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->O:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->N:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3b
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->M:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3c
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->L:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3d
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->K:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3e
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->J:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3f
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->I:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_40
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->H:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_41
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->G:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_42
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->F:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_43
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->E:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_44
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->C:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_46
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_47
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->z:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_48
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->D:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_49
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->y:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->w:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4b
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->x:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4c
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->F0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4d
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->v:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4e
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->u:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4f
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->t:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_50
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->r:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_51
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->q:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_52
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->p:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_53
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->o:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_54
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->n:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_55
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_56
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->l:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_57
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->k:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_58
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_59
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5b
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5c
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->w0:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5d
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5e
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5f
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_60
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_61
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_62
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_2

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0091\u0001\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;",
        "updateContactIdUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;",
        "initializePrivacyRelatedToolsUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;",
        "updateAnalyticsConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;",
        "initAnalyticsUseCase",
        "Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;",
        "sendAbTestAnalyticsUseCase",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/repository/LoggerRepository;",
        "loggerRepository",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;",
        "getAuthTokenUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;",
        "authenticateGuestUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;",
        "refreshWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;",
        "getConnectedObjectListUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;",
        "createATGSessionUseCase",
        "Lcom/vuitton/android/domain/repository/AppInitializationRepository;",
        "appInitializationRepository",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "catalogRepository",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;",
        "initPerfectCorpUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/repository/LoggerRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;Lcom/vuitton/android/domain/repository/AppInitializationRepository;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;)V",
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

.field public final b:Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;

.field public final g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final h:Lcom/vuitton/android/domain/repository/LoggerRepository;

.field public final i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;

.field public final o:Lcom/vuitton/android/domain/repository/AppInitializationRepository;

.field public final p:Lcom/vuitton/android/domain/repository/CatalogRepository;

.field public final q:Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/repository/LoggerRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;Lcom/vuitton/android/domain/repository/AppInitializationRepository;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;)V
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

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->b:Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->c:Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->d:Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->e:Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;

    iput-object p6, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->f:Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;

    iput-object p7, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p8, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->h:Lcom/vuitton/android/domain/repository/LoggerRepository;

    iput-object p9, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p10, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->j:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    iput-object p11, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->k:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;

    iput-object p12, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->l:Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

    iput-object p13, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->m:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    iput-object p14, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->n:Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;

    iput-object p15, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->o:Lcom/vuitton/android/domain/repository/AppInitializationRepository;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->p:Lcom/vuitton/android/domain/repository/CatalogRepository;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->q:Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;-><init>(Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput v5, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->d:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v5, p1, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iput v4, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->j:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;->a:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;->a:Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput v3, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$guestAuthIfNeeded$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->k:Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_10

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_9
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->h:Lcom/vuitton/android/domain/repository/LoggerRepository;

    invoke-interface {v2, p1}, Lcom/vuitton/android/domain/repository/LoggerRepository;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    iput v6, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    invoke-virtual {v5, v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto/16 :goto_f

    :cond_1
    :goto_1
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    const/4 v2, 0x2

    iput v2, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v2, p1, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto/16 :goto_f

    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x3

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->n:Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto/16 :goto_f

    :cond_3
    :goto_3
    const/4 p1, 0x4

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->b:Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto/16 :goto_f

    :cond_4
    :goto_4
    const/4 p1, 0x5

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->e:Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_f

    :cond_5
    :goto_5
    const/4 p1, 0x6

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->f:Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_f

    :cond_6
    :goto_6
    const/4 p1, 0x7

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->c:Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_f

    :cond_7
    :goto_7
    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->d:Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;

    iget-object v2, p1, Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;->b:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    if-eqz v9, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result p1

    goto :goto_9

    :cond_a
    move p1, v4

    :goto_9
    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    if-eqz v10, :cond_b

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v7, :cond_d

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->b()Z

    move-result v7

    goto :goto_b

    :cond_d
    move v7, v4

    :goto_b
    invoke-interface {v2, p1, v7}, Lcom/vuitton/android/domain/repository/ConsentRepository;->c(ZZ)V

    goto :goto_c

    :cond_e
    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/ConsentRepository;->o()V

    :cond_f
    :goto_c
    const/16 p1, 0x8

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    goto :goto_f

    :cond_10
    :goto_d
    invoke-virtual {v5}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

    invoke-direct {p1, v4, v6, v6, v3}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0x9

    iput v2, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->m:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    invoke-virtual {v2, p1, v0}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->a(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v1, :cond_11

    goto :goto_f

    :cond_11
    :goto_e
    const/16 p1, 0xa

    iput p1, v0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->l:Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_12

    :goto_f
    return-object v1

    :cond_12
    :goto_10
    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->q:Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;

    iget-object v0, p1, Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/PerfectCorpRepository;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vuitton/android/domain/repository/PerfectCorpRepository;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->p:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/CatalogRepository;->m()V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;->o:Lcom/vuitton/android/domain/repository/AppInitializationRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/AppInitializationRepository;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

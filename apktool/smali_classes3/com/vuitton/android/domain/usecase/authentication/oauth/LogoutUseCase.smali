.class public final Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;",
        "clearWebViewCookiesUseCase",
        "Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;",
        "applySavedSecurityCookieUseCase",
        "Lcom/vuitton/android/domain/repository/OrderRepository;",
        "orderRepository",
        "Lcom/vuitton/android/domain/repository/WishlistRepository;",
        "wishlistRepository",
        "Lcom/vuitton/android/domain/repository/TwistAuthRepository;",
        "twistAuthRepository",
        "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;",
        "salesforceAuthRepository",
        "Lcom/vuitton/android/domain/repository/PassRepository;",
        "passRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/android/domain/repository/PassRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

.field public final d:Lcom/vuitton/android/domain/repository/OrderRepository;

.field public final e:Lcom/vuitton/android/domain/repository/WishlistRepository;

.field public final f:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

.field public final g:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

.field public final h:Lcom/vuitton/android/domain/repository/PassRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/android/domain/repository/PassRepository;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->c:Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->d:Lcom/vuitton/android/domain/repository/OrderRepository;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->e:Lcom/vuitton/android/domain/repository/WishlistRepository;

    iput-object p6, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->f:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iput-object p7, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->g:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    iput-object p8, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->h:Lcom/vuitton/android/domain/repository/PassRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->d:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/OrderRepository;->a()Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto :goto_6

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->e:Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/WishlistRepository;->g()Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->b:Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_6

    :cond_2
    :goto_2
    const/4 p1, 0x3

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->c:Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_6

    :cond_3
    :goto_3
    const/4 p1, 0x4

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->h:Lcom/vuitton/android/domain/repository/PassRepository;

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/PassRepository;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_6

    :cond_4
    :goto_4
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    const/4 v2, 0x5

    iput v2, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v3, p1, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->f:Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/TwistAuthRepository;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_6

    :cond_6
    return-object p0

    :cond_7
    const/4 p1, 0x7

    iput p1, v0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;->g:Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_6
    return-object v1

    :cond_8
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

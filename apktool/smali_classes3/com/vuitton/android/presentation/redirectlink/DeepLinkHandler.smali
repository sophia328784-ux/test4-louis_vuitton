.class public final Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u001cBi\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;",
        "",
        "Lcom/vuitton/android/presentation/link/parsing/LinkParser;",
        "linkParser",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;",
        "dynamicYieldLinkActivator",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;",
        "redirectionState",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;",
        "authHandler",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;",
        "servicesHandler",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;",
        "accountHandler",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;",
        "cartHandler",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;",
        "connectivityHandler",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;",
        "catalogHandler",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;Lcom/vuitton/foundation/logger/Logger;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

.field public final b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final c:Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

.field public final d:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public final e:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

.field public final f:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

.field public final g:Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;

.field public final h:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;

.field public final i:Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;

.field public final j:Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;

.field public final k:Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;

.field public final l:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;Lcom/vuitton/foundation/logger/Logger;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->a:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->c:Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    iput-object p4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->d:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iput-object p5, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->e:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->f:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    iput-object p7, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->g:Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;

    iput-object p8, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->h:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;

    iput-object p9, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->i:Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;

    iput-object p10, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->j:Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;

    iput-object p11, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->k:Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;

    iput-object p12, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->l:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-string p2, "abVariant"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Dynamic_Yield"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->c:Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    iput v3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$handleDynamicYieldParam$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_7

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p2, p1

    :goto_4
    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->m:Ljava/lang/String;

    const-string v0, "Unable to activate Dynamic Yield from deep link"

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->l:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p2, v0, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    throw p1
.end method

.method public final b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyAccountWithParsedLink;-><init>(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->d:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/sync/Feature;Lcom/vuitton/android/presentation/link/models/ParsedLink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink;

    iput v3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1;->e:I

    const/4 p3, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v2, p1, p3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->b(Lcom/vuitton/android/presentation/link/models/ParsedLink;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

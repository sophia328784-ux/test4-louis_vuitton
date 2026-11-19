.class public final Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public final c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->b:Landroid/net/Uri;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->STORE_MODE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p2

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->b:Landroid/net/Uri;

    iput v4, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$handleStoreModeDeepLink$1;->e:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v5, p2, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    if-nez p2, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->d:Ljava/lang/String;

    const-string p2, "STORE MODE feature is not available"

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p1, p2, v3}, Lcom/vuitton/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$CatalogDefault;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    new-instance p2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;->NEW_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    invoke-direct {p2, p0, p1, v1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

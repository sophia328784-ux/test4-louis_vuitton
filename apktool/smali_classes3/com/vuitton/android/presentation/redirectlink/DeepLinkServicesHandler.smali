.class public final Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;",
        "authHandler",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;)V",
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
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public final c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->b:Landroid/net/Uri;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PERSONAL_SELECTIONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p2

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->b:Landroid/net/Uri;

    iput v4, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1;->e:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v4, p2, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAdvisorCurationFromDeepLink;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->e:Ljava/lang/String;

    const-string p2, "Unable to parse the advisor\'s curation deep link"

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p1, p2, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p2, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->c:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_4
    iget-object p1, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->b:Landroid/net/Uri;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DISTANT_REPAIRS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p2

    iput-object p1, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->b:Landroid/net/Uri;

    iput v7, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v1, p2, v2, v5}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    goto/16 :goto_7

    :cond_6
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object p2, v8

    :goto_3
    const-string v1, "pin"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_f

    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_CREATE:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->REPAIR_CREATE:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    iput-object v8, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->b:Landroid/net/Uri;

    iput v4, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    goto :goto_7

    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_b
    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->REPAIR_VIDEOCALL:Lcom/vuitton/android/presentation/redirectlink/DeepLink;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLink;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    new-instance p1, Lcom/sightcall/universal/model/Config;

    invoke-direct {p1}, Lcom/sightcall/universal/model/Config;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/model/Config;->hash(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/model/Config;->pin(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->start(Lcom/sightcall/universal/model/Config;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_d
    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->REPAIR_DETAIL:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    move p1, v3

    new-instance v3, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-direct {v3, p2, v8}, Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->b:Landroid/net/Uri;

    iput p1, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    goto :goto_7

    :cond_e
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_f
    :goto_6
    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;->REPAIR_SECTION:Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;

    iput-object v8, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->b:Landroid/net/Uri;

    iput v6, v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handleDistantRepairDeepLink$1;->e:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->d:Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_10

    :goto_7
    return-object v0

    :cond_10
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final c(Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->b:Landroid/net/Uri;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PERSONAL_SELECTIONS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p2

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->b:Landroid/net/Uri;

    iput v4, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$handlePostVisitDeepLink$1;->e:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v4, p2, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToInStoreSelectionFromDeepLink;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->e:Ljava/lang/String;

    const-string p2, "Unable to parse the InStore selection deep link"

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p1, p2, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

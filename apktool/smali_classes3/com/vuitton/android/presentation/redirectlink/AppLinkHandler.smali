.class public final Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0014BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;",
        "webAppLinkBuilder",
        "Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;",
        "checkAppLinkExcludedUseCase",
        "Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;",
        "saveContributionLinkToLaunchUseCase",
        "Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;",
        "getContributionLinkFromAppLinkUseCase",
        "Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;",
        "dynamicYieldLinkActivator",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V",
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
.field public static final i:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

.field public final d:Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;

.field public final g:Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

.field public final h:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->c:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    iput-object p4, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->d:Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->e:Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->f:Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->g:Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    iput-object p8, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->h:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->h:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    check-cast p1, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->b:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    iget-object v0, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->b:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    iget-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->f:Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;

    invoke-virtual {p2, p1, v0}, Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_b

    move-object p2, p1

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    iget-object v6, p2, Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    if-eqz v2, :cond_8

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    iput v5, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    iget-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->e:Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;

    invoke-virtual {p2, v6, v0}, Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, p1

    move-object p1, v2

    :goto_2
    new-instance p2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;->c:Ljava/lang/String;

    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_7
    invoke-direct {v1, v2, v4, p1}, Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$ChangeLocaleBottomSheet;-><init>(Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_6

    :cond_8
    new-instance v2, Lcom/vuitton/android/presentation/applink/ContributionLinkFromAppLinkUiModel;

    invoke-static {v6}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v5

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    if-eqz p2, :cond_9

    new-instance v6, Lcom/vuitton/android/presentation/dispatch/DispatchUiModel;

    iget-object v8, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;->b:Ljava/lang/String;

    invoke-direct {v6, v8, p2}, Lcom/vuitton/android/presentation/dispatch/DispatchUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v6, v7

    :goto_3
    invoke-direct {v2, v5, v6}, Lcom/vuitton/android/presentation/applink/ContributionLinkFromAppLinkUiModel;-><init>(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/dispatch/DispatchUiModel;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    iput v4, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$getContributionLinkFromAppLink$1;->f:I

    iget-object p2, v3, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->e:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/applink/ContributionLinkFromAppLinkUiModel;->a:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {p2, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_4

    :cond_a
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    if-ne p2, v1, :cond_b

    :goto_5
    return-object v1

    :cond_b
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c

    sget-object p2, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->i:Ljava/lang/String;

    const-string v0, "Unable to get a contribution link from that app link :"

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p2, v0, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->e:I

    sget-object v3, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "abVariant"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Dynamic_Yield"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->g:Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->b:Ljava/lang/String;

    iput v8, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->e:I

    invoke-virtual {p2, v0}, Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto/16 :goto_e

    :cond_5
    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    instance-of v2, p2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_7

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, p2

    :goto_4
    check-cast v2, Lkotlin/Result;

    iget-object p2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v2, "Unable to activate Dynamic Yield from app link"

    invoke-interface {v4, v3, v2, p2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw p2

    :cond_8
    :goto_5
    iput-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->b:Ljava/lang/String;

    iput v7, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->d:Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;

    invoke-virtual {p2, p1, v0}, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto/16 :goto_e

    :cond_9
    :goto_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->h:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    if-eqz p2, :cond_a

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToBrowser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_b
    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->o:Ljava/util/ArrayList;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_d

    :cond_e
    :goto_7
    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->j:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_20

    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->i:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_20

    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->n:Ljava/util/ArrayList;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_10

    goto/16 :goto_d

    :cond_11
    :goto_8
    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->k:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-nez p2, :cond_20

    const-string p2, "/wishlist/shared"

    const/4 v9, 0x0

    invoke-static {p1, p2, v9}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-nez p2, :cond_20

    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->p:Ljava/util/ArrayList;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_13

    goto/16 :goto_d

    :cond_14
    :goto_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_15

    const-string v10, "/booking/"

    invoke-static {p2, v10, v9}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-ne p2, v8, :cond_15

    goto/16 :goto_d

    :cond_15
    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->m:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "reason"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "stores"

    invoke-virtual {p0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {p0, p2, v9, v0}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_17

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    move-object p2, v6

    :cond_18
    if-eqz p1, :cond_1b

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_b

    :cond_19
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;

    invoke-direct {p0, p2, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromAppLink$ToOsaCreateAppointment;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1b
    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "OSA Create Appointment app link missing required parameters: reason="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", storeIds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v3, p0, v6}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1c
    sget-object p2, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->l:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    new-instance p2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;

    sget-object v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;->NEW_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    invoke-direct {p2, p0, p1, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Tab$Catalog$StoreMode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1e
    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->c:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    new-instance p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$Common$ToWebView;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_20
    :goto_d
    iput-object v6, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$handleAppLink$1;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_21

    :goto_e
    return-object v1

    :cond_21
    :goto_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class public final Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/DynamicYieldRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$Companion;,
        Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000cB+\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;",
        "dynamicYieldDataSource",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Landroid/content/Context;Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;)V",
        "Companion",
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


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Landroid/content/Context;Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;)V
    .locals 0
    .param p3    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->g:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static o(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;)Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;
    .locals 4

    new-instance v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->a:Ljava/lang/String;

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->b:I

    new-instance v3, Lkotlin/UInt;

    invoke-direct {v3, v2}, Lkotlin/UInt;-><init>(I)V

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->c:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;-><init>(Ljava/lang/String;Lkotlin/UInt;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static p(Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;
    .locals 6

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;->d:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;

    invoke-virtual {v2}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;->c()Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object v2

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->RECS_DECISION:Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;->d()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Variation;->a()Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    instance-of p1, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsPayload;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsPayload;

    goto :goto_2

    :cond_3
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsPayload;->b:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsData;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsData;->a:Ljava/util/List;

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;

    iget-object v4, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->c:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsSlot;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v0}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    invoke-virtual {v1}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Choice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0

    :cond_6
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    const-string v0, "Failed to report click: "

    instance-of v1, p2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->f:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v6, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p1, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->d:I

    iget v8, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->c:I

    iget-object v9, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p1

    move-object p1, v9

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object p1, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->b:Ljava/lang/String;

    iput v4, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->c:I

    iput v4, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->d:I

    iput v4, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->e:I

    iput v5, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->h:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v4

    move v3, p2

    move v8, v3

    :goto_1
    sget-object v9, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v9

    iget-object v9, v9, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->i:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;

    iput-object p1, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->b:Ljava/lang/String;

    iput v8, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->c:I

    iput v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->d:I

    iput p2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->e:I

    iput v6, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportClick$1;->h:I

    iget-object p2, v9, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v3, "reportClick"

    invoke-virtual {p2, v3, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance p2, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement;

    invoke-direct {p2, p1, v7}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-array p1, v5, [Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;

    aput-object p2, p1, v4

    invoke-virtual {v9, p1, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    :goto_3
    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    iget-object p1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_8

    if-eq p1, v6, :cond_8

    const/4 p0, 0x3

    if-ne p1, p0, :cond_7

    iget-object p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget p1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "Failed to report "

    instance-of v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;

    iget v4, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->g:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v5, :cond_6

    if-eq v5, v10, :cond_5

    if-eq v5, v11, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v2, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    iget v7, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iget v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iget-object v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_3
    iget v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    iget v7, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iget v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iget-object v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_4
    iget v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    iget v7, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iget v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iget-object v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :cond_5
    iget v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    iget v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iget v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iget-object v15, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v6

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_5
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object/from16 v1, p1

    iput-object v1, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    move-object/from16 v5, p2

    iput-object v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iput v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iput v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iput v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    iput v10, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    invoke-virtual {v0, v3}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object v15, v5

    move v5, v8

    move v13, v5

    move v14, v13

    :goto_1
    sget-object v6, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v6

    iget-object v6, v6, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->h:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;

    sget-object v16, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    move/from16 v18, v8

    aget v8, v16, v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v12, "encryptedClientId"

    if-eq v8, v10, :cond_c

    if-eq v8, v11, :cond_a

    if-ne v8, v9, :cond_9

    :try_start_6
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v1, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    iput-object v15, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iput v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iput v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iput v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    iput v7, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    iget-object v7, v6, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v11, "reportSignUpEvent"

    const/4 v9, 0x0

    invoke-virtual {v7, v11, v9}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v7, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    new-instance v11, Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties;

    invoke-direct {v11, v12, v15, v9}, Lcom/dynamicyield/sdk/wrapper/core/models/event/SignupProperties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v7, v8, v11}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    new-array v8, v10, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v7, v8, v18

    invoke-virtual {v6, v8, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_8

    goto/16 :goto_7

    :cond_8
    move v7, v13

    move v8, v14

    move-object v13, v15

    move-object v14, v1

    move-object v1, v6

    :goto_2
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    goto/16 :goto_5

    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_a
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v1, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    iput-object v15, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iput v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iput v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iput v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    const/4 v8, 0x3

    iput v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    iget-object v8, v6, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v9, "reportIdentifyUserEvent"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v8, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    new-instance v9, Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties;

    invoke-direct {v9, v12, v15, v11}, Lcom/dynamicyield/sdk/wrapper/core/models/event/IdentifyUserProperties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v8, v7, v9}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    new-array v7, v10, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v8, v7, v18

    invoke-virtual {v6, v7, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_b

    goto/16 :goto_7

    :cond_b
    move v7, v13

    move v8, v14

    move-object v13, v15

    move-object v14, v1

    move-object v1, v6

    :goto_3
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v1, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    iput-object v15, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iput v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iput v13, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iput v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    const/4 v8, 0x2

    iput v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    iget-object v8, v6, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v9, "reportLoginEvent"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v8, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    new-instance v9, Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties;

    invoke-direct {v9, v12, v15, v11}, Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v8, v7, v9}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    new-array v7, v10, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v8, v7, v18

    invoke-virtual {v6, v7, v3}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_d

    goto :goto_7

    :cond_d
    move v7, v13

    move v8, v14

    move-object v13, v15

    move-object v14, v1

    move-object v1, v6

    :goto_4
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    :goto_5
    iget-object v6, v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v9, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v9, v6

    if-eq v6, v10, :cond_10

    const/4 v9, 0x2

    if-eq v6, v9, :cond_10

    const/4 v9, 0x3

    if-ne v6, v9, :cond_f

    invoke-virtual {v14}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_e
    const/4 v12, 0x0

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_10
    iput-object v14, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYUserEventType;

    const/4 v11, 0x0

    iput-object v11, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->c:Ljava/lang/String;

    iput v8, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->d:I

    iput v7, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->e:I

    iput v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->f:I

    const/4 v1, 0x5

    iput v1, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportUserEvent$1;->i:I

    invoke-virtual {v0, v13, v3}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->n(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_11

    :goto_7
    return-object v4

    :cond_11
    move-object v2, v14

    :goto_8
    iget-object v0, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_13

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_a
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_13
    throw v0
.end method

.method public final c(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/Region;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p4, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-boolean p4, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->e:Z

    if-nez p4, :cond_6

    sget-object p4, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v5

    iget-object p4, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {p4, p3}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->l(Lcom/vuitton/foundation/model/domain/model/config/Region;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;->EU:Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;

    iget-object v8, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->c:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v9, p1

    invoke-static/range {v5 .. v10}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->d(Lcom/dynamicyield/sdk/wrapper/core/DYSdk;Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/enums/DataCenter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-boolean v3, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->e:Z

    iget-object p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget p2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p2

    const-string p3, "getSessionId"

    sget-boolean p4, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object p2

    iget-object p2, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p3}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    move-object p2, v4

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    :goto_2
    iput v3, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$initializeSdk$1;->d:I

    invoke-virtual {p0, v4, v0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->m(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p0
.end method

.method public final d()Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource$special$$inlined$map$1;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->b:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource$special$$inlined$map$1;

    return-object p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->f:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    goto/16 :goto_f

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    iget-object v2, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_d

    :cond_3
    iget-object v2, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :cond_4
    iget-object v2, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    :cond_5
    iget v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->e:I

    iget v12, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->d:I

    iget v13, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->c:I

    iget-object v14, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    :try_start_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_5
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object/from16 v1, p1

    iput-object v1, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    iput v7, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->c:I

    iput v7, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->d:I

    iput v7, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->e:I

    iput v9, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    invoke-virtual {v0, v2}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    goto/16 :goto_e

    :cond_7
    move-object v14, v1

    move v4, v7

    move v12, v4

    move v13, v12

    :goto_1
    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v1

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->h:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;

    instance-of v15, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    move/from16 p2, v7

    const/16 v7, 0xa

    if-eqz v15, :cond_c

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    move-object v6, v14

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    iget v6, v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->b:F

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    move-object v9, v14

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->d:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v8, 0x3

    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v16, v11

    :goto_3
    move-object/from16 v17, v16

    check-cast v17, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-object v8, v14

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->c:Ljava/lang/String;

    move-object v9, v14

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    iget v9, v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->e:I

    sget-object v15, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    move-object v15, v14

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->f:Ljava/util/List;

    check-cast v15, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v15, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    invoke-static {v15}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->o(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;)Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iput-object v14, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    iput v13, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->c:I

    iput v12, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->d:I

    iput v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->e:I

    iput v10, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v7, "reportAddToCartEvent"

    const/4 v12, 0x0

    invoke-virtual {v4, v7, v12}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    new-instance v15, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties;

    const/16 v21, 0x0

    move/from16 v16, v6

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v11

    invoke-direct/range {v15 .. v21}, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToCartEventProperties;-><init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v5, v15}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v4, v6, p2

    invoke-virtual {v1, v6, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    goto/16 :goto_e

    :cond_b
    move-object v2, v14

    :goto_5
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_10

    :cond_c
    instance-of v8, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;

    if-eqz v8, :cond_11

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    move-object v6, v14

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;

    iget v6, v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;->b:F

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move-object v15, v14

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;->d:Ljava/lang/String;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v17, v9

    check-cast v17, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-object v8, v14

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;->c:Ljava/lang/String;

    move-object v9, v14

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;

    iget v9, v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;->e:I

    sget-object v11, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    move-object v11, v14

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$RemoveFromCart;->f:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    invoke-static {v11}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->o(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;)Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    iput-object v14, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    iput v13, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->c:I

    iput v12, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->d:I

    iput v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->e:I

    const/4 v4, 0x3

    iput v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v7, "reportRemoveFromCartEvent"

    const/4 v12, 0x0

    invoke-virtual {v4, v7, v12}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    move-object/from16 v20, v15

    new-instance v15, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;

    const/16 v21, 0x0

    move/from16 v16, v6

    move-object/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v15 .. v21}, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;-><init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v5, v15}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v4, v6, p2

    invoke-virtual {v1, v6, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_10

    goto/16 :goto_e

    :cond_10
    move-object v2, v14

    :goto_9
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    goto/16 :goto_6

    :cond_11
    instance-of v8, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;

    if-eqz v8, :cond_16

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    move-object v8, v14

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;

    iget v8, v8, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;->b:F

    move-object v9, v14

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;->c:Ljava/lang/String;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    move-object v6, v14

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;->d:Ljava/lang/String;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_b

    :cond_12
    const/4 v6, 0x4

    const/4 v10, 0x2

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_b
    check-cast v15, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-object v6, v14

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$Purchase;->e:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    invoke-static {v7}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->o(Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;)Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    iput-object v14, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    iput v13, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->c:I

    iput v12, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->d:I

    iput v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->e:I

    const/4 v4, 0x4

    iput v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v6, "reportPurchaseEvent"

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v12}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    new-instance v6, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;

    invoke-direct {v6, v8, v15, v9, v10}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;-><init>(FLcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v4, v5, v6}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v4, v6, p2

    invoke-virtual {v1, v6, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_15

    goto :goto_e

    :cond_15
    move-object v2, v14

    :goto_d
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    goto/16 :goto_6

    :cond_16
    instance-of v6, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;

    if-eqz v6, :cond_1b

    iget-object v6, v14, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    move-object v7, v14

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToWishlist;->b:Ljava/lang/String;

    iput-object v14, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->b:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;

    iput v13, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->c:I

    iput v12, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->d:I

    iput v4, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->e:I

    iput v5, v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportBusinessEvent$1;->h:I

    iget-object v4, v1, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v5, "reportAddToWishListEvent"

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance v4, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;

    new-instance v5, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToWishListEventProperties;

    invoke-direct {v5, v7, v12}, Lcom/dynamicyield/sdk/wrapper/core/models/event/AddToWishListEventProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v6, v5}, Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;-><init>(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;

    aput-object v4, v6, p2

    invoke-virtual {v1, v6, v2}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EventsManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_17

    :goto_e
    return-object v3

    :cond_17
    move-object v2, v14

    :goto_f
    check-cast v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    :goto_10
    iget-object v3, v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v4, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_11

    :cond_18
    move-object v11, v12

    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1a
    iget-object v0, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_12

    :cond_1b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_12
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_13

    :cond_1c
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1d

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_13
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_1d
    throw v0
.end method

.method public final f(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Choose variation failed with error: "

    instance-of v5, v3, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;

    iget v6, v5, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->f:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->f:I

    :goto_0
    move-object v10, v5

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;

    invoke-direct {v5, v0, v3}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v3, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->d:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->f:I

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->g:Ljava/util/LinkedHashMap;

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_3

    if-eq v6, v15, :cond_2

    if-ne v6, v14, :cond_1

    iget-object v0, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->c:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;

    iget-object v1, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    move v0, v7

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v0, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->c:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;

    iget-object v1, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    move v0, v7

    goto/16 :goto_3

    :cond_3
    iget-object v0, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->c:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;

    iget-object v1, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->b:Ljava/lang/String;

    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    move v0, v7

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;->a:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v13, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v0, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget v2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->q()V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v0

    iget-object v6, v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    const-string v18, "Feed"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    sget-object v17, Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;->HOMEPAGE:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v23}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v1, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->b:Ljava/lang/String;

    iput-object v2, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->c:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;

    iput v7, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->f:I

    const/4 v9, 0x0

    const/16 v11, 0x3ffc

    move v8, v7

    move-object v7, v0

    move v0, v8

    move-object/from16 v8, v16

    invoke-static/range {v6 .. v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;->f(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    goto/16 :goto_4

    :cond_6
    :goto_2
    check-cast v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    goto/16 :goto_6

    :cond_7
    move v0, v7

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v3

    iget-object v6, v3, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    const-string v18, "PLP"

    move-object v7, v2

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$CATEGORY;->a:Ljava/lang/String;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    sget-object v17, Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;->CATEGORY:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

    const/16 v21, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v17, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->b:Ljava/lang/String;

    iput-object v2, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->c:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;

    iput v15, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->f:I

    const/16 v11, 0x3efc

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    invoke-static/range {v6 .. v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;->f(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    check-cast v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    goto :goto_6

    :cond_9
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$PRODUCT;

    if-eqz v3, :cond_f

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v3

    iget-object v6, v3, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    sget-object v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    const-string v18, "PDP"

    move-object v7, v2

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$PRODUCT;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$PRODUCT;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    sget-object v17, Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;->PRODUCT:Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;-><init>(Lcom/dynamicyield/sdk/wrapper/core/enums/PageType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v17, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->b:Ljava/lang/String;

    iput-object v2, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->c:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;

    iput v14, v10, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$getChooseVariation$1;->f:I

    const/16 v11, 0x3efc

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    invoke-static/range {v6 .. v11}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;->f(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_a

    :goto_4
    return-object v5

    :cond_a
    :goto_5
    check-cast v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    :goto_6
    iget-object v5, v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v0, :cond_d

    if-eq v5, v15, :cond_d

    if-ne v5, v14, :cond_c

    iget-object v0, v3, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_d
    invoke-static {v3, v1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->p(Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    move-result-object v0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;->a:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_7
    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

.method public final g(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->q()V

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$setDynamicYieldConsent$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->e(Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    const-string v0, "Failed to report slot click: "

    instance-of v1, p2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->f:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v6, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget p1, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->e:I

    iget v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->d:I

    iget v8, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->c:I

    iget-object v9, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p1

    move-object p1, v9

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput-object p1, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->b:Ljava/lang/String;

    iput v4, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->c:I

    iput v4, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->d:I

    iput v4, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->e:I

    iput v5, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->h:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v4

    move v3, p2

    move v8, v3

    :goto_1
    sget-object v9, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v9

    iget-object v9, v9, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->i:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;

    iput-object p1, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->b:Ljava/lang/String;

    iput v8, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->c:I

    iput v3, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->d:I

    iput p2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->e:I

    iput v6, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$reportSlotClick$1;->h:I

    iget-object p2, v9, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;->d:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v3, "reportSlotClick"

    invoke-virtual {p2, v3, v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    new-instance p2, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;

    invoke-direct {p2, v7, p1}, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-array p1, v5, [Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;

    aput-object p2, p1, v4

    invoke-virtual {v9, p1, v1}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/EngagementManager;->f([Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    :goto_3
    check-cast p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;

    iget-object p1, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_8

    if-eq p1, v6, :cond_8

    const/4 p0, 0x3

    if-ne p1, p0, :cond_7

    iget-object p0, p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget p1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_a
    throw p0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->q()V

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p0

    const-string v0, "setLocale"

    sget-boolean v1, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;

    const-string v2, "Changing locale to: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;->a(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ConfigManager;->b:Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;

    iput-object p1, p0, Lcom/dynamicyield/sdk/wrapper/core/managers/config/ExperienceConfig;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "configManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_2
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_3
    throw p0
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->c:I

    iget v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->b:I

    iput v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->c:I

    iput v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v5

    move v4, v2

    move v6, v4

    :goto_1
    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p1

    const-string v7, "resetUserIdAndSessionId"

    sget-boolean v8, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d()V

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v7}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    :goto_2
    iput-boolean v5, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->f:Z

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    iput v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->b:I

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$resetDyId$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p0
.end method

.method public final k(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    iput v3, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$activateDynamicYield$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->q()V

    iget-boolean p1, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->f:Z

    if-nez p1, :cond_7

    sget-object p1, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p1

    sget-boolean v2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->a()Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Session;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "getSessionId"

    invoke-virtual {p1, v2}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    :cond_5
    :goto_2
    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$ensureSdkReady$1;->d:I

    invoke-virtual {p0, v3, v0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->m(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final m(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    const-string v0, "Choose for DYId generation failed with error: "

    instance-of v1, p2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->h:I

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->h:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v10, :cond_2

    if-ne v2, v8, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget p1, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->e:I

    iget v2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->d:I

    iget v3, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->c:I

    iget-object v4, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, p2

    move p2, p1

    move-object p1, v4

    move v4, v3

    move v3, v2

    move-object v2, v11

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p2

    iget-object v2, p2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->j:Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;

    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;

    const-string v3, "session-init"

    invoke-static {p2, v3}, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;->a(Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page$Companion;Ljava/lang/String;)Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;

    move-result-object v4

    iput-object p1, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->b:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->c:I

    iput p2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->d:I

    iput p2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->e:I

    iput v10, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->h:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3ffc

    invoke-static/range {v2 .. v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;->f(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;Ljava/util/List;Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Page;Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/ChooseOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, p2

    move v4, v3

    :goto_2
    check-cast v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;

    iget-object v5, v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->a:Lcom/dynamicyield/sdk/wrapper/core/enums/ResultStatus;

    sget-object v7, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v10, :cond_7

    if-eq v5, v8, :cond_7

    const/4 p0, 0x3

    if-ne v5, p0, :cond_6

    iget-object p0, v2, Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;->c:Ljava/lang/Exception;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    iput-boolean v10, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->f:Z

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    iput-object v9, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->b:Ljava/lang/String;

    iput v4, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->c:I

    iput v3, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->d:I

    iput p2, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->e:I

    iput v8, v6, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$generateDYIdForUser$1;->h:I

    invoke-virtual {p0, p1, v0, v6}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_6

    :cond_a
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_b

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_b
    throw p0
.end method

.method public final n(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;-><init>(Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->h:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    iget-object v3, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_8

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :pswitch_2
    iget p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iget v3, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    :pswitch_4
    iget p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iget v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iget-object v7, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->d:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :pswitch_5
    iget p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    iget v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iget v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iget-object v7, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    :try_start_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v11, p2

    move p2, p1

    move-object p1, v8

    move-object v8, v7

    move v7, v6

    move v6, v2

    move-object v2, v11

    goto :goto_1

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_4
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    iput-object p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    move-object v8, p2

    move p2, v4

    move v6, p2

    move v7, v6

    :goto_1
    check-cast v2, Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    iput-object v8, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->d:Ljava/lang/String;

    iput v7, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iput v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iput p2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    const/4 v9, 0x2

    iput v9, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    move-object v11, v9

    move-object v9, p1

    move p1, p2

    move-object p2, v11

    move v11, v7

    move-object v7, v2

    move v2, v6

    move v6, v11

    :goto_2
    check-cast p2, Ljava/lang/String;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_9

    :cond_3
    if-eqz v7, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_6

    :cond_4
    sget-object p2, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->k:Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk$Companion;->a()Lcom/dynamicyield/sdk/wrapper/core/DYSdk;

    move-result-object p2

    const-string v7, "resetUserIdAndSessionId"

    sget-boolean v8, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->l:Z

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->d()V

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->b()Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dynamicyield/sdk/wrapper/core/managers/sessionAndUser/SessionAndUserManager;->c()V

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v7}, Lcom/dynamicyield/sdk/wrapper/core/DYSdk;->c(Ljava/lang/String;)V

    :goto_3
    iput-object v9, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->d:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iput p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    const/4 p2, 0x4

    iput p2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_7

    :cond_6
    move v3, v6

    move-object v6, v9

    :goto_4
    iput-boolean v4, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->f:Z

    iget-object p2, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget v4, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImplKt;->a:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->d:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iput p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    const/4 p1, 0x5

    iput p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    invoke-virtual {p0, v6, v0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->m(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_7

    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_9

    :cond_8
    :goto_6
    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->d:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iput p1, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    const/4 p0, 0x3

    iput p0, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    invoke-virtual {v3, v9, v8, v0}, Lcom/vuitton/android/data/datasource/dynamicyield/DynamicYieldDataSource;->e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    goto :goto_7

    :cond_9
    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->g:I

    const/4 p2, 0x6

    iput p2, v0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1;->j:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->m(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_7
    return-object v1

    :cond_a
    :goto_8
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_b
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_b

    :cond_c
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_d

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_b
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_d
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q()V
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/data/repository/DynamicYieldRepositoryImpl;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Dynamic Yield SDK is not initialized"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

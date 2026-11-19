.class public final Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;",
        "getOngoingOrdersUseCase",
        "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;",
        "getOnlineStoreAppointmentListUseCase",
        "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;",
        "getCareServiceListBffUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/repository/HotContentRepository;",
        "hotContentRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/HotContentRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final e:Lcom/vuitton/android/domain/repository/HotContentRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/HotContentRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->a:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->b:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->c:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->e:Lcom/vuitton/android/domain/repository/HotContentRepository;

    return-void
.end method

.method public static final a(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->c:Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_4

    move-object p0, v4

    :cond_4
    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getCareServiceListOrEmpty$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v4

    :goto_2
    if-nez p0, :cond_6

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_6
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-ne v1, v2, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;-><init>(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;)V

    goto :goto_5

    :cond_a
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->b:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingAppointmentOrNull$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_4

    move-object p0, v3

    :cond_4
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;->a:Ljava/util/List;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    return-object p0

    :cond_5
    return-object v3
.end method

.method public static final c(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

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

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->a:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/OrderRepository;->j()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_6

    move-object p0, v3

    :cond_6
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->a:Ljava/util/List;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$getOngoingOrdersOrEmpty$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_8
    return-object v3
.end method


# virtual methods
.method public final d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->i:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->d:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v4, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->e:Lcom/vuitton/android/domain/repository/HotContentRepository;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->f:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->f:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_3
    iget p0, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->e:I

    iget p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->d:I

    iget v2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->c:I

    iget-boolean v4, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->b:Z

    iget-object v5, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->f:Ljava/util/List;

    check-cast v5, Ljava/util/List;

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, p1

    move p1, p0

    move-object p0, v5

    move v5, v2

    move-object v2, p2

    move p2, v10

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    if-eqz p1, :cond_5

    move-object p2, v7

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/HotContentRepository;->a()Ljava/util/List;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_b

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CARE_SERVICES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p0

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->f:Ljava/util/List;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->b:Z

    iput v9, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->c:I

    iput v9, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->d:I

    iput v9, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->e:I

    iput v8, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->i:I

    invoke-virtual {v3, p0, v9, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    move-object v2, p0

    move v4, p1

    move-object p0, p2

    move p1, v9

    move p2, p1

    move v5, p2

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->CARE_SERVICES_MIGRATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    move-object v7, p0

    check-cast v7, Ljava/util/List;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->f:Ljava/util/List;

    iput-boolean v4, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->b:Z

    iput v5, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->c:I

    iput p2, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->d:I

    iput p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->e:I

    iput v6, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->i:I

    invoke-virtual {v3, v2, v9, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_6

    :cond_7
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    if-nez v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object p0, p1

    :goto_5
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;

    invoke-direct {p1, p0, v8}, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;-><init>(Ljava/util/List;Z)V

    goto :goto_8

    :cond_b
    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->f:Ljava/util/List;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->b:Z

    iput v9, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->c:I

    iput v9, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->d:I

    iput v9, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->e:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$run$1;->i:I

    new-instance p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;

    invoke-direct {p1, p0, v7}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c

    :goto_6
    return-object v1

    :cond_c
    :goto_7
    check-cast p2, Ljava/util/List;

    invoke-interface {v4, p2}, Lcom/vuitton/android/domain/repository/HotContentRepository;->b(Ljava/util/List;)V

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;

    invoke-direct {p1, p2, v9}, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;-><init>(Ljava/util/List;Z)V

    :goto_8
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_9
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_a

    :cond_d
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_e

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_a
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_e
    throw p1
.end method

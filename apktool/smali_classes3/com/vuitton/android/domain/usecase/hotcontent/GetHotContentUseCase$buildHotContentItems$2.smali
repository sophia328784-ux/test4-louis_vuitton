.class final Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase$buildHotContentItems$2"
    f = "GetHotContentUseCase.kt"
    l = {
        0x41,
        0x42,
        0x43
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/Deferred;

.field public d:Ljava/util/List;

.field public e:Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->h:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->h:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->e:Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->d:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->d:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->c:Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->c:Lkotlinx/coroutines/Deferred;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->h:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    invoke-direct {p1, v2, v6}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$appointmentDeferred$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, p1, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    new-instance v7, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$ordersDeferred$1;

    invoke-direct {v7, v2, v6}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$ordersDeferred$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v7, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;

    invoke-direct {v8, v2, v6}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2$careServicesDeferred$1;-><init>(Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v8, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->c:Lkotlinx/coroutines/Deferred;

    iput v5, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->f:I

    invoke-interface {v7, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    :goto_0
    check-cast p1, Ljava/util/List;

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->g:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->c:Lkotlinx/coroutines/Deferred;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    iput-object v5, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->d:Ljava/util/List;

    iput v4, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->f:I

    invoke-interface {v2, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->g:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->b:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->c:Lkotlinx/coroutines/Deferred;

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->d:Ljava/util/List;

    iput-object v2, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->e:Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    iput v3, p0, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase$buildHotContentItems$2;->f:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v2

    :goto_3
    check-cast p1, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->e:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;

    invoke-direct {v9, v4, v8}, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_5

    :cond_8
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;-><init>(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)V

    :cond_a
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-eqz v3, :cond_b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v3, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

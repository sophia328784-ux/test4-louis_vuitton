.class final Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl$retrieveAddresses$1"
    f = "AddressBookViewModelImpl.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->c:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl$retrieveAddresses$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-nez v2, :cond_f

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iget-boolean v9, v9, Lcom/vuitton/foundation/model/domain/model/profile/Address;->b:Z

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_5
    move-object v8, v4

    :goto_1
    check-cast v8, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    if-eqz v8, :cond_6

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/mappers/AddressMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/profile/Address;)Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    move-result-object v4

    :cond_6
    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    move v4, v5

    goto :goto_2

    :cond_7
    move v4, v7

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v8, "hasEnteredMainAddress"

    invoke-interface {p0, v4, v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/mappers/AddressMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/profile/Address;)Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    iget-boolean v10, v9, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->b:Z

    if-eqz v10, :cond_9

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->n:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-interface {v6, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_d
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_e

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    move v8, v5

    goto :goto_6

    :cond_e
    move v8, v7

    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_f
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "AddressBookViewModelImpl"

    const-string v3, "Unable To retrieve account addresses"

    invoke-interface {v0, v2, v3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddressBookError;

    invoke-direct {v0, p1}, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Error$OpenAddressBookError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_10
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_11
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

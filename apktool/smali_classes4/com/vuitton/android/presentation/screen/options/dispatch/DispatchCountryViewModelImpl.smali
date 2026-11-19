.class public final Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0011B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;",
        "getUserInAppDispatchOrNullUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;",
        "getDispatchAreaListUseCase",
        "Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;",
        "reactToInAppDispatchChangeUseCase",
        "Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;",
        "updateSearchHistoryUseCase",
        "Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;",
        "removeLastViewedProductListUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;)V",
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
.field public static final q:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

.field public final g:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final h:Lkotlinx/coroutines/flow/SharedFlow;

.field public final i:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final j:Lkotlinx/coroutines/flow/Flow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public o:Z

.field public final p:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->q:Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;)V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p2, p3, p4, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->g:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->h:Lkotlinx/coroutines/flow/SharedFlow;

    const/4 p1, 0x7

    invoke-static {p2, p1, p4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->j:Lkotlinx/coroutines/flow/Flow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->o:Z

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    aput-object p1, v1, p2

    aput-object p5, v1, p3

    const/4 p1, 0x2

    aput-object p6, v1, p1

    const/4 p1, 0x3

    aput-object v0, v1, p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$special$$inlined$combine$1;

    invoke-direct {p2, v1}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p3

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/dispatch/models/DispatchViewState;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/options/dispatch/models/DispatchViewState;-><init>(ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, p3, p6, v0}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    :cond_0
    invoke-interface {p5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    invoke-virtual {p3}, Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;->a()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p3

    invoke-interface {p5, p2, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance p3, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;

    invoke-direct {p3, p0, p4}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$getDispatchCountryList$1;-><init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p4, p4, p3, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final O1()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->h:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final Q8(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final i2(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$updateLocale$1;-><init>(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final p8(I)V
    .locals 4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    iget-object v2, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v1, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final w6()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->j:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final y1(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;->a()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.class public final Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$Companion;,
        Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\t\nB\u0019\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;",
        "getReinsuranceUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;)V",
        "Companion",
        "ReinsuranceState",
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


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Lkotlinx/coroutines/flow/StateFlow;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;

    sget-object p1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;->a:Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState$Empty;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->d:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Z)Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->f:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_6

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->f:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;->BABY:Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    :cond_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    return-object p0

    :cond_6
    :goto_2
    return-object p1
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Ljava/util/List;)Lkotlin/Pair;
    .locals 5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "packaging"

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final f3()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->f:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final r7()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;->d:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final w5(ZLcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$getReinsurance$1;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;Lcom/vuitton/foundation/model/domain/model/product/ReinsurancePageType;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

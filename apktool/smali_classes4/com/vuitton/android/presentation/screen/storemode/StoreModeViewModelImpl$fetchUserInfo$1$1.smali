.class final Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    return-void
.end method


# virtual methods
.method public final b(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->e:I

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1;->b:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->b:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1;->e:I

    invoke-static {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getWishlist$1;

    invoke-direct {p2, p0, v3}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v3, v3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1$1;->b(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

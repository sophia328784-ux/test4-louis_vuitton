.class final Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;-><init>(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
        "search",
        "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;",
        "page",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "showFilterBottomSheet",
        ""
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
    c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$pspViewState$1"
    f = "StoreModeSearchDelegate.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

.field public synthetic c:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

.field public synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->e:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->f:Z

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->e:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->f:Z

    invoke-direct {v0, v1, p0, p4}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;-><init>(ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->b:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->c:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iput-boolean p3, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->d:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->b:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->c:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->d:Z

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;->a:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-eqz v1, :cond_1

    iget p1, v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->e:Z

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;->f:Z

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZZ)V

    return-object v2
.end method

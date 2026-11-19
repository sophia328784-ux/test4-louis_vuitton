.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$updateWishlist$1"
    f = "PLPCatalogViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->c:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->d:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->d:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->c:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->d:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl$updateWishlist$1;->c:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    invoke-virtual {p1, p0, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

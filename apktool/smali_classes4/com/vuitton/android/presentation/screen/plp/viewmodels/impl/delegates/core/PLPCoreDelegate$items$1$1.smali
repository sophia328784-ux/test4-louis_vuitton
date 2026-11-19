.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/paging/PagingSource<",
        "Ljava/lang/Integer;",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        ">;>;"
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
.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->b:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->b:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->c:Ljava/lang/Object;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;-><init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1;->e:Z

    invoke-direct {v2, p0, v5}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2;-><init>(ZLcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;)V

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/pagingsources/PLPPagingSource;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

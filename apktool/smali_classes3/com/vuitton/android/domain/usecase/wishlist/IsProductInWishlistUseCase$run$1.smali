.class final Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase$run$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase"
    f = "IsProductInWishlistUseCase.kt"
    l = {
        0x9,
        0xa
    }
    m = "run-hd8RJmg"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase$run$1;->d:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase$run$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase$run$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase$run$1;->e:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase$run$1;->d:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
